package ru.localscribe.core

/** Uses ASR emission estimates. A tied acoustic overlap remains unassigned. */
object WordSpeakers {
    fun assign(startMs: Long, endMs: Long, turns: List<VoiceTurn>): Int? {
        val start = startMs * 16
        val end = maxOf(start + 1, minOf(endMs * 16, start + 9600))
        val scores = turns.groupBy { it.speaker }.mapValues { (_, spans) ->
            spans.sumOf { maxOf(0, minOf(end, it.end) - maxOf(start, it.start)) }
        }.filter { it.value > 0 }.entries.sortedByDescending { it.value }
        val best = scores.firstOrNull() ?: return null
        if (best.key < 0 || (scores.size > 1 && best.value < scores[1].value * 1.4)) return null
        return best.key
    }
}
