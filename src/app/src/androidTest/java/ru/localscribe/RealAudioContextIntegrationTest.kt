package ru.localscribe

import android.os.SystemClock
import android.util.Log
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.audio.*
import ru.localscribe.core.*
import ru.localscribe.data.*
import ru.localscribe.engine.*

/** User audio is supplied only to the test cache; never embedded in a distributable APK. */
@RunWith(AndroidJUnit4::class)
class RealAudioContextIntegrationTest {
    @Test fun audio4KeepsTheInflectionAcrossTheFormerFifteenSecondCut(): Unit = runBlocking {
        val app = InstrumentationRegistry.getInstrumentation().targetContext.applicationContext as ScribeApp
        app.ready.await()
        val source = File(app.cacheDir, "context-audio4.mpga")
        assumeTrue("Provide audio4.mpga in the test cache", source.isFile)
        EngineGate.exclusive {
            val pcm = File(app.cacheDir, "context-audio4-comparison.wav")
            AudioDecoder().decode(source, pcm) {}
            try {
                val audio = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, 30 * 16000) }
                Engines(app.models, Settings()).use { engines ->
                    val old = (audio.indices step (15 * 16000)).map { begin ->
                        engines.recognize(audio.copyOfRange(begin, minOf(audio.size, begin + 15 * 16000)),
                            Timecode.ms(begin.toLong())).first
                    }.joinToString(" | ")
                    val words = contextAsrWindows(audio.size, 0, audio.size).flatMap { window ->
                        val recognized = engines.recognize(audio.copyOfRange(window.audioBegin, window.audioEnd),
                            Timecode.ms(window.audioBegin.toLong()))
                        TranscriptMerger.words(recognized.second).filter {
                            it.startMs * 16 >= window.begin && it.startMs * 16 < window.end
                        }
                    }
                    val fixed = words.joinToString(" ") { it.text }
                    Log.i("ContextBenchmark", "audio4 old=<$old>")
                    Log.i("ContextBenchmark", "audio4 contextual=<$fixed>")
                    assertTrue(fixed.lowercase().contains("популярным"))
                    assertFalse(words.any { it.text.trim('.', '…', ',', ' ').lowercase() == "ным" })
                }
            } finally { pcm.delete() }
            val audio = File(app.filesDir, "test-context-audio4.mpga")
            source.copyTo(audio, overwrite = true)
            val recording = Recording("test-context-audio4", "Контекст audio4", 0, audio.path,
                settings = Settings(emotions = false, separateOverlap = false))
            app.repository.save(recording)
            try {
                val begin = SystemClock.elapsedRealtime()
                OfflinePipeline(app.repository, app.models).run(recording.id) {}
                val transcript = app.repository.snapshot(recording.id)
                assertEquals("done", transcript.recording.state)
                Log.i("ContextBenchmark", "audio4 pipeline-ms=${SystemClock.elapsedRealtime() - begin}")
                transcript.segments.forEach { Log.i("ContextBenchmark", "audio4 [${it.startMs}-${it.endMs}] ${it.speakerId}: ${it.text}") }
                assertTrue(transcript.segments.joinToString(" ") { it.text }.lowercase().contains("популярным"))
                assertFalse(transcript.segments.any { it.text.trim('.', '…', ',', ' ').lowercase().startsWith("ным ") })
            } finally { app.repository.delete(recording.id) }
        }
    }
}
