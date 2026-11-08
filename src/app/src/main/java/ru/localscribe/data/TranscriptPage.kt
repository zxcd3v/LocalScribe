package ru.localscribe.data

import ru.localscribe.core.Transcript

data class TranscriptQuery(
    val text: String = "",
    val speakerId: String? = null,
    val offset: Int = 0,
    val followLatest: Boolean = false,
    val positionMs: Long? = null,
)

data class TranscriptPage(
    val transcript: Transcript,
    val total: Int,
    val offset: Int,
    val size: Int = 100,
    val visibleCount: Int = transcript.segments.size,
    val nextPageStartMs: Long? = null,
) {
    val hasPrevious
        get() = offset > 0

    val hasNext
        get() = offset + visibleCount < total
}
