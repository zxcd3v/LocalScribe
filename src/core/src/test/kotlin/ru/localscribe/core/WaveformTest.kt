package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class WaveformTest {
    @Test fun envelopePreservesImpulseAcrossReadBoundaries() {
        val envelope = WaveformAccumulator(10, 3)
        envelope.append(floatArrayOf(0f, -.25f, 0f))
        envelope.append(floatArrayOf(-1f, 0f, .5f, 0f, 0f, 0f, .75f))
        assertEquals(listOf(1f, .5f, .75f), envelope.finish())
    }

    @Test fun chunkingDoesNotChangeWaveform() {
        val audio = FloatArray(10003) { (it % 97 - 48) / 48f }
        val whole = WaveformAccumulator(audio.size.toLong(), 513)
        whole.append(audio)
        val chunked = WaveformAccumulator(audio.size.toLong(), 513)
        audio.asList().chunked(31).forEach { chunked.append(it.toFloatArray()) }
        assertEquals(whole.finish(), chunked.finish())
        assertEquals(513, chunked.finish().size)
    }

    @Test fun emptyAudioHasNoInventedPeaks() {
        assertTrue(WaveformAccumulator(0).finish().isEmpty())
    }

    @Test(expected = IllegalStateException::class)
    fun incompleteReadIsRejected() {
        WaveformAccumulator(10).finish()
    }
}
