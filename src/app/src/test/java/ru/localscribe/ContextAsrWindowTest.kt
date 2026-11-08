package ru.localscribe

import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.engine.contextAsrWindows

class ContextAsrWindowTest {
    @Test fun ownershipCoversEverySampleOnceAndAudioHasContextAcrossBothKindsOfBoundary() {
        val windows = contextAsrWindows(30 * 16000, 5 * 16000, 40 * 16000)
        assertEquals(0, windows.first().begin)
        assertEquals(30 * 16000, windows.last().end)
        assertTrue(windows.zipWithNext().all { (a,b) -> a.end == b.begin })
        for (window in windows) {
            assertTrue(window.audioEnd - window.audioBegin <= 15 * 16000)
            assertEquals(24000, 5 * 16000 + window.begin - window.audioBegin)
            assertEquals(24000, window.audioEnd - (5 * 16000 + window.end))
        }
        // The former hard cut at 15 s lies inside a complete acoustic window.
        assertTrue(windows.any { it.audioBegin < 20 * 16000 && it.audioEnd > 20 * 16000 })
    }

    @Test fun fileEdgesNeedNoNegativeReadsAndTinyTailStillHasLeftContext() {
        val windows = contextAsrWindows(12 * 16000 + 1, 0, 12 * 16000 + 1)
        assertEquals(0, windows.first().audioBegin)
        assertEquals(12 * 16000 + 1, windows.last().audioEnd)
        assertEquals(24000, windows.last().begin - windows.last().audioBegin)
        assertTrue(contextAsrWindows(0, 0, 0).isEmpty())
    }
}
