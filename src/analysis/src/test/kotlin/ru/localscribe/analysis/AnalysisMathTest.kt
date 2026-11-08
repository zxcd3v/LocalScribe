package ru.localscribe.analysis

import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.*
import org.junit.Assert.*
import org.junit.Test

class AnalysisMathTest {
    @Test
    fun intervalSubtractionPreservesHalfOpenTimes() {
        assertEquals(
            listOf(SampleSpan(0, 10), SampleSpan(50, 70), SampleSpan(90, 100)),
            AnalysisMath.subtract(
                SampleSpan(0, 100),
                listOf(SampleSpan(10, 40), SampleSpan(20, 50), SampleSpan(70, 90)),
            ),
        )
        assertEquals(
            emptyList<SampleSpan>(),
            AnalysisMath.subtract(SampleSpan(20, 30), listOf(SampleSpan(0, 50))),
        )
    }

    @Test
    fun uncertainOrChangingEmotionIsUnknown() {
        assertEquals(
            "unknown",
            AnalysisMath.emotion(listOf(floatArrayOf(.4f, .3f, .2f, .1f))).label,
        )
        assertEquals(
            "unknown",
            AnalysisMath.emotion(
                    listOf(floatArrayOf(.9f, .05f, .03f, .02f), floatArrayOf(.01f, .9f, .05f, .04f))
                )
                .label,
        )
        val confident = AnalysisMath.emotion(listOf(floatArrayOf(.01f, .02f, .96f, .01f)))
        assertEquals("neutral", confident.label)
        assertFalse(confident.calibrated)
        assertEquals(.96, confident.confidence!!, 1e-6)
    }

    @Test
    fun degenerateSeparationIsRejectedAndScaleIsRecovered() {
        val a = FloatArray(1000) { sin(it * .1).toFloat() * .1f }
        val b = FloatArray(1000) { cos(it * .3).toFloat() * .05f }
        val mix = FloatArray(1000) { a[it] + b[it] }
        val sources = arrayOf(FloatArray(1000) { a[it] * 70 }, FloatArray(1000) { b[it] * -40 })
        assertTrue(AnalysisMath.fitMixture(mix, sources))
        assertArrayEquals(a, sources[0], 1e-6f)
        assertArrayEquals(b, sources[1], 1e-6f)
        assertFalse(AnalysisMath.fitMixture(mix, arrayOf(a.copyOf(), a.copyOf())))
    }

    @Test
    fun gigaMelMatchesTorchaudioReference() {
        fun floats(name: String): FloatArray {
            val bytes = javaClass.getResourceAsStream("/$name")!!.use { it.readBytes() }
            val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).asFloatBuffer()
            return FloatArray(buffer.remaining()).also { buffer.get(it) }
        }
        val actual = GigaMel().extract(floats("mel-input.f32"))
        val expected = floats("mel-reference.f32")
        assertEquals(expected.size, actual.size)
        val maxError = actual.indices.maxOf { abs(actual[it] - expected[it]) }
        assertTrue("maximum log-mel error $maxError", maxError < 0.015)
    }
}
