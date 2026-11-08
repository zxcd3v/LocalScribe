package ru.localscribe

import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.core.Segment
import ru.localscribe.ui.PlaybackState

class PlaybackStateTest {
    @Test
    fun overlapBoundariesAndSeparatedTrackUseOriginalTimeline() {
        val a = Segment("a", "r", 1000, 3000, text = "А")
        val b = Segment("b", "r", 2000, 4000, text = "Б")
        val playing = PlaybackState("r", 2500, ready = true, playing = true)
        assertTrue(playing.highlights(a))
        assertTrue(playing.highlights(b))
        assertFalse(playing.copy(positionMs = 3000).highlights(a))
        assertFalse(playing.copy(recordingId = "other").highlights(a))
        assertTrue(playing.copy(separatedId = "a", offsetMs = 1000).highlights(a))
        assertFalse(playing.copy(separatedId = "a", offsetMs = 1000).highlights(b))
        assertFalse(playing.copy(ready = false).highlights(a))
    }
}
