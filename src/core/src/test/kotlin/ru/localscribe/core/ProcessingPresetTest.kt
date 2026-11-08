package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class ProcessingPresetTest {
    @Test
    fun everyPresetSelectsItsDocumentedRuntimeConfiguration() {
        val expected = mapOf(
            ProcessingPreset.CONFERENCE to listOf(2, true, true, true, false),
            ProcessingPreset.QUIET to listOf(2, false, false, true, false),
            ProcessingPreset.NOISY to listOf(4, true, true, false, false),
            ProcessingPreset.FAST to listOf(1, false, false, false, false),
            ProcessingPreset.ACCURATE to listOf(4, true, true, true, true),
        )
        for ((preset, runtime) in expected) {
            val settings = preset.applyTo(Settings())
            assertEquals(preset.name, runtime, listOf(settings.threads,
                settings.refineDiarization, settings.runSeparation, settings.prosody, settings.runEmotions))
            assertTrue(preset.matches(settings))
        }
        assertEquals(5, ProcessingPreset.entries.map { it.applyTo(Settings()) }.toSet().size)
    }

    @Test
    fun presetsPreserveSpeakerAndLanguageChoicesAndOptionalEditorPreference() {
        val original = Settings(speakers = 3, matchThreshold = .75f, newThreshold = .35f,
            fileAsr = FileAsr.WHISPER_EN, editRussianText = true, showInterpretations = false)
        for (preset in ProcessingPreset.entries) {
            val changed = preset.applyTo(original)
            assertEquals(3, changed.speakers)
            assertEquals(.75f, changed.matchThreshold, 0f)
            assertEquals(.35f, changed.newThreshold, 0f)
            assertEquals(FileAsr.WHISPER_EN, changed.fileAsr)
            assertTrue(changed.editRussianText)
            assertFalse(changed.showInterpretations)
            assertEquals(changed, preset.applyTo(changed))
        }
    }
}
