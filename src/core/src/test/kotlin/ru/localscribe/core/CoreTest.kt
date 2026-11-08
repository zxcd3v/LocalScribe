package ru.localscribe.core

import java.io.StringWriter
import kotlin.math.*
import kotlinx.serialization.encodeToString
import org.junit.Assert.*
import org.junit.Test

class CoreTest {
    private fun segment(
        id: String = "a",
        speaker: String? = "speaker_1",
        start: Long = 1000,
        end: Long = 2000,
        text: String = "Привет",
    ) = Segment(id, "record", start, end, speaker, text)

    private fun transcript(segments: List<Segment>) =
        Transcript(
            recording = Recording("record", "Тест", 0, "private.wav", durationMs = 4000),
            speakers = listOf(Speaker("speaker_1", "Анна")),
            segments = segments,
        )

    @Test
    fun sampleClockDoesNotDriftForHours() {
        assertEquals(10 * 60 * 60 * 1000L, Timecode.ms(10 * 60 * 60 * 44100L, 44100))
        assertEquals("101:02:03,004", Timecode.subtitle(101 * 3600000L + 123004))
    }

    @Test
    fun repeatedCheckpointIsIdempotentAndPreservesEdits() {
        val edited = segment().copy(text = "Исправлено", status = "corrected")
        val merged =
            TranscriptMerger.merge(listOf(edited), listOf(segment(), segment("b", start = 500)))
        assertEquals(2, merged.size)
        assertEquals("b", merged[0].id)
        assertEquals("Исправлено", merged[1].text)
    }

    @Test
    fun simultaneousSpeakersRemainOverlapping() {
        val a = segment()
        val b = segment("b", "speaker_2", 1500, 2500)
        assertEquals(listOf(a, b), TranscriptMerger.merge(listOf(a), listOf(b)))
    }

    @Test
    fun tokenTimestampsDoNotInventWordEnds() {
        val words =
            TranscriptMerger.words(
                listOf(TokenStamp(" при", 100), TokenStamp("вет", 180), TokenStamp(" мир", 700))
            )
        assertEquals(listOf("привет", "мир"), words.map { it.text })
        assertTrue(words.all { it.endMs == null })
        assertEquals(100L, words.first().startMs)
    }

    @Test
    fun jsonRoundTripRetainsUncertaintyAndOverlap() {
        val t = transcript(listOf(segment(speaker = null), segment("b", start = 1200, end = 3000)))
        val copy = codec.decodeFromString<Transcript>(codec.encodeToString(t))
        assertEquals(t, copy)
        assertNull(copy.segments[0].confidence)
        assertEquals("unavailable", copy.capabilities["emotion"])
    }

    @Test fun removedSubtitleFormatIsRejected() {
        assertThrows(IllegalArgumentException::class.java) {
            Exporter.write(transcript(listOf(segment())), "srt", StringWriter())
        }
    }

    @Test
    fun portableJsonUsesSnakeCaseAndDoesNotExportVoiceEmbeddings() {
        val t =
            transcript(listOf(segment().copy(embedding = listOf(0.123f))))
                .copy(speakers = listOf(Speaker("speaker_1", "Анна", centroid = listOf(0.456f))))
        val out = StringWriter()
        Exporter.write(t, "json", out)
        val text = out.toString()
        assertTrue(text.contains("\"transcript\""))
        assertTrue(text.contains("\"start_ms\":1000"))
        assertFalse(text.contains("private.wav"))
        assertFalse(text.contains("0.123"))
        assertFalse(text.contains("centroid"))
    }

    @Test fun removedFormatsAreRejected() {
        listOf("VTT", "txt", "pdf", "md").forEach { format ->
            assertThrows(IllegalArgumentException::class.java) {
                Exporter.write(transcript(listOf(segment())), format, StringWriter())
            }
        }
    }

    @Test
    fun speakerIdsFollowEmbeddingsNotPauseOrRandomness() {
        val cluster = SpeakerCluster(Settings())
        val a = cluster.assign(floatArrayOf(1f, 0f))
        val b = cluster.assign(floatArrayOf(0f, 1f))
        val a2 = cluster.assign(floatArrayOf(0.99f, 0.01f))
        assertEquals("speaker_1", a.id)
        assertEquals("speaker_2", b.id)
        assertEquals(a.id, a2.id)
        assertNull(cluster.assign(floatArrayOf(0.7f, 0.7f)).id)
        assertNull(cluster.assign(null).id)
    }

    @Test
    fun speakerStateCanResume() {
        val first = SpeakerCluster(Settings())
        first.assign(floatArrayOf(1f, 0f))
        val restored =
            SpeakerCluster(
                Settings(),
                codec.decodeFromString(codec.encodeToString(first.speakers.toList())),
            )
        assertEquals("speaker_1", restored.assign(floatArrayOf(1f, 0f)).id)
    }

    @Test
    fun prosodyMeasuresPitchButDoesNotLabelEmotion() {
        val x = FloatArray(16000) { (0.2 * sin(2 * PI * 200 * it / 16000)).toFloat() }
        val a = ProsodyAnalyzer().analyze(x, "один два", 100)
        assertNotNull(a.f0MedianHz)
        assertEquals(200.0, a.f0MedianHz!!, 4.0)
        assertEquals(120.0, a.wordsPerMinute!!, 0.01)
        assertEquals(100L, a.pauseBeforeMs)
        val silence = ProsodyAnalyzer().analyze(FloatArray(16000), "", 0)
        assertNull(silence.f0MedianHz)
        assertNull(silence.wordsPerMinute)
    }

    @Test
    fun resamplingIsIndependentOfInputChunkBoundaries() {
        val input = FloatArray(44100) { sin(2 * PI * 440 * it / 44100).toFloat() }
        val one = Resampler(44100).push(input, true)
        val r = Resampler(44100)
        val all = mutableListOf<Float>()
        input.asList().chunked(997).forEach { all += r.push(it.toFloatArray()).toList() }
        all += r.push(FloatArray(0), true).toList()
        assertEquals(16000, one.size)
        assertArrayEquals(one, all.toFloatArray(), 1e-6f)
    }

    @Test
    fun resamplerRejectsAliasedHighFrequency() {
        val input = FloatArray(48000) { sin(2 * PI * 12000 * it / 48000).toFloat() }
        val x = Resampler(48000).push(input, true)
        assertTrue(sqrt(x.drop(100).dropLast(100).sumOf { it.toDouble() * it } / 15800) < 0.02)
    }

    @Test
    fun pitchRangeIncludesBothBoundaryFrequencies() {
        for (hz in listOf(50.0, 500.0)) {
            val signal = FloatArray(8000) { (0.2 * sin(2 * PI * hz * it / 16000)).toFloat() }
            val a = ProsodyAnalyzer().analyze(signal, "", 0)
            assertNotNull("Missing F0 at $hz Hz", a.f0MedianHz)
            assertEquals(hz, a.f0MedianHz!!, 1.0)
        }
    }

    @Test
    fun refinementCannotDeleteManuallyAssignedSpeaker() {
        val initial =
            listOf(
                Speaker("speaker_1", "Один", listOf(1f, 0f), 2),
                Speaker("speaker_2", "Два", listOf(0.999f, 0.001f), 2),
            )
        val automatic = SpeakerCluster(Settings(), initial)
        assertEquals("speaker_1", automatic.refine()["speaker_2"])
        val protected = SpeakerCluster(Settings(), initial)
        assertTrue(protected.refine(setOf("speaker_2")).isEmpty())
        assertEquals(2, protected.speakers.size)
    }

    @Test
    fun resumedRefinementKeepsOldestNumericIdBeyondNineSpeakers() {
        val cluster =
            SpeakerCluster(
                Settings(),
                listOf(
                    Speaker("speaker_10", "Десятый", listOf(1f, 0f), 2),
                    Speaker("speaker_2", "Второй", listOf(1f, 0f), 2),
                ),
            )
        assertEquals("speaker_2", cluster.refine()["speaker_10"])
        assertEquals("speaker_2", cluster.speakers.single().id)
    }
}
