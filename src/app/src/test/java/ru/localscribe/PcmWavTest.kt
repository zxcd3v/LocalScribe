package ru.localscribe

import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.audio.*

class PcmWavTest {
    @Test
    fun canonicalNormalizationPreservesExactSamplesAndRejectsTruncation() = runBlocking {
        val source = File.createTempFile("pcm-source", ".wav")
        val target = File.createTempFile("pcm-target", ".wav")
        try {
            WavFile(source).use { it.write(floatArrayOf(-1f, -.5f, 0f, .25f, 1f)) }
            assertTrue(PcmWav.normalize(source, target))
            assertArrayEquals(source.readBytes(), target.readBytes())
            RandomAccessFile(source, "rw").use { it.setLength(source.length() - 1) }
            var rejected = false
            try {
                PcmWav.normalize(source, target)
            } catch (e: IllegalArgumentException) {
                rejected = true
            }
            assertTrue(rejected)
        } finally {
            source.delete()
            target.delete()
        }
    }
}
