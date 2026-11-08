package ru.localscribe

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.core.*
import ru.localscribe.data.*
import ru.localscribe.engine.OfflinePipeline

/** Real Android/ML path; requires the model pack. No prepared transcript or fake embedding. */
@RunWith(AndroidJUnit4::class)
class DemoWorkflowIntegrationTest {
    @Test
    fun localDemosRunThroughDecoderAsrDiarizationAndVoiceProfile() = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        app.preparation.prepare().join()
        val created = mutableListOf<String>()
        var profileId: String? = null
        EngineGate.exclusive {
            try {
                for ((index, demo) in Demos.all.take(2).withIndex()) {
                    val id = "demo-integration-${demo.id}"
                    val f = File(app.filesDir, "$id.wav")
                    Demos.copy(app, demo, f)
                    val r =
                        Recording(
                            id,
                            demo.title,
                            0,
                            f.path,
                            source = "demo",
                            settings =
                                Settings(speakers = 2, emotions = false, separateOverlap = false),
                        )
                    app.repository.save(r)
                    created += id
                    val progress = mutableListOf<Float>()
                    OfflinePipeline(app.repository, app.models).run(id, onProgress = {
                        if (it == 1f) assertEquals("done", app.repository.recording(id)?.state)
                        progress += it
                    }) {}
                    assertEquals(0f, progress.first())
                    assertEquals(1f, progress.last())
                    assertTrue(progress.zipWithNext().all { (a, b) -> a < b })
                    assertTrue("Diarization must advance the same bar before ASR starts",
                        progress.any { it > 0.15f && it < 0.40f })
                    // Demo audio is shorter than one checkpoint. The bar must still advance.
                    assertTrue(progress.count { it > 0.15f && it < 0.98f } >= 2)
                    val t = app.repository.snapshot(id)
                    assertEquals("done", t.recording.state)
                    assertTrue(t.segments.any { it.text.isNotBlank() })
                    assertEquals(2, t.segments.mapNotNull { it.speakerId }.distinct().size)
                    assertTrue(
                        t.segments.all { it.startMs >= 0 && it.endMs <= t.recording.durationMs }
                    )
                    if (index == 0) {
                        val first = t.segments.first { it.speakerId != null }.speakerId!!
                        profileId = app.repository.rememberVoice(id, first, "Тестовый голос").id
                    } else {
                        assertTrue(
                            t.speakers.any { it.voiceProfileId == profileId && !it.nameIsManual }
                        )
                        val turn = t.segments.first()
                        app.repository.assignProfile(id, turn, profileId!!)
                        assertEquals(
                            "corrected",
                            app.repository.segments(id).first { it.id == turn.id }.status,
                        )
                    }
                }
            } finally {
                profileId?.let(app.repository::forgetVoice)
                created.forEach(app.repository::delete)
            }
        }
    }
}
