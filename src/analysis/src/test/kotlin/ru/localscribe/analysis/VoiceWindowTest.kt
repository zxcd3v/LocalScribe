package ru.localscribe.analysis

import org.junit.Assert.*
import org.junit.Test

class VoiceWindowTest {
    @Test
    fun briefOverlapDoesNotVetoCleanSpeechAndWindowStaysBounded() {
        assertEquals(
            SampleSpan(168000, 192000),
            AnalysisMath.recentCleanVoiceWindow(0, 192000, listOf(SampleSpan(1000, 4200))),
        )
        assertEquals(
            SampleSpan(160000, 184000),
            AnalysisMath.recentCleanVoiceWindow(0, 192000, listOf(SampleSpan(184000, 192000))),
        )
    }

    @Test
    fun mixedOrTooShortAudioCannotTrainVoice() {
        assertNull(AnalysisMath.recentCleanVoiceWindow(0, 12000, emptyList()))
        assertNull(
            AnalysisMath.recentCleanVoiceWindow(0, 192000, listOf(SampleSpan(155000, 192000)))
        )
        assertEquals(
            SampleSpan(178000, 192000),
            AnalysisMath.recentCleanVoiceWindow(178000, 192000, emptyList()),
        )
    }
}
