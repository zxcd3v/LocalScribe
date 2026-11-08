package ru.localscribe.engine

import ru.localscribe.core.Segment
import ru.localscribe.core.TranscriptEdits

/** Streaming, page-independent text context. Corrected user text is never sent for rewriting. */
internal class TranscriptEditingWindow(
    private val edit: (List<String>, List<String>) -> List<String>,
    private val complete: (List<Segment>) -> Unit,
) {
    private val pending = mutableListOf<Segment>()
    private val previous = ArrayDeque<String>()

    fun push(segment: Segment) {
        val eligible = segment.status != "corrected" && segment.originalAsrText == null &&
            segment.text.isNotBlank() && segment.text.length <= 1500
        if (!eligible) {
            flush()
            remember(segment)
            complete(listOf(segment))
            return
        }
        val last = pending.lastOrNull()
        if (last != null && (last.speakerId == null || last.speakerId != segment.speakerId ||
                last.speakerProvisional || segment.speakerProvisional || last.separation != null ||
                segment.separation != null || segment.startMs - last.endMs !in 0..1200 ||
                pending.sumOf { it.text.length + 1 } + segment.text.length > 600)) flush()
        pending += segment
        if (pending.size == 3) flush()
    }

    fun finish() = flush()

    private fun flush() {
        if (pending.isEmpty()) return
        val texts = pending.map { it.text }
        val proposed = edit(texts, previous.toList())
        val result = pending.mapIndexed { i, segment ->
            val candidate = proposed.getOrNull(i) ?: segment.text
            val corrected = TranscriptEdits.accept(segment.text, candidate)
            if (proposed.size == texts.size && corrected != segment.text)
                segment.copy(text = corrected, originalAsrText = segment.text)
            else segment
        }
        result.forEach(::remember)
        pending.clear()
        complete(result)
    }

    private fun remember(segment: Segment) {
        previous += "${segment.speakerId ?: "Неопределённый участник"}: ${segment.text}"
        while (previous.size > 2) previous.removeFirst()
    }
}
