package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class VoiceTurnTrackerTest {
    private val a = floatArrayOf(1f, 0f)
    private val b = floatArrayOf(0f, 1f)

    private fun observation(id: String?, since: Long) =
        SessionSpeakers.Observation(SpeakerCluster.Match(id, null), since)

    @Test
    fun briefOverlapOrUnknownAtFinalizationDoesNotEraseVoice() {
        val tracker = VoiceTurnTracker()
        tracker.observe(observation("speaker_1", 0), a, 0, 24000)
        tracker.observe(observation(null, 24000), null, 24000, 48000)
        assertEquals("speaker_1", tracker.current.id)
        assertArrayEquals(a, tracker.embedding, 0f)
    }

    @Test
    fun knownVoiceSwitchNeedsConfirmationAndReplayDoesNotCount() {
        val tracker = VoiceTurnTracker()
        tracker.observe(observation("speaker_1", 0), a, 0, 24000)
        assertNull(tracker.observe(observation("speaker_2", 24000), b, 24000, 48000))
        assertNull(tracker.observe(observation("speaker_2", 24000), b, 24000, 48000))
        assertEquals("speaker_1", tracker.current.id)
        assertEquals(24000L, tracker.observe(observation("speaker_2", 36000), b, 36000, 60000))
        // The caller finalizes the head with the old voice before installing the tail's voice.
        assertEquals("speaker_1", tracker.current.id)
        tracker.reset(SpeakerCluster.Match("speaker_2", null), b)
        assertEquals("speaker_2", tracker.current.id)
    }

    @Test
    fun oneOffWrongMatchIsNotABubbleAndNewVoiceUsesFirstConfirmedWindow() {
        val tracker = VoiceTurnTracker()
        tracker.observe(observation("speaker_1", 0), a, 0, 24000)
        assertNull(tracker.observe(observation("speaker_2", 24000), b, 24000, 48000))
        assertNull(tracker.observe(observation("speaker_1", 36000), a, 36000, 60000))
        assertNull(tracker.observe(observation("speaker_2", 48000), b, 48000, 72000))
        assertEquals(48000L, tracker.observe(observation("speaker_2", 48000), b, 72000, 96000))
    }
}
