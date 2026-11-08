package ru.localscribe.data

import android.content.Context
import java.io.File
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.serialization.Serializable
import ru.localscribe.core.codec

@Serializable
data class ExtraModel(val file: String, val group: String, val bytes: Long, val sha256: String)

data class ModelStatus(val group: String, val bytes: Long, val cached: Boolean)

class ExtraModels(private val context: Context) {
    private val root = File(context.filesDir, "extra-models")
    private val entries by lazy {
        if (context.assets.list("")?.contains("extra-models.json") != true) emptyList()
        else context.assets.open("extra-models.json").bufferedReader().use {
            codec.decodeFromString<List<ExtraModel>>(it.readText())
        }
    }

    fun status(): List<ModelStatus> =
        entries.groupBy { it.group }.map { (group, files) ->
            ModelStatus(group, files.sumOf { it.bytes }, files.all { isCached(it) })
        }

    private fun isCached(model: ExtraModel) = File(root, model.file).let {
        it.isFile && it.length() == model.bytes
    }

    // Call under EngineGate on an IO worker. Keep a valid cache on interrupted copies.
    suspend fun prepare(group: String) {
        val job = currentCoroutineContext()
        val files = entries.filter { it.group == group }
        require(files.isNotEmpty()) { "Модель $group не входит в эту сборку" }
        check(root.isDirectory || root.mkdirs()) { "Не удалось создать каталог моделей" }
        for (model in files) {
            job.ensureActive()
            val target = File(root, model.file)
            if (isCached(model) && ModelStore.sha(target) == model.sha256) continue
            require(root.usableSpace >= model.bytes + 16L * 1024 * 1024) {
                "Недостаточно места для модели $group"
            }
            val staging = File(root, "${model.file}.part")
            try {
                context.assets.open("models-next/${model.file}").use { input ->
                    staging.outputStream().use { output ->
                        val buffer = ByteArray(65536)
                        while (true) {
                            job.ensureActive()
                            val n = input.read(buffer)
                            if (n < 0) break
                            output.write(buffer, 0, n)
                        }
                    }
                }
                require(staging.length() == model.bytes && ModelStore.sha(staging) == model.sha256) {
                    "Неверная контрольная сумма модели $group"
                }
                job.ensureActive()
                check(staging.renameTo(target)) { "Не удалось сохранить модель $group" }
            } finally {
                staging.delete()
            }
        }
    }

    fun path(name: String): String {
        val entry = entries.firstOrNull { it.file == name } ?: error("Нет модели $name")
        check(isCached(entry)) { "Модель $name не подготовлена" }
        return File(root, name).absolutePath
    }

    fun remove(group: String) {
        for (entry in entries.filter { it.group == group }) {
            val file = File(root, entry.file)
            check(!file.exists() || file.delete()) { "Не удалось удалить модель $group" }
        }
    }

    fun editorInstructions(): String =
        context.assets.open("qwen-editor.txt").bufferedReader().use { it.readText() }

    fun removeRetiredEditor() {
        val name = "qwen2.5-0.5b-instruct-q4_k_m.gguf"
        File(root, name).delete()
        File(root, "$name.part").delete()
    }

    fun hashes(group: String) = entries.filter { it.group == group }.associate { it.file to it.sha256 }

    companion object {
        const val DIARIZATION = "Nemotron 3 · участники"
        const val VBX = "VBx · уточнение участников"
        const val DIARIZATION_FILE = "nemotron3.onnx"
        const val WHISPER = "Whisper Tiny INT8"
        const val QWEN = "Qwen3-0.6B Q8_0 · пунктуация и склонения"
        const val QWEN_FILE = "qwen3-0.6b-q8_0.gguf"
    }
}
