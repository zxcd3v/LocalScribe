package ru.localscribe.core

import kotlinx.serialization.Serializable

@Serializable
data class VoiceProfile(
    val id: String,
    val name: String,
    val modelSha256: String,
    val embedding: List<Float>,
    val createdAt: Long,
    val samples: List<VoiceSample> = emptyList(),
    val enabled: Boolean = true,
    val threshold: Float = 0.78f,
)

@Serializable
data class VoiceSample(
    val id: String,
    val embedding: List<Float>,
    val durationMs: Long,
    val audioPath: String = "",
    val sourceSegments: List<String> = emptyList(),
)

/** Cross-recording suggestions; scores are cosine similarity, never identity probabilities. */
object Voiceprints {
    data class Match(val profile: VoiceProfile, val similarity: Float)

    fun match(voice: List<Float>, model: String, profiles: List<VoiceProfile>): Match? {
        if (model.isBlank()) return null
        val x = SpeakerCluster.normalize(voice.toFloatArray()) ?: return null
        val scores =
            profiles
                .filter {
                    it.enabled &&
                        it.modelSha256 == model &&
                        it.embedding.size == x.size &&
                        it.threshold.isFinite() &&
                        it.threshold in 0.65f..0.95f
                }
                .map { Match(it, SpeakerCluster.cosine(x, it.embedding.toFloatArray())) }
                .sortedByDescending { it.similarity }
        val best = scores.firstOrNull() ?: return null
        return best.takeIf {
            it.similarity >= it.profile.threshold &&
                (scores.size == 1 || it.similarity - scores[1].similarity >= 0.08f)
        }
    }

    fun enrollment(segments: List<Segment>): List<Float>? {
        val clean =
            segments
                .filter {
                    it.embeddingSource == "utterance" &&
                        it.status != "preliminary" &&
                        it.separation == null &&
                        !it.overlap.startsWith("detected") &&
                        it.endMs - it.startMs >= 800 &&
                        SpeakerCluster.normalize(it.embedding.toFloatArray()) != null
                }
                .sortedBy { it.startMs }
                .takeLast(6)
        var end = 0L
        var duration = 0L
        for (s in clean) {
            duration += (s.endMs - maxOf(end, s.startMs)).coerceAtLeast(0)
            end = maxOf(end, s.endMs)
        }
        if (duration < 3000) return null
        val voices = clean.map { SpeakerCluster.normalize(it.embedding.toFloatArray())!! }
        val size = voices.first().size
        if (voices.any { it.size != size }) return null
        // Refuse enrollment from a heterogeneous cluster rather than memorizing two people as one.
        if (voices.any { a -> voices.any { b -> SpeakerCluster.cosine(a, b) < 0.75f } }) return null
        return SpeakerCluster.normalize(
                FloatArray(size) { i -> voices.sumOf { it[i].toDouble() }.toFloat() / voices.size }
            )
            ?.toList()
    }
}
