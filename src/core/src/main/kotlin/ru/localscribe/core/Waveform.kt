package ru.localscribe.core

import kotlin.math.abs

/** Fixed memory envelope over the complete original recording, independent of transcript pages. */
class WaveformAccumulator(val totalSamples: Long, maxPeaks: Int = 2048) {
    init {
        require(totalSamples >= 0)
        require(maxPeaks in 1..16384)
    }

    private val values = FloatArray(minOf(totalSamples, maxPeaks.toLong()).toInt())
    var consumedSamples: Long = 0
        private set

    fun append(samples: FloatArray) {
        require(samples.size.toLong() <= totalSamples - consumedSamples)
        for (sample in samples) {
            val bin = (consumedSamples * values.size / totalSamples).toInt()
            val amplitude = if (sample.isFinite()) abs(sample).coerceAtMost(1f) else 0f
            values[bin] = maxOf(values[bin], amplitude)
            consumedSamples++
        }
    }

    fun finish(): List<Float> {
        check(consumedSamples == totalSamples) { "Incomplete waveform" }
        return values.toList()
    }
}
