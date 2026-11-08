package ru.localscribe.engine

import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.*
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*
import ru.localscribe.data.*

class RecordingDiarization(
    private val models: ModelStore,
    private val timing: ProcessingTimings = ProcessingTimings(),
) {
    suspend fun analyze(
        wav: File,
        settings: Settings,
        status: (String) -> Unit,
        progress: (Float) -> Unit,
    ): SpeakerTimeline {
        val total = (wav.length() - 44) / 2
        val job = currentCoroutineContext()
        status("Подготовка модели участников")
        timing.suspendMeasure("diarization.weights") {
            models.extras.prepare(ExtraModels.DIARIZATION)
        }
        val turns = mutableListOf<VoiceTurn>()
        timing
            .measure("diarization.primary.load") {
                NativeDiarizer(models.extras.path(ExtraModels.DIARIZATION_FILE))
            }
            .use { engine ->
                RandomAccessFile(wav, "r").use { input ->
                    var offset = 0L
                    while (offset < total) {
                        job.ensureActive()
                        status(
                            "Определение голосов · ${Timecode.subtitle(Timecode.ms(offset), '.')}"
                        )
                        val block = WavFile.read(input, offset, 160000)
                        check(block.isNotEmpty()) { "Аудио оборвалось при определении участников" }
                        turns +=
                            timing.measure("diarization.primary.infer") { engine.accept(block) }
                        offset += block.size
                        progress(0.6f * offset / total)
                    }
                    job.ensureActive()
                    turns += timing.measure("diarization.primary.flush") { engine.complete() }
                }
            }
        val primary =
            SpeakerTimeline(
                turns.mapNotNull {
                    val end = minOf(it.end, total)
                    if (end > it.start) it.copy(end = end) else null
                }
            )
        if (!settings.refineDiarization) {
            progress(1f)
            return primary
        }
        status("Подготовка уточнения голосов")
        timing.suspendMeasure("diarization.secondary.weights") {
            models.extras.prepare(ExtraModels.VBX)
        }
        val folder = File(models.extras.path("segmentation-3.0.safetensors")).parent!!
        // Bound stored segmentation masks and quadratic clustering memory for long recordings.
        val step = maxOf(1L, (total + 16000L * 1800 - 1) / (16000L * 1800))
        val secondary =
            timing
                .measure("diarization.secondary.load") {
                    NativeDiarizer(
                        folder,
                        secondary = true,
                        step = step.toDouble(),
                        workers =
                            if (android.os.Build.SUPPORTED_ABIS.firstOrNull() == "x86_64") 1 else 0,
                    )
                }
                .use { engine ->
                    RandomAccessFile(wav, "r").use { input ->
                        var offset = 0L
                        while (offset < total) {
                            job.ensureActive()
                            status(
                                "Уточнение голосов · ${Timecode.subtitle(Timecode.ms(offset), '.')}"
                            )
                            val block = WavFile.read(input, offset, 160000)
                            timing.measure("diarization.secondary.infer") { engine.accept(block) }
                            offset += step * 16000
                            progress(0.6f + 0.35f * offset.coerceAtMost(total) / total)
                        }
                        job.ensureActive()
                        status("Сопоставление участников всей записи")
                        timing.measure("diarization.secondary.cluster") { engine.complete() }
                    }
                }
        job.ensureActive()
        progress(1f)
        return SpeakerTimeline.fuse(
            primary,
            SpeakerTimeline(
                secondary.mapNotNull {
                    val end = minOf(it.end, total)
                    if (end > it.start) it.copy(end = end) else null
                }
            ),
        )
    }
}
