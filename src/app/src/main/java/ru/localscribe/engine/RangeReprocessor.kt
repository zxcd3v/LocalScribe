package ru.localscribe.engine

import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import ru.localscribe.audio.WavFile
import ru.localscribe.audio.copyPcmRange
import ru.localscribe.core.*
import ru.localscribe.data.*

data class RangeProcessingResult(
    val recordingId: String,
    val startMs: Long,
    val endMs: Long,
    val segments: List<Segment>,
    val speakers: List<Speaker>,
    val temporaryAudioPaths: List<String> = emptyList(),
)

/** Reuses the offline models for a bounded preview; persistence remains an explicit UI action. */
class RangeReprocessor(private val repository: Repository, private val models: ModelStore) {
    suspend fun preview(
        id: String,
        startMs: Long,
        endMs: Long,
        onStatus: (String) -> Unit = {},
        onProgress: (Float) -> Unit = {},
    ): RangeProcessingResult = withContext(Dispatchers.Default) {
        require(startMs >= 0 && endMs > startMs && endMs - startMs <= 60000) {
            "Выберите интервал от 1 мс до 60 секунд"
        }
        val recording = repository.recording(id) ?: error("Запись не найдена")
        require(recording.state == "done") { "Сначала завершите обработку записи" }
        val wav = File(recording.pcmPath.ifBlank { recording.audioPath })
        require(WavFile.isCanonical(wav)) { "Сначала подготовьте PCM16 WAV 16 кГц" }
        val totalSamples = (wav.length() - 44) / 2
        require(endMs <= Timecode.ms(totalSamples)) { "Интервал выходит за конец записи" }
        val begin = startMs * 16
        val end = endMs * 16
        val analysisBegin = (begin - 80000).coerceAtLeast(0)
        val analysisEnd = (end + 80000).coerceAtMost(totalSamples)
        if (recording.settings.fileAsr == FileAsr.WHISPER_EN)
            withContext(Dispatchers.IO) { models.extras.prepare(ExtraModels.WHISPER) }
        onStatus("Проверка моделей для выбранного интервала")
        models.verify(recording.settings)
        onProgress(.05f)
        val temporaryWav = File.createTempFile("localscribe-range-", ".wav", wav.parentFile)
        val generatedStems = mutableListOf<File>()
        try {
            withContext(Dispatchers.IO) { copyPcmRange(wav, temporaryWav, analysisBegin, analysisEnd) }
            val local = RecordingDiarization(models).analyze(
                temporaryWav, recording.settings, onStatus,
            ) { onProgress(.05f + .35f * it) }
            val timeline = SpeakerTimeline(local.turns.mapNotNull {
                val start = maxOf(begin, it.start + analysisBegin)
                val finish = minOf(end, it.end + analysisBegin)
                if (finish > start) it.copy(start = start, end = finish) else null
            })
            val cluster = SpeakerCluster(recording.settings, repository.speakers(id))
            val stableBindings = TimelineSpeakerBindings(timeline,
                cluster.speakers.map { it.id }.toSet())
            repository.visitSegments(id) { stableBindings.consume(it) }
            repository.restoreConstraints(id, cluster)
            val result = mutableListOf<Segment>()
            Engines(models, recording.settings, onStatus).use { engines ->
                BlockTranscriber(recording, engines, cluster, models, timeline,
                    timelineBindings = stableBindings.result()).use { analyzer ->
                    try {
                        RandomAccessFile(wav, "r").use { input ->
                            var offset = begin
                            var previousEnd = startMs
                            while (offset < end) {
                                currentCoroutineContext().ensureActive()
                                val candidate = WavFile.read(input, offset, minOf(480000L, end - offset).toInt())
                                check(candidate.isNotEmpty()) { "Аудио оборвалось при обработке интервала" }
                                val cut = offlineBlockEnd(candidate, offset + candidate.size < end)
                                val block = if (cut == candidate.size) candidate else candidate.copyOf(cut)
                                val contextStart = (offset - 80000).coerceAtLeast(0)
                                val context = WavFile.read(input, contextStart,
                                    (offset - contextStart).toInt() + block.size + 80000)
                                val segments = analyzer.process(block, context,
                                    (offset - contextStart).toInt(), offset, previousEnd, onStatus,
                                ) { progress ->
                                    onProgress(.4f + .58f *
                                        ((offset - begin + block.size * progress) / (end - begin)).toFloat())
                                }
                                check(segments.all { it.startMs >= startMs && it.endMs <= endMs }) {
                                    "Результат вышел за выбранный интервал"
                                }
                                result += segments
                                previousEnd = maxOf(previousEnd, segments.maxOfOrNull { it.endMs } ?: 0L)
                                offset += block.size
                            }
                        }
                    } finally {
                        generatedStems += analyzer.createdSeparatedAudio
                    }
                }
            }
            currentCoroutineContext().ensureActive()
            onProgress(1f)
            RangeProcessingResult(id, startMs, endMs, result, cluster.speakers.toList(),
                generatedStems.map { it.absolutePath })
        } catch (failure: Throwable) {
            generatedStems.forEach { it.delete() }
            throw failure
        } finally {
            temporaryWav.delete()
        }
    }

}
