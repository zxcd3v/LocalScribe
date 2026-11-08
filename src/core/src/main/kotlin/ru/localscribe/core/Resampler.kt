package ru.localscribe.core

import kotlin.math.*

/** Bounded windowed-sinc resampler; phase is a Long output sample count. */
class Resampler(private val sourceRate: Int, private val targetRate: Int = 16000) {
    private var buffer = FloatArray(0)
    private var base = 0L
    private var received = 0L
    private var produced = 0L
    private val radius =
        (24 * max(1.0, sourceRate.toDouble() / targetRate)).toInt().coerceAtMost(256)

    private data class Kernel(val first: Int, val weights: DoubleArray, val normalization: Double)

    // Cache exact floating-point phases, without rounding or changing the filter.
    // Rational rates usually need only a few hundred phases; bound unusual rates too.
    private val kernels =
        object : LinkedHashMap<Double, Kernel>(512, 0.75f, true) {
            override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Double, Kernel>?) =
                size > 1024
        }

    private fun kernel(phase: Double): Kernel =
        kernels.getOrPut(phase) {
            val cutoff = min(1.0, targetRate.toDouble() / sourceRate) * 0.92
            val first = if (phase == 0.0) -radius else -radius + 1
            val weights =
                DoubleArray(radius - first + 1) { index ->
                    val d = phase - (first + index)
                    val sinc = if (abs(d) < 1e-9) cutoff else sin(PI * d * cutoff) / (PI * d)
                    sinc * (0.5 + 0.5 * cos(PI * d / radius))
                }
            Kernel(first, weights, weights.sum())
        }

    init {
        require(sourceRate in 8000..384000 && targetRate > 0)
    }

    fun push(input: FloatArray, finished: Boolean = false): FloatArray {
        buffer += input
        received += input.size
        val end = if (finished) received else (received - radius).coerceAtLeast(0)
        val wanted = (end * targetRate + sourceRate - 1) / sourceRate
        val out = FloatArray((wanted - produced).coerceAtLeast(0).toInt())
        for (o in out.indices) {
            val pos = produced.toDouble() * sourceRate / targetRate
            val center = floor(pos).toLong()
            val filter = kernel(pos - center)
            var sum = 0.0
            for (index in filter.weights.indices) {
                val local = (center + filter.first + index - base).toInt()
                sum += (if (local in buffer.indices) buffer[local] else 0f) * filter.weights[index]
            }
            out[o] = (sum / filter.normalization).toFloat()
            produced++
        }
        val keepFrom =
            (produced * sourceRate / targetRate - radius - 1)
                .coerceAtLeast(base)
                .coerceAtMost(received)
        val drop = (keepFrom - base).toInt()
        buffer = buffer.copyOfRange(drop, buffer.size)
        base = keepFrom
        return out
    }
}
