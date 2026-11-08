package ru.localscribe

import android.app.Application
import java.io.StringWriter
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.core.*
import ru.localscribe.data.Repository

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE, application = Application::class)
class SpeakerNumberingTest {
    private fun database(action: (Repository) -> Unit) {
        val db = Repository(RuntimeEnvironment.getApplication())
        try {
            action(db)
        } finally {
            db.close()
        }
    }

    @Test
    fun legacyUnknownsAcrossPagesBecomeStableProvisionalNumbersWithoutVoiceTraining() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        database { db ->
            val r = Recording("legacy", "Разговор", 0, "", state = "done")
            val a = Speaker("speaker_1", "Первый", listOf(1f, 0f), 2, nameIsManual = true)
            val b = Speaker("speaker_2", "Второй", listOf(0f, 1f), 2, nameIsManual = true)
            val segments =
                (0..204).map { i ->
                    Segment(
                        "s$i",
                        r.id,
                        i * 1000L,
                        i * 1000L + 900,
                        text = "Фраза $i",
                        embedding = if (i == 102) b.centroid else emptyList(),
                    )
                } +
                    Segment(
                        "manual",
                        r.id,
                        205000,
                        206000,
                        a.id,
                        "Правка",
                        status = "corrected",
                        speakerProvisional = false,
                    )
            db.commit(r, segments, listOf(a, b))
            db.recover()
            val result = db.segments(r.id)
            assertEquals(206, result.size)
            assertTrue(result.all { it.speakerId != null })
            assertEquals(a.id, result.first().speakerId)
            assertEquals(b.id, result[102].speakerId)
            assertEquals(b.id, result[204].speakerId)
            assertEquals(segments.last(), result.last())
            assertTrue(result.dropLast(1).all { it.speakerProvisional })
            assertTrue(result.take(102).all { it.speakerSimilarity == null })
            assertEquals(listOf(a, b), db.speakers(r.id))
            db.recover()
            assertEquals(result, db.segments(r.id))
            val out = StringWriter()
            Exporter.write(
                Transcript(recording = r, speakers = db.speakers(r.id), segments = result),
                "json",
                out,
            )
            assertFalse(out.toString().contains("Неизвестный"))
            assertTrue(out.toString().contains("speaker_id"))
        }
    }


    @Test
    fun globalDiarizationUnknownsRemainUnknownAfterRecovery() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        database { db ->
            val settings = Settings()
            val recording = Recording("global", "Разговор", 0, "", state = "done",
                modelInfo = ModelInfo("models", "1", emptyMap(), settings = settings))
            val unknown = Segment("unknown", recording.id, 0, 1000, text = "Реплика")
            db.commit(recording, listOf(unknown), emptyList())
            db.recover()
            assertNull(db.segments(recording.id).single().speakerId)
        }
    }

    @Test
    fun emptyVoiceTableReservesOnlyOneNumberAndPersistsAcrossReopen() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        database { db ->
            val r = Recording("r", "Речь", 0, "", state = "done")
            db.commit(
                r,
                (0..3).map { Segment("s$it", r.id, it * 1000L, it * 1000L + 900, text = "Речь") },
                emptyList(),
            )
            db.recover()
        }
        database { db ->
            assertEquals(setOf("speaker_1"), db.segments("r").map { it.speakerId }.toSet())
            assertEquals(0, db.speakers("r").single().observations)
            assertTrue(db.speakers("r").single().centroid.isEmpty())
        }
    }
}
