package ru.localscribe

import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.engine.offlineBlockEnd

class OfflineBlockBoundaryTest {
    @Test
    fun movesCutFromSpeechIntoNearbyPause() {
        val audio = FloatArray(30 * 16000) { 0.1f }
        val pauseStart = audio.size - 8000
        val pauseEnd = audio.size - 4800
        audio.fill(0f, pauseStart, pauseEnd)
        val cut = offlineBlockEnd(audio, hasFollowingAudio = true)
        assertTrue(cut in (pauseStart + 640)..(pauseEnd - 640))
    }

    @Test
    fun keepsBoundedCutWithoutPauseAndDoesNotShortenLastBlock() {
        val audio = FloatArray(30 * 16000) { 0.1f }
        assertEquals(audio.size, offlineBlockEnd(audio, hasFollowingAudio = true))
        audio.fill(0f, audio.size - 8000, audio.size - 4800)
        assertEquals(audio.size, offlineBlockEnd(audio, hasFollowingAudio = false))
    }
}
