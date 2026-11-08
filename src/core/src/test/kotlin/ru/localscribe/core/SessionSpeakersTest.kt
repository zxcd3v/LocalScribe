package ru.localscribe.core

import kotlinx.serialization.Serializable
import kotlinx.serialization.encodeToString
import org.junit.Assert.*
import org.junit.Test

class SessionSpeakersTest {
    private val a = floatArrayOf(1f, 0f, 0f)
    private val b = floatArrayOf(0f, 1f, 0f)

    private fun session() = SessionSpeakers(Settings(), SpeakerCluster(Settings()))

    @Test
    fun sameVoiceKeepsItsIdAcrossPausesAndRestart() {
        val session = session()
        val first = session.observe(a, 0, 24000).match.id
        for (i in 1L..50L) assertEquals(
            first,
            session.observe(floatArrayOf(.98f, .02f, 0f), i * 160000, i * 160000 + 24000).match.id,
        )
        val restored =
            SessionSpeakers(
                Settings(),
                SpeakerCluster(
                    Settings(),
                    codec.decodeFromString<List<Speaker>>(
                        codec.encodeToString(session.cluster.speakers.toList())
                    ),
                ),
            )
        assertEquals(first, restored.observe(a, 9000000, 9024000).match.id)
        assertEquals(1, restored.cluster.speakers.size)
    }

    @Test
    fun newParticipantNeedsIndependentEvidence() {
        val s = session()
        assertEquals("speaker_1", s.observe(a, 0, 24000).match.id)
        assertNull(s.observe(b, 24000, 48000).match.id)
        assertNull(s.observe(b, 24000, 48000).match.id) // finishing/replaying same audio
        assertNull(s.observe(b, 32000, 56000).match.id) // overlapping window
        assertEquals(1, s.cluster.speakers.size)
        assertEquals("speaker_2", s.observe(b, 48000, 72000).match.id)
        assertEquals("speaker_1", s.observe(a, 72000, 96000).match.id)
        assertEquals(2, s.cluster.speakers.size)
    }

    @Test
    fun similarSecondVoiceRequiresIndependentConsistentEvidence() {
        val s = session()
        s.observe(a, 0, 24000)
        val similar = floatArrayOf(.6f, .8f, 0f)
        assertNull(s.observe(similar, 24000, 48000).match.id)
        assertNull(s.observe(similar, 32000, 56000).match.id)
        assertEquals("speaker_2", s.observe(similar, 48000, 72000).match.id)
        assertEquals("speaker_1", s.observe(a, 72000, 96000).match.id)
        assertNull(s.observe(b, 300000, 308000).match.id)
        assertEquals(2, s.cluster.speakers.size)
    }

    @Test
    fun inconsistentAmbiguousSpeechDoesNotCreateSpeakersOrTrainOnReplay() {
        val s = session()
        s.observe(a, 0, 24000)
        val observations = s.cluster.speakers.single().observations
        repeat(5) { s.observe(a, 0, 24000) }
        assertEquals(observations, s.cluster.speakers.single().observations)
        assertNull(s.observe(floatArrayOf(.6f, .8f, 0f), 24000, 48000).match.id)
        assertNull(s.observe(floatArrayOf(.6f, 0f, .8f), 48000, 72000).match.id)
        assertNull(s.observe(b, 72000, 80000).match.id)
        assertEquals(1, s.cluster.speakers.size)
    }

    @Test
    fun numberedReservationIsFilledAndRevisitedWithoutTrainingWeakVoices() {
        val s = session()
        val reserved = s.cluster.provisional()
        assertEquals("speaker_1", reserved.id)
        assertTrue(reserved.provisional)
        assertEquals(0, s.cluster.speakers.single().observations)
        assertEquals(reserved.id, s.observe(a, 0, 24000).match.id)
        assertEquals(1, s.cluster.speakers.size)
        val old =
            Segment(
                "s",
                "r",
                2000,
                3500,
                reserved.id,
                "Другой голос",
                embedding = b.toList(),
                embeddingSource = "clean_window",
            )
        val fallback = s.cluster.provisional(b)
        assertTrue(fallback.provisional)
        assertEquals(1, s.cluster.speakers.single().observations)
        s.observe(b, 32000, 56000)
        s.observe(b, 56000, 80000)
        assertEquals("speaker_2", s.resolve(listOf(old)).single().speakerId)
        assertEquals(
            reserved.id,
            s.resolve(listOf(old.copy(status = "corrected"))).single().speakerId,
        )
    }

    @Test
    fun twoShortTurnsCanEstablishVoiceAndRevisitEarlierUnknown() {
        val s = session()
        assertNull(s.observe(a, 0, 12800).match.id)
        assertEquals("speaker_1", s.observe(a, 32000, 44800).match.id)
        val original = Segment("s", "r", 0, 800, text = "Привет", embedding = a.toList())
        val corrected = original.copy(id = "corrected", status = "corrected")
        val overlap = original.copy(id = "mixed", overlap = "detected_requires_offline")
        val result = s.resolve(listOf(original, corrected, overlap))
        assertEquals("speaker_1", result[0].speakerId)
        assertNull(result[1].speakerId)
        assertNull(result[2].speakerId)
    }

    @Test
    fun pendingVoiceCanResumeFromStoredTurn() {
        val cluster = SpeakerCluster(Settings())
        cluster.assign(a)
        val restored = SessionSpeakers(Settings(), cluster)
        restored.restore(
            listOf(Segment("b", "r", 1500, 3000, text = "Добрый день", embedding = b.toList()))
        )
        assertEquals("speaker_2", restored.observe(b, 48000, 72000).match.id)
        assertEquals("speaker_1", restored.observe(a, 72000, 96000).match.id)
    }

    @Test
    fun voiceExamplesRetainOriginalTimbreWhenCentroidMoves() {
        val cluster = SpeakerCluster(Settings())
        cluster.assign(a)
        for (degrees in 10..80 step 10) {
            val radians = degrees * Math.PI / 180
            repeat(15) {
                assertEquals(
                    "speaker_1",
                    cluster
                        .assign(
                            floatArrayOf(
                                kotlin.math.cos(radians).toFloat(),
                                kotlin.math.sin(radians).toFloat(),
                                0f,
                            )
                        )
                        .id,
                )
            }
        }
        assertEquals("speaker_1", cluster.identify(a).id)
        assertTrue(cluster.speakers.single().voiceSamples.size <= 6)
    }

    @Test
    fun manualCountLimitDoesNotForceAnUnrelatedVoiceIntoExistingSpeaker() {
        val settings = Settings(speakers = 1)
        val s = SessionSpeakers(settings, SpeakerCluster(settings))
        s.observe(a, 0, 24000)
        assertNull(s.observe(b, 24000, 48000).match.id)
        assertNull(s.observe(b, 48000, 72000).match.id)
        assertEquals(1, s.cluster.speakers.size)
    }

    @Serializable private data class VoiceWindow(val person: Int, val embedding: List<Float>)

    @Test
    fun realVoiceWindowsCreateAlternatingTurnsAndKeepIdsAfterSilence() {
        val windows =
            codec.decodeFromString<List<VoiceWindow>>(
                javaClass.getResourceAsStream("/speaker-embeddings.json")!!.bufferedReader().use {
                    it.readText()
                }
            )
        val s = session()
        val tracker = VoiceTurnTracker()
        val switches = mutableListOf<Pair<Long, String?>>()
        val sequence = windows + windows.filter { it.person == 0 }
        sequence.forEachIndexed { i, w ->
            val start = i * 19200L
            val voice = w.embedding.toFloatArray()
            val obs = s.observe(voice, start, start + 19200)
            tracker.observe(obs, voice, start, start + 19200)?.let {
                switches += it to obs.match.id
                tracker.reset(obs.match, voice)
            }
        }
        assertEquals(listOf(57600L to "speaker_2", 115200L to "speaker_1"), switches)
        tracker.observe(
            SessionSpeakers.Observation(SpeakerCluster.Match(null, null), 200000),
            null,
            200000,
            230000,
        )
        assertEquals("speaker_1", tracker.current.id)
        assertEquals(2, s.cluster.speakers.size)
    }

    @Test
    fun realRussianVoiceWindowsKeepTwoPeopleAcrossPausesAndRestarts() {
        val json =
            javaClass.getResourceAsStream("/speaker-embeddings.json")!!.bufferedReader().use {
                it.readText()
            }
        val windows = codec.decodeFromString<List<VoiceWindow>>(json)
        var s = session()
        var clock = 0L
        repeat(3) {
            for (w in windows) {
                val match = s.observe(w.embedding.toFloatArray(), clock, clock + 19200).match
                if (match.id != null) assertEquals("speaker_${w.person + 1}", match.id)
                clock += 32000 // a pause is not a different identity
            }
            assertEquals(2, s.cluster.speakers.size)
            s =
                SessionSpeakers(
                    Settings(),
                    SpeakerCluster(
                        Settings(),
                        codec.decodeFromString<List<Speaker>>(
                            codec.encodeToString(s.cluster.speakers.toList())
                        ),
                    ),
                )
        }
        assertEquals(
            "speaker_1",
            s.observe(windows.first().embedding.toFloatArray(), clock, clock + 19200).match.id,
        )
        assertEquals(
            "speaker_2",
            s.observe(windows.last().embedding.toFloatArray(), clock + 19200, clock + 38400)
                .match
                .id,
        )
    }
}
