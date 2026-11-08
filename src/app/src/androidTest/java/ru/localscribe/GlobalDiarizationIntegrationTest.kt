package ru.localscribe

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.core.*
import ru.localscribe.data.EngineGate
import ru.localscribe.engine.RecordingDiarization

@RunWith(AndroidJUnit4::class)
class GlobalDiarizationIntegrationTest {
    @Test fun shortInterjectionsAndReturningVoicesSurviveGlobalProcessing(): Unit = runBlocking {
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        val app = instrumentation.targetContext.applicationContext as ScribeApp
        app.ready.await()
        app.preparation.prepare().join()
        EngineGate.exclusive {
            for (name in listOf("diar-insertions.wav", "diar-cross-window.wav")) {
                val file = File(app.cacheDir, name)
                try {
                    instrumentation.context.assets.open(name).use { input ->
                        file.outputStream().use { input.copyTo(it) }
                    }
                    val progress = mutableListOf<Float>()
                    val timeline = RecordingDiarization(app.models).analyze(
                        file, Settings(refineDiarization = true), {}, { progress += it },
                    )
                    val known = timeline.turns.filter { it.speaker >= 0 }
                    assertEquals(name, 2, known.map { it.speaker }.distinct().size)
                    assertTrue(progress.zipWithNext().all { (a,b) -> b >= a })
                    if ("insertions" in name) {
                        val first = known.first { it.start < 16000 }.speaker
                        for ((start,end) in listOf(2600L to 2950L, 5050L to 5500L)) {
                            val insertion = timeline.window(start*16, ((end-start)*16).toInt())
                            assertTrue("Missing short B turn at $start", insertion.any { it.speaker >= 0 && it.speaker != first })
                        }
                    } else {
                        val first = known.first().speaker
                        assertTrue(known.any { it.start > 60*16000 && it.speaker == first })
                    }
                } finally { file.delete() }
            }
        }
    }
}
