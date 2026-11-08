package ru.localscribe.core

import java.io.StringWriter
import kotlinx.serialization.json.*
import org.junit.Assert.*
import org.junit.Test

class StreamingExportTest {
    private fun header() = Transcript(recording = Recording("r", "private title", 0, "/private/audio"), speakers = emptyList(), segments = emptyList())
    @Test fun compactJsonGroupsSpeakerAndContainsOnlyRequestedFields() {
        val parts = listOf(Segment("a", "r", 1250, 4380, "speaker_1", "Добрый день!", embedding = listOf(0.123f)),
            Segment("b", "r", 4380, 6000, "speaker_1", "Рад встрече."),
            Segment("c", "r", 7000, 8000, "speaker_2", "Спасибо"))
        val out = StringWriter(); Exporter.write(header(), parts.asSequence().constrainOnce(), "json", out)
        val root = codec.parseToJsonElement(out.toString()).jsonObject
        assertEquals(setOf("transcript"), root.keys)
        val rows = root["transcript"]!!.jsonArray
        assertEquals(2, rows.size)
        assertEquals(setOf("speaker_id", "start_ms", "end_ms", "text"), rows[0].jsonObject.keys)
        assertEquals(1250, rows[0].jsonObject["start_ms"]!!.jsonPrimitive.int)
        assertEquals(6000, rows[0].jsonObject["end_ms"]!!.jsonPrimitive.int)
        assertEquals("Добрый день! Рад встрече.", rows[0].jsonObject["text"]!!.jsonPrimitive.content)
        assertFalse(out.toString().contains("private"))
        assertFalse(out.toString().contains("0.123"))
    }
    @Test fun pausesUseEllipsisAndWordHighlightUsesAudioClock() {
        val a = Segment("a", "r", 0, 1000, "s", "Привет.", words = listOf(WordStamp("Привет", 50, 800)))
        val b = Segment("b", "r", 3000, 4000, "s", "Мир.", words = listOf(WordStamp("Мир", 3100, 3900)))
        assertEquals("Привет … Мир.", DialogueTurns.text(listOf(a,b)))
        val text = DialogueTurns.spoken(listOf(a,b))
        assertEquals(0, text.active(100))
        assertEquals(-1, text.active(2000))
        assertEquals(1, text.active(3200))
        assertEquals(1, DialogueTurns.SpokenText("а б", listOf(
            DialogueTurns.WordRange(0, 1, 0, 1000), DialogueTurns.WordRange(2, 3, 500, 1500)
        )).active(600))
        assertEquals("Мир", text.text.substring(text.words[1].from, text.words[1].until))
        assertEquals(2, DialogueTurns.groups(listOf(a,b.copy(speakerId = "other"))).size)
        assertEquals(2, DialogueTurns.groups(listOf(a.copy(speakerId = null),b.copy(speakerId = null))).size)
    }
    @Test fun exportEscapesQuotesAndConsumesInputOnce() {
        val rows = sequence { repeat(1000) { yield(Segment("$it", "r", it*1000L, it*1000L+500, "s${it%2}", "\"Да\"\nнет")) } }.constrainOnce()
        val out = StringWriter(); Exporter.write(header(), rows, "json", out)
        assertEquals(1000, codec.parseToJsonElement(out.toString()).jsonObject["transcript"]!!.jsonArray.size)
    }
}
