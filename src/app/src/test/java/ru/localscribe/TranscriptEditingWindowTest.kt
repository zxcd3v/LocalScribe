package ru.localscribe

import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.core.Segment
import ru.localscribe.engine.TranscriptEditingWindow
import ru.localscribe.engine.editorHistory

class TranscriptEditingWindowTest {
    private fun segment(i: Int, speaker: String = "a", text: String = "реплика $i") =
        Segment("$i", "r", i * 1000L, i * 1000L + 900, speaker, text, speakerProvisional = false)

    @Test fun retainsTwoPreviousMessagesAcrossGroupsWithoutMixingSpeakers() {
        val seen = mutableListOf<Pair<List<String>,List<String>>>()
        val output = mutableListOf<Segment>()
        val window = TranscriptEditingWindow({ texts, context ->
            seen += texts to context
            texts
        }, { output += it })
        (0..3).forEach { window.push(segment(it)) }
        window.push(segment(4, "b"))
        window.finish()
        assertEquals(listOf(3,1,1), seen.map { it.first.size })
        assertEquals(listOf("a: реплика 1", "a: реплика 2"), seen[1].second)
        assertEquals(listOf("a: реплика 2", "a: реплика 3"), seen[2].second)
        assertEquals((0..4).map { "$it" }, output.map { it.id })
    }

    @Test fun manualCorrectionsAreContextOnlyAndNumericChangesAreRejected() {
        val contexts = mutableListOf<List<String>>()
        val output = mutableListOf<Segment>()
        val manual = segment(0, text = "Дата 09:30.").copy(status = "corrected")
        val window = TranscriptEditingWindow({ texts, context ->
            contexts += context
            assertFalse(texts.contains(manual.text))
            texts.map { it.replace("09:30", "10:30") }
        }, { output += it })
        window.push(manual)
        window.push(segment(1, text = "приходи в 09:30"))
        window.finish()
        assertEquals(manual, output[0])
        assertEquals("приходи в 09:30", output[1].text)
        assertEquals(listOf("a: Дата 09:30."), contexts.single())
    }
    @Test fun boundedContextKeepsSpeakerLabelsAndTheTwoLatestTurns() {
        val context = editorHistory(listOf("a: старое", "b: " + "слово ".repeat(100) + "конец",
            "c: новая реплика"))
        assertFalse(context.contains("a: старое"))
        assertTrue(context.startsWith("b: …"))
        assertTrue(context.contains("конец\nc: новая реплика"))
        assertTrue(context.length < 240)
    }

    @Test fun largeIndividualUtteranceRetainsTheExistingEditorLimit() {
        val raw = "слово ".repeat(120).trim()
        val batches = mutableListOf<List<String>>()
        val result = mutableListOf<Segment>()
        val window = TranscriptEditingWindow({ texts, _ ->
            batches += texts
            texts.map { "$it." }
        }, { result += it })
        window.push(segment(0, text = raw))
        window.push(segment(1, text = "продолжение"))
        window.finish()
        assertEquals(2, batches.size)
        assertEquals(listOf(raw), batches.first())
        assertEquals("$raw.", result.first().text)
        assertEquals(raw, result.first().originalAsrText)
    }

}
