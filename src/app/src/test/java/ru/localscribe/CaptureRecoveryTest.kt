package ru.localscribe

import org.junit.Assert.*
import org.junit.Test
import ru.localscribe.service.CaptureRecovery

class CaptureRecoveryTest {
    @Test
    fun resumesOnlyAtCommittedAudioAndRejectsMissingTail() {
        assertEquals(16000L, CaptureRecovery.resumeAt(16000, 48000))
        assertEquals(48000L, CaptureRecovery.resumeAt(null, 48000))
        assertEquals(0L, CaptureRecovery.resumeAt(0, 48000))
        assertThrows(IllegalArgumentException::class.java) {
            CaptureRecovery.resumeAt(48001, 48000)
        }
        assertThrows(IllegalArgumentException::class.java) { CaptureRecovery.resumeAt(-1, 48000) }
    }

    @Test
    fun longRecoveryTailDoesNotImmediatelyDisableRecognition() {
        val oldEnd = 3600L * 16000
        assertFalse(CaptureRecovery.isOverloaded(16000, oldEnd + 16000, oldEnd))
        assertFalse(CaptureRecovery.isOverloaded(oldEnd, oldEnd + 120L * 16000, oldEnd))
        assertTrue(CaptureRecovery.isOverloaded(oldEnd, oldEnd + 121L * 16000, oldEnd))
        assertTrue(CaptureRecovery.isOverloaded(0, 121L * 16000, 0))
    }
}
