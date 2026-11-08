package ru.localscribe

import android.app.Application
import java.io.File
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.audio.*
import ru.localscribe.core.*
import ru.localscribe.data.*
import ru.localscribe.engine.OfflinePipeline

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], application = Application::class)
class CaptureStartupTest {
    private fun database(test: (Repository, File) -> Unit) {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val dir =
            File(context.filesDir, "startup-test").apply {
                deleteRecursively()
                mkdirs()
            }
        val repository = Repository(context)
        try {
            test(repository, dir)
        } finally {
            repository.close()
            dir.deleteRecursively()
        }
    }

    @Test
    fun nativeCrashBeforeWavCreationIsRetryableAndNotProcessable() = database { db, dir ->
        val r =
            Recording(
                "r",
                "Разговор",
                0,
                File(dir, "missing.wav").path,
                source = "microphone",
                state = "recording",
            )
        db.save(r)
        db.recover()
        val recovered = db.recording("r")!!
        assertEquals("capture_empty", recovered.state)
        assertFalse(recovered.error!!.contains("Сохранённое аудио доступно"))
        assertEquals(r.id, db.prepareCapture(r.id).id)
        assertFalse(File(r.audioPath).exists())
        val error =
            assertThrows(IllegalArgumentException::class.java) {
                runBlocking {
                    OfflinePipeline(db, ModelStore(RuntimeEnvironment.getApplication())).run(
                        r.id
                    ) {}
                }
            }
        // Audio validation runs before model verification/JNI and preserves the streaming session.
        assertTrue(error.message!!.contains("Аудиофайл отсутствует"))
        assertEquals("streaming", db.recording(r.id)!!.analysisMode)
    }

    @Test
    fun oldEnoentErrorMigratesToRetryableCapture() = database { db, dir ->
        db.save(
            Recording(
                "r",
                "Разговор",
                0,
                File(dir, "missing.wav").path,
                source = "microphone",
                state = "error",
                error = "ENOENT",
                analysisMode = "offline",
            )
        )
        db.recover()
        assertEquals("capture_empty", db.recording("r")!!.state)
        assertEquals("streaming", db.recording("r")!!.analysisMode)
        db.prepareCapture("r")
    }

    @Test
    fun nativeCrashWithOnlyHeaderDoesNotClaimSavedAudio() = database { db, dir ->
        val file = File(dir, "empty.wav")
        WavFile(file).use { it.checkpoint() }
        db.save(
            Recording(
                "r",
                "Разговор",
                0,
                file.path,
                file.path,
                source = "microphone",
                state = "capture_pending",
            )
        )
        db.recover()
        assertEquals("capture_empty", db.recording("r")!!.state)
        db.prepareCapture("r")
        val error =
            assertThrows(IllegalArgumentException::class.java) {
                AudioPreflight.requireProcessable(db.recording("r")!!)
            }
        assertTrue(error.message!!.contains("Аудио пустое"))
    }

    @Test
    fun missingAudioWithTranscriptIsNeverRestartedOverOldTimeline() = database { db, dir ->
        val r =
            Recording(
                "r",
                "Разговор",
                0,
                File(dir, "missing.wav").path,
                source = "microphone",
                state = "recording",
            )
        val segment = Segment("s", "r", 0, 1000, text = "Сохранённый текст", status = "corrected")
        db.commit(r, listOf(segment), emptyList())
        db.recover()
        assertEquals("audio_missing", db.recording("r")!!.state)
        assertEquals(segment, db.segments("r").single())
        assertThrows(IllegalArgumentException::class.java) { db.prepareCapture("r") }
        assertFalse(File(r.audioPath).exists())
    }

    @Test
    fun interruptedStartupKeepsExistingPcmAndSpeakers() = database { db, dir ->
        val file = File(dir, "recording.wav")
        WavFile(file).use { it.write(FloatArray(16000) { .2f }) }
        val bytes = file.readBytes()
        val voice = Speaker("speaker_1", "Анна", listOf(1f, 0f), 1, nameIsManual = true)
        db.commit(
            Recording(
                "r",
                "Разговор",
                0,
                file.path,
                file.path,
                source = "microphone",
                state = "capture_pending",
                liveCheckpointSamples = 8000,
            ),
            emptyList(),
            listOf(voice),
        )
        db.recover()
        assertEquals("interrupted", db.recording("r")!!.state)
        assertEquals(1000L, db.recording("r")!!.durationMs)
        assertEquals(8000L, db.recording("r")!!.liveCheckpointSamples)
        db.prepareCapture("r")
        assertArrayEquals(bytes, file.readBytes())
        assertEquals(voice, db.speakers("r").single())
    }

    @Test
    fun corruptWavIsPreservedInsteadOfRewrittenAsPcm() = database { db, dir ->
        val file = File(dir, "corrupt.wav").apply { writeBytes(ByteArray(100) { 65 }) }
        val bytes = file.readBytes()
        db.save(Recording("r", "Разговор", 0, file.path, source = "microphone", state = "error"))
        assertThrows(IllegalArgumentException::class.java) { db.prepareCapture("r") }
        assertArrayEquals(bytes, file.readBytes())
        db.captureStopped("r", "Ошибка")
        assertEquals("audio_missing", db.recording("r")!!.state)
        assertArrayEquals(bytes, file.readBytes())
    }

    @Test
    fun usablePcmAllowsOfflineRecoveryWhenOriginalIsGone() = database { _, dir ->
        val pcm = File(dir, "decoded.wav")
        WavFile(pcm).use { it.write(FloatArray(16000) { .1f }) }
        AudioPreflight.requireProcessable(
            Recording("r", "Импорт", 0, File(dir, "missing.mp3").path, pcm.path)
        )
    }
}
