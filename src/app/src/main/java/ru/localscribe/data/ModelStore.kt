package ru.localscribe.data

import android.content.Context
import android.net.Uri
import android.os.StatFs
import java.io.File
import java.io.FilterInputStream
import java.io.InputStream
import java.security.MessageDigest
import java.util.zip.ZipFile
import java.util.zip.ZipInputStream
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.withContext
import kotlinx.serialization.Serializable
import kotlinx.serialization.encodeToString
import ru.localscribe.core.*

object EngineGate {
    val mutex = Mutex()

    suspend fun <T> exclusive(block: suspend () -> T): T {
        check(mutex.tryLock()) { "Другая задача уже выполняется" }
        try {
            return block()
        } finally {
            mutex.unlock()
        }
    }
}

@Serializable
data class ModelManifest(val id: String, val version: String, val files: Map<String, String>)

@Serializable data class BundledModelInfo(val unpackedBytes: Long, val manifest: ModelManifest)

data class ModelInstallProgress(val label: String, val fraction: Float? = null)

class ModelStore(private val context: Context) {
    val extras = ExtraModels(context)
    val root = File(context.filesDir, "models")
    val preferences = context.getSharedPreferences("settings", Context.MODE_PRIVATE)

    fun settings(): Settings =
        runCatching {
                codec.decodeFromString<Settings>(preferences.getString("settings", null) ?: "{}")
            }
            .getOrDefault(Settings()).let { it.copy(fileAsr = it.fileAsr.current) }

    fun saveSettings(s: Settings) {
        preferences.edit().putString("settings", codec.encodeToString(s)).apply()
    }

    fun manifest(): ModelManifest? =
        runCatching {
                codec.decodeFromString<ModelManifest>(File(root, "manifest.json").readText())
            }
            .getOrNull()

    fun file(name: String): String {
        val f = File(root, name)
        require(f.isFile && f.length() > 0) { "Не установлена модель: $name" }
        return f.absolutePath
    }

    fun onlineName() =
        if (File(root, "streaming/model.int8.onnx").isFile) "streaming/model.int8.onnx"
        else "streaming/model.onnx"

    fun info(s: Settings, live: Boolean = false): ModelInfo {
        val m = manifest() ?: error("Импортируйте пакет моделей в настройках")
        val hashes =
            m.files + when {
                live -> emptyMap()
                s.fileAsr == FileAsr.WHISPER_EN -> extras.hashes(ExtraModels.WHISPER)
                else -> emptyMap()
            }
        val diarizationHashes = if (live) emptyMap() else
            extras.hashes(ExtraModels.DIARIZATION) +
                if (s.refineDiarization) extras.hashes(ExtraModels.VBX) else emptyMap()
        return ModelInfo(m.id, m.version, hashes + diarizationHashes, settings = s)
    }

    fun bundledInfo(): BundledModelInfo? {
        if (context.assets.list("")?.contains("bundled-models.json") != true) return null
        return context.assets
            .open("bundled-models.json")
            .bufferedReader()
            .use { codec.decodeFromString<BundledModelInfo>(it.readText()) }
            .also {
                require(it.unpackedBytes in 1..MAX_PACK_BYTES) {
                    "Неверный размер встроенных моделей"
                }
            }
    }

    fun automaticPreparationEnabled() = !preferences.getBoolean("bundled_models_disabled", false)

    private fun openBundledArchive(): InputStream {
        // Stream the entry directly from our base APK: never materialize a 457 MiB asset in heap.
        val apk = ZipFile(context.applicationInfo.sourceDir)
        try {
            val entry =
                apk.getEntry("assets/models-ru.zip")
                    ?: error("В установочном пакете отсутствуют модели")
            return object : FilterInputStream(apk.getInputStream(entry)) {
                override fun close() {
                    try {
                        super.close()
                    } finally {
                        apk.close()
                    }
                }
            }
        } catch (t: Throwable) {
            apk.close()
            throw t
        }
    }

    suspend fun installBundled(onProgress: (ModelInstallProgress) -> Unit) {
        val bundle = bundledInfo() ?: error("В этой сборке нет встроенных моделей")
        installArchive({ openBundledArchive() }, bundle, onProgress)
        preferences
            .edit()
            .putBoolean("bundled_models_disabled", false)
            .putBoolean("manual_models", false)
            .apply()
    }

    suspend fun install(uri: Uri, onProgress: (ModelInstallProgress) -> Unit) {
        installArchive(
            {
                context.contentResolver.openInputStream(uri)
                    ?: error("Не удалось открыть пакет моделей")
            },
            null,
            onProgress,
        )
        preferences.edit().putBoolean("manual_models", true).apply()
    }

    internal suspend fun installArchive(
        openArchive: () -> InputStream,
        bundled: BundledModelInfo? = null,
        onProgress: (ModelInstallProgress) -> Unit,
    ) =
        withContext(Dispatchers.IO) {
            require(!EngineGate.mutex.isLocked) {
                "Остановите запись и обработку перед заменой моделей"
            }
            EngineGate.exclusive {
                val stage = File(context.filesDir, "models-stage")
                check(stage.deleteRecursively()) { "Не удалось очистить незавершённую подготовку" }
                if (bundled != null) {
                    val required = bundled.unpackedBytes + 64L * 1024 * 1024
                    require(StatFs(context.filesDir.path).availableBytes >= required) {
                        "Для подготовки нужно освободить не менее ${required / (1024 * 1024)} МБ памяти устройства."
                    }
                }
                check(stage.mkdirs()) { "Не удалось создать каталог моделей" }
                try {
                    var total = 0L
                    var count = 0
                    val seen = mutableSetOf<String>()
                    var reportedAt = 0L
                    onProgress(
                        ModelInstallProgress(
                            "Распаковываем модели из APK или выбранного ZIP · без интернета",
                            if (bundled != null) 0f else null,
                        )
                    )
                    openArchive().use { input ->
                        ZipInputStream(input).use { zip ->
                            while (true) {
                                currentCoroutineContext().ensureActive()
                                val e = zip.nextEntry ?: break
                                require(++count <= 64) { "Слишком много файлов в пакете" }
                                val target = File(stage, e.name)
                                require(
                                    target.canonicalPath.startsWith(
                                        stage.canonicalPath + File.separator
                                    ) && !e.name.contains("\\") && seen.add(e.name)
                                ) {
                                    "Недопустимый путь или дубликат в ZIP"
                                }
                                if (e.isDirectory) {
                                    target.mkdirs()
                                    continue
                                }
                                target.parentFile!!.mkdirs()

                                target.outputStream().use { out ->
                                    val b = ByteArray(65536)
                                    while (true) {
                                        currentCoroutineContext().ensureActive()
                                        val n = zip.read(b)
                                        if (n < 0) break
                                        total += n
                                        require(total < MAX_PACK_BYTES) { "Пакет больше 3 ГБ" }
                                        out.write(b, 0, n)
                                        if (total - reportedAt >= 2L * 1024 * 1024) {
                                            reportedAt = total
                                            onProgress(
                                                ModelInstallProgress(
                                                    "Распаковываем модели из APK или выбранного ZIP · без интернета",
                                                    bundled?.let {
                                                        (0.8 * total / it.unpackedBytes)
                                                            .toFloat()
                                                            .coerceIn(0f, 0.8f)
                                                    },
                                                )
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                    val mf = File(stage, "manifest.json")
                    require(mf.length() in 1..1048576)
                    val m = codec.decodeFromString<ModelManifest>(mf.readText())
                    require(m.files.isNotEmpty())
                    if (bundled != null)
                        require(m == bundled.manifest) {
                            "Встроенные модели не соответствуют сборке приложения"
                        }
                    val actual =
                        stage
                            .walkTopDown()
                            .filter { it.isFile && it != mf }
                            .map { it.relativeTo(stage).invariantSeparatorsPath }
                            .toSet()
                    require(actual == m.files.keys) { "Состав ZIP не совпадает с manifest.json" }
                    m.files.entries.forEachIndexed { index, (name, hash) ->
                        currentCoroutineContext().ensureActive()
                        require(Regex("[a-f0-9]{64}").matches(hash))
                        onProgress(
                            ModelInstallProgress(
                                "Проверяем готовность моделей",
                                0.8f + 0.2f * index / m.files.size,
                            )
                        )
                        require(sha(File(stage, name)) == hash) { "Повреждена модель $name" }
                    }
                    listOf(
                            "silero.onnx",
                            "speaker.onnx",
                            "streaming/tokens.txt",
                        ).plus(GIGAAM_FILES)
                        .forEach { require(File(stage, it).isFile) { "Отсутствует $it" } }
                    require(
                        File(stage, "streaming/model.int8.onnx").isFile ||
                            File(stage, "streaming/model.onnx").isFile
                    )
                    currentCoroutineContext().ensureActive()
                    val backup = File(context.filesDir, "models-backup")
                    backup.deleteRecursively()
                    if (root.exists()) check(root.renameTo(backup))
                    if (!stage.renameTo(root)) {
                        backup.renameTo(root)
                        error("Не удалось установить модели")
                    }
                    backup.deleteRecursively()
                    onProgress(ModelInstallProgress("Можно начинать запись", 1f))
                } finally {
                    stage.deleteRecursively()
                }
            }
        }

    fun verify(s: Settings, live: Boolean = false) {
        val m = manifest() ?: error("Нет manifest.json моделей")
        val supported =
            context.assets.open("licenses/supported-models.json").bufferedReader().use {
                codec.decodeFromString<ModelManifest>(it.readText())
            }
        val needed =
            listOf("speaker.onnx", "silero.onnx", "advanced/segmentation.int8.onnx") +
                (if (live) listOf(onlineName(), "streaming/tokens.txt")
                else if (s.fileAsr == FileAsr.WHISPER_EN) emptyList()
                else GIGAAM_FILES) +
                (if (s.runEmotions) listOf("advanced/emo.int8.onnx") else emptyList()) +
                (if (s.runSeparation && !live) listOf("advanced/mossformer2.onnx") else emptyList())
        // A self-consistent arbitrary ONNX ZIP is not proof of architecture compatibility.
        // Reject untested weights and missing components before entering abort-prone JNI.
        for (name in needed) {
            val expected = supported.files[name] ?: error("Сборка не поддерживает модель $name")
            require(m.files[name] == expected) {
                "Модель $name отсутствует или несовместима. Восстановите встроенные модели в настройках."
            }
            val f = File(root, name)
            require(f.isFile && f.length() > 0 && sha(f) == expected) {
                "Повреждена модель $name. Восстановите встроенные модели в настройках."
            }
        }
    }

    fun recover() {
        val backup = File(context.filesDir, "models-backup")
        if (!root.exists() && backup.exists()) backup.renameTo(root)
        extras.removeRetiredEditor()
    }

    suspend fun delete() =
        EngineGate.exclusive {
            withContext(Dispatchers.IO) {
                check(root.deleteRecursively()) { "Не удалось удалить модели" }
                // Deliberate removal must survive the next app launch; restore remains an explicit
                // action.
                preferences.edit().putBoolean("bundled_models_disabled", true).apply()
            }
        }

    companion object {
        private val GIGAAM_FILES = listOf(
            "gigaam-v3/encoder.int8.onnx", "gigaam-v3/decoder.onnx",
            "gigaam-v3/joiner.onnx", "gigaam-v3/tokens.txt",
        )

        private const val MAX_PACK_BYTES = 3L * 1024 * 1024 * 1024

        fun sha(file: File): String {
            val d = MessageDigest.getInstance("SHA-256")
            file.inputStream().use {
                val b = ByteArray(65536)
                while (true) {
                    val n = it.read(b)
                    if (n < 0) break
                    d.update(b, 0, n)
                }
            }
            return d.digest().joinToString("") { "%02x".format(it) }
        }
    }
}
