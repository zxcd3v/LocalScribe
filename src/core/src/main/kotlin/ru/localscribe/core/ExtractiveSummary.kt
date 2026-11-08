package ru.localscribe.core

/** Selects representative quotes across the timeline, with extra weight for decisions and plans. */
class ExtractiveSummary(private val durationMs: Long) {
    private val picks = arrayOfNulls<Quote>(6)
    private val decisions = Regex(
        """(?iu)\b(?:решили|договорились|согласовали|нужно|предлагаю|срок\p{L}*|план\p{L}*|agreed|decided|deadline|will|need)\b"""
    )
    private val words = Regex("[\\p{L}\\p{N}]+")
    private data class Quote(val segment: Segment, val score: Int)

    fun add(segment: Segment) {
        if (segment.text.isBlank() || segment.status == "draft") return
        val terms = words.findAll(segment.text.lowercase()).map { it.value }.toSet()
        val score = terms.count { it.length >= 4 }.coerceAtMost(16) +
            (if (decisions.containsMatchIn(segment.text)) 8 else 0) +
            (if (terms.any { term -> term.any(Char::isDigit) }) 2 else 0)
        val slot = (segment.startMs.toDouble() / durationMs.coerceAtLeast(1) * picks.size)
            .toInt().coerceIn(picks.indices)
        if (picks[slot]?.score?.let { it >= score } != true) picks[slot] = Quote(segment, score)
    }

    fun render(names: Map<String, String>): String =
        picks.filterNotNull().map { it.segment }.distinctBy { it.text.trim().lowercase() }
            .joinToString("\n\n") { segment ->
                val time = Timecode.subtitle(segment.startMs, '.').substringBefore('.')
                val speaker = names[segment.speakerId]?.let { " · $it" }.orEmpty()
                val text = segment.text.trim()
                val quote = if (text.length <= 360) text else
                    text.take(360).substringBeforeLast(' ', text.take(360)) + "…"
                "[$time]$speaker\n$quote"
            }
}
