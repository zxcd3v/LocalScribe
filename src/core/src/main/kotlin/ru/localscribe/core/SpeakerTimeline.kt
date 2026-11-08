package ru.localscribe.core

import kotlinx.serialization.Serializable

@Serializable
data class VoiceTurn(val start: Long, val end: Long, val speaker: Int, val uncertain: Boolean = false) {
    init { require(start >= 0 && end > start && speaker in -1..63) }
}

/** Absolute 16 kHz sample positions. Speaker IDs belong to the whole recording. */
class SpeakerTimeline(input: List<VoiceTurn>) {
    val turns = input.sortedWith(compareBy({ it.start }, { it.end }, { it.speaker }))

    fun window(start: Long, size: Int): List<VoiceTurn> =
        turns.asSequence().filter { it.start < start + size && it.end > start }
            .map { it.copy(start = maxOf(it.start, start), end = minOf(it.end, start + size)) }
            .toList()

    companion object {
        /** Fill only primary silence. Ambiguous secondary identities stay unassigned. */
        fun fuse(primary: SpeakerTimeline, secondary: SpeakerTimeline): SpeakerTimeline {
            val intersections = mutableMapOf<Pair<Int, Int>, Long>()
            for (b in secondary.turns) {
                for (a in primary.window(b.start, (b.end - b.start).coerceAtMost(Int.MAX_VALUE.toLong()).toInt())) {
                    if (a.speaker < 0 || b.speaker < 0) continue
                    val key = b.speaker to a.speaker
                    intersections[key] = intersections.getOrDefault(key, 0) + minOf(a.end, b.end) - maxOf(a.start, b.start)
                }
            }
            val mapping = mutableMapOf<Int, Int>()
            val occupied = mutableSetOf<Int>()
            for ((pair, count) in intersections.entries.sortedByDescending { it.value }) {
                val total = intersections.filterKeys { it.first == pair.first }.values.sum()
                if (count >= 9600 && count.toDouble() / total >= 0.65 &&
                    pair.first !in mapping && pair.second !in occupied) {
                    mapping[pair.first] = pair.second
                    occupied += pair.second
                }
            }
            val result = primary.turns.toMutableList()
            for (b in secondary.turns) {
                var cursor = b.start
                for (a in primary.window(b.start, (b.end - b.start).coerceAtMost(Int.MAX_VALUE.toLong()).toInt())) {
                    if (a.start > cursor)
                        result += VoiceTurn(cursor, a.start, mapping[b.speaker] ?: -1, true)
                    cursor = maxOf(cursor, a.end)
                }
                if (cursor < b.end) result += VoiceTurn(cursor, b.end, mapping[b.speaker] ?: -1, true)
            }
            return SpeakerTimeline(result)
        }
    }
}
