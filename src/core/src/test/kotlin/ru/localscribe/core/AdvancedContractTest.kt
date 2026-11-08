package ru.localscribe.core

import java.io.StringWriter
import org.junit.Assert.*
import org.junit.Test

class AdvancedContractTest {
    @Test
    fun simultaneousSpeakersCannotCollapseAfterRestart() {
        val people =
            listOf(
                Speaker("speaker_1", "A", listOf(1f, 0f), 1),
                Speaker("speaker_2", "B", listOf(0.99f, 0.01f), 1),
            )
        val cluster = SpeakerCluster(Settings(), people)
        val segments =
            people.mapIndexed { i, s ->
                Segment("$i", "r", 0, 1000, s.id, "text", separation = SeparationInfo("group", i))
            }
        cluster.restoreConstraints(segments)
        assertTrue(cluster.refine().isEmpty())
        assertEquals(2, cluster.speakers.size)
    }

    @Test
    fun exclusionDoesNotReuseIdentityAtManualLimit() {
        val cluster =
            SpeakerCluster(
                Settings(speakers = 1),
                listOf(Speaker("speaker_1", "A", listOf(1f, 0f), 1)),
            )
        assertNull(cluster.assign(floatArrayOf(1f, 0f), excludedIds = setOf("speaker_1")).id)
    }

    @Test
    fun sourcePathsStayPrivateAndOverlapAndEmotionAreExported() {
        val record = Recording("r", "t", 0, "/private/source.wav")
        val s =
            Segment(
                "1",
                "r",
                100,
                1000,
                text = "слово",
                emotion = EmotionAssessment("unknown", 0.51, mapOf("sad" to 0.51)),
                separation = SeparationInfo("g", 0),
                separatedAudioPath = "/private/stem.wav",
                overlapIntervals = listOf(OverlapSpan(200, 900, 0.8)),
            )
        val out = StringWriter()
        Exporter.write(
            Transcript(recording = record, speakers = emptyList(), segments = listOf(s)),
            "json",
            out,
        )
        assertFalse(out.toString().contains("/private/"))
        assertFalse(out.toString().contains("overlap_intervals"))
        assertFalse(out.toString().contains("calibrated"))
        assertTrue(out.toString().contains("\"speaker_id\":\"unknown\""))
    }

    @Test
    fun oldStoredSegmentsRemainReadable() {
        val s =
            codec.decodeFromString<Segment>(
                """{"id":"1","recordingId":"r","startMs":0,"endMs":100,"text":"да"}"""
            )
        assertNull(s.emotion)
        assertNull(s.separation)
        assertEquals("", s.separatedAudioPath)
    }

    @Test
    fun fastProfileExplicitlyDefersHeavyAnalysis() {
        assertFalse(Settings(quality = Quality.FAST).runSeparation)
        assertFalse(Settings(quality = Quality.FAST).runEmotions)
        assertTrue(Settings().runSeparation)
        assertTrue(Settings().runEmotions)
    }
}
