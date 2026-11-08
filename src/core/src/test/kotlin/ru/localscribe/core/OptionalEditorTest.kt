package ru.localscribe.core

import kotlinx.serialization.encodeToString
import org.junit.Assert.*
import org.junit.Test

class OptionalEditorTest {
    @Test
    fun newAndLegacySettingsDoNotOptIntoGenerativeEditing() {
        assertFalse(Settings().editRussianText)
        assertFalse(codec.decodeFromString<Settings>("{}").editRussianText)
    }

    @Test
    fun explicitLegacyPreferenceRemainsReadable() {
        val stored = codec.encodeToString(Settings(editRussianText = true))
        assertTrue(codec.decodeFromString<Settings>(stored).editRussianText)
    }
}
