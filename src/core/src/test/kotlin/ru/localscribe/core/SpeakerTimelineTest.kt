package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class SpeakerTimelineTest {
    @Test fun preservesIdentityAcrossWindowsAndShortInsertions() {
        val plan = SpeakerTimeline(listOf(
            VoiceTurn(0, 32000, 0), VoiceTurn(32000, 37600, 1),
            VoiceTurn(37600, 960000, 0), VoiceTurn(960000, 1000000, 1),
        ))
        assertEquals(1, plan.window(32000, 5600).single().speaker)
        assertEquals(1, plan.window(960000, 40000).single().speaker)
        assertEquals(0, plan.window(480000, 16000).single().speaker)
    }

    @Test fun fusesOnlyGapsWithSupportedMapping() {
        val primary = SpeakerTimeline(listOf(VoiceTurn(0, 16000, 0), VoiceTurn(40000, 56000, 1)))
        val secondary = SpeakerTimeline(listOf(VoiceTurn(0, 30000, 5), VoiceTurn(40000, 60000, 3)))
        val fused = SpeakerTimeline.fuse(primary, secondary)
        assertTrue(fused.turns.contains(VoiceTurn(16000, 30000, 0, true)))
        assertTrue(fused.turns.contains(VoiceTurn(56000, 60000, 1, true)))
        assertTrue(fused.turns.containsAll(primary.turns))
    }

    @Test fun preservesOverlapsAndUnknownSecondaryVoices() {
        val primary = SpeakerTimeline(listOf(VoiceTurn(0, 32000, 0), VoiceTurn(12000, 24000, 1)))
        val fused = SpeakerTimeline.fuse(primary, SpeakerTimeline(listOf(VoiceTurn(48000, 64000, 5))))
        assertEquals(2, fused.window(16000, 1000).size)
        assertEquals(-1, fused.window(48000, 1000).single().speaker)
        assertNull(WordSpeakers.assign(1000, 1100, primary.turns))
    }
}
