package ru.localscribe.analysis

import kotlin.math.*

/**
 * GigaAM FeatureExtractor: 16 kHz, periodic Hann 400, hop 160, center/reflect, unnormalized power
 * spectrum, 64 HTK triangular filters, ln(clamp(1e-9, 1e9)). Direct cached DFT avoids changing the
 * trained 400-point FFT to a power of two.
 */
class GigaMel {
    private val window = DoubleArray(400) { 0.5 - 0.5 * cos(2 * PI * it / 400) }
    private val cosines = Array(201) { k -> DoubleArray(400) { cos(2 * PI * k * it / 400) } }
    private val sines = Array(201) { k -> DoubleArray(400) { sin(2 * PI * k * it / 400) } }
    private val filters =
        Array(64) { m ->
            fun hz(i: Int) = 700 * (10.0.pow((2595 * log10(1 + 8000.0 / 700) * i / 65) / 2595) - 1)
            val lo = hz(m)
            val mid = hz(m + 1)
            val hi = hz(m + 2)
            DoubleArray(201) { k ->
                max(0.0, min((k * 40.0 - lo) / (mid - lo), (hi - k * 40.0) / (hi - mid)))
            }
        }

    fun extract(audio: FloatArray): FloatArray {
        require(audio.size > 200 && audio.all { it.isFinite() })
        val frames = audio.size / 160 + 1
        val result = FloatArray(64 * frames)
        val frame = DoubleArray(400)
        val power = DoubleArray(201)
        for (t in 0 until frames) {
            for (n in frame.indices) {
                var index = t * 160 + n - 200
                if (index < 0) index = -index
                if (index >= audio.size) index = 2 * audio.lastIndex - index
                frame[n] = audio[index] * window[n]
            }
            for (k in power.indices) {
                var re = 0.0
                var im = 0.0
                val c = cosines[k]
                val s = sines[k]
                for (n in frame.indices) {
                    re += frame[n] * c[n]
                    im += frame[n] * s[n]
                }
                power[k] = re * re + im * im
            }
            for (m in filters.indices) {
                var value = 0.0
                for (k in power.indices) value += power[k] * filters[m][k]
                result[m * frames + t] = ln(value.coerceIn(1e-9, 1e9)).toFloat()
            }
        }
        return result
    }
}
