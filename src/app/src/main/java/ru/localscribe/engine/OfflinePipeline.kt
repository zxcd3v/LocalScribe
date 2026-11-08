package ru.localscribe.engine

import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.*
import ru.localscribe.audio.*
import ru.localscribe.core.*
import ru.localscribe.data.*

class OfflinePipeline(
    private val repository: Repository,
    private val models: ModelStore,
    private val timing: ProcessingTimings = ProcessingTimings(),
) {
    suspend fun run(id: String, onProgress: (Float) -> Unit = {}, onStatus: (String) -> Unit) =
        withContext(Dispatchers.Default) {
            val totalStarted = System.nanoTime()
            var r = repository.recording(id) ?: error("Запись не найдена")
            var displayed = -1f
            fun report(progress: Float) {
                val value = progress.coerceIn(0f, 1f)
                if (value > displayed) {
                    displayed = value
                    onProgress(value)
                }
            }
            // Display partial work without advancing the persisted restart checkpoint.
            report(if (r.checkpointSamples > 0) r.progress.coerceIn(0f, 0.98f) else 0f)
            AudioPreflight.requireProcessable(r)
            report(0.02f)
            if (r.settings.fileAsr == FileAsr.WHISPER_EN) {
                onStatus("Подготовка встроенной модели Whisper")
                withContext(Dispatchers.IO) { models.extras.prepare(ExtraModels.WHISPER) }
            }
            onStatus("Проверка целостности моделей")
            timing.measure("weights.verify") { models.verify(r.settings) }
            report(0.05f)
            val info = models.info(r.settings)
            if (r.checkpointSamples > 0)
                require(r.modelInfo == info) {
                    "Модели или настройки изменены. Выполните новую обработку."
                }
            r = r.copy(modelInfo = info, error = null, analysisMode = "offline")
            repository.save(r)
            var wav =
                File(
                    r.pcmPath.ifBlank {
                        File(File(r.audioPath).parentFile, "${r.id}-16k.wav").absolutePath
                    }
                )
            if (!WavFile.isCanonical(wav)) {
                r = r.copy(state = "decoding", progress = 0f)
                repository.save(r)
                onStatus("Декодирование аудио")
                val tmp = File(wav.path + ".part")
                tmp.delete()
                try {
                    timing.suspendMeasure("audio.decode") {
                        AudioDecoder().decode(File(r.audioPath), tmp) { p ->
                            report(0.05f + p.coerceIn(0f, 1f) * 0.10f)
                        }
                    }
                    check(tmp.renameTo(wav))
                    r = r.copy(pcmPath = wav.absolutePath)
                    repository.save(r)
                } finally {
                    tmp.delete()
                }
            }
            val total = (wav.length() - 44) / 2
            require(total > 0) { "Пустое аудио" }
            fun audioProgress(samples: Double) =
                0.40f + 0.58f * (samples / total).toFloat()
            report(0.15f)
            r =
                r.copy(
                    pcmPath = wav.absolutePath,
                    durationMs = Timecode.ms(total),
                    state = "processing",
                )
            repository.save(r)
            repository.cleanupSeparated(id)
            val timeline =
                timing.suspendMeasure("diarization.total") {
                    RecordingDiarization(models, timing).analyze(wav, r.settings, onStatus) {
                        report(0.15f + 0.25f * it)
                    }
                }
            report(audioProgress(r.checkpointSamples.toDouble()))
            val cluster = SpeakerCluster(r.settings, repository.processingSpeakers(id))
            val stableBindings = TimelineSpeakerBindings(timeline,
                cluster.speakers.map { it.id }.toSet())
            repository.visitSegments(id) { stableBindings.consume(it) }
            val resumed = r.checkpointSamples
            repository.restoreConstraints(id, cluster)
            var previousEnd = 0L
            var previousStart: Long? = null
            var previousId = ""
            while (true) {
                val batch = repository.processingSegmentBatchAfter(id, previousStart, previousId)
                if (batch.isEmpty()) break
                previousEnd = maxOf(previousEnd, batch.filter {
                    it.endMs <= Timecode.ms(r.checkpointSamples)
                }.maxOfOrNull { it.endMs } ?: 0L)
                if (batch.last().startMs > Timecode.ms(r.checkpointSamples)) break
                previousStart = batch.last().startMs
                previousId = batch.last().id
            }
            val speechStarted = System.nanoTime()
            Engines(models, r.settings, onStatus, timing).use { engines ->
                BlockTranscriber(r, engines, cluster, models, timeline, timing,
                    timelineBindings = stableBindings.result()).use { analyzer ->
                    RandomAccessFile(wav, "r").use { input ->
                        var offset = r.checkpointSamples
                        while (offset < total) {
                            currentCoroutineContext().ensureActive()
                            // Use only the upcoming bounded PCM window so the cut is reproducible
                            // when resuming from a saved sample offset.
                            val candidate = WavFile.read(input, offset, 30 * 16000)
                            val end = offlineBlockEnd(candidate, offset + candidate.size < total)
                            val block =
                                if (end == candidate.size) candidate else candidate.copyOf(end)
                            val contextStart = (offset - 80000).coerceAtLeast(0)
                            val context =
                                WavFile.read(
                                    input,
                                    contextStart,
                                    (offset - contextStart).toInt() + block.size + 80000,
                                )
                            val segments =
                                analyzer.process(
                                    block,
                                    context,
                                    (offset - contextStart).toInt(),
                                    offset,
                                    previousEnd,
                                    onStatus,
                                    { portion ->
                                        report(
                                            audioProgress(offset + block.size * portion.toDouble())
                                        )
                                    },
                                )
                            previousEnd =
                                maxOf(previousEnd, segments.maxOfOrNull { it.endMs } ?: 0L)
                            currentCoroutineContext().ensureActive()
                            val blockStart = offset
                            offset += block.size
                            r =
                                r.copy(
                                    checkpointSamples = offset,
                                    progress = audioProgress(offset.toDouble()),
                                    rtf =
                                        (System.nanoTime() - totalStarted) /
                                            1_000_000_000.0 /
                                            ((offset - resumed) / 16000.0),
                                )
                            repository.commitProcessedBlock(
                                r, segments, cluster.speakers,
                                Timecode.ms(blockStart), Timecode.ms(offset),
                            )
                            report(r.progress)
                        }
                    }
                }
            }
            timing.elapsed("speech.total", speechStarted)
            repository.completeProcessing(id)
            onStatus("Уточнение участников")
            report(0.98f)
            val protected = mutableSetOf<String>()
            repository.visitSegments(id) { batch ->
                batch.filter { it.status == "corrected" }.mapNotNullTo(protected) { it.speakerId }
            }
            protected += cluster.speakers.map { it.id }
            val aliases = cluster.refine(protected)
            repository.refineSpeakers(
                id,
                cluster.speakers,
                { s ->
                    if (s.status == "corrected") s
                    else
                        s.copy(
                            speakerId = aliases[s.speakerId] ?: s.speakerId,
                            speakerProvisional = s.speakerProvisional,
                        )
                },
                completed = true,
            )
            repository.cleanupSeparated(id)
            // Include decoding and both diarizers in the displayed end-to-end cost.
            repository.recording(id)?.let { current ->
                val remainingSeconds = (total - resumed) / 16000.0
                if (remainingSeconds > 0)
                    repository.save(
                        current.copy(
                            rtf =
                                (System.nanoTime() - totalStarted) /
                                    1_000_000_000.0 /
                                    remainingSeconds
                        )
                    )
            }
            report(1f)
            timing.elapsed("pipeline.total", totalStarted)
        }

    /** Explicit optional post-processing; never included in transcription or its RTF. */
    suspend fun editTranscript(
        id: String,
        onStatus: (String) -> Unit = {},
        onProgress: (Float) -> Unit = {},
    ) = withContext(Dispatchers.Default) {
        val recording = repository.recording(id) ?: error("Запись не найдена")
        require(recording.state == "done") { "Сначала завершите обработку записи" }
        require(recording.settings.fileAsr != FileAsr.WHISPER_EN) {
            "Редактор предназначен для русской речи"
        }
        require(models.extras.hashes(ExtraModels.QWEN).isNotEmpty()) {
            "Модель редактора Qwen3 не установлена"
        }
        timing.suspendMeasure("editor.total") {
            editText(recording, onStatus) { progress ->
                onProgress(((progress - 0.93f) / 0.05f).coerceIn(0f, 1f))
            }
        }
        onProgress(1f)
    }

    private suspend fun editText(
        recording: Recording,
        onStatus: (String) -> Unit,
        report: (Float) -> Unit,
    ) {
        val total = repository.segmentCount(recording.id)
        if (total == 0) return
        try {
            onStatus("Подготовка редактора Qwen3")
            timing.suspendMeasure("editor.weights") {
                withContext(Dispatchers.IO) { models.extras.prepare(ExtraModels.QWEN) }
            }
            val job = currentCoroutineContext()
            onStatus("Проверка пунктуации и склонений")
            val editorStarted = System.nanoTime()
            LocalTextEditor(
                    models.extras.path(ExtraModels.QWEN_FILE),
                    models.extras.editorInstructions(),
                )
                .use { editor ->
                    editor.cancellable {
                        timing.elapsed("editor.load", editorStarted)
                        var processed = 0
                        val window =
                            TranscriptEditingWindow({ texts, previous ->
                                timing.measure("editor.request") {
                                    editor.editBatch(texts, previous)
                                }
                            }) { completed ->
                                job.ensureActive()
                                val changed =
                                    completed.filter {
                                        it.originalAsrText != null && it.status != "corrected"
                                    }
                                if (changed.isNotEmpty())
                                    repository.commitEditedText(recording.id, changed)
                                processed += completed.size
                                onStatus("Редактирование диалога · $processed из $total реплик")
                                report(0.93f + 0.05f * processed / total)
                            }
                        var lastStart: Long? = null
                        var lastId = ""
                        while (true) {
                            job.ensureActive()
                            val page = repository.segmentBatchAfter(recording.id, lastStart, lastId)
                            if (page.isEmpty()) break
                            for (segment in page) {
                                job.ensureActive()
                                window.push(segment)
                            }
                            lastStart = page.last().startMs
                            lastId = page.last().id
                        }
                        job.ensureActive()
                        window.finish()
                    }
                }
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            android.util.Log.w("LocalScribe", "Qwen editor unavailable", e)
            throw e
        } catch (e: LinkageError) {
            android.util.Log.w("LocalScribe", "Qwen native editor unavailable", e)
            throw e
        }
    }
}
