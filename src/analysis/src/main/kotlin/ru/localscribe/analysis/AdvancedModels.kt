package ru.localscribe.analysis

import ai.onnxruntime.*
import java.io.Closeable
import java.io.File
import java.nio.FloatBuffer
import java.nio.LongBuffer
import kotlin.math.*
import ru.localscribe.core.EmotionAssessment

/**
 * CPU-only, bounded inputs. One large session resident at a time; tiny OSD stays loaded. Each owner
 * is confined to its inference coroutine. Returned scores are uncalibrated.
 */
class AdvancedModels(
    private val directory: File,
    private val threads: Int,
    private val reuseBuffers: Boolean = true,
    private val timing: (String, Long) -> Unit = { _, _ -> },
) : Closeable {
    private val environment = OrtEnvironment.getEnvironment()
    private var segmentation: OrtSession? = null
    private var heavy: OrtSession? = null
    private var heavyName: String? = null
    private val mel by lazy { GigaMel() }

    private fun session(name: String): OrtSession {
        if (name == "segmentation.int8.onnx")
            segmentation?.let {
                return it
            }
        else if (name == heavyName)
            heavy?.let {
                return it
            }
        if (name != "segmentation.int8.onnx") {
            heavy?.close()
            heavy = null
            heavyName = null
        }
        val file = File(directory, name)
        require(file.isFile) { "Отсутствует модель анализа: $name" }
        val loadStarted = System.nanoTime()
        val created =
            OrtSession.SessionOptions().use { options ->
                options.setIntraOpNumThreads(threads.coerceIn(1, 4))
                options.setInterOpNumThreads(1)
                // Reuse bounded activation buffers within a session; close releases its arena.
                options.setCPUArenaAllocator(reuseBuffers)
                options.setMemoryPatternOptimization(reuseBuffers)
                options.addConfigEntry("session.intra_op.allow_spinning", "0")
                environment.createSession(file.absolutePath, options)
            }
        timing("analysis.load.$name", (System.nanoTime() - loadStarted) / 1_000_000)
        if (name == "segmentation.int8.onnx") segmentation = created
        else {
            heavy = created
            heavyName = name
        }
        return created
    }

    private fun floats(
        name: String,
        inputName: String,
        samples: FloatArray,
        shape: LongArray,
    ): FloatArray {
        OnnxTensor.createTensor(environment, FloatBuffer.wrap(samples), shape).use { tensor ->
            val model = session(name)
            val started = System.nanoTime()
            model.run(mapOf(inputName to tensor)).use { result ->
                timing("analysis.infer.$name", (System.nanoTime() - started) / 1_000_000)
                val output = result[0] as OnnxTensor
                val buffer = output.floatBuffer ?: error("Модель вернула не float tensor")
                return FloatArray(buffer.remaining()).also { buffer.get(it) }
            }
        }
    }

    fun overlaps(audio: FloatArray, checkCancelled: () -> Unit = {}): List<SampleSpan> {
        if (audio.size < 4000 || rms(audio) < 0.001) return emptyList()
        require(audio.size <= 40 * 16000)
        val hop = 320 // 20 ms display grid, model receptive field is 991 / stride 270 samples.
        val sums = DoubleArray((audio.size + hop - 1) / hop)
        val counts = IntArray(sums.size)
        var start = 0
        while (start < audio.size) {
            checkCancelled()
            val input = FloatArray(160000)
            audio.copyInto(input, 0, start, min(audio.size, start + input.size))
            val result = floats("segmentation.int8.onnx", "x", input, longArrayOf(1, 1, 160000))
            require(result.size == 589 * 7 && result.all { it.isFinite() }) {
                "Неверный выход модели перекрытия"
            }
            for (frame in 0 until 589) {
                val center = start + frame * 270 + 495
                if (center >= audio.size) break
                // Average probabilities, not arbitrary local speaker indices across windows.
                val base = frame * 7
                var sum = 0.0
                var overlap = 0.0
                for (c in 0 until 7) {
                    val value = exp(result[base + c].toDouble())
                    sum += value
                    if (c >= 4) overlap += value
                }
                val index = center / hop
                sums[index] += overlap / max(1e-12, sum)
                counts[index]++
            }
            if (start + 160000 >= audio.size) break
            start += 80000
        }
        val active =
            sums.indices
                .filter { counts[it] > 0 && sums[it] / counts[it] >= 0.6 }
                .map { SampleSpan(it * hop, min(audio.size, (it + 1) * hop)) }
        return AnalysisMath.merge(active, gap = 1280)
            .filter { it.end - it.start >= 3200 }
            .map { span ->
                val indices =
                    (span.start / hop until min(counts.size, (span.end + hop - 1) / hop)).filter {
                        counts[it] > 0
                    }
                span.copy(score = indices.map { sums[it] / counts[it] }.average())
            }
    }

    data class Separated(
        val sources: Array<FloatArray>?,
        val status: String,
        val reconstructionSnrDb: Double? = null,
        val sourceCorrelation: Double? = null,
    )

    fun separate(audio: FloatArray, checkCancelled: () -> Unit = {}): Separated {
        require(audio.size <= 30 * 16000)
        if (audio.size < 4000 || rms(audio) < 0.001) return Separated(null, "insufficient_audio")
        val sums = Array(2) { FloatArray(audio.size) }
        val weights = FloatArray(audio.size)
        var previous: Array<FloatArray>? = null
        var previousStart = 0
        var start = 0
        while (start < audio.size) {
            checkCancelled()
            val input = FloatArray(64000)
            val valid = min(input.size, audio.size - start)
            audio.copyInto(input, 0, start, start + valid)
            val output = floats("mossformer2.onnx", "mix", input, longArrayOf(1, 64000))
            require(output.size == 128000 && output.all { it.isFinite() }) {
                "Неверный выход разделителя речи"
            }
            var pair = arrayOf(output.copyOfRange(0, 64000), output.copyOfRange(64000, 128000))
            if (!AnalysisMath.fitMixture(input, pair)) return Separated(null, "degenerate_sources")
            previous?.let { old ->
                val offset = start - previousStart
                val length = min(64000 - offset, valid)
                val same =
                    abs(AnalysisMath.correlation(old[0], pair[0], offset, 0, length)) +
                        abs(AnalysisMath.correlation(old[1], pair[1], offset, 0, length))
                val swap =
                    abs(AnalysisMath.correlation(old[0], pair[1], offset, 0, length)) +
                        abs(AnalysisMath.correlation(old[1], pair[0], offset, 0, length))
                if (swap > same) pair = arrayOf(pair[1], pair[0])
            }
            for (i in 0 until valid) {
                // Nonzero tapered ends avoid discarding real samples at recording boundaries.
                val w = max(0.01, 0.5 - 0.5 * cos(2 * PI * (i + 0.5) / 64000)).toFloat()
                weights[start + i] += w
                for (c in 0..1) sums[c][start + i] += pair[c][i] * w
            }
            previous = pair
            previousStart = start
            if (start + 64000 >= audio.size) break
            start += 32000
        }
        for (i in audio.indices) for (c in 0..1) sums[c][i] /= weights[i].coerceAtLeast(1e-6f)
        val correlation = abs(AnalysisMath.correlation(sums[0], sums[1]))
        var error = 0.0
        var signal = 0.0
        for (i in audio.indices) {
            val e = audio[i] - sums[0][i] - sums[1][i]
            error += e * e
            signal += audio[i] * audio[i]
        }
        val snr = 10 * log10(max(1e-15, signal) / max(1e-15, error))
        val levels = sums.map { rms(it) }
        val valid =
            correlation < 0.85 &&
                snr >= 6 &&
                levels.min() > 0.0005 &&
                levels.min() / levels.max() > 0.03
        return Separated(
            if (valid) sums else null,
            if (valid) "estimated" else "unreliable_separation",
            snr,
            correlation,
        )
    }

    fun emotion(
        audio: FloatArray,
        excludedReason: String? = null,
        checkCancelled: () -> Unit = {},
    ): EmotionAssessment {
        if (excludedReason != null) return EmotionAssessment(reason = excludedReason)
        if (audio.size < 16000) return EmotionAssessment(reason = "too_short")
        if (rms(audio) < 0.002) return EmotionAssessment(reason = "too_quiet")
        if (audio.count { abs(it) >= 0.995f }.toDouble() / audio.size > 0.01)
            return EmotionAssessment(reason = "clipping")
        val probabilities = mutableListOf<FloatArray>()
        // Up to five independent 4 s windows (max 20 s). No padded pooling or unbounded attention.
        val windows = min(5, max(1, (audio.size + 63999) / 64000))
        for (index in 0 until windows) {
            checkCancelled()
            val begin =
                if (windows == 1) 0
                else
                    ((audio.size - min(audio.size, 64000)).toLong() * index / (windows - 1)).toInt()
            val clip = audio.copyOfRange(begin, min(audio.size, begin + 64000))
            val melStarted = System.nanoTime()
            val features = mel.extract(clip)
            timing("emotion.features", (System.nanoTime() - melStarted) / 1_000_000)
            val frames = clip.size / 160 + 1
            OnnxTensor.createTensor(
                    environment,
                    FloatBuffer.wrap(features),
                    longArrayOf(1, 64, frames.toLong()),
                )
                .use { values ->
                    OnnxTensor.createTensor(
                            environment,
                            LongBuffer.wrap(longArrayOf(frames.toLong())),
                            longArrayOf(1),
                        )
                        .use { lengths ->
                            val model = session("emo.int8.onnx")
                            val started = System.nanoTime()
                            model
                                .run(mapOf("features" to values, "feature_lengths" to lengths))
                                .use { result ->
                                    timing(
                                        "emotion.infer",
                                        (System.nanoTime() - started) / 1_000_000,
                                    )
                                    val buffer =
                                        (result[0] as OnnxTensor).floatBuffer
                                            ?: error("Модель вернула не float tensor")
                                    probabilities +=
                                        FloatArray(buffer.remaining()).also { buffer.get(it) }
                                }
                        }
                }
        }
        return AnalysisMath.emotion(probabilities)
    }

    fun releaseHeavy() {
        heavy?.close()
        heavy = null
        heavyName = null
    }

    override fun close() {
        releaseHeavy()
        segmentation?.close()
        segmentation = null
    }

    companion object {
        fun rms(x: FloatArray) = sqrt(x.sumOf { it.toDouble() * it } / max(1, x.size))
    }
}
