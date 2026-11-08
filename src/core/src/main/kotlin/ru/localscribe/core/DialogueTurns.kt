package ru.localscribe.core

/** Presentation grouping leaves original segments, manual corrections and timing intact. */
object DialogueTurns {
    const val PAUSE_MS = 1500L
    fun joins(a: Segment, b: Segment) = a.recordingId == b.recordingId &&
        a.speakerId != null && a.speakerId == b.speakerId && a.separation == null && b.separation == null

    fun groups(segments: List<Segment>): List<List<Segment>> {
        val result = mutableListOf<MutableList<Segment>>()
        for (segment in segments) {
            if (result.isNotEmpty() && joins(result.last().last(), segment)) result.last() += segment
            else result += mutableListOf(segment)
        }
        return result
    }

    fun separator(previous: Segment, next: Segment) =
        if (next.startMs - previous.endMs >= PAUSE_MS) " … " else " "

    fun text(parts: List<Segment>): String = buildString {
        parts.forEachIndexed { i, s ->
            if (i > 0) {
                val separator = separator(parts[i - 1], s)
                if (separator.contains('…')) while (isNotEmpty() && last() in ".… ") deleteCharAt(lastIndex)
                append(separator)
            }
            append(s.text.trim())
        }
    }

    data class WordRange(val from: Int, val until: Int, val startMs: Long, val endMs: Long)
    data class SpokenText(val text: String, val words: List<WordRange>) {
        fun active(positionMs: Long) = words.indexOfLast { positionMs >= it.startMs && positionMs < it.endMs }
    }

    /** Only actual ASR timestamps are used; manually rewritten text without alignment stays unlit. */
    fun spoken(parts: List<Segment>): SpokenText {
        val text = text(parts)
        val ranges = mutableListOf<WordRange>()
        var offset = 0
        for (part in parts) {
            val raw = part.text.trim()
            val start = text.indexOf(raw.trimEnd('.', '…', ' '), offset)
            if (start < 0) continue
            val tokens = Regex("\\S+").findAll(raw).toList()
            if (tokens.size == part.words.size) {
                part.words.forEachIndexed { i, stamp ->
                    val match = tokens[i]
                    val end = stamp.endMs ?: minOf(part.endMs,
                        part.words.getOrNull(i + 1)?.startMs ?: part.endMs, stamp.startMs + 1500)
                    var from = match.range.first
                    var until = match.range.last + 1
                    while (from < until && !raw[from].isLetterOrDigit()) from++
                    while (until > from && !raw[until - 1].isLetterOrDigit()) until--
                    if (end > stamp.startMs && until > from) ranges += WordRange(start + from,
                        start + until, stamp.startMs, end)
                }
            }
            offset = start + raw.trimEnd('.', '…', ' ').length
        }
        return SpokenText(text, ranges.filter { it.until <= text.length })
    }
}
