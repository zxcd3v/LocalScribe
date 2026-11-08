package ru.localscribe

import android.app.Application
import java.io.File
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
class ParticipantWorkflowTest {
    @Test
    fun samplesAreCopiedReopenedDeletedAndManualCorrectionsNeverTrain() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        var db = Repository(c)
        val file = File(c.filesDir, "source.wav")
        WavFile(file).use { it.write(FloatArray(160000) { .1f }) }
        val r =
            Recording(
                "r",
                "r",
                0,
                file.path,
                file.path,
                modelInfo = ModelInfo("m", "1", mapOf("speaker.onnx" to "m"), settings = Settings()),
            )
        val turn =
            Segment(
                "one",
                r.id,
                0,
                4000,
                "speaker_1",
                "Тест",
                embedding = listOf(1f, 0f),
                embeddingSource = "utterance",
            )
        db.commit(
            r,
            listOf(turn, turn.copy(id = "two", startMs = 4000, endMs = 8000)),
            listOf(Speaker("speaker_1", "Участник 1", listOf(1f, 0f), 2)),
        )
        val p = db.createVoiceProfile("Ваня")
        db.assignProfile(r.id, turn, p.id)
        assertTrue(db.voiceProfiles().single().samples.isEmpty())
        val corrected = db.segments(r.id).first { it.id == turn.id }
        assertEquals("corrected", corrected.status)
        db.addVoiceSample(p.id, r.id, corrected.speakerId!!, corrected.id)
        db.addVoiceSample(p.id, r.id, "speaker_1", "two")
        assertThrows(IllegalArgumentException::class.java) {
            db.addVoiceSample(p.id, r.id, "speaker_1", "two")
        }
        db.close()
        db = Repository(c)
        val samples = db.voiceProfiles().single().samples
        assertEquals(2, samples.size)
        assertTrue(samples.all { WavFile.isCanonical(File(it.audioPath)) })
        db.updateVoiceProfile(p.id, "Иван", false, .9f)
        assertFalse(db.voiceProfiles().single().enabled)
        db.reidentify(r.id)
        assertEquals(
            "Ваня",
            db.speakers(r.id).first { it.id == corrected.speakerId }.name,
        ) // manual name survives
        db.delete(r.id)
        assertFalse(file.exists())
        assertTrue(samples.all { File(it.audioPath).exists() })
        db.removeVoiceSample(p.id, samples.first().id)
        assertFalse(File(samples.first().audioPath).exists())
        db.forgetVoice(p.id)
        assertFalse(File(samples.last().audioPath).exists())
        db.close()
    }

    @Test
    fun reidentificationWithdrawsAutomaticNameAfterDisablingProfile() {
        val c = RuntimeEnvironment.getApplication()
        c.deleteDatabase("transcripts.db")
        val db = Repository(c)
        val f = File(c.filesDir, "known.wav")
        WavFile(f).use { it.write(FloatArray(64000)) }
        val info = ModelInfo("m", "1", mapOf("speaker.onnx" to "m"), settings = Settings())
        fun r(id: String) = Recording(id, id, 0, f.path, f.path, modelInfo = info)
        fun seg(id: String) =
            Segment(
                id,
                id,
                0,
                4000,
                "speaker_1",
                "test",
                embedding = listOf(1f, 0f),
                embeddingSource = "utterance",
            )
        val voice = Speaker("speaker_1", "Участник 1", listOf(1f, 0f), 1)
        db.commit(r("a"), listOf(seg("a")), listOf(voice))
        val p = db.rememberVoice("a", voice.id, "Ваня")
        db.commit(r("b"), listOf(seg("b")), listOf(voice))
        assertEquals(p.id, db.speakers("b").single().voiceProfileId)
        db.updateVoiceProfile(p.id, p.name, false, p.threshold)
        db.reidentify("b")
        assertNull(db.speakers("b").single().voiceProfileId)
        assertEquals("Участник 1", db.speakers("b").single().name)
        db.updateVoiceProfile(p.id, p.name, true, p.threshold)
        db.reidentify("b")
        val before = db.speakers("b").single().id
        db.assignProfile("b", db.segments("b").single().copy(text = "Исправленный текст"), p.id)
        assertEquals(1, db.speakers("b").size)
        assertEquals(before, db.segments("b").single().speakerId)
        assertTrue(db.speakers("b").single().nameIsManual)
        assertTrue(db.segments("b").single().words.isEmpty())
        db.close()
    }
}
