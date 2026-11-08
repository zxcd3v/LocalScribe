package ru.localscribe.core

import kotlinx.serialization.Serializable
import org.junit.Assert.*
import org.junit.Test

class VoiceprintsTest {
    private val a = listOf(1f, 0f, 0f)
    private val b = listOf(0f, 1f, 0f)

    private fun profile(id: String, v: List<Float>, model: String = "m") =
        VoiceProfile(id, id, model, v, 0)

    @Test
    fun uncertainWrongModelAndInvalidVectorsStayUnknown() {
        assertEquals(
            "a",
            Voiceprints.match(a, "m", listOf(profile("a", a), profile("b", b)))!!.profile.id,
        )
        assertNull(Voiceprints.match(a, "other", listOf(profile("a", a))))
        assertNull(Voiceprints.match(a, "m", listOf(profile("a", a), profile("clone", a))))
        assertNull(
            Voiceprints.match(
                listOf(Float.NaN, 0f),
                "m",
                listOf(profile("bad", listOf(Float.NaN, 0f))),
            )
        )
        assertNull(Voiceprints.match(listOf(0f, 0f, 1f), "m", listOf(profile("a", a))))
    }

    @Test
    fun enrollmentRejectsShortMixedOverlappingAndPreliminarySpeech() {
        val s =
            Segment(
                "s",
                "r",
                0,
                3200,
                "speaker_1",
                "Текст",
                embedding = a,
                embeddingSource = "utterance",
            )
        assertNotNull(Voiceprints.enrollment(listOf(s)))
        assertNull(Voiceprints.enrollment(listOf(s.copy(embeddingSource = "legacy_cluster"))))
        assertNull(Voiceprints.enrollment(listOf(s.copy(endMs = 1200))))
        assertNull(Voiceprints.enrollment(listOf(s.copy(overlap = "detected"))))
        assertNull(Voiceprints.enrollment(listOf(s.copy(status = "preliminary"))))
        assertNull(
            Voiceprints.enrollment(
                listOf(
                    s.copy(endMs = 2000),
                    s.copy(id = "s2", startMs = 2000, endMs = 4000, embedding = b),
                )
            )
        )
        assertNull(
            Voiceprints.enrollment(listOf(s.copy(endMs = 2000), s.copy(id = "s2", endMs = 2000)))
        )
    }

    @Serializable
    private data class DemoTurn(
        val recording: String,
        val person: Int,
        val startMs: Long,
        val endMs: Long,
        val embedding: List<Float>,
    )

    @Test
    fun enrolledDemoVoicesRecognizeTwoOtherScriptsUsingActualUtteranceEmbeddings() {
        val turns =
            codec.decodeFromString<List<DemoTurn>>(
                javaClass.getResourceAsStream("/demo-voiceprints.json")!!.bufferedReader().use {
                    it.readText()
                }
            )
        fun segments(rows: List<DemoTurn>) =
            rows.mapIndexed { i, x ->
                Segment(
                    "$i",
                    x.recording,
                    x.startMs,
                    x.endMs,
                    "speaker_${x.person}",
                    "",
                    embedding = x.embedding,
                    embeddingSource = "utterance",
                )
            }
        val profiles =
            turns
                .filter { it.recording == "client" }
                .groupBy { it.person }
                .map { (id, rows) ->
                    profile("voice$id", checkNotNull(Voiceprints.enrollment(segments(rows))))
                }
        for ((key, rows) in
            turns.filter { it.recording != "client" }.groupBy { it.recording to it.person }) {
            val voice = checkNotNull(Voiceprints.enrollment(segments(rows)))
            val match = Voiceprints.match(voice, "m", profiles)
            assertNotNull("No match for $key", match)
            assertEquals("voice${key.second}", match!!.profile.id)
        }
    }

    @Serializable private data class Window(val person: Int, val embedding: List<Float>)

    @Test
    fun realHeldOutRussianVoiceWindowsMatchOnlyTheirEnrolledSpeaker() {
        val windows =
            codec.decodeFromString<List<Window>>(
                javaClass
                    .getResourceAsStream("/speaker-embeddings.json")!!
                    .bufferedReader()
                    .readText()
            )
        val profiles =
            windows
                .groupBy { it.person }
                .map { (id, rows) ->
                    val v = rows.take(2).map { it.embedding }
                    profile(
                        "person$id",
                        SpeakerCluster.normalize(
                                FloatArray(v[0].size) { (v[0][it] + v[1][it]) / 2 }
                            )!!
                            .toList(),
                    )
                }
        for ((id, rows) in windows.groupBy { it.person }) {
            val result = Voiceprints.match(rows.last().embedding, "m", profiles)
            assertNotNull("Held-out voice $id must match", result)
            assertEquals("person$id", result!!.profile.id)
        }
    }
}
