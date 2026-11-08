package ru.localscribe.core

import java.io.Writer
import kotlinx.serialization.encodeToString

/** Compact public transcript. Internal tokens, embeddings and diagnostics are never exported. */
object Exporter {
    fun write(t: Transcript, format: String, out: Writer) =
        write(t, t.segments.sortedWith(compareBy({ it.startMs }, { it.id })).asSequence(), format, out)

    /** One ordered pass, retaining text for the current speaker turn only. */
    fun write(metadata: Transcript, segments: Sequence<Segment>, format: String, out: Writer) {
        require(format.equals("json", ignoreCase = true)) { "Доступен только JSON" }
        out.write("{\"transcript\":[")
        var first = true
        var previous: Segment? = null
        var start = 0L
        var end = 0L
        var speaker: String? = null
        val text = StringBuilder()
        fun flush() {
            if (previous == null) return
            if (!first) out.write(",")
            first = false
            out.write("{\"speaker_id\":${codec.encodeToString(speaker ?: "unknown")},\"start_ms\":$start,\"end_ms\":$end,\"text\":")
            out.write(codec.encodeToString(text.toString()))
            out.write("}")
        }
        for (s in segments) {
            if (s.text.isBlank()) continue
            val old = previous
            if (old == null || !DialogueTurns.joins(old, s)) {
                flush(); text.setLength(0); start = s.startMs; end = s.endMs; speaker = s.speakerId
            } else {
                val separator = DialogueTurns.separator(old, s)
                if (separator.contains('…')) while (text.isNotEmpty() && text.last() in ".… ") text.deleteCharAt(text.lastIndex)
                text.append(separator)
                end = maxOf(end, s.endMs)
            }
            text.append(s.text.trim())
            previous = s
        }
        flush()
        out.write("]}")
    }
}
