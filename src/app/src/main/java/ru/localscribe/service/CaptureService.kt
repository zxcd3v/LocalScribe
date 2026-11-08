package ru.localscribe.service

import android.Manifest
import android.app.Service
import android.content.Intent
import android.content.pm.PackageManager
import android.media.*
import android.os.*
import androidx.core.content.ContextCompat
import java.io.File
import java.io.RandomAccessFile
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.atomic.AtomicLong
import kotlin.math.sqrt
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.update
import ru.localscribe.ScribeApp
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*
import ru.localscribe.data.EngineGate
import ru.localscribe.engine.LiveProcessor

class CaptureService : Service() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    private var job: Job? = null
    @Volatile private var stopping = false
    @Volatile private var paused = false
    @Volatile private var recorder: AudioRecord? = null

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            "STOP" -> {
                stopping = true
                if (job?.isActive != true) stopSelf()
                return START_NOT_STICKY
            }
            "PAUSE" -> {
                paused = true
                return START_NOT_STICKY
            }
            "RESUME" -> {
                paused = false
                return START_NOT_STICKY
            }
        }
        if (job?.isActive == true) return START_NOT_STICKY
        val id = intent?.getStringExtra("id") ?: return START_NOT_STICKY
        try {
            foreground(true, "Подготовка к записи")
        } catch (e: RuntimeException) {
            val app = application as ScribeApp
            app.diagnostics.failure("foreground-start", e)
            app.scope.launch {
                app.ready.await()
                app.repository.captureStopped(
                    id,
                    "Android не разрешил запуск. Откройте приложение и проверьте разрешение микрофона.",
                    "error",
                )
            }
            stopSelf()
            return START_NOT_STICKY
        }
        stopping = false
        paused = false
        job =
            scope.launch {
                val app = application as ScribeApp
                var wake: PowerManager.WakeLock? = null
                try {
                    app.ready.await()
                    require(!EngineGate.mutex.isLocked) { "Другая задача уже выполняется" }
                    require(
                        ContextCompat.checkSelfPermission(
                            this@CaptureService,
                            Manifest.permission.RECORD_AUDIO,
                        ) == PackageManager.PERMISSION_GRANTED
                    ) {
                        "Нет разрешения микрофона"
                    }
                    EngineGate.exclusive {
                        JobState.active.value = id
                        var r = app.repository.prepareCapture(id)
                        app.repository.save(r.copy(state = "capture_pending", error = null))
                        JobState.live.value =
                            LiveState(
                                recordingId = id,
                                preparing = true,
                                elapsedMs = r.durationMs,
                                message = "Проверка локальных моделей",
                            )
                        app.diagnostics.stage("capture: verify models")
                        app.models.verify(r.settings, live = true)
                        val modelInfo = app.models.info(r.settings, live = true)
                        val oldVoiceModel = r.modelInfo?.sha256?.get("speaker.onnx")
                        require(
                            oldVoiceModel == null ||
                                oldVoiceModel == modelInfo.sha256["speaker.onnx"]
                        ) {
                            "Модель голоса изменилась. Для новых моделей начните отдельную сессию."
                        }
                        if (stopping)
                            throw CancellationException("Остановлено до запуска микрофона")
                        val initialSamples =
                            if (File(r.audioPath).isFile)
                                ((File(r.audioPath).length() - 44) / 2).coerceAtLeast(0)
                            else 0L
                        val resumeSamples =
                            CaptureRecovery.resumeAt(r.liveCheckpointSamples, initialSamples)
                        r = r.copy(modelInfo = modelInfo, state = "capture_pending", error = null)
                        app.repository.save(r)
                        val file = File(r.audioPath)
                        val written = AtomicLong(initialSamples)
                        val boundaries =
                            ConcurrentLinkedQueue<Long>().apply {
                                if (resumeSamples < initialSamples) add(initialSamples)
                            }
                        val captured = java.util.concurrent.atomic.AtomicBoolean(false)
                        wake =
                            getSystemService(PowerManager::class.java)
                                .newWakeLock(
                                    PowerManager.PARTIAL_WAKE_LOCK,
                                    "LocalScribe:microphone",
                                )
                                .apply { acquire(24 * 60 * 60 * 1000L) }
                        JobState.live.value =
                            LiveState(
                                recordingId = id,
                                elapsedMs = Timecode.ms(initialSamples),
                                message = "Загрузка локальных моделей",
                                preparing = true,
                            )
                        // Initialize inference before opening the microphone: model failures cannot
                        // lose an ongoing recording.
                        WavFile(file, append = initialSamples > 0).use { writer ->
                            writer.checkpoint()
                            LiveProcessor(
                                    r,
                                    app.repository,
                                    app.models,
                                    resumeSamples,
                                    onStage = { app.diagnostics.stage("capture: $it") },
                                )
                                .use { processor ->
                                    if (stopping)
                                        throw CancellationException(
                                            "Остановлено до запуска микрофона"
                                        )
                                    coroutineScope {
                                        val capture =
                                            launch(Dispatchers.IO) {
                                                val min =
                                                    AudioRecord.getMinBufferSize(
                                                        16000,
                                                        AudioFormat.CHANNEL_IN_MONO,
                                                        AudioFormat.ENCODING_PCM_16BIT,
                                                    )
                                                require(min > 0) {
                                                    "Микрофон не поддерживает 16 кГц PCM"
                                                }
                                                app.diagnostics.stage(
                                                    "capture: opening AudioRecord"
                                                )
                                                val ar =
                                                    AudioRecord.Builder()
                                                        .setAudioSource(
                                                            MediaRecorder.AudioSource
                                                                .VOICE_RECOGNITION
                                                        )
                                                        .setAudioFormat(
                                                            AudioFormat.Builder()
                                                                .setSampleRate(16000)
                                                                .setEncoding(
                                                                    AudioFormat.ENCODING_PCM_16BIT
                                                                )
                                                                .setChannelMask(
                                                                    AudioFormat.CHANNEL_IN_MONO
                                                                )
                                                                .build()
                                                        )
                                                        .setBufferSizeInBytes(maxOf(min * 4, 32000))
                                                        .build()
                                                recorder = ar
                                                try {
                                                    check(
                                                        ar.state == AudioRecord.STATE_INITIALIZED
                                                    ) {
                                                        "Не удалось открыть микрофон"
                                                    }
                                                    ar.startRecording()
                                                    check(
                                                        ar.recordingState ==
                                                            AudioRecord.RECORDSTATE_RECORDING
                                                    )
                                                    app.repository.update(id) {
                                                        it.copy(state = "recording")
                                                    }
                                                    JobState.live.update {
                                                        it.copy(
                                                            preparing = false,
                                                            message = "Разговор записывается",
                                                        )
                                                    }
                                                    app.diagnostics.stage(
                                                        "capture: AudioRecord + streaming inference"
                                                    )
                                                    val buffer = ShortArray(1600)
                                                    var wasPaused = false
                                                    var saved = 0L
                                                    foreground(
                                                        true,
                                                        "Разговор записывается локально",
                                                    )
                                                    while (isActive && !stopping) {
                                                        if (paused) {
                                                            if (!wasPaused) {
                                                                ar.stop()
                                                                writer.checkpoint()
                                                                boundaries.add(writer.samples)
                                                                require(boundaries.size <= 128)
                                                                wasPaused = true
                                                                app.repository.update(id) {
                                                                    it.copy(state = "paused")
                                                                }
                                                                foreground(
                                                                    true,
                                                                    "Пауза — микрофон остановлен",
                                                                )
                                                            }
                                                            JobState.live.update {
                                                                it.copy(paused = true, level = 0f)
                                                            }
                                                            delay(100)
                                                            continue
                                                        }
                                                        if (wasPaused) {
                                                            ar.startRecording()
                                                            wasPaused = false
                                                            app.repository.update(id) {
                                                                it.copy(state = "recording")
                                                            }
                                                            foreground(
                                                                true,
                                                                "Разговор записывается локально",
                                                            )
                                                        }
                                                        val n =
                                                            ar.read(
                                                                buffer,
                                                                0,
                                                                buffer.size,
                                                                AudioRecord.READ_BLOCKING,
                                                            )
                                                        if (n < 0)
                                                            error(
                                                                "Ошибка AudioRecord $n. Проверьте разрешение и доступность микрофона."
                                                            )
                                                        if (n == 0) {
                                                            delay(10)
                                                            continue
                                                        }
                                                        val x =
                                                            FloatArray(n) { buffer[it] / 32768f }
                                                        writer.write(x)
                                                        written.set(writer.samples)
                                                        JobState.live.update {
                                                            it.copy(
                                                                elapsedMs =
                                                                    Timecode.ms(writer.samples),
                                                                level =
                                                                    sqrt(
                                                                            x.sumOf {
                                                                                it.toDouble() * it
                                                                            } / n
                                                                        )
                                                                        .toFloat(),
                                                                paused = false,
                                                            )
                                                        }
                                                        if (writer.samples - saved >= 16000) {
                                                            writer.checkpoint()
                                                            saved = writer.samples
                                                            app.repository.update(id) {
                                                                it.copy(
                                                                    durationMs =
                                                                        Timecode.ms(writer.samples)
                                                                )
                                                            }
                                                        }
                                                    }
                                                } finally {
                                                    runCatching { ar.stop() }
                                                    ar.release()
                                                    recorder = null
                                                    writer.checkpoint()
                                                    captured.set(true)
                                                }
                                            }
                                        val consume =
                                            launch(Dispatchers.Default) {
                                                RandomAccessFile(file, "r").use { input ->
                                                    var position = resumeSamples
                                                    var degraded = false
                                                    var cpuNs = 0L
                                                    var inferenceSamples = 0L
                                                    while (
                                                        isActive &&
                                                            (!captured.get() ||
                                                                position < written.get())
                                                    ) {
                                                        val boundary = boundaries.peek()
                                                        if (
                                                            boundary != null && position >= boundary
                                                        ) {
                                                            processor.finish()
                                                            boundaries.poll()
                                                            continue
                                                        }
                                                        val available = written.get() - position
                                                        val lag = available / 16000.0
                                                        JobState.live.update {
                                                            it.copy(lagSeconds = lag)
                                                        }
                                                        // The disk is the spool. No unbounded PCM
                                                        // queue
                                                        // and no silent sample dropping.
                                                        if (
                                                            CaptureRecovery.isOverloaded(
                                                                position,
                                                                written.get(),
                                                                initialSamples,
                                                            )
                                                        ) {
                                                            degraded = true
                                                            JobState.live.update {
                                                                it.copy(
                                                                    message =
                                                                        "Устройство не успевает. Аудио сохраняется; после остановки выполните офлайн-обработку."
                                                                )
                                                            }
                                                        }
                                                        if (degraded) {
                                                            position = written.get()
                                                            delay(100)
                                                            continue
                                                        }
                                                        if (available <= 0) {
                                                            delay(40)
                                                            continue
                                                        }
                                                        val count =
                                                            minOf(
                                                                    1600L,
                                                                    available,
                                                                    boundary?.minus(position)
                                                                        ?: Long.MAX_VALUE,
                                                                )
                                                                .toInt()
                                                        val x = WavFile.read(input, position, count)
                                                        val before = System.nanoTime()
                                                        processor.accept(x)
                                                        cpuNs += System.nanoTime() - before
                                                        position += x.size
                                                        inferenceSamples += x.size
                                                        if (inferenceSamples % 16000L < 1600L)
                                                            app.repository.update(id) {
                                                                it.copy(
                                                                    rtf =
                                                                        cpuNs /
                                                                            1e9 /
                                                                            (inferenceSamples /
                                                                                16000.0)
                                                                )
                                                            }
                                                    }
                                                    processor.finish()
                                                    processor.refine()
                                                    if (degraded)
                                                        app.repository.recording(id)?.let {
                                                            app.repository.save(
                                                                it.copy(
                                                                    error =
                                                                        "Потоковая расшифровка неполная: отставание свыше 120 с. Выполните повторную обработку аудио."
                                                                )
                                                            )
                                                        }
                                                }
                                            }
                                        capture.join()
                                        app.repository.update(id) { it.copy(state = "finishing") }
                                        consume.join()
                                    }
                                }
                        }
                        app.repository.recording(id)?.let {
                            app.repository.save(
                                it.copy(
                                    state = "recorded",
                                    pcmPath = file.absolutePath,
                                    durationMs = Timecode.ms((file.length() - 44) / 2),
                                )
                            )
                        }
                    }
                } catch (e: CancellationException) {
                    app.repository.captureStopped(id, "Запись прервана.")
                } catch (e: OutOfMemoryError) {
                    app.diagnostics.failure("capture-memory", e)
                    app.repository.captureStopped(id, "Недостаточно памяти.", "error")
                } catch (e: LinkageError) {
                    app.diagnostics.failure("capture-native-load", e)
                    app.repository.captureStopped(
                        id,
                        "Не удалось загрузить движок. Сохраните диагностику.",
                        "error",
                    )
                } catch (e: Exception) {
                    app.diagnostics.failure("capture", e)
                    app.repository.captureStopped(id, e.message ?: e.javaClass.simpleName, "error")
                } finally {
                    app.repository.recording(id)?.let { WavFile.repair(File(it.audioPath)) }
                    wake?.let { if (it.isHeld) it.release() }
                    if (JobState.active.value == id) JobState.active.value = null
                    JobState.live.value = LiveState()
                    stopForeground(STOP_FOREGROUND_REMOVE)
                    stopSelf()
                }
            }
        return START_NOT_STICKY
    }

    override fun onDestroy() {
        stopping = true
        runCatching { recorder?.stop() }
        scope.cancel()
        super.onDestroy()
    }
}
