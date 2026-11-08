package ru.localscribe

import java.io.File
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.audio.RecordingWaveform
import ru.localscribe.audio.WavFile

class RecordingWaveformTest {
    @Test
    fun canonicalPcmEnvelopeIncludesAllBlocksAndFinalSample() = runBlocking {
        val file = File.createTempFile("waveform-blocks", ".wav")
        try {
            val samples = FloatArray(40001)
            samples[0] = -1f
            samples[10001] = -.5f
            samples[20001] = .25f
            samples[40000] = -.75f
            WavFile(file).use { it.write(samples) }
            val waveform = RecordingWaveform.read(file, maxPeaks = 4)
            assertEquals(2500L, waveform.durationMs)
            assertArrayEquals(floatArrayOf(1f, .5f, .25f, .75f), waveform.peaks.toFloatArray(), .0001f)
        } finally {
            file.delete()
        }
    }

    @Test
    fun emptyCanonicalPcmHasNoPeaks() = runBlocking {
        val file = File.createTempFile("waveform-empty", ".wav")
        try {
            WavFile(file).close()
            val waveform = RecordingWaveform.read(file)
            assertEquals(0L, waveform.durationMs)
            assertTrue(waveform.peaks.isEmpty())
        } finally {
            file.delete()
        }
    }
}
