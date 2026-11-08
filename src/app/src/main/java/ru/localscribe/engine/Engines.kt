package ru.localscribe.engine

import com.k2fsa.sherpa.onnx.*
import java.io.Closeable
import ru.localscribe.core.*
import ru.localscribe.data.ModelStore

class Engines(
    private val models: ModelStore,
    private val settings: Settings,
    private val onStage: (String) -> Unit = {},
    private val timing: ProcessingTimings = ProcessingTimings(),
    private val cpuThreads: Int = settings.threads,
) : Closeable {
    private var offline: OfflineRecognizer? = null
    private var online: OnlineRecognizer? = null
    private var embedding: SpeakerEmbeddingExtractor? = null

    fun offline(): OfflineRecognizer {
        offline?.let {
            return it
        }
        onStage("Загрузка модели распознавания файла")
        if (settings.fileAsr == FileAsr.WHISPER_EN) {
            return OfflineRecognizer(
                    config =
                        OfflineRecognizerConfig(
                            modelConfig =
                                OfflineModelConfig(
                                    whisper =
                                        OfflineWhisperModelConfig(
                                            encoder = models.extras.path("tiny-encoder.int8.onnx"),
                                            decoder = models.extras.path("tiny-decoder.int8.onnx"),
                                            language = "en",
                                            task = "transcribe",
                                        ),
                                    tokens = models.extras.path("tiny-tokens.txt"),
                                    modelType = "whisper",
                                    numThreads = cpuThreads.coerceAtMost(2),
                                    provider = "cpu",
                                )
                        )
                )
                .also {
                    offline = it
                    onStage("Распознавание речи")
                }
        }
        val r =
            OfflineRecognizer(
                config =
                    OfflineRecognizerConfig(
                        featConfig = FeatureConfig(sampleRate = 16000, featureDim = 64),
                        modelConfig =
                            OfflineModelConfig(
                                transducer =
                                    OfflineTransducerModelConfig(
                                        models.file("gigaam-v3/encoder.int8.onnx"),
                                        models.file("gigaam-v3/decoder.onnx"),
                                        models.file("gigaam-v3/joiner.onnx"),
                                    ),
                                tokens = models.file("gigaam-v3/tokens.txt"),
                                modelType = "nemo_transducer",
                                numThreads = cpuThreads,
                                provider = "cpu",
                            ),
                        decodingMethod = "greedy_search",
                    )
            )
        offline = r
        onStage("Распознавание речи")
        return r
    }

    fun online(): OnlineRecognizer {
        online?.let {
            return it
        }
        onStage("Загрузка модели потокового распознавания")
        val r =
            OnlineRecognizer(
                config =
                    OnlineRecognizerConfig(
                        featConfig = FeatureConfig(sampleRate = 8000),
                        modelConfig =
                            OnlineModelConfig(
                                toneCtc =
                                    OnlineToneCtcModelConfig(models.file(models.onlineName())),
                                tokens = models.file("streaming/tokens.txt"),
                                numThreads = cpuThreads,
                                provider = "cpu",
                            ),
                        endpointConfig =
                            EndpointConfig(
                                rule1 = EndpointRule(false, 2.4f, 0f),
                                rule2 = EndpointRule(true, 0.8f, 0f),
                                rule3 = EndpointRule(false, 0f, 12f),
                            ),
                    )
            )
        online = r
        return r
    }

    fun vad(): Vad {
        onStage("Загрузка детектора речи")
        return Vad(
            config =
                VadModelConfig(
                    sileroVadModelConfig =
                        SileroVadModelConfig(
                            model = models.file("silero.onnx"),
                            minSpeechDuration = 0.15f,
                            minSilenceDuration = 0.35f,
                            maxSpeechDuration = 15f,
                        ),
                    sampleRate = 16000,
                    numThreads = 1,
                )
        )
    }

    fun embedding(x: FloatArray): FloatArray? {
        if (x.size < 12800) return null
        val e =
            embedding
                ?: SpeakerEmbeddingExtractor(
                        config =
                            SpeakerEmbeddingExtractorConfig(
                                model = models.file("speaker.onnx"),
                                numThreads = cpuThreads,
                                provider = "cpu",
                            )
                    )
                    .also { embedding = it }
        val s = e.createStream()
        return try {
            s.acceptWaveform(x, 16000)
            s.inputFinished()
            if (e.isReady(s)) SpeakerCluster.normalize(e.compute(s)) else null
        } finally {
            s.release()
        }
    }

    fun recognize(x: FloatArray, offsetMs: Long): Pair<String, List<TokenStamp>> {
        // Bound each inference window for memory and ASR accuracy.
        // Keep this guard independent of VAD: its maxSpeechDuration is a soft threshold.
        require(x.size <= 15 * 16000) { "Фрагмент ASR превышает безопасное окно 15 секунд" }
        val r = timing.measure("asr.acquire") { offline() }
        val s = r.createStream()
        return try {
            s.acceptWaveform(x, 16000)
            timing.measure("asr.infer") { r.decode(s) }
            val result = r.getResult(s)
            result.text.trim() to
                if (
                    settings.fileAsr != FileAsr.WHISPER_EN &&
                        result.timestamps.size == result.tokens.size
                )
                    result.tokens.indices.mapNotNull { i ->
                        val t = result.timestamps[i]
                        if (t.isFinite() && t >= 0 && t * 16000 <= x.size)
                            TokenStamp(result.tokens[i], offsetMs + (t * 1000).toLong())
                        else null
                    }
                else emptyList()
        } finally {
            s.release()
        }
    }

    fun releaseOffline() {
        offline?.release()
        offline = null
    }

    override fun close() {
        releaseOffline()
        online?.release()
        embedding?.release()
        online = null
        embedding = null
    }
}
