package ru.localscribe.core

import kotlin.math.*

/** Autocorrelation F0 at 16 kHz, 40 ms frames / 20 ms hops. No emotion classifier. */
class ProsodyAnalyzer {
    fun analyze(x: FloatArray, text: String, pauseMs: Long, baseline: Speaker? = null): Acoustics {
        if (x.isEmpty()) return Acoustics(pauseBeforeMs = pauseMs)
        val rms = sqrt(x.sumOf { it.toDouble() * it } / x.size)
        val db = 20 * log10(max(rms, 1e-6))
        val pitch = mutableListOf<PitchPoint>()
        for (start in 0..(x.size - 640) step 320) {
            val mean = (start until start + 640).sumOf { x[it].toDouble() } / 640
            val f = DoubleArray(640) { x[start + it] - mean }
            val energy = f.sumOf { it * it } / f.size
            var best = 0.0
            var lag = 0
            val scores = DoubleArray(322)
            for (t in 31..321) {
                var cross = 0.0
                var a = 0.0
                var b = 0.0
                for (i in 0 until 640 - t) {
                    cross += f[i] * f[i + t]
                    a += f[i] * f[i]
                    b += f[i + t] * f[i + t]
                }
                scores[t] = cross / sqrt(max(1e-20, a * b))
            }
            // Prefer earliest local peak close to the global maximum to reduce octave errors.
            val maxScore = (32..320).maxOf { scores[it] }
            for (t in 32..320) if (
                scores[t] >= scores[t - 1] &&
                    scores[t] >= scores[t + 1] &&
                    scores[t] >= max(0.7, maxScore * 0.93)
            ) {
                best = scores[t]
                lag = t
                break
            }
            val voiced = energy > 1e-7 && lag > 0 && best > 0.7
            pitch +=
                PitchPoint(Timecode.ms(start.toLong()), if (voiced) 16000.0 / lag else null, best)
        }
        val hz = pitch.mapNotNull { it.hz }.sorted()
        fun median(v: List<Double>) = if (v.isEmpty()) null else v.sorted()[v.size / 2]
        val first = median(pitch.take(max(1, pitch.size / 4)).mapNotNull { it.hz })
        val last = median(pitch.takeLast(max(1, pitch.size / 4)).mapNotNull { it.hz })
        val med = median(hz)
        val words = text.trim().split(Regex("\\s+")).count { it.isNotBlank() }
        return Acoustics(
            med,
            if (hz.size >= 5) 12 * log2(hz[(hz.size * 0.9).toInt()] / hz[(hz.size * 0.1).toInt()])
            else null,
            if (first != null && last != null && hz.size >= 10) 12 * log2(last / first) else null,
            db,
            baseline?.rmsMeanDb?.let { db - it },
            if (med != null && baseline?.f0MeanHz != null) 12 * log2(med / baseline.f0MeanHz)
            else null,
            if (words > 0) words * 60.0 / (x.size / 16000.0) else null,
            pauseMs,
            1.0 - hz.size.toDouble() / max(1, pitch.size),
            pitch.filterIndexed { index, _ -> index % 5 == 0 },
        )
    }

    fun updateNorm(s: Speaker, a: Acoustics): Speaker {
        val n = s.normCount.coerceAtMost(100)
        return s.copy(
            f0MeanHz =
                a.f0MedianHz?.let {
                    if (s.f0MeanHz == null) it else (s.f0MeanHz * n + it) / (n + 1)
                } ?: s.f0MeanHz,
            rmsMeanDb =
                if (s.rmsMeanDb == null) a.rmsDbfs else (s.rmsMeanDb * n + a.rmsDbfs) / (n + 1),
            normCount = s.normCount + 1,
        )
    }
}
