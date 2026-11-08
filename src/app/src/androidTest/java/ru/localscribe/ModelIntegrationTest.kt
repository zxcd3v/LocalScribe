package ru.localscribe

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.*
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.analysis.AdvancedModels
import ru.localscribe.audio.*
import ru.localscribe.core.*
import ru.localscribe.data.ModelStore
import ru.localscribe.engine.*

/** Requires an installed model pack in target app and bundled test-audio/ru.wav. */
@RunWith(AndroidJUnit4::class)
class ModelIntegrationTest {
    @Test
    fun realRussianSpeechIsRecognizedAndEmbedded() = runBlocking {
        val inst = InstrumentationRegistry.getInstrumentation()
        val c = inst.targetContext
        val app = c.applicationContext as ScribeApp
        app.ready.await()
        app.preparation.prepare().join()
        val model = ModelStore(c)
        assertNotNull("Install models-ru.zip before connected tests", model.manifest())
        val source = File(c.cacheDir, "fixture.wav")
        inst.context.assets.open("ru.wav").use { i -> source.outputStream().use { i.copyTo(it) } }
        val pcm = File(c.cacheDir, "fixture-pcm.wav")
        AudioDecoder().decode(source, pcm) {}
        val samples = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, 30 * 16000) }
        Engines(model, Settings(quality = Quality.FAST)).use { e ->
            val (text, tokens) = e.recognize(samples, 0)
            assertTrue(text.lowercase().contains("родион"))
            assertTrue(tokens.isNotEmpty())
            val emb = e.embedding(samples)
            assertNotNull(emb)
            assertTrue(emb!!.isNotEmpty())
            assertEquals(1f, SpeakerCluster.cosine(emb, emb), 0.001f)
            val v = e.vad()
            try {
                samples.asList().chunked(512).forEach { v.acceptWaveform(it.toFloatArray()) }
                v.flush()
                assertFalse(v.empty())
            } finally {
                v.release()
            }
            val online = e.online()
            val stream = online.createStream()
            try {
                samples.asList().chunked(1600).forEach {
                    stream.acceptWaveform(it.toFloatArray(), 16000)
                    while (online.isReady(stream)) online.decode(stream)
                }
                stream.acceptWaveform(FloatArray(16000), 16000)
                stream.inputFinished()
                while (online.isReady(stream)) online.decode(stream)
                assertTrue(online.getResult(stream).text.isNotBlank())
            } finally {
                stream.release()
            }
        }
    }

    @Test
    fun actualModelsCreateOverlappingTracksAndPersistTheirAudio(): Unit = runBlocking {
        val inst = InstrumentationRegistry.getInstrumentation()
        val c = inst.targetContext
        val app = c.applicationContext as ScribeApp
        app.ready.await()
        app.preparation.prepare().join()
        val models = app.models
        models.verify(Settings())
        fun samples(name: String): FloatArray {
            val f = File(c.cacheDir, name)
            inst.context.assets.open(name).use { input ->
                f.outputStream().use { input.copyTo(it) }
            }
            return RandomAccessFile(f, "r").use { WavFile.read(it, 0, 64000) }
        }
        val a = samples("speaker-a.wav")
        val b = samples("speaker-b.wav")
        val mix = FloatArray(a.size) { a[it] + b[it] }
        AdvancedModels(File(models.root, "advanced"), 2).use {
            assertFalse(it.overlaps(a + mix + b).isEmpty())
            assertEquals("neutral", it.emotion(a).label)
            assertFalse(it.emotion(a).calibrated)
        }
        val f = File(c.filesDir, "integration-overlap.wav")
        WavFile(f).use { it.write(a + mix + b) }
        val r =
            Recording("integration-overlap", "Два голоса", 0, f.path, f.path, settings = Settings())
        app.repository.save(r)
        try {
            OfflinePipeline(app.repository, models).run(r.id) {}
            val t = app.repository.snapshot(r.id)
            assertEquals("done", t.recording.state)
            assertTrue(t.segments.any { it.text.isNotBlank() })
            val stems = t.segments.filter { it.separation != null }
            assertTrue("No separated speech generated", stems.isNotEmpty())
            assertEquals(setOf(0, 1), stems.map { it.separation!!.channel }.toSet())
            assertTrue(stems.all { File(it.separatedAudioPath).length() > 44 })
            assertTrue(stems.all { it.emotion?.label == "unknown" })
            assertTrue(
                stems.any { x ->
                    stems.any { y ->
                        x.separation!!.channel != y.separation!!.channel &&
                            x.startMs < y.endMs &&
                            y.startMs < x.endMs
                    }
                }
            )
            assertTrue(stems.all { it.endMs <= t.recording.durationMs })
        } finally {
            app.repository.delete(r.id)
        }
        assertFalse(File(c.filesDir, "separated-${r.id}").exists())
    }
}
