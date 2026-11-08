package ru.localscribe

import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.audio.WavFile
import ru.localscribe.audio.copyPcmRange

class RangePcmTest {
    @Test
    fun multiBlockRangeCopiesEveryPcmBitIncludingNegativeFullScale() = runBlocking {
        val source = File.createTempFile("range-original", ".wav")
        val target = File.createTempFile("range-preview", ".wav")
        try {
            val pcm = ByteBuffer.allocate(40001 * 2).order(ByteOrder.LITTLE_ENDIAN)
            repeat(40001) { pcm.putShort(if (it == 123) Short.MIN_VALUE else (it * 7919).toShort()) }
            WavFile(source).use { it.writePcm16(pcm.array(), pcm.capacity()) }
            copyPcmRange(source, target, 123, 39000)
            assertTrue(WavFile.isCanonical(target))
            assertArrayEquals(pcm.array().copyOfRange(123 * 2, 39000 * 2),
                target.readBytes().copyOfRange(44, target.length().toInt()))
        } finally {
            source.delete()
            target.delete()
        }
    }

    @Test
    fun outOfBoundsRangeDoesNotChangeExistingTarget() = runBlocking {
        val source = File.createTempFile("range-short", ".wav")
        val target = File.createTempFile("range-keep", ".wav")
        try {
            WavFile(source).use { it.write(floatArrayOf(.5f)) }
            target.writeText("unchanged")
            try {
                copyPcmRange(source, target, 0, 2)
                fail("Out-of-bounds range must fail")
            } catch (_: IllegalArgumentException) {
                assertEquals("unchanged", target.readText())
            }
        } finally {
            source.delete()
            target.delete()
        }
    }
}
