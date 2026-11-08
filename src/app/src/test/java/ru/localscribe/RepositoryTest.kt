package ru.localscribe

import android.app.Application
import java.io.File
import java.io.RandomAccessFile
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*
import ru.localscribe.data.Repository

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE, application = Application::class)
class RepositoryTest {
    @Test
    fun checkpointsSurviveReopenAndMetadataUpdates() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val r = Recording("r", "Тест", 0, "", checkpointSamples = 480000)
        val s = Segment("s", "r", 100, 800, text = "Речь")
        db.commit(r, listOf(s), listOf(Speaker("speaker_1", "Анна")))
        db.update("r") { it.copy(progress = 0.5f) }
        db.close()
        val next = Repository(c)
        assertEquals(480000L, next.recording("r")!!.checkpointSamples)
        assertEquals(s, next.segments("r").single())
        assertEquals("Анна", next.speakers("r").single().name)
        next.delete("r")
        assertTrue(next.segments("r").isEmpty())
        assertTrue(next.speakers("r").isEmpty())
        next.close()
    }

    @Test
    fun invalidSegmentRollsBackCheckpointTransaction() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val r = Recording("r", "Тест", 0, "")
        db.save(r)
        try {
            db.commit(
                r.copy(checkpointSamples = 999),
                listOf(Segment("s", "missing-parent", 0, 1, text = "Ошибка")),
                emptyList(),
            )
            fail("Foreign key must reject invalid segment")
        } catch (expected: IllegalArgumentException) {}
        assertEquals(0L, db.recording("r")!!.checkpointSamples)
        assertTrue(db.segments("r").isEmpty())
        db.close()
    }

    @Test
    fun manualMergeAndSplitArePersistent() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val r = Recording("r", "Тест", 0, "")
        val s = Segment("s", "r", 0, 1000, "speaker_2", "Текст")
        db.commit(r, listOf(s), listOf(Speaker("speaker_1", "А"), Speaker("speaker_2", "Б")))
        db.mergeSpeakers("r", "speaker_2", "speaker_1")
        assertEquals("speaker_1", db.segments("r").single().speakerId)
        assertEquals(1, db.speakers("r").size)
        db.splitSpeaker("r", db.segments("r").single())
        assertEquals("speaker_2", db.segments("r").single().speakerId)
        assertEquals("corrected", db.segments("r").single().status)
        db.close()
    }

    @Test
    fun wavHeaderIsRecoverableAfterTruncatedHeaderUpdate() {
        val f = File.createTempFile("localscribe-", ".wav")
        WavFile(f).use { it.write(FloatArray(16000) { 0.25f }) }
        RandomAccessFile(f, "rw").use {
            it.seek(40)
            it.writeInt(0)
        }
        WavFile.repair(f)
        RandomAccessFile(f, "r").use {
            assertEquals(16000, WavFile.read(it, 0, 20000).size)
            it.seek(40)
            assertEquals(32000, Integer.reverseBytes(it.readInt()))
        }
        f.delete()
    }

    @Test
    fun reprocessingForkRetainsOriginalCorrectionsAndSharedAudio() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val audio = File.createTempFile("shared-recording-", ".wav")
        val r =
            Recording(
                "live",
                "Разговор",
                0,
                audio.path,
                audio.path,
                state = "interrupted",
                source = "microphone",
            )
        val s =
            Segment("live:0", "live", 0, 1000, text = "Исправленный текст", status = "corrected")
        db.commit(r, listOf(s), emptyList())
        val copy = db.forkProcessing(r.id, Settings(quality = Quality.FAST))
        assertNotEquals(r.id, copy.id)
        assertEquals("imported", copy.state)
        assertEquals("microphone", copy.source)
        assertEquals("offline", copy.analysisMode)
        assertEquals(Quality.FAST, copy.settings.quality)
        assertTrue(db.segments(copy.id).isEmpty())
        assertEquals(s, db.segments(r.id).single())
        db.delete(r.id)
        assertTrue(audio.exists())
        db.delete(copy.id)
        assertFalse(audio.exists())
        db.close()
    }

    @Test
    fun retractedDraftIsRemovedButFinalAndCorrectedTextAreKept() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val r = Recording("r", "Тест", 0, "")
        val segments =
            listOf("preliminary", "final", "corrected").map {
                Segment(it, "r", 0, 1000, text = it, status = it)
            }
        db.commit(r, segments, emptyList())
        segments.forEach { db.removePreliminary("r", it.id) }
        assertEquals(setOf("final", "corrected"), db.segments("r").map { it.status }.toSet())
        db.close()
    }

    @Test
    fun ManualSpeakerCorrectionInvalidatesModelSimilarityAndBaseline() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val r = Recording("r", "Тест", 0, "")
        val s =
            Segment(
                "s",
                "r",
                0,
                1000,
                "speaker_1",
                "Текст",
                speakerSimilarity = 0.8f,
                words = listOf(WordStamp("Текст", 100)),
                acoustics = Acoustics(relativeDb = 3.0, wordsPerMinute = 60.0),
            )
        db.commit(r, listOf(s), listOf(Speaker("speaker_1", "А"), Speaker("speaker_2", "Б")))
        db.edit("r", s.copy(speakerId = "speaker_2"))
        val edited = db.segments("r").single()
        assertNull(edited.speakerSimilarity)
        assertNull(edited.acoustics!!.relativeDb)
        assertNull(edited.acoustics?.wordsPerMinute)
        assertTrue(edited.words.isEmpty())
        assertFalse(edited.speakerProvisional)
        db.close()
    }

    @Test
    fun interruptedCaptureRecoversDurationFromCommittedPcm() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val f = File.createTempFile("interrupted-", ".wav")
        WavFile(f).use { it.write(FloatArray(32000) { 0.1f }) }
        db.save(
            Recording(
                "r",
                "Разговор",
                0,
                f.path,
                f.path,
                durationMs = 1000,
                state = "recording",
                source = "microphone",
            )
        )
        db.recover()
        val r = db.recording("r")!!
        assertEquals("interrupted", r.state)
        assertEquals(2000L, r.durationMs)
        assertTrue(f.exists())
        db.delete("r")
        db.close()
    }

    @Test
    fun separatedTracksAndAnalysisSurviveReopenAndAreDeletedWithRecording() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val dir = File(c.filesDir, "separation-test").apply { mkdirs() }
        val original = File(dir, "original.wav").apply { writeText("original") }
        val tracks = File(dir, "separated-r").apply { mkdirs() }
        val track = File(tracks, "track.wav").apply { writeText("separated") }
        val r = Recording("r", "Наложение", 0, original.path)
        val s =
            Segment(
                "s",
                "r",
                0,
                2000,
                text = "Текст",
                separatedAudioPath = track.path,
                separation = SeparationInfo("g", 0),
                overlapIntervals = listOf(OverlapSpan(500, 1500, .8)),
                emotion = EmotionAssessment(reason = "separation_artifacts"),
                analysisSource = "separated_estimate",
            )
        val first = Repository(c)
        try {
            first.commit(r, listOf(s), emptyList())
        } finally {
            first.close()
        }
        val it = Repository(c)
        try {
            assertEquals(s, it.segments("r").single())
            val orphan = File(tracks, "uncommitted.wav").apply { writeText("cancelled block") }
            val pending = File(tracks, "pending.wav.part").apply { writeText("incomplete") }
            it.cleanupSeparated("r")
            assertTrue(track.exists())
            assertFalse(orphan.exists())
            assertFalse(pending.exists())
            val fork = it.forkProcessing("r", Settings())
            it.delete("r")
            assertFalse(tracks.exists())
            assertTrue(original.exists())
            assertTrue(it.segments(fork.id).isEmpty())
            it.delete(fork.id)
            assertFalse(original.exists())
        } finally {
            it.close()
        }
        dir.deleteRecursively()
    }

    @Test
    fun stoppedSessionAppendsAudioAndRestoresVoicesWithoutChangingOfflineCopy() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val file = File.createTempFile("resume-session-", ".wav")
        WavFile(file).use { it.write(FloatArray(16000) { .25f }) }
        val voice =
            Speaker("speaker_1", "Анна", listOf(1f, 0f), 1, voiceSamples = listOf(listOf(1f, 0f)))
        val db = Repository(c)
        db.commit(
            Recording(
                "r",
                "Разговор",
                0,
                file.path,
                file.path,
                durationMs = 1000,
                state = "recorded",
                source = "microphone",
            ),
            listOf(Segment("first", "r", 0, 1000, "speaker_1", "Привет")),
            listOf(voice),
        )
        val fork = db.forkProcessing("r", Settings())
        val resumed = db.prepareCapture("r")
        assertNotEquals(file.absolutePath, resumed.audioPath)
        WavFile(File(resumed.audioPath), append = true).use { writer ->
            assertEquals(16000L, writer.samples)
            writer.write(FloatArray(16000) { -.25f })
        }
        val cluster = SpeakerCluster(Settings(), db.speakers("r"))
        assertEquals("speaker_1", cluster.assign(floatArrayOf(1f, 0f)).id)
        assertEquals(1, db.speakers("r").size)
        assertEquals("Привет", db.segments("r").single().text)
        assertEquals(32044L, File(db.recording(fork.id)!!.audioPath).length())
        assertEquals(64044L, File(resumed.audioPath).length())
        db.delete("r")
        db.delete(fork.id)
        db.close()
    }

    @Test
    fun missingAudioIsNotSilentlyRecreatedOnResume() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        db.save(
            Recording(
                "r",
                "Разговор",
                0,
                File(c.filesDir, "absent.wav").path,
                state = "recorded",
                source = "microphone",
            )
        )
        try {
            db.prepareCapture("r")
            fail("Missing audio must fail")
        } catch (expected: IllegalArgumentException) {}
        assertEquals("recorded", db.recording("r")!!.state)
        db.close()
    }
}
