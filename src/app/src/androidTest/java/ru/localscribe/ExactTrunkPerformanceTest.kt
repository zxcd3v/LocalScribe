package ru.localscribe

import android.util.Log
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.encodeToString
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.audio.WavFile
import ru.localscribe.core.VoiceTurn
import ru.localscribe.core.codec
import ru.localscribe.data.EngineGate
import ru.localscribe.data.ExtraModels
import ru.localscribe.engine.NativeDiarizer

/** Component A/B test: same PCM, every window and the original deployed weights. */
@RunWith(AndroidJUnit4::class)
class ExactTrunkPerformanceTest {
    private external fun boundLibrary(): String

    /** Full application defaults, including ASR, emotions and context-aware editing. */
    @Test fun profileCompletePipeline(): Unit = runBlocking {
        val app = InstrumentationRegistry.getInstrumentation().targetContext.applicationContext as ScribeApp
        app.ready.await()
        val candidate = InstrumentationRegistry.getArguments().getString("trunkCandidate") == "true"
        val mode = if (candidate) "ort-1" else "native"
        for (name in listOf("context-audio4.mpga", "context-audio5.mp3")) {
            assertTrue("Provide the original compressed input: $name", File(app.cacheDir, name).isFile)
        }
        if (candidate) {
            System.load(File(app.cacheDir, "trunk-candidate/liblocalscribe_diar.so").absolutePath)
            System.load(File(app.cacheDir, "trunk-candidate/libtrunk_probe.so").absolutePath)
        }
        // Remove only this harness's own interrupted fixture jobs before repeating.
        for (tag in listOf("audio4-cold", "audio4-warm", "audio5")) {
            app.repository.delete("performance-$tag")
        }
        ProcessingPerformanceTest().profileColdWarmAndLongInput()
        for (tag in listOf("audio4-cold", "audio4-warm", "audio5")) {
            for (extension in listOf("tsv", "json", "memory.txt")) {
                File(app.cacheDir, "performance-$tag-$extension").let { legacy ->
                    val source = if (extension == "memory.txt") legacy
                        else File(app.cacheDir, "performance-$tag.$extension")
                    assertTrue("Missing complete profile artifact: $source", source.isFile)
                    source.copyTo(File(app.cacheDir, "pipeline-$mode-$tag.$extension"), overwrite = true)
                }
            }
        }
        if (candidate) {
            val binding = boundLibrary()
            assertTrue("Wrong production JNI binding: $binding",
                binding.endsWith("/trunk-candidate/liblocalscribe_diar.so"))
            File(app.cacheDir, "pipeline-$mode-binding.txt").writeText(binding)
        }
    }

    @Test fun preservesTurnsWithExactFp32Graph(): Unit = runBlocking {
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        val app = instrumentation.targetContext.applicationContext as ScribeApp
        app.ready.await()
        val candidate = InstrumentationRegistry.getArguments().getString("trunkCandidate") == "true"
        val workers = InstrumentationRegistry.getArguments().getString("trunkWorkers")?.toInt() ?: 1
        require(workers in listOf(1, 2, 4))
        val mode = if (candidate) "ort-$workers" else "native"

        if (candidate) {
            val library = File(app.cacheDir, "trunk-candidate/liblocalscribe_diar.so")
            assertTrue("Provide the experimental native library explicitly", library.isFile)
            System.load(library.absolutePath)
            System.load(File(app.cacheDir, "trunk-candidate/libtrunk_probe.so").absolutePath)
        }
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.VBX)
            val folder = File(app.models.extras.path("segmentation-3.0.safetensors")).parent!!
            val names = listOf("decoder-baseline.wav", "diar-insertions.wav", "diar-cross-window.wav")
            val rows = mutableListOf<String>()
            for (name in names) {
                val pcm = File(app.cacheDir, name)
                if (name != "decoder-baseline.wav") {
                    instrumentation.context.assets.open(name).use { input ->
                        pcm.outputStream().use { input.copyTo(it) }
                    }
                }
                assertTrue("Missing test PCM: $name", pcm.isFile)
                val started = System.nanoTime()
                val result = NativeDiarizer(folder, secondary = true, workers = workers).use { model ->
                    RandomAccessFile(pcm, "r").use { file ->
                        val total = (file.length() - 44) / 2
                        var offset = 0L
                        while (offset < total) {
                            model.accept(WavFile.read(file, offset, 160000))
                            offset += 16000
                        }
                    }
                    model.complete()
                }
                val elapsedMs = (System.nanoTime() - started) / 1_000_000
                val reference = File(app.cacheDir, "trunk-reference-$name.json")
                if (candidate) {
                    assertTrue("Run baseline before the candidate", reference.isFile)
                    assertEquals("Speaker intervals changed on $name",
                        codec.decodeFromString<List<VoiceTurn>>(reference.readText()), result)
                } else reference.writeText(codec.encodeToString(result))
                val memory = File("/proc/self/status").readLines().first { it.startsWith("VmHWM:") }
                rows += "$mode\t$name\t$elapsedMs\t${result.size}\t$memory"
                Log.i("ExactTrunk", rows.last())
                File(app.cacheDir, "trunk-$mode.tsv").writeText(rows.joinToString("\n"))
            }
            if (candidate) {
                val maps = File("/proc/self/maps").readText()
                assertTrue("Candidate was not mapped", maps.contains("trunk-candidate/liblocalscribe_diar.so"))
                val binding = boundLibrary()
                assertTrue("Production JNI bound a different library: $binding",
                    binding.endsWith("/trunk-candidate/liblocalscribe_diar.so"))
                File(app.cacheDir, "trunk-candidate-binding.txt").writeText(binding)
                File(app.cacheDir, "trunk-candidate-maps.txt").writeText(
                    maps.lineSequence().filter { "localscribe_diar" in it }.joinToString("\n"))
            }
        }
    }
}
