package ru.localscribe.core

/** Reconcile arbitrary diarizer ordinals with IDs already used by this recording. */
class TimelineSpeakerBindings(
    private val timeline: SpeakerTimeline,
    existingIds: Set<String>,
) {
    private val knownIds = existingIds.toSet()
    private val automatic = mutableMapOf<Pair<Int, String>, Long>()
    private val manual = mutableMapOf<Pair<Int, String>, Long>()
    private val prefixEnd = LongArray(timeline.turns.size).also { ends ->
        for (i in ends.indices) ends[i] = maxOf(timeline.turns[i].end, ends.getOrElse(i - 1) { 0 })
    }

    /** Accept bounded repository pages; only the small speaker intersection matrix is retained. */
    fun consume(segments: List<Segment>) {
        for (segment in segments) {
            val id = segment.speakerId?.takeIf { it in knownIds } ?: continue
            if (segment.startMs < 0 || segment.endMs <= segment.startMs ||
                segment.endMs > Long.MAX_VALUE / 16) continue
            val start = segment.startMs * 16
            val end = segment.endMs * 16
            var low = 0
            var high = prefixEnd.size
            while (low < high) {
                val middle = (low + high) ushr 1
                if (prefixEnd[middle] <= start) low = middle + 1 else high = middle
            }
            var index = low
            while (index < timeline.turns.size && timeline.turns[index].start < end) {
                val turn = timeline.turns[index++]
                if (turn.speaker < 0 || turn.uncertain) continue
                val overlap = minOf(end, turn.end) - maxOf(start, turn.start)
                if (overlap <= 0) continue
                val evidence = if (segment.status == "corrected") manual else automatic
                val key = turn.speaker to id
                evidence[key] = evidence.getOrDefault(key, 0) + overlap
            }
        }
    }

    /** Manual corrections win; mixed voices and contested identities remain unbound. */
    fun result(): Map<Int, String> {
        data class Candidate(val local: Int, val id: String, val count: Long, val corrected: Boolean)
        val candidates = mutableListOf<Candidate>()
        for (local in (manual.keys + automatic.keys).map { it.first }.distinct()) {
            val corrected = manual.keys.any { it.first == local }
            val evidence = (if (corrected) manual else automatic).filterKeys { it.first == local }
            val total = evidence.values.sum()
            for ((pair, count) in evidence) if (count > 0 && count.toDouble() / total >= 0.65)
                candidates += Candidate(local, pair.second, count, corrected)
        }
        val mapping = mutableMapOf<Int, String>()
        val occupied = mutableSetOf<String>()
        for (candidate in candidates.sortedWith(
            compareByDescending<Candidate> { it.corrected }.thenByDescending { it.count }
                .thenBy { it.local }.thenBy { it.id },
        )) {
            if (candidate.local !in mapping && occupied.add(candidate.id))
                mapping[candidate.local] = candidate.id
        }
        return mapping
    }
}
