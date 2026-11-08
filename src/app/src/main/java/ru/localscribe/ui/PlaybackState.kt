package ru.localscribe.ui

import ru.localscribe.core.Segment

data class PlaybackState(
    val recordingId: String? = null,
    val positionMs: Long = 0,
    val offsetMs: Long = 0,
    val durationMs: Long = 0,
    val separatedId: String? = null,
    val ready: Boolean = false,
    val playing: Boolean = false,
) {
    fun highlights(segment: Segment): Boolean =
        ready &&
            recordingId == segment.recordingId &&
            positionMs >= segment.startMs &&
            positionMs < segment.endMs &&
            (separatedId == null || separatedId == segment.id)
}
