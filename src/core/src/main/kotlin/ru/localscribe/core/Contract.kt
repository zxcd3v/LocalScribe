package ru.localscribe.core

import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

val codec = Json {
    encodeDefaults = true
    ignoreUnknownKeys = true
    prettyPrint = false
}

@Serializable
enum class Quality {
    FAST,
    BALANCED,
    ACCURATE,
}

@Serializable
enum class FileAsr {
    GIGAAM_V3,
    WHISPER_EN,
    // Persisted settings and exported recordings from older app versions.
    ZIPFORMER,
    WHISPER_RU;

    val current: FileAsr get() = if (this == WHISPER_EN) WHISPER_EN else GIGAAM_V3
}

@Serializable
data class Settings(
    val quality: Quality = Quality.BALANCED,
    val speakers: Int = 0,
    val matchThreshold: Float = 0.65f,
    val newThreshold: Float = 0.42f,
    val prosody: Boolean = true,
    val showInterpretations: Boolean = true,
    val separateOverlap: Boolean = true,
    val emotions: Boolean = true,
    val fileAsr: FileAsr = FileAsr.GIGAAM_V3,
    val editRussianText: Boolean = false,
    val refineDiarization: Boolean = true,
) {
    val confirmedNewThreshold: Float
        get() = maxOf(newThreshold, matchThreshold - 0.03f)

    val runSeparation: Boolean
        get() = separateOverlap && quality != Quality.FAST

    val runEmotions: Boolean
        get() = emotions && quality != Quality.FAST

    val threads: Int
        get() =
            when (quality) {
                Quality.FAST -> 1
                Quality.BALANCED -> 2
                Quality.ACCURATE -> 4
            }
}

@Serializable
data class ModelInfo(
    val id: String,
    val version: String,
    val sha256: Map<String, String>,
    val engine: String = "sherpa-onnx-2.0.1; ort-java-1.28.0; analysis-0.3.0; nemotron3-vbx-1; contextual-asr-editor-1",
    val settings: Settings,
)

@Serializable
data class Recording(
    val id: String,
    val title: String,
    val createdAt: Long,
    val audioPath: String,
    val pcmPath: String = "",
    val durationMs: Long = 0,
    val state: String = "imported",
    val progress: Float = 0f,
    val checkpointSamples: Long = 0,
    val error: String? = null,
    val rtf: Double? = null,
    val modelInfo: ModelInfo? = null,
    val settings: Settings = Settings(),
    val source: String = "file",
    val analysisMode: String = if (source == "microphone") "streaming" else "offline",
    val liveCheckpointSamples: Long? = null,
    val enrollmentProfileId: String? = null,
)

@Serializable
data class Speaker(
    val id: String,
    val name: String,
    val centroid: List<Float> = emptyList(),
    val observations: Int = 0,
    val f0MeanHz: Double? = null,
    val rmsMeanDb: Double? = null,
    val normCount: Int = 0,
    val voiceProfileId: String? = null,
    val voiceProfileSimilarity: Float? = null,
    val nameIsManual: Boolean = false,
    // Private, bounded voice examples; never included in portable transcript exports.
    val voiceSamples: List<List<Float>> = emptyList(),
    val distinctFrom: List<String> = emptyList(),
)

@Serializable data class TokenStamp(val text: String, val emissionMs: Long)

@Serializable
data class WordStamp(
    val text: String,
    val startMs: Long,
    val endMs: Long? = null,
    val timingKind: String = "token_emission_estimate",
    val confidence: Double? = null,
)

@Serializable
data class Tag(
    val type: String,
    val confidence: Double? = null,
    val status: String = "unknown",
    val source: String = "unavailable",
)

@Serializable data class PitchPoint(val offsetMs: Long, val hz: Double?, val periodicity: Double)

@Serializable
data class EmotionAssessment(
    val label: String = "unknown",
    val confidence: Double? = null,
    val scores: Map<String, Double> = emptyMap(),
    val source: String = "gigaam-emo-int8",
    val calibrated: Boolean = false,
    val reason: String? = null,
)

@Serializable
data class OverlapSpan(val startMs: Long, val endMs: Long, val modelScore: Double? = null)

@Serializable
data class SeparationInfo(
    val group: String,
    val channel: Int,
    val source: String = "mossformer2-ss-16k",
    val status: String = "estimated",
    val reconstructionSnrDb: Double? = null,
    val sourceCorrelation: Double? = null,
)

@Serializable
data class Acoustics(
    val f0MedianHz: Double? = null,
    val f0RangeSemitones: Double? = null,
    val finalRiseSemitones: Double? = null,
    val rmsDbfs: Double = -120.0,
    val relativeDb: Double? = null,
    val relativeF0Semitones: Double? = null,
    val wordsPerMinute: Double? = null,
    val pauseBeforeMs: Long = 0,
    val unvoicedFraction: Double = 1.0,
    val pitch: List<PitchPoint> = emptyList(),
)

@Serializable
data class Segment(
    val id: String,
    val recordingId: String,
    val startMs: Long,
    val endMs: Long,
    val speakerId: String? = null,
    val text: String,
    val status: String = "final",
    val speakerSimilarity: Float? = null,
    val speakerProvisional: Boolean = true,
    val confidence: Double? = null,
    val tokens: List<TokenStamp> = emptyList(),
    val words: List<WordStamp> = emptyList(),
    val acoustics: Acoustics? = null,
    val tags: List<Tag> = emptyList(),
    val embedding: List<Float> = emptyList(),
    val embeddingSource: String = "legacy_cluster",
    val overlap: String = "unavailable",
    val timingKind: String = "vad_and_embedding_window_estimate",
    val emotion: EmotionAssessment? = null,
    val overlapIntervals: List<OverlapSpan> = emptyList(),
    val separation: SeparationInfo? = null,
    val separatedAudioPath: String = "",
    val analysisSource: String = "original",
    val clusteringSilhouette: Float? = null,
    val originalAsrText: String? = null,
) {
    init {
        require(startMs >= 0 && endMs >= startMs)
    }
}

@Serializable
data class Transcript(
    val schemaVersion: Int = 2,
    val language: String = if (
        recording.analysisMode == "offline" && recording.settings.fileAsr == FileAsr.WHISPER_EN
    ) "en" else "ru",
    val recording: Recording,
    val speakers: List<Speaker>,
    val segments: List<Segment>,
    val capabilities: Map<String, String> =
        mapOf(
            "emotion" to
                if (recording.modelInfo?.sha256?.containsKey("advanced/emo.int8.onnx") == true)
                    if (recording.settings.runEmotions) "model_estimate_uncalibrated"
                    else "disabled"
                else "unavailable",
            "accent" to "unavailable",
            "overlap" to
                if (
                    recording.modelInfo?.sha256?.containsKey("advanced/segmentation.int8.onnx") ==
                        true
                )
                    "neural_detection"
                else "unavailable",
            "source_separation" to
                when {
                    recording.modelInfo?.sha256?.containsKey("advanced/mossformer2.onnx") != true ->
                        "unavailable"
                    !recording.settings.runSeparation -> "disabled"
                    recording.analysisMode != "offline" -> "requires_offline_pass"
                    else -> "offline_two_sources_estimate"
                },
            "word_end_times" to "unavailable",
            "intonation_classification" to "unavailable",
        ),
)

object Timecode {
    fun ms(samples: Long, rate: Int = 16000): Long {
        require(samples >= 0 && rate > 0)
        return samples / rate * 1000 + samples % rate * 1000 / rate
    }

    fun subtitle(ms: Long, separator: Char = ','): String {
        val t = ms.coerceAtLeast(0)
        return "%02d:%02d:%02d%c%03d"
            .format(
                java.util.Locale.ROOT,
                t / 3600000,
                t / 60000 % 60,
                t / 1000 % 60,
                separator,
                t % 1000,
            )
    }
}

object TranscriptMerger {
    /** Exact IDs are idempotency keys; overlaps between different speakers remain legal. */
    fun merge(existing: List<Segment>, incoming: List<Segment>): List<Segment> {
        val byId = existing.associateBy { it.id }.toMutableMap()
        incoming.forEach { if (byId[it.id]?.status != "corrected") byId[it.id] = it }
        return byId.values.sortedWith(compareBy({ it.startMs }, { it.endMs }, { it.id }))
    }

    fun words(tokens: List<TokenStamp>): List<WordStamp> {
        val out = mutableListOf<WordStamp>()
        var text = ""
        var start = 0L
        tokens.forEach { token ->
            val t = token.text.replace('▁', ' ')
            if (t.startsWith(" ") && text.isNotBlank()) {
                out += WordStamp(text.trim(), start)
                text = ""
            }
            if (text.isEmpty()) start = token.emissionMs
            text += t
        }
        if (text.isNotBlank()) out += WordStamp(text.trim(), start)
        return out
    }
}
