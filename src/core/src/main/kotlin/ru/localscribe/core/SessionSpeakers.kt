package ru.localscribe.core

/**
 * Independent online speaker identification. Silence/ASR endpoints do not clear voice memory. Novel
 * voices need two consistent, non-overlapping observations, except the first clean voice.
 * Thresholds are similarity heuristics, not calibrated identity probabilities.
 */
class SessionSpeakers(private val settings: Settings, val cluster: SpeakerCluster) {
    private data class Candidate(val voice: FloatArray, val start: Long, val end: Long)

    private val candidates = mutableListOf<Candidate>()
    private val trainedThrough = mutableMapOf<String, Long>()

    data class Observation(val match: SpeakerCluster.Match, val since: Long)

    fun restore(segments: List<Segment>) {
        segments
            .filter {
                it.status != "corrected" &&
                    (it.speakerId == null || it.speakerProvisional) &&
                    !it.overlap.startsWith("detected") &&
                    it.endMs - it.startMs >= 800
            }
            .takeLast(8)
            .forEach { s ->
                SpeakerCluster.normalize(s.embedding.toFloatArray())?.let {
                    candidates += Candidate(it, s.startMs * 16, s.endMs * 16)
                    if (candidates.size > 8) candidates.removeAt(0)
                }
            }
    }

    fun observe(raw: FloatArray?, start: Long, end: Long): Observation {
        require(start >= 0 && end >= start)
        val unknown = Observation(SpeakerCluster.Match(null, null), start)
        if (end - start < 12800) return unknown
        val x = SpeakerCluster.normalize(raw ?: return unknown) ?: return unknown
        val known = cluster.identify(x)
        if (known.id != null) {
            // Overlapping sliding windows and ASR replay must not repeatedly train on one voice.
            if (start >= (trainedThrough[known.id] ?: Long.MIN_VALUE)) {
                trainedThrough[known.id] = end
                return Observation(cluster.assign(x, allowCreate = false), start)
            }
            return Observation(known, start)
        }
        val candidate =
            candidates.firstOrNull {
                it.voice.size == x.size &&
                    SpeakerCluster.cosine(it.voice, x) >=
                        maxOf(settings.matchThreshold, 0.70f, (known.similarity ?: -1f) + 0.12f)
            }
        val independent = candidate != null && start >= candidate.end
        if (
            cluster.speakers.none { it.centroid.isNotEmpty() } && end - start >= 19200 ||
                independent
        ) {
            val voice =
                if (candidate == null) x
                else
                    SpeakerCluster.normalize(
                        FloatArray(x.size) { (x[it] + candidate.voice[it]) / 2 }
                    )!!
            val match = cluster.assign(voice, confirmedNewVoice = independent)
            if (match.id != null) {
                trainedThrough[match.id] = end
                candidates.removeAll {
                    it.voice.size == voice.size &&
                        SpeakerCluster.cosine(it.voice, voice) >= settings.matchThreshold
                }
            }
            return Observation(match, candidate?.start ?: start)
        }
        if (candidate == null) {
            candidates += Candidate(x, start, end)
            if (candidates.size > 8) candidates.removeAt(0)
        }
        return Observation(known, start)
    }

    /** New evidence can identify earlier short turns; manual edits and overlaps stay untouched. */
    fun resolve(segments: List<Segment>, aliases: Map<String, String> = emptyMap()): List<Segment> =
        segments.map { s ->
            if (s.status == "corrected") s
            else {
                val id = aliases[s.speakerId] ?: s.speakerId
                val m =
                    if (
                        (id == null || s.speakerProvisional) &&
                            s.embedding.isNotEmpty() &&
                            (!s.overlap.startsWith("detected") ||
                                s.embeddingSource == "clean_window")
                    )
                        cluster.identify(s.embedding.toFloatArray())
                    else SpeakerCluster.Match(id, s.speakerSimilarity)
                // Failure to improve an assignment must not erase an existing participant.
                s.copy(
                    speakerId = m.id ?: id,
                    speakerSimilarity = if (m.id != null) m.similarity else s.speakerSimilarity,
                )
            }
        }
}
