package ru.localscribe

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.audio.AudioDecoder
import ru.localscribe.audio.WavFile
import ru.localscribe.core.FileAsr
import ru.localscribe.core.Quality
import ru.localscribe.core.Settings
import ru.localscribe.data.EngineGate
import ru.localscribe.data.ExtraModels
import ru.localscribe.engine.Engines
import ru.localscribe.engine.LocalTextEditor

@RunWith(AndroidJUnit4::class)
class StageOneIntegrationTest {
    private val instrumentation = InstrumentationRegistry.getInstrumentation()
    private val app get() = instrumentation.targetContext.applicationContext as ScribeApp

    private fun fixture(name: String, target: File) {
        instrumentation.context.assets.open(name).use { input ->
            target.outputStream().use { input.copyTo(it) }
        }
    }

    @Test
    fun stereoFormatsDecodeToMonoPcmAndTruncationIsRejected(): Unit = runBlocking {
        val dir = File(app.cacheDir, "stage-one-decode").apply { mkdirs() }
        try {
            for (ext in listOf("wav", "mp3", "m4a", "ogg")) {
                val source = File(dir, "stereo.$ext")
                fixture(source.name, source)
                val pcm = File(dir, "decoded-$ext.wav")
                AudioDecoder().decode(source, pcm) {}
                assertTrue("$ext must produce canonical 16 kHz mono WAV", WavFile.isCanonical(pcm))
                val frames = (pcm.length() - 44) / 2
                assertTrue("$ext duration: $frames frames", frames in 15000..18000)
                val audio = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, frames.toInt()) }
                assertTrue("$ext lost the signal", audio.any { kotlin.math.abs(it) > 0.02f })
            }
            val bad = File(dir, "bad.mp3").apply { writeText("not an audio file") }
            assertTrue(runCatching {
                AudioDecoder().decode(bad, File(dir, "bad.wav")) {}
            }.isFailure)
        } finally {
            dir.deleteRecursively()
        }
    }

    @Test
    fun bundledAsrRecognizesBothLanguages(): Unit = runBlocking {
        app.ready.await()
        app.preparation.prepare().join()
        EngineGate.exclusive {
            val models = app.models
            models.extras.prepare(ExtraModels.WHISPER)
            for ((language, name, keyword) in listOf(
                Triple(FileAsr.GIGAAM_V3, "ru.wav", "углубления"),
                Triple(FileAsr.WHISPER_EN, "en-whisper.wav", "yellow"),
            )) {
                val source = File(app.cacheDir, "stage-one-source.wav")
                val pcm = File(app.cacheDir, "stage-one-normalized.wav")
                try {
                    fixture(name, source)
                    AudioDecoder().decode(source, pcm) {}
                    val samples = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, 15 * 16000) }
                    val text = Engines(models, Settings(quality = Quality.FAST, fileAsr = language))
                        .use { it.recognize(samples, 0).first }
                    assertTrue("$language transcript: $text", text.contains(keyword, ignoreCase = true))
                } finally {
                    source.delete()
                    pcm.delete()
                }
            }
        }
    }

    @Test
    fun optionalQwenEditsAfterExplicitPreparation(): Unit = runBlocking {
        app.ready.await()
        org.junit.Assume.assumeTrue("Optional Qwen is absent from this distribution",
            app.models.extras.status().any { it.group == ExtraModels.QWEN })
        EngineGate.exclusive {
            val models = app.models
            models.extras.prepare(ExtraModels.QWEN)
            val model = models.extras.path(ExtraModels.QWEN_FILE)
            LocalTextEditor(model, models.extras.editorInstructions()).use { editor ->
                val edited = editor.edit("добрый вечер мы уже открыли файл")
                assertEquals("Добрый вечер, мы уже открыли файл.", edited)
                val original = "количество зрителями стало больше"
                assertEquals("Количество зрителей стало больше.", editor.edit(original))
            }
        }
    }
}
