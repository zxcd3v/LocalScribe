package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class TimelineSpeakerBindingsTest {
    private fun segment(start: Long, end: Long, speaker: String, corrected: Boolean = false) =
        Segment("$start-$end-$speaker", "recording", start, end, speaker, "Речь",
            status = if (corrected) "corrected" else "final")

    @Test fun croppedFirstVoiceKeepsItsOriginalSecondId() {
        val bindings = TimelineSpeakerBindings(
            SpeakerTimeline(listOf(VoiceTurn(160000, 192000, 0))),
            setOf("speaker_1", "speaker_2"),
        )
        bindings.consume(listOf(segment(10000, 12000, "speaker_2")))
        assertEquals(mapOf(0 to "speaker_2"), bindings.result())
    }

    @Test fun swappedDiarizerOrdinalsAreReconciledAcrossPages() {
        val bindings = TimelineSpeakerBindings(
            SpeakerTimeline(listOf(VoiceTurn(0, 32000, 1), VoiceTurn(32000, 64000, 0))),
            setOf("speaker_1", "speaker_2"),
        )
        bindings.consume(listOf(segment(0, 2000, "speaker_1")))
        bindings.consume(listOf(segment(2000, 4000, "speaker_2")))
        assertEquals(mapOf(1 to "speaker_1", 0 to "speaker_2"), bindings.result())
    }

    @Test fun ambiguousMergedVoiceDoesNotClaimExistingIdentity() {
        val bindings = TimelineSpeakerBindings(
            SpeakerTimeline(listOf(VoiceTurn(0, 64000, 0))), setOf("speaker_1", "speaker_2"),
        )
        bindings.consume(listOf(segment(0, 2000, "speaker_1"), segment(2000, 4000, "speaker_2")))
        assertTrue(bindings.result().isEmpty())
    }

    @Test fun oneExistingIdentityCannotBeClaimedByTwoNewVoices() {
        val bindings = TimelineSpeakerBindings(
            SpeakerTimeline(listOf(VoiceTurn(0, 16000, 0), VoiceTurn(16000, 64000, 1))),
            setOf("speaker_1"),
        )
        bindings.consume(listOf(segment(0, 4000, "speaker_1")))
        assertEquals(mapOf(1 to "speaker_1"), bindings.result())
    }

    @Test fun manualAssignmentsOverrideLongerAutomaticEvidence() {
        val bindings = TimelineSpeakerBindings(
            SpeakerTimeline(listOf(VoiceTurn(0, 64000, 0))), setOf("speaker_1", "speaker_2"),
        )
        bindings.consume(listOf(segment(0, 3000, "speaker_1"), segment(3000, 4000, "speaker_2", true)))
        assertEquals(mapOf(0 to "speaker_2"), bindings.result())
    }

    @Test fun uncertainAndUnknownTurnsDoNotBindIdentity() {
        val bindings = TimelineSpeakerBindings(
            SpeakerTimeline(listOf(VoiceTurn(0, 16000, -1), VoiceTurn(16000, 32000, 0, true))),
            setOf("speaker_1"),
        )
        bindings.consume(listOf(segment(0, 2000, "speaker_1")))
        assertTrue(bindings.result().isEmpty())
    }
}
