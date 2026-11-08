package ru.localscribe

import android.app.Application
import android.content.Context
import kotlinx.serialization.encodeToString
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
class ReprocessingRepositoryTest {
    @Test
    fun restartKeepsIdentityAndReplacesBlocksWithoutLosingManualEdits() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val db = Repository(context)
        val original = Recording("r", "Разговор", 123, "original.wav", "decoded.wav",
            state = "done", checkpointSamples = 960000, progress = 1f,
            source = "microphone")
        val corrected = Segment("manual", "r", 1000, 2000, "speaker_1", "Моя правка",
            status = "corrected")
        val old = Segment("old", "r", 3000, 4000, "speaker_1", "Старый результат")
        val tail = Segment("tail", "r", 40000, 41000, "speaker_1", "Пока сохранён")
        val speaker = Speaker("speaker_1", "Анна", nameIsManual = true)
        db.commit(original, listOf(corrected, old, tail), listOf(speaker))

        val restarted = db.prepareProcessing("r", Settings(quality = Quality.FAST))
        assertEquals(original.id, restarted.id)
        assertEquals(original.createdAt, restarted.createdAt)
        assertEquals(original.title, restarted.title)
        assertEquals(original.audioPath, restarted.audioPath)
        assertEquals(original.pcmPath, restarted.pcmPath)
        assertEquals("offline", restarted.analysisMode)
        assertEquals(0L, restarted.checkpointSamples)
        assertEquals(Quality.FAST, restarted.settings.quality)
        assertEquals(3, db.segmentCount("r"))

        val fresh = Segment("new-boundary", "r", 2900, 4100, "speaker_1", "Новый результат")
        val overwritesEdit = Segment("different-id", "r", 900, 2100, "speaker_1", "Модель")
        val checkpoint = restarted.copy(checkpointSamples = 480000)
        repeat(2) {
            db.commitProcessedBlock(checkpoint, listOf(fresh, overwritesEdit),
                listOf(speaker.copy(name = "Участник 1", nameIsManual = false)), 0, 30000)
        }
        assertEquals(setOf("manual", "old", "tail"), db.segments("r").map { it.id }.toSet())
        assertEquals(corrected, db.segment("r", corrected.id))
        assertEquals("Анна", db.speakers("r").single().name)
        assertEquals(1, db.recordings().size)
        db.close()

        Repository(context).use { reopened ->
            assertEquals(480000L, reopened.recording("r")!!.checkpointSamples)
            assertEquals(corrected, reopened.segment("r", corrected.id))
            assertEquals("Анна", reopened.speakers("r").single().name)
            reopened.commitProcessedBlock(checkpoint.copy(checkpointSamples = 960000),
                emptyList(), emptyList(), 30000, 60000)
            assertEquals(tail, reopened.segment("r", "tail"))
            reopened.completeProcessing("r")
            assertNull(reopened.segment("r", "tail"))
            assertEquals(setOf("manual", "new-boundary"), reopened.segments("r").map { it.id }.toSet())
        }
    }

    @Test
    fun invalidReplacementPreservesTranscriptAndCheckpoint() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        Repository(context).use { db ->
            val recording = Recording("r", "Тест", 0, "audio.wav")
            val segment = Segment("old", "r", 0, 1000, text = "Сохранён")
            db.commit(recording, listOf(segment), emptyList())
            assertThrows(IllegalArgumentException::class.java) {
                db.commitProcessedBlock(recording.copy(checkpointSamples = 16000),
                    listOf(segment.copy(recordingId = "other")), emptyList(), 0, 1000)
            }
            assertEquals(segment, db.segments("r").single())
            assertEquals(0L, db.recording("r")!!.checkpointSamples)
        }
    }

    @Test
    fun editorCannotOverwriteManualEditsOrNewerRecordingMetadata() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        Repository(context).use { db ->
            val recording = Recording("r", "Тест", 0, "audio.wav", state = "done")
            val manual = Segment("manual", "r", 0, 1000, text = "исходный")
            val automatic = Segment("automatic", "r", 1000, 2000, text = "автоматический")
            db.commit(recording, listOf(manual, automatic), emptyList())
            db.edit("r", manual.copy(text = "Моя правка"))
            db.save(recording.copy(title = "Новое название"))
            db.commitEditedText("r", listOf(
                manual.copy(text = "Исходный.", originalAsrText = manual.text),
                automatic.copy(text = "Автоматический.", originalAsrText = automatic.text),
            ))
            assertEquals("Моя правка", db.segment("r", manual.id)!!.text)
            assertEquals("Автоматический.", db.segment("r", automatic.id)!!.text)
            assertEquals("Новое название", db.recording("r")!!.title)
        }
    }

    @Test
    fun keysetBatchesVisitEveryRawSegmentEvenWhenAllTurnsJoin() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        Repository(context).use { db ->
            val segments = (0..254).map { i -> Segment("s%03d".format(i), "r",
                (i / 3).toLong(), (i / 3 + 1).toLong(), "speaker_1", "Текст $i") }
            db.commit(Recording("r", "Тест", 0, "audio.wav"), segments, emptyList())
            val actual = mutableListOf<String>()
            var start: Long? = null
            var id = ""
            while (true) {
                val batch = db.segmentBatchAfter("r", start, id)
                if (batch.isEmpty()) break
                assertTrue(batch.size <= 100)
                actual += batch.map { it.id }
                start = batch.last().startMs
                id = batch.last().id
            }
            assertEquals(segments.map { it.id }, actual)
        }
    }

    @Test
    fun rangeAcceptancePreservesOutsideAndRejectsStalePreview() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        Repository(context).use { db ->
            val recording = Recording("r", "Тест", 0, "audio.wav", state = "done")
            val outside = Segment("outside", "r", 0, 1000, text = "До")
            val crossing = Segment("crossing", "r", 1000, 2500, text = "Граница")
            val old = Segment("old", "r", 3000, 4000, text = "Старый")
            val manual = Segment("manual", "r", 4500, 5000, text = "Моя правка", status = "corrected")
            db.commit(recording, listOf(outside, crossing, old, manual), emptyList())
            val fresh = Segment("fresh", "r", 3000, 4000, text = "Новый")
            val revision = db.revision.value
            db.applyRangePreview("r", revision, 2000, 5000,
                listOf(fresh, Segment("skip-boundary", "r", 2000, 2400, text = "Модель"),
                    Segment("skip-manual", "r", 4500, 5000, text = "Модель")), emptyList())
            assertEquals(listOf(outside, crossing, fresh, manual), db.segments("r"))
            assertEquals(1, db.recordings().size)
            assertThrows(IllegalArgumentException::class.java) {
                db.applyRangePreview("r", revision, 2000, 5000, listOf(fresh), emptyList())
            }
        }
    }

    @Test
    fun failedBlockInsertRollsBackRemovedSegmentsAndCheckpoint() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        Repository(context).use { db ->
            val recording = Recording("r", "Тест", 0, "audio.wav")
            val old = Segment("old", "r", 0, 1000, text = "Сохранён")
            db.commit(recording, listOf(old), emptyList())
            db.writableDatabase.execSQL("CREATE TRIGGER reject_replacement BEFORE INSERT ON segments " +
                "WHEN NEW.id='reject' BEGIN SELECT RAISE(ABORT,'rejected'); END")
            assertThrows(RuntimeException::class.java) {
                db.commitProcessedBlock(recording.copy(checkpointSamples = 16000),
                    listOf(old.copy(id = "reject", text = "Новый")), emptyList(), 0, 1000)
            }
            assertEquals(listOf(old), db.segments("r"))
            assertEquals(0L, db.recording("r")!!.checkpointSamples)
        }
    }

    @Test
    fun versionThreeEndTimeMigrationPreservesTranscriptAndManualSpeaker() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val recording = Recording("r", "Тест", 0, "audio.wav")
        val corrected = Segment("manual", "r", 100, 900, "speaker_1", "Правка", status = "corrected")
        val speaker = Speaker("speaker_1", "Анна", nameIsManual = true)
        context.openOrCreateDatabase("transcripts.db", Context.MODE_PRIVATE, null).use { old ->
            old.execSQL("CREATE TABLE recordings(id TEXT PRIMARY KEY, created INTEGER NOT NULL, payload TEXT NOT NULL)")
            old.execSQL("CREATE TABLE segments(id TEXT PRIMARY KEY, recording_id TEXT NOT NULL, start_ms INTEGER NOT NULL, payload TEXT NOT NULL, speaker_id TEXT, search_text TEXT NOT NULL DEFAULT '', separation_group TEXT)")
            old.execSQL("CREATE TABLE speakers(recording_id TEXT NOT NULL, id TEXT NOT NULL, payload TEXT NOT NULL, PRIMARY KEY(recording_id,id))")
            old.execSQL("CREATE TABLE voice_profiles(id TEXT PRIMARY KEY,payload TEXT NOT NULL)")
            old.execSQL("INSERT INTO recordings VALUES(?,?,?)", arrayOf<Any>("r", 0, codec.encodeToString<Recording>(recording)))
            old.execSQL("INSERT INTO segments(id,recording_id,start_ms,payload,speaker_id) VALUES(?,?,?,?,?)",
                arrayOf<Any>(corrected.id, "r", corrected.startMs, codec.encodeToString<Segment>(corrected), speaker.id))
            old.execSQL("INSERT INTO speakers VALUES(?,?,?)", arrayOf("r", speaker.id, codec.encodeToString(speaker)))
            old.version = 3
        }
        Repository(context).use { migrated ->
            assertEquals(6, migrated.readableDatabase.version)
            assertEquals(corrected, migrated.segment("r", corrected.id))
            assertEquals(speaker, migrated.speakers("r").single())
            migrated.readableDatabase.rawQuery("SELECT end_ms FROM segments WHERE id=?", arrayOf(corrected.id)).use {
                assertTrue(it.moveToFirst())
                assertEquals(900L, it.getLong(0))
            }
            migrated.commitProcessedBlock(recording, listOf(corrected.copy(id = "new", status = "final")),
                emptyList(), 0, 1000)
            assertEquals(listOf(corrected), migrated.segments("r"))
        }
    }

    @Test
    fun cancelledRerunPreservesBoundaryTailAndResumesStagedVoices() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val crossing = Segment("old-crossing", "r", 29000, 35000, "speaker_1", "Старый полный текст")
        val speaker = Speaker("speaker_1", "Анна", nameIsManual = true)
        val db = Repository(context)
        db.commit(Recording("r", "Тест", 0, "audio.wav", state = "done"),
            listOf(crossing), listOf(speaker))
        val run = db.prepareProcessing("r", Settings())
        val first = Segment("new-first", "r", 29000, 30000, "speaker_1", "Первая часть")
        db.commitProcessedBlock(run.copy(checkpointSamples = 480000, state = "cancelled"),
            listOf(first), listOf(speaker), 0, 30000)
        assertEquals(listOf(crossing), db.segments("r"))
        db.close()
        Repository(context).use { resumed ->
            assertEquals(listOf(crossing), resumed.segments("r"))
            assertEquals(listOf(first), resumed.processingSegmentBatchAfter("r"))
            assertEquals(listOf(speaker), resumed.processingSpeakers("r"))
            val second = Segment("new-second", "r", 30000, 35000, "speaker_1", "Вторая часть")
            resumed.commitProcessedBlock(resumed.recording("r")!!.copy(checkpointSamples = 560000),
                listOf(second), listOf(speaker), 30000, 35000)
            resumed.completeProcessing("r")
            assertEquals(listOf(first, second), resumed.segments("r"))
            assertEquals("Анна", resumed.speakers("r").single().name)
            assertEquals(1, resumed.recordings().size)
        }
    }

    @Test
    fun markdownNotesSurviveRerunAndReopenAndDeleteWithTheirRecording() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val markdown = "# Решения\n- Первый пункт\n- Второй пункт\n\n## Задачи\nПроверить сроки."
        val db = Repository(context)
        val recording = Recording("r", "Тест", 0, "audio.wav", state = "done")
        db.save(recording)
        db.saveNote("r", markdown)
        val run = db.prepareProcessing("r", Settings())
        db.commitProcessedBlock(run.copy(checkpointSamples = 16000),
            listOf(Segment("s", "r", 0, 1000, text = "Новый текст")), emptyList(), 0, 1000)
        db.completeProcessing("r")
        db.close()
        Repository(context).use { reopened ->
            assertEquals(markdown, reopened.note("r"))
            reopened.saveNote("r", markdown + "\n- Новая задача")
            assertEquals(markdown + "\n- Новая задача", reopened.note("r"))
            reopened.delete("r")
            assertEquals("", reopened.note("r"))
            assertThrows(IllegalArgumentException::class.java) { reopened.saveNote("r", "Старая очередь") }
        }
    }
}
