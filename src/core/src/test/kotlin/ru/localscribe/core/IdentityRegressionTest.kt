package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class IdentityRegressionTest {
    @Test
    fun neuralDistinctEvidenceSurvivesSerializationAndResume() {
        val settings = Settings()
        val c = SpeakerCluster(settings)
        val a = c.assign(floatArrayOf(1f, 0f)).id!!
        val b = c.assign(floatArrayOf(0.99f, 0.1f), excludedIds = setOf(a)).id!!
        c.keepDistinct(a, b)
        assertNotEquals(a, b)
        val saved = codec.decodeFromString<List<Speaker>>(codec.encodeToString(c.speakers.toList()))
        val resumed = SpeakerCluster(settings, saved)
        assertTrue(resumed.refine().isEmpty())
        assertEquals(2, resumed.speakers.size)
    }

    @Test
    fun disabledProfileAndRaisedThresholdAbstain() {
        val p = VoiceProfile("v", "Ваня", "m", listOf(1f, 0f), 0)
        assertNull(Voiceprints.match(listOf(1f, 0f), "m", listOf(p.copy(enabled = false))))
        assertNull(Voiceprints.match(listOf(0.8f, 0.6f), "m", listOf(p.copy(threshold = .9f))))
        assertNotNull(Voiceprints.match(listOf(0.8f, 0.6f), "m", listOf(p)))
    }

    @Test
    fun acousticLabelsDoNotInventEmotionsFromTextAndKeepPauseInterval() {
        val s =
            Segment(
                "s",
                "r",
                5000,
                8000,
                text = "Я очень рад, смеюсь и плачу!",
                acoustics =
                    Acoustics(finalRiseSemitones = 3.0, relativeDb = -5.0, pauseBeforeMs = 2000),
            )
        val labels = SpeechLabels.forSegment(s)
        assertEquals(3, labels.size)
        assertTrue(labels.any { it.title == "Тон повышается" })
        val pause = labels.single { it.title == "…" }
        assertEquals(3000L, pause.startMs)
        assertEquals(5000L, pause.endMs)
        assertTrue(SpeechLabels.forSegment(s.copy(acoustics = null)).isEmpty())
    }
}
