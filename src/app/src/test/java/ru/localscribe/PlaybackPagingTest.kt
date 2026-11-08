package ru.localscribe

import android.app.Application
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.core.*
import ru.localscribe.data.*

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE, application = Application::class)
class PlaybackPagingTest {
    @Test
    fun playbackAnchorSeeksByDialogueTurnsAcrossLongRecordings() {
        val context = RuntimeEnvironment.getApplication()
        context.deleteDatabase("transcripts.db")
        Repository(context).use { db ->
            val rows = (0 until 250).flatMap { turn -> (0..2).map { part ->
                val start = turn * 10000L + part * 1000L
                Segment("t%03d-p%d".format(turn, part), "r", start, start + 900,
                    "speaker_${turn % 2 + 1}", "Реплика $turn часть $part")
            } }
            db.commit(Recording("r", "Длинная запись", 0, "audio.wav"), rows, emptyList())
            val first = db.page("r")
            assertEquals(0, first.offset)
            assertEquals(1000000L, first.nextPageStartMs)
            assertEquals(300, first.transcript.segments.size)
            val anchored = db.page("r", TranscriptQuery(positionMs = 2072500L))
            assertEquals(200, anchored.offset)
            assertTrue(anchored.transcript.segments.any { it.id == "t207-p2" })
            assertNull(anchored.nextPageStartMs)
            val silence = db.page("r", TranscriptQuery(positionMs = 999000L))
            assertEquals(0, silence.offset)
            assertEquals(1000000L, silence.nextPageStartMs)
            val previous = db.page("r", TranscriptQuery(positionMs = 2500L))
            assertEquals(0, previous.offset)
        }
    }
}
