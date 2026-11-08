package ru.localscribe

import android.util.Log
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.encodeToString
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.core.*
import ru.localscribe.data.*
import ru.localscribe.engine.*

/** Same real input and all default features; timings contain no transcript content. */
@RunWith(AndroidJUnit4::class)
class ProcessingPerformanceTest {
    @Test
    fun decoderKeepsExactPcm(): Unit = runBlocking {
        val app = InstrumentationRegistry.getInstrumentation().targetContext
        val source = File(app.cacheDir, "context-audio4.mpga")
        val reference = File(app.cacheDir, "decoder-baseline.wav")
        assumeTrue(source.isFile && reference.isFile)
        val decoded = File(app.cacheDir, "decoder-optimized.wav")
        val started = System.nanoTime()
        ru.localscribe.audio.AudioDecoder().decode(source, decoded) {}
        Log.i("Performance082", "decoder_only_ms=${(System.nanoTime()-started)/1_000_000}")
        assertArrayEquals(reference.readBytes(), decoded.readBytes())
    }

    @Test
    fun profileAudio4WithAllFeatures(): Unit = runBlocking { profile("audio4.mpga", "082", true) }

    @Test
    fun profileColdWarmAndLongInput(): Unit = runBlocking {
        profile("audio4.mpga", "audio4-cold", true)
        profile("audio4.mpga", "audio4-warm", true)
        profile("audio5.mp3", "audio5", false)
    }

    private suspend fun profile(name: String, tag: String, requirePopular: Boolean) {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        val source = File(app.cacheDir, "context-$name")
        assumeTrue("Provide $name in test cache", source.isFile)
        val events = mutableListOf<Pair<String, Long>>()
        val timing = ProcessingTimings { stage, ms ->
            events += stage to ms
            Log.i("Performance082", "run=$tag stage=$stage elapsed_ms=$ms")
        }
        EngineGate.exclusive {
            val id = "performance-$tag"
            val audio = File(app.filesDir, "$id.${source.extension}")
            source.copyTo(audio, overwrite = true)
            val recording = Recording(id, "Проверка скорости", 0, audio.path, settings = Settings())
            app.repository.save(recording)
            try {
                OfflinePipeline(app.repository, app.models, timing).run(id) {}
                val result = app.repository.snapshot(id)
                assertEquals("done", result.recording.state)
                assertTrue(result.segments.isNotEmpty())
                if (requirePopular)
                    assertTrue(
                        result.segments
                            .joinToString(" ") { it.text }
                            .lowercase()
                            .contains("популярным")
                    )
                val duration = result.recording.durationMs / 1000.0
                val elapsed = events.last { it.first == "pipeline.total" }.second / 1000.0
                assertEquals(
                    "RTF must include all stages",
                    elapsed / duration,
                    result.recording.rtf!!,
                    0.03,
                )
                val memory = File("/proc/self/status").readLines().first { it.startsWith("VmHWM:") }
                File(app.cacheDir, "performance-$tag-memory.txt").writeText(memory)
                File(app.cacheDir, "performance-$tag.tsv")
                    .writeText(events.joinToString("\n") { "${it.first}\t${it.second}" })
                File(app.cacheDir, "performance-$tag.json").writeText(codec.encodeToString(result))
                Log.i(
                    "Performance082",
                    "run=$tag $memory segments=${result.segments.size} speakers=${result.segments.mapNotNull{it.speakerId}.distinct().size}",
                )
            } finally {
                app.repository.delete(id)
            }
        }
    }
}
