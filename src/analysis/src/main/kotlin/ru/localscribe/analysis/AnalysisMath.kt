package ru.localscribe.analysis

import kotlin.math.*
import ru.localscribe.core.EmotionAssessment

/** Sample-based half-open ranges; all merging and clipping preserves original audio time. */
data class SampleSpan(val start: Int, val end: Int, val score: Double? = null) {
    init {
        require(start >= 0 && end > start)
    }

    fun intersects(other: SampleSpan) = start < other.end && other.start < end
}

object AnalysisMath {
    fun merge(spans: List<SampleSpan>, gap: Int = 0): List<SampleSpan> {
        val out = mutableListOf<SampleSpan>()
        for (s in spans.sortedBy { it.start }) {
            val old = out.lastOrNull()
            if (old != null && s.start <= old.end + gap)
                out[out.lastIndex] =
                    SampleSpan(
                        old.start,
                        max(old.end, s.end),
                        if (old.score != null && s.score != null) min(old.score, s.score) else null,
                    )
            else out += s
        }
        return out
    }

    fun subtract(span: SampleSpan, cuts: List<SampleSpan>): List<SampleSpan> {
        var cursor = span.start
        val out = mutableListOf<SampleSpan>()
        for (cut in merge(cuts)) {
            if (cut.end <= cursor || cut.start >= span.end) continue
            if (cut.start > cursor) out += SampleSpan(cursor, cut.start.coerceAtMost(span.end))
            cursor = max(cursor, cut.end).coerceAtMost(span.end)
        }
        if (cursor < span.end) out += SampleSpan(cursor, span.end)
        return out
    }

    /** Latest sufficiently long clean voice window within the last 2 s of the current turn. */
    fun recentCleanVoiceWindow(begin: Int, end: Int, overlaps: List<SampleSpan>): SampleSpan? {
        require(begin >= 0 && end >= begin)
        if (end - begin < 12800) return null
        val span = SampleSpan(max(begin, end - 32000), end)
        val latest =
            subtract(span, overlaps).lastOrNull { it.end - it.start >= 12800 } ?: return null
        return SampleSpan(max(latest.start, latest.end - 24000), latest.end)
    }

    fun correlation(
        a: FloatArray,
        b: FloatArray,
        aOffset: Int = 0,
        bOffset: Int = 0,
        count: Int = min(a.size - aOffset, b.size - bOffset),
    ): Double {
        if (count < 2) return 0.0
        var aa = 0.0
        var bb = 0.0
        var ab = 0.0
        var am = 0.0
        var bm = 0.0
        for (i in 0 until count) {
            val x = a[aOffset + i].toDouble()
            val y = b[bOffset + i].toDouble()
            aa += x * x
            bb += y * y
            ab += x * y
            am += x
            bm += y
        }
        return ((ab - am * bm / count) /
                sqrt(max(1e-20, (aa - am * am / count) * (bb - bm * bm / count))))
            .coerceIn(-1.0, 1.0)
    }

    /** Model trained with scale-invariant loss: fit both source gains to the actual mixture. */
    fun fitMixture(mix: FloatArray, sources: Array<FloatArray>): Boolean {
        require(sources.size == 2 && sources.all { it.size == mix.size })
        var aa = 0.0
        var bb = 0.0
        var ab = 0.0
        var ax = 0.0
        var bx = 0.0
        for (i in mix.indices) {
            val a = sources[0][i].toDouble()
            val b = sources[1][i].toDouble()
            val x = mix[i].toDouble()
            aa += a * a
            bb += b * b
            ab += a * b
            ax += a * x
            bx += b * x
        }
        val determinant = aa * bb - ab * ab
        if (!determinant.isFinite() || determinant <= max(1e-20, aa * bb * 1e-8)) return false
        val ga = (ax * bb - bx * ab) / determinant
        val gb = (bx * aa - ax * ab) / determinant
        if (!ga.isFinite() || !gb.isFinite()) return false
        for (i in mix.indices) {
            sources[0][i] = (sources[0][i] * ga).toFloat()
            sources[1][i] = (sources[1][i] * gb).toFloat()
        }
        return sources.all { a -> a.all { it.isFinite() } }
    }

    fun emotion(probabilities: List<FloatArray>): EmotionAssessment {
        if (probabilities.isEmpty()) return EmotionAssessment(reason = "insufficient_audio")
        val labels = listOf("angry", "sad", "neutral", "positive")
        require(
            probabilities.all { p ->
                p.size == 4 && p.all { it.isFinite() && it in 0f..1f } && abs(p.sum() - 1f) < 0.01
            }
        )
        val mean = DoubleArray(4) { i -> probabilities.map { it[i].toDouble() }.average() }
        val order = mean.indices.sortedByDescending { mean[it] }
        val best = order[0]
        val agreement =
            probabilities.count { p -> p.indices.maxBy { p[it] } == best }.toDouble() /
                probabilities.size
        val accepted = mean[best] >= 0.75 && mean[best] - mean[order[1]] >= 0.25 && agreement >= 0.8
        return EmotionAssessment(
            if (accepted) labels[best] else "unknown",
            mean[best],
            labels.indices.associate { labels[it] to mean[it] },
            reason = if (accepted) null else "uncertain_or_changing",
        )
    }
}
