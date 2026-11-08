package ru.localscribe.analysis

import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.*
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test

class RealModelsTest {
    private fun root(): File {
        val path = System.getProperty("analysisModels", "")
        assumeTrue(
            "Supply -PanalysisModels=/path/to/advanced to run actual weights",
            path.isNotBlank(),
        )
        return File(path).also { assertTrue(it.isDirectory) }
    }

    private fun audio(name: String): FloatArray {
        val bytes = javaClass.getResourceAsStream("/$name")!!.use { it.readBytes() }
        val b =
            ByteBuffer.wrap(bytes, 44, bytes.size - 44)
                .order(ByteOrder.LITTLE_ENDIAN)
                .asShortBuffer()
        return FloatArray(b.remaining()) { b.get() / 32768f }
    }

    private fun siSdr(x: FloatArray, r: FloatArray): Double {
        val xm = x.map { it.toDouble() }.average()
        val rm = r.map { it.toDouble() }.average()
        var dot = 0.0
        var rr = 0.0
        for (i in x.indices) {
            dot += (x[i] - xm) * (r[i] - rm)
            rr += (r[i] - rm).pow(2)
        }
        val gain = dot / (rr + 1e-12)
        var target = 0.0
        var error = 0.0
        for (i in x.indices) {
            val t = gain * (r[i] - rm)
            target += t * t
            error += (x[i] - xm - t).pow(2)
        }
        return 10 * log10((target + 1e-12) / (error + 1e-12))
    }

    @Test
    fun realRussianEmotionMatchesOfficialPreprocessingAndRejectsUnsupportedInput() {
        AdvancedModels(root(), 2).use { m ->
            val p = m.emotion(audio("speaker-a.wav"))
            val bytes =
                javaClass.getResourceAsStream("/emotion-reference.f32")!!.use { it.readBytes() }
            val expected = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).asFloatBuffer()
            val labels = listOf("angry", "sad", "neutral", "positive")
            labels.forEach {
                assertEquals(it, expected.get().toDouble(), p.scores.getValue(it), 0.002)
            }
            assertFalse(p.calibrated)
            assertEquals("unknown", m.emotion(FloatArray(64000)).label)
            assertEquals("unknown", m.emotion(audio("speaker-a.wav"), "overlapping_speech").label)
            println("REAL GigaAM-Emo probabilities: ${p.scores}; label=${p.label}")
        }
    }

    @Test
    fun realOverlapAndSeparationRecoverTwoRussianSources() {
        val a = audio("speaker-a.wav")
        val b = audio("speaker-b.wav")
        val mix = FloatArray(a.size) { a[it] + b[it] }
        AdvancedModels(root(), 2).use { m ->
            val conversation = a + mix + b
            val detected = m.overlaps(conversation)
            assertTrue(
                "No overlap on controlled mixture: $detected",
                detected.any { it.start < 128000 && it.end > 64000 },
            )
            assertTrue(m.overlaps(FloatArray(192000)).isEmpty())
            val started = System.nanoTime()
            val result = m.separate(mix)
            assertEquals("estimated", result.status)
            val sources = result.sources!!
            val same = siSdr(sources[0], a) + siSdr(sources[1], b)
            val swapped = siSdr(sources[1], a) + siSdr(sources[0], b)
            val improved = max(same, swapped) / 2 - (siSdr(mix, a) + siSdr(mix, b)) / 2
            println(
                "REAL MossFormer improvement=$improved dB; elapsed=${(System.nanoTime()-started)/1e9}s; overlap=$detected; consistency=${result.reconstructionSnrDb}"
            )
            assertTrue("Separation failed controlled fixture: $improved dB", improved > 5)
            assertTrue(sources.all { it.size == mix.size && it.all { v -> v.isFinite() } })
        }
    }

    @Test
    fun overlappingWindowsPreserveChannelIdentityAndCancellation() {
        val a = audio("speaker-a.wav").let { it + it }
        val b = audio("speaker-b.wav").let { it + it }
        val mix = FloatArray(a.size) { a[it] + b[it] }
        AdvancedModels(root(), 2).use { m ->
            val r = m.separate(mix)
            assertEquals("estimated", r.status)
            val pair = r.sources!!
            val direct = siSdr(pair[0], a) + siSdr(pair[1], b)
            val swapped = siSdr(pair[1], a) + siSdr(pair[0], b)
            val improvement = max(direct, swapped) / 2 - (siSdr(mix, a) + siSdr(mix, b)) / 2
            println("REAL 8-second overlap-add improvement=$improvement dB")
            assertTrue("Channel permutation broke across windows: $improvement", improvement > 5)
            try {
                m.separate(mix) { throw java.util.concurrent.CancellationException("cancel") }
                fail("Cancellation ignored")
            } catch (expected: java.util.concurrent.CancellationException) {
                assertEquals("cancel", expected.message)
            }
        }
    }

    @Test
    fun brokenModelFailsExplicitly() {
        val temp = kotlin.io.path.createTempDirectory("broken-model").toFile()
        try {
            File(temp, "segmentation.int8.onnx").writeText("not an ONNX model")
            AdvancedModels(temp, 1).use { m ->
                try {
                    m.overlaps(FloatArray(32000) { sin(it * .1).toFloat() * .1f })
                    fail("Corrupt model accepted")
                } catch (expected: ai.onnxruntime.OrtException) {
                    assertTrue(expected.message!!.isNotBlank())
                }
            }
        } finally {
            temp.deleteRecursively()
        }
    }
}
