package ru.localscribe

import android.app.Application
import android.database.sqlite.SQLiteDatabase
import java.io.StringWriter
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.*
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.core.*
import ru.localscribe.data.*

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE, application = Application::class)
class PagedRepositoryTest {
    private fun fresh(): Repository {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        return Repository(c)
    }

    private fun rows(n: Int) =
        (0 until n).map { i ->
            Segment(
                "s%05d".format(i),
                "r",
                (i / 2) * 1000L,
                (i / 2) * 1000L + 1500,
                if (i % 3 == 0) null else "speaker_${i % 2 + 1}",
                "Реплика $i ЁЖИК 100%_",
                embedding = listOf(.1f, .2f),
            )
        }

    @Test
    fun pagingSearchAndWholeRecordingExportPreserveOverlapsAndPrivacy() {
        val db = fresh()
        val r = Recording("r", "Длинный разговор", 0, "/private/original.wav")
        db.commit(
            r,
            rows(1005),
            listOf(Speaker("speaker_1", "Анна"), Speaker("speaker_2", "Борис")),
        )
        val ids = mutableListOf<String>()
        for (offset in 0..1000 step 100) {
            val page = db.page("r", TranscriptQuery(offset = offset))
            assertTrue(page.transcript.segments.size <= 100)
            assertEquals(1005, page.total)
            ids += page.transcript.segments.map { it.id }
        }
        assertEquals(1005, ids.distinct().size)
        assertEquals(rows(1005).map { it.id }, ids)
        assertEquals(1005, db.page("r", TranscriptQuery(text = "ёжик 100%_")).total)
        assertEquals(335, db.page("r", TranscriptQuery(speakerId = "unknown")).total)
        val found =
            db.page("r", TranscriptQuery(text = "РЕПЛИКА 1004 ")).transcript.segments.single()
        assertEquals("s01004", found.id)
        assertEquals(1000, db.page("r", TranscriptQuery(followLatest = true)).offset)
        val out = StringWriter()
        db.export("r", "json", out)
        val json = codec.parseToJsonElement(out.toString()).jsonObject
        assertEquals(1005, json["transcript"]!!.jsonArray.size)
        assertFalse(out.toString().contains("/private/"))
        assertTrue(
            json["transcript"]!!.jsonArray.all { "embedding" !in it.jsonObject }
        )
        db.edit("r", found.copy(text = "ИСПРАВЛЕНО"))
        assertEquals(1, db.page("r", TranscriptQuery(text = "исправлено")).total)
        assertEquals(0, db.page("r", TranscriptQuery(text = "РЕПЛИКА 1004 ")).total)
        db.mergeSpeakers("r", "speaker_2", "speaker_1")
        assertEquals(0, db.page("r", TranscriptQuery(speakerId = "speaker_2")).total)
        db.close()
    }

    @Test fun aLongTurnDoesNotSplitAtTheHundredthStoredSegment() {
        val db = fresh()
        val parts = (0 until 205).map { Segment("s$it", "r", it*1000L, it*1000L+900,
            "speaker_1", "слово$it", words = listOf(WordStamp("слово$it", it*1000L))) }
        db.commit(Recording("r", "Монолог", 0, "audio"), parts, listOf(Speaker("speaker_1", "Участник 1")))
        val page = db.page("r")
        assertEquals(1, page.total)
        assertEquals(205, page.transcript.segments.size)
        assertFalse(page.hasNext)
        assertEquals(1, DialogueTurns.groups(page.transcript.segments).size)
        db.editTurn(parts, DialogueTurns.text(parts), "speaker_2")
        assertEquals(parts.map { it.id }, db.segments("r").map { it.id })
        assertEquals(parts.map { it.words }, db.segments("r").map { it.words })
        db.close()
    }

    @Test
    fun legacyDatabaseMigratesWithoutLosingCorrectedTextOrProfiles() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val file = c.getDatabasePath("transcripts.db")
        file.parentFile!!.mkdirs()
        val old = SQLiteDatabase.openOrCreateDatabase(file, null)
        old.execSQL(
            "CREATE TABLE recordings(id TEXT PRIMARY KEY, created INTEGER NOT NULL, payload TEXT NOT NULL)"
        )
        old.execSQL(
            "CREATE TABLE segments(id TEXT PRIMARY KEY, recording_id TEXT NOT NULL, start_ms INTEGER NOT NULL, payload TEXT NOT NULL)"
        )
        old.execSQL("CREATE INDEX segments_time ON segments(recording_id,start_ms)")
        old.execSQL(
            "CREATE TABLE speakers(recording_id TEXT NOT NULL, id TEXT NOT NULL, payload TEXT NOT NULL, PRIMARY KEY(recording_id,id))"
        )
        val r = Recording("r", "Старая запись", 0, "private.wav")
        old.execSQL(
            "INSERT INTO recordings VALUES(?,?,?)",
            arrayOf<Any>("r", 0, codec.encodeToString(r)),
        )
        for (s in rows(205).map { it.copy(status = "corrected") }) old.execSQL(
            "INSERT INTO segments VALUES(?,?,?,?)",
            arrayOf<Any>(s.id, "r", s.startMs, codec.encodeToString(s)),
        )
        val speaker = Speaker("speaker_1", "Имя", listOf(1f, 0f), 2)
        old.execSQL(
            "INSERT INTO speakers VALUES(?,?,?)",
            arrayOf("r", speaker.id, codec.encodeToString(speaker)),
        )
        old.version = 1
        old.close()
        val db = Repository(c)
        assertEquals(205, db.page("r", TranscriptQuery(text = "ёжик")).total)
        assertEquals(speaker, db.speakers("r").single())
        assertTrue(db.page("r").transcript.segments.all { it.status == "corrected" })
        assertEquals(3, db.readableDatabase.version)
        db.close()
    }

    @Test
    fun liveCheckpointIsAtomicMonotonicAndPreservesEdits() {
        val db = fresh()
        db.save(Recording("r", "Live", 0, "a.wav", source = "microphone"))
        val s = Segment("r:live:0", "r", 0, 800, text = "Первая")
        db.commitLive("r", listOf(s), emptyList(), 16000)
        db.edit("r", s.copy(text = "Правка"))
        db.commitLive("r", listOf(s), emptyList(), 16000)
        assertEquals("Правка", db.segment("r", s.id)!!.text)
        try {
            db.commitLive(
                "r",
                listOf(s.copy(id = "invalid", recordingId = "other")),
                emptyList(),
                32000,
            )
            fail("Invalid segment should fail")
        } catch (expected: IllegalArgumentException) {}
        assertEquals(16000L, db.recording("r")!!.liveCheckpointSamples)
        try {
            db.commitLive("r", emptyList(), emptyList(), 8000)
            fail("Cannot rewind")
        } catch (expected: IllegalArgumentException) {}
        db.close()
        val reopened = Repository(RuntimeEnvironment.getApplication())
        assertEquals(16000L, reopened.recording("r")!!.liveCheckpointSamples)
        assertNull(reopened.forkProcessing("r", Settings()).liveCheckpointSamples)
        reopened.close()
    }

    @Test
    fun batchedRefinementVisitsEverySegmentOnceAndRollsBackOnFailure() {
        val db = fresh()
        db.commit(Recording("r", "Тест", 0, "a.wav"), rows(305), emptyList())
        var count = 0
        try {
            db.refineSpeakers(
                "r",
                emptyList(),
                { s ->
                    count++
                    if (count == 201) error("Interrupted")
                    s.copy(text = "Changed")
                },
            )
            fail("Expected interruption")
        } catch (expected: IllegalStateException) {}
        assertEquals(0, db.page("r", TranscriptQuery(text = "Changed")).total)
        count = 0
        db.refineSpeakers(
            "r",
            emptyList(),
            { s ->
                count++
                s.copy(speakerProvisional = false)
            },
            completed = true,
        )
        assertEquals(305, count)
        assertEquals("done", db.recording("r")!!.state)
        assertEquals(305, db.segmentCount("r"))
        db.close()
    }

    @Test
    fun overlapConstraintsSurviveDifferentPages() {
        val db = fresh()
        val initial =
            listOf(
                Speaker("speaker_1", "А", listOf(1f, 0f), 1),
                Speaker("speaker_2", "Б", listOf(1f, 0f), 1),
            )
        val values =
            rows(305).mapIndexed { i, s ->
                when (i) {
                    0 -> s.copy(speakerId = "speaker_1", separation = SeparationInfo("g", 0))
                    304 -> s.copy(speakerId = "speaker_2", separation = SeparationInfo("g", 1))
                    else -> s
                }
            }
        db.commit(Recording("r", "Тест", 0, "a.wav"), values, initial)
        val cluster = SpeakerCluster(Settings(), db.speakers("r"))
        db.restoreConstraints("r", cluster)
        assertTrue(cluster.refine().isEmpty())
        assertEquals(2, cluster.speakers.size)
        db.close()
    }
}
