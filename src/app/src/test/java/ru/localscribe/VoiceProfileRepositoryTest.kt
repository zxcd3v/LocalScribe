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
class VoiceProfileRepositoryTest {
    private val voice = listOf(1f, 0f, 0f)

    private fun record(id: String, hash: String = "model"): Recording {
        val file = java.io.File(RuntimeEnvironment.getApplication().filesDir, "$id.wav")
        ru.localscribe.audio.WavFile(file).use { it.write(FloatArray(64000)) }
        return Recording(
            id,
            id,
            0,
            file.path,
            file.path,
            modelInfo =
                ModelInfo("model", "1", mapOf("speaker.onnx" to hash), settings = Settings()),
        )
    }

    private fun segment(r: String) =
        Segment(
            "$r-s",
            r,
            0,
            3500,
            "speaker_1",
            "Добрый день",
            embedding = voice,
            embeddingSource = "utterance",
        )

    private val speaker
        get() = Speaker("speaker_1", "Участник 1", voice, 3)

    @Test
    fun versionTwoUpgradeDoesNotEnrollExistingVoicesWithoutConsent() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val old = Repository(context)
        old.commit(
            record("old"),
            listOf(segment("old").copy(status = "corrected")),
            listOf(speaker.copy(name = "Старое имя")),
        )
        old.writableDatabase.execSQL("DROP TABLE voice_profiles")
        old.writableDatabase.version = 2
        old.close()
        val upgraded = Repository(context)
        try {
            assertEquals(3, upgraded.readableDatabase.version)
            assertEquals("corrected", upgraded.segments("old").single().status)
            assertEquals("Старое имя", upgraded.speakers("old").single().name)
            assertTrue(upgraded.voiceProfiles().isEmpty())
        } finally {
            upgraded.close()
        }
    }

    @Test
    fun explicitEnrollmentReopensRecognizesSecondRecordingAndCanBeDeleted() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        var db = Repository(context)
        db.commit(record("a"), listOf(segment("a")), listOf(speaker))
        db.rename("a", speaker, "Иван")
        assertTrue(db.voiceProfiles().isEmpty()) // Renaming alone is not consent.
        val profile = db.rememberVoice("a", "speaker_1", "Иван (Заказчик)")
        assertEquals(profile.id, db.rememberVoice("a", "speaker_1", "Иван (Заказчик)").id)
        db.close()
        db = Repository(context)
        db.commit(record("b"), listOf(segment("b")), listOf(speaker))
        assertEquals("Иван (Заказчик)", db.speakers("b").single().name)
        assertEquals(profile.id, db.speakers("b").single().voiceProfileId)
        val out = StringWriter()
        db.export("b", "json", out)
        assertFalse(out.toString().contains(profile.id))
        assertFalse(out.toString().contains("voice_profile_estimate"))
        assertFalse(out.toString().contains("cosine_not_probability"))
        db.rename("b", db.speakers("b").single(), "Ручное имя")
        db.append("b", emptyList(), listOf(speaker))
        assertEquals("Ручное имя", db.speakers("b").single().name)
        db.commit(record("c", "different-model"), listOf(segment("c")), listOf(speaker))
        assertEquals("Участник 1", db.speakers("c").single().name)
        db.forgetVoice(profile.id)
        assertTrue(db.voiceProfiles().isEmpty())
        db.commit(record("d"), listOf(segment("d")), listOf(speaker))
        assertEquals("Участник 1", db.speakers("d").single().name)
        db.close()
    }

    @Test fun namingRemembersVoiceAcrossReopenAndUpdatesExistingSessions() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        var db = Repository(context)
        db.commit(record("first"), listOf(segment("first")), listOf(speaker))
        db.commit(record("earlier"), listOf(segment("earlier")), listOf(speaker))
        assertTrue(db.renameAndRemember("first", speaker, "Мария"))
        assertEquals("Мария", db.speakers("earlier").single().name)
        val profileId = db.speakers("first").single().voiceProfileId
        db.close()
        db = Repository(context)
        db.commit(record("later"), listOf(segment("later")), listOf(speaker))
        assertEquals("Мария", db.speakers("later").single().name)
        assertEquals(profileId, db.speakers("later").single().voiceProfileId)
        db.close()
    }

    @Test
    fun shortAndAmbiguousVoicesNeverAcquireAName() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        val db = Repository(context)
        try {
            db.commit(record("a"), listOf(segment("a")), listOf(speaker))
            db.rememberVoice("a", "speaker_1", "Иван")
            db.commit(record("short"), listOf(segment("short").copy(endMs = 700)), listOf(speaker))
            assertEquals("Участник 1", db.speakers("short").single().name)
            assertThrows(IllegalStateException::class.java) {
                db.rememberVoice("short", "speaker_1", "Короткий")
            }
        } finally {
            db.close()
        }
    }
}
