package ru.localscribe.core

import kotlin.math.*
import org.junit.Assert.assertArrayEquals
import org.junit.Test

class ResamplerParityTest {
    /** Independent old filter formula: phase caching must retain every output sample. */
    @Test
    fun cachedPhasesMatchDirectFilterAtCommonAndUnusualRates() {
        for (rate in listOf(8000, 16000, 22050, 44100, 48000, 96000, 31001)) {
            val input =
                FloatArray(rate / 3) { (sin(it * .073) * .61 + cos(it * .017) * .23).toFloat() }
            val radius = (24 * max(1.0, rate / 16000.0)).toInt().coerceAtMost(256)
            val cutoff = min(1.0, 16000.0 / rate) * .92
            val expected =
                FloatArray(((input.size.toLong() * 16000 + rate - 1) / rate).toInt()) { o ->
                    val pos = o.toDouble() * rate / 16000
                    val center = floor(pos).toLong()
                    var sum = 0.0
                    var weight = 0.0
                    for (k in -radius..radius) {
                        val ix = center + k
                        val d = pos - ix
                        if (abs(d) > radius) continue
                        val sinc = if (abs(d) < 1e-9) cutoff else sin(PI * d * cutoff) / (PI * d)
                        val w = sinc * (.5 + .5 * cos(PI * d / radius))
                        sum +=
                            (if (ix in 0 until input.size.toLong()) input[ix.toInt()] else 0f) * w
                        weight += w
                    }
                    (sum / weight).toFloat()
                }
            val resampler = Resampler(rate)
            val chunks =
                input.asList().chunked(997).map { resampler.push(it.toFloatArray()) } +
                    resampler.push(FloatArray(0), true)
            val actual = FloatArray(chunks.sumOf { it.size })
            var offset = 0
            for (chunk in chunks) {
                chunk.copyInto(actual, offset)
                offset += chunk.size
            }
            assertArrayEquals("rate=$rate", expected, actual, 0f)
        }
    }
}
