package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class GlobalTimelineSpeakersTest {
    private fun people() = listOf(
        Speaker("speaker_1", "Первый", listOf(1f, 0f), 5, nameIsManual = true),
        Speaker("speaker_2", "Второй", listOf(0f, 1f), 5, nameIsManual = true),
    )

    @Test
    fun croppedSecondVoiceKeepsItsNameAndDoesNotOverwriteFirstVoice() {
        val cluster = SpeakerCluster(Settings(), people())
        val resolver = GlobalTimelineSpeakers(Settings(), cluster, mapOf(0 to "speaker_2"))
        assertEquals("speaker_2", resolver.resolve(0, floatArrayOf(0f, 1f)).id)
        assertEquals(people(), cluster.speakers)
    }

    @Test
    fun swappedOrdinalsKeepStableIdentitiesAcrossBlocks() {
        val cluster = SpeakerCluster(Settings(), people())
        val resolver = GlobalTimelineSpeakers(Settings(), cluster,
            mapOf(0 to "speaker_2", 1 to "speaker_1"))
        assertEquals("speaker_2", resolver.resolve(0, floatArrayOf(0f, 1f)).id)
        assertEquals("speaker_1", resolver.resolve(1, floatArrayOf(1f, 0f)).id)
        assertEquals("speaker_2", resolver.resolve(0, null).id)
        assertEquals(people(), cluster.speakers)
    }

    @Test
    fun differentNeuralClustersCannotStealFutureBoundIdentity() {
        val cluster = SpeakerCluster(Settings(), people())
        val resolver = GlobalTimelineSpeakers(Settings(), cluster, mapOf(1 to "speaker_1"))
        val first = resolver.resolve(0, floatArrayOf(1f, 0f)).id
        assertNotEquals("speaker_1", first)
        assertEquals("speaker_1", resolver.resolve(1, floatArrayOf(1f, 0f)).id)
        assertEquals(first, resolver.resolve(0, null).id)
    }
}
