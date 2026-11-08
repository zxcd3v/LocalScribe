package ru.localscribe.engine

import com.k2fsa.sherpa.onnx.*
import java.io.Closeable
import kotlin.math.roundToInt
import ru.localscribe.core.*
import ru.localscribe.data.ModelStore

data class NeuralTurn(val begin: Int, val end: Int, val localSpeaker: Int, val silhouette: Float?)

// sherpa-onnx JNI looks up invoke(int, int, long): Integer on the concrete class.
// An invokedynamic Kotlin lambda exposes only the erased Function3 bridge on Android.
private class DiarizationCallback(private val isActive: () -> Boolean) :
    Function3<Int, Int, Long, Int> {
    override fun invoke(processed: Int, total: Int, arg: Long): Int = if (isActive()) 1 else 0
}

/** Real offline segmentation + hierarchical clustering, never used as streaming diarization. */
class NeuralDiarizer(models: ModelStore, settings: Settings, wholeRecording: Boolean = false) :
    Closeable {
    private val model =
        OfflineSpeakerDiarization(
            config =
                OfflineSpeakerDiarizationConfig(
                    segmentation =
                        OfflineSpeakerSegmentationModelConfig(
                            pyannote =
                                OfflineSpeakerSegmentationPyannoteModelConfig(
                                    model = models.file("advanced/segmentation.int8.onnx"),
                                    windowShiftRatio =
                                        when (settings.quality) {
                                            Quality.FAST -> 0.3f
                                            Quality.BALANCED -> 0.2f
                                            Quality.ACCURATE -> 0.1f
                                        },
                                ),
                            numThreads = settings.threads,
                        ),
                    embedding =
                        SpeakerEmbeddingExtractorConfig(
                            model = models.file("speaker.onnx"),
                            numThreads = settings.threads,
                        ),
                    // Auto cluster each context window: forcing the recording's K into a window
                    // with fewer active people invents speakers. The exact manual count is safe
                    // to apply only when this window contains the entire recording.
                    clustering =
                        FastClusteringConfig(
                            numClusters =
                                if (
                                    settings.speakers == 1 ||
                                        (wholeRecording && settings.speakers > 0)
                                )
                                    settings.speakers
                                else -1,
                            threshold = 0.5f,
                            computeConfidence = true,
                        ),
                    minDurationOn = 0.15f,
                    minDurationOff = 0.15f,
                )
        )

    fun turns(
        audio: FloatArray,
        coreStart: Int,
        coreSize: Int,
        isActive: () -> Boolean,
    ): List<NeuralTurn> {
        require(audio.size <= 40 * 16000)
        val result = model.processWithCallback(audio, DiarizationCallback(isActive))
        return result
            .mapNotNull {
                val start = (it.start * 16000).roundToInt().minus(coreStart).coerceIn(0, coreSize)
                val end = (it.end * 16000).roundToInt().minus(coreStart).coerceIn(0, coreSize)
                if (end <= start) null
                else
                    NeuralTurn(
                        start,
                        end,
                        it.speaker,
                        it.confidence.takeIf { v -> v.isFinite() && v in -1f..1f },
                    )
            }
            .sortedWith(compareBy({ it.begin }, { it.localSpeaker }))
    }

    override fun close() = model.release()
}
