package ru.localscribe.core

import org.junit.Assert.*
import org.junit.Test

class TranscriptEditingTest {
    @Test
    fun acceptsPunctuationAndLimitedEndingChanges() {
        val raw = "да количество зрителями стало больше к 09:30"
        val edit = "Да, количество зрителей стало больше к 09:30."
        assertEquals(edit, TranscriptEdits.accept(raw, edit))
        assertEquals(raw, TranscriptEdits.accept(raw, edit.replace("09:30", "09.30")))
        assertEquals(raw, TranscriptEdits.accept(raw, edit.replace("зрителей", "подписчиков")))
        assertEquals(raw, TranscriptEdits.accept(raw, edit.replace("стало больше", "больше стало")))
        assertEquals(raw, TranscriptEdits.accept(raw, edit + "\nГотово"))
        assertEquals("сумма 2 780,25 ₽", TranscriptEdits.accept("сумма 2 780,25 ₽", "Сумма 2780,25 ₽."))
        assertEquals("сумма $50", TranscriptEdits.accept("сумма $50", "Сумма $ 50."))
    }

    @Test
    fun adjacentFragmentsKeepTheirWordsAndDoNotGainArtificialFullStops() {
        val original = listOf("он был безумно популярным", "модным богатым")
        assertEquals(listOf("Он был безумно популярным,", "модным, богатым."),
            TranscriptEdits.partition(original, "Он был безумно популярным, модным, богатым."))
        assertNull(TranscriptEdits.partition(original, "Он был известным и богатым."))
        assertEquals(listOf("Количество зрителей", "стало больше."),
            TranscriptEdits.partition(listOf("количество зрителями", "стало больше"),
                "Количество зрителей стало больше."))
        assertEquals(listOf("он сказал:", "«Да»."),
            TranscriptEdits.partition(listOf("он сказал", "да"), "он сказал: «Да»."))
    }

    @Test
    fun summaryIncludesLateSpeechAndPreservesQuotes() {
        val summary = ExtractiveSummary(600_000)
        summary.add(Segment("1", "r", 0, 1000, "s", "Начнём встречу."))
        summary.add(Segment("2", "r", 590_000, 592_000, "s", "Договорились отправить отчёт завтра."))
        val text = summary.render(mapOf("s" to "Ирина"))
        assertTrue(text.contains("[00:00:00] · Ирина\nНачнём встречу."))
        assertTrue(text.contains("[00:09:50] · Ирина\nДоговорились отправить отчёт завтра."))
    }
}
