package ru.localscribe.core

import kotlin.math.sqrt

/** Cosine scores are distances in embedding space, NOT calibrated probabilities. */
class SpeakerCluster(private val settings: Settings, initial: List<Speaker> = emptyList()) {
    val speakers =
        initial
            .sortedBy { it.id.removePrefix("speaker_").toIntOrNull() ?: Int.MAX_VALUE }
            .toMutableList()

    data class Match(val id: String?, val similarity: Float?, val provisional: Boolean = false)

    /** Display-only assignment. Never trains a voice profile on insufficient/mixed speech. */
    fun provisional(
        raw: FloatArray? = null,
        preferredId: String? = null,
        excludedIds: Set<String> = emptySet(),
    ): Match {
        val x = raw?.let(::normalize)
        val available = speakers.filter { it.id !in excludedIds }
        val best =
            x?.let { v ->
                available.filter { it.centroid.size == v.size }.maxByOrNull { similarity(v, it) }
            }
        if (best != null) return Match(best.id, similarity(x!!, best), true)
        val existing = available.firstOrNull { it.id == preferredId } ?: available.firstOrNull()
        if (existing != null) return Match(existing.id, null, true)
        // A numbered reservation has no biometric evidence. The first real voice fills it.
        if (speakers.size >= 64 || (settings.speakers > 0 && speakers.size >= settings.speakers))
            return Match(speakers.firstOrNull()?.id, null, true)
        val next =
            (speakers.mapNotNull { it.id.removePrefix("speaker_").toIntOrNull() }.maxOrNull()
                ?: 0) + 1
        val speaker = Speaker("speaker_$next", "Участник $next")
        speakers += speaker
        return Match(speaker.id, null, true)
    }

    private val cannotLink =
        initial
            .flatMap { s -> s.distinctFrom.map { setOf(s.id, it) } }
            .filter { it.size == 2 }
            .toMutableSet()

    fun keepDistinct(a: String?, b: String?) {
        if (a != null && b != null && a != b) {
            cannotLink += setOf(a, b)
            for (i in speakers.indices) {
                val s = speakers[i]
                val other = if (s.id == a) b else if (s.id == b) a else continue
                speakers[i] = s.copy(distinctFrom = (s.distinctFrom + other).distinct())
            }
        }
    }

    fun restoreConstraints(segments: List<Segment>) {
        segments
            .filter { it.separation != null }
            .groupBy { it.separation!!.group }
            .values
            .forEach { group ->
                val ids = group.mapNotNull { it.speakerId }.distinct()
                for (i in ids.indices) for (j in i + 1 until ids.size) keepDistinct(ids[i], ids[j])
            }
    }

    fun assign(
        raw: FloatArray?,
        allowCreate: Boolean = true,
        excludedIds: Set<String> = emptySet(),
        confirmedNewVoice: Boolean = false,
    ): Match {
        val x = normalize(raw ?: return Match(null, null)) ?: return Match(null, null)
        val scores =
            speakers
                .filter { it.centroid.size == x.size && it.id !in excludedIds }
                .map { it to similarity(x, it) }
                .sortedByDescending { it.second }
        val best = scores.firstOrNull()
        if (
            best != null &&
                best.second >= settings.matchThreshold &&
                (scores.size == 1 || best.second - scores[1].second >= 0.06f)
        ) {
            val i = speakers.indexOf(best.first)
            val old = best.first
            val weight = old.observations.coerceAtMost(50)
            val c =
                normalize(
                    FloatArray(x.size) { (old.centroid[it] * weight + x[it]) / (weight + 1) }
                )!!
            speakers[i] =
                old.copy(
                    centroid = c.toList(),
                    observations = old.observations + 1,
                    voiceSamples = examples(old, x),
                )
            return Match(old.id, best.second)
        }
        if (
            allowCreate &&
                (best == null ||
                    best.second <
                        if (confirmedNewVoice) settings.confirmedNewThreshold
                        else settings.newThreshold) &&
                speakers.count { it.centroid.isNotEmpty() } < 64 &&
                (settings.speakers == 0 ||
                    speakers.count { it.centroid.isNotEmpty() } < settings.speakers)
        ) {
            val reserved = speakers.indexOfFirst { it.centroid.isEmpty() && it.id !in excludedIds }
            if (reserved >= 0) {
                val old = speakers[reserved]
                speakers[reserved] =
                    old.copy(
                        centroid = x.toList(),
                        observations = 1,
                        voiceSamples = listOf(x.toList()),
                    )
                return Match(old.id, null)
            }
            val next =
                (speakers.mapNotNull { it.id.removePrefix("speaker_").toIntOrNull() }.maxOrNull()
                    ?: 0) + 1
            val s =
                Speaker(
                    "speaker_$next",
                    "Участник $next",
                    x.toList(),
                    1,
                    voiceSamples = listOf(x.toList()),
                )
            speakers += s
            return Match(s.id, null)
        }
        return Match(null, best?.second)
    }

    /** Read-only identification: rechecking old turns must not train the profile on itself. */
    fun identify(raw: FloatArray?): Match {
        val x = normalize(raw ?: return Match(null, null)) ?: return Match(null, null)
        val scores =
            speakers
                .filter { it.centroid.size == x.size }
                .map { it.id to similarity(x, it) }
                .sortedByDescending { it.second }
        val best = scores.firstOrNull() ?: return Match(null, null)
        return Match(
            best.first.takeIf {
                best.second >= settings.matchThreshold &&
                    (scores.size == 1 || best.second - scores[1].second >= 0.06f)
            },
            best.second,
        )
    }

    private fun similarity(x: FloatArray, speaker: Speaker): Float =
        (speaker.voiceSamples + listOf(speaker.centroid))
            .filter { it.size == x.size }
            .maxOf { cosine(x, it.toFloatArray()) }

    private fun examples(old: Speaker, x: FloatArray): List<List<Float>> {
        val samples = old.voiceSamples.ifEmpty { listOf(old.centroid) }
        // Keep the original voice and a few distinct, confidently matched variations.
        if (samples.any { cosine(x, it.toFloatArray()) >= 0.95f }) return samples
        return (samples.take(1) + (samples.drop(1) + listOf(x.toList())).takeLast(5))
    }

    /** Bounded prototype agglomeration; preserves the oldest stable ID. */
    fun refine(protectedIds: Set<String> = emptySet()): Map<String, String> {
        val aliases = mutableMapOf<String, String>()
        while (speakers.size > 1) {
            var pair: Pair<Int, Int>? = null
            var score = -1f
            for (i in speakers.indices) for (j in i + 1 until speakers.size) {
                // Manual assignments must survive automatic refinement, including resumed jobs.
                if (speakers[i].id in protectedIds || speakers[j].id in protectedIds) continue
                if (setOf(speakers[i].id, speakers[j].id) in cannotLink) continue
                if (
                    speakers[i].centroid.isEmpty() ||
                        speakers[i].centroid.size != speakers[j].centroid.size
                )
                    continue
                val s =
                    cosine(speakers[i].centroid.toFloatArray(), speakers[j].centroid.toFloatArray())
                if (s > score) {
                    score = s
                    pair = i to j
                }
            }
            val p = pair ?: break
            if (!(settings.speakers > 0 && speakers.size > settings.speakers) && score < 0.78f)
                break
            val a = speakers[p.first]
            val b = speakers[p.second]
            val n = a.observations + b.observations
            val c =
                normalize(
                    FloatArray(a.centroid.size) {
                        (a.centroid[it] * a.observations + b.centroid[it] * b.observations) / n
                    }
                )!!
            speakers[p.first] =
                a.copy(
                    centroid = c.toList(),
                    observations = n,
                    voiceSamples =
                        (a.voiceSamples.ifEmpty { listOf(a.centroid) } +
                                b.voiceSamples.ifEmpty { listOf(b.centroid) })
                            .take(6),
                )
            speakers.removeAt(p.second)
            aliases[b.id] = a.id
            aliases.replaceAll { _, v -> if (v == b.id) a.id else v }
            val updated =
                cannotLink.map { pair -> pair.map { if (it == b.id) a.id else it }.toSet() }
            cannotLink.clear()
            cannotLink.addAll(updated.filter { it.size == 2 })
            for (i in speakers.indices) {
                val s = speakers[i]
                speakers[i] =
                    s.copy(
                        distinctFrom =
                            cannotLink.filter { s.id in it }.flatMap { it - s.id }.distinct()
                    )
            }
        }
        return aliases
    }

    companion object {
        fun normalize(x: FloatArray): FloatArray? {
            val n = sqrt(x.sumOf { it.toDouble() * it })
            return if (!n.isFinite() || n < 1e-8) null
            else FloatArray(x.size) { (x[it] / n).toFloat() }
        }

        fun cosine(a: FloatArray, b: FloatArray): Float {
            require(a.size == b.size)
            val x = normalize(a) ?: return -1f
            val y = normalize(b) ?: return -1f
            return x.indices.sumOf { x[it].toDouble() * y[it] }.toFloat().coerceIn(-1f, 1f)
        }
    }
}
