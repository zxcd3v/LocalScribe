package ru.localscribe

import android.os.SystemClock
import android.util.Log
import java.io.File
import java.io.RandomAccessFile
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.data.EngineGate
import ru.localscribe.data.ExtraModels
import ru.localscribe.engine.LocalTextEditor
import ru.localscribe.engine.Engines
import ru.localscribe.engine.contextAsrWindows
import ru.localscribe.audio.AudioDecoder
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*

@RunWith(AndroidJUnit4::class)
class ContextEditingIntegrationTest {
    @Test fun nativeEditorLatency(): Unit = runBlocking {
        val app = InstrumentationRegistry.getInstrumentation().targetContext.applicationContext as ScribeApp
        app.ready.await()
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.QWEN)
            val samples = listOf(
                "добрый вечер мы уже открыли файл" to "Добрый вечер, мы уже открыли файл.",
                "количество зрителями стало больше" to "Количество зрителей стало больше.",
            )
            LocalTextEditor(app.models.extras.path(ExtraModels.QWEN_FILE),
                app.models.extras.editorInstructions()).use { editor ->
                repeat(2) { round ->
                    for ((index, pair) in samples.withIndex()) {
                        val start = SystemClock.elapsedRealtime()
                        val actual = editor.edit(pair.first)
                        Log.i("ContextBenchmark", "round=$round sample=$index ms=${SystemClock.elapsedRealtime() - start}")
                        assertEquals(pair.second, actual)
                    }
                }
            }
        }
    }

    @Test fun adjacentFragmentsShareGrammarAndHistoryRemainsReadOnly(): Unit = runBlocking {
        val app = InstrumentationRegistry.getInstrumentation().targetContext.applicationContext as ScribeApp
        app.ready.await()
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.QWEN)
            LocalTextEditor(app.models.extras.path(ExtraModels.QWEN_FILE),
                app.models.extras.editorInstructions()).use { editor ->
                val raw = listOf("во времена чайковского он был безумно популярным", "модным и богатым")
                val actual = editor.editBatch(raw, listOf(
                    "Участник 1: Мы обсуждаем композитора.",
                    "Участник 2: Каким он был тогда?",
                ))
                Log.i("ContextBenchmark", "adjacent=${actual.mapIndexed { i, part -> "$i=<$part>" }}")
                assertEquals(2, actual.size)
                assertTrue(actual[0].endsWith(","))
                assertFalse(actual[0].contains("популярен", ignoreCase = true))
                assertEquals("модным и богатым.", actual[1])
                assertFalse(actual.joinToString(" ").contains("Участник"))
                assertEquals(actual.joinToString(" "),
                    TranscriptEdits.accept(raw.joinToString(" "), actual.joinToString(" ")))
            }
        }
    }

    @Test fun acousticContextPreservesWordAcrossAsrAndCheckpointCuts(): Unit = runBlocking {
        val inst = InstrumentationRegistry.getInstrumentation()
        val app = inst.targetContext.applicationContext as ScribeApp
        app.ready.await()
        EngineGate.exclusive {
            val source = File(app.cacheDir, "context-ru.wav")
            val pcm = File(app.cacheDir, "context-ru-pcm.wav")
            try {
                inst.context.assets.open("ru.wav").use { input ->
                    source.outputStream().use { input.copyTo(it) }
                }
                AudioDecoder().decode(source, pcm) {}
                val speech = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, 15 * 16000) }
                Engines(app.models, Settings(quality = Quality.FAST)).use { engines ->
                    val reference = TranscriptMerger.words(engines.recognize(speech, 0).second)
                    val target = reference.first { it.text.lowercase().contains("углублен") }
                    fun normalized(text: String) = text.lowercase().filter(Char::isLetter)
                    for (boundaryMs in listOf(12000L, 15000L, 30000L)) {
                        val padding = ((boundaryMs - target.startMs - 200) * 16).toInt()
                        assertTrue(padding >= 0)
                        val audio = FloatArray(padding) + speech
                        val result = mutableListOf<WordStamp>()
                        var blockStart = 0
                        while (blockStart < audio.size) {
                            val size = minOf(30 * 16000, audio.size - blockStart)
                            val contextStart = maxOf(0, blockStart - 5 * 16000)
                            val contextEnd = minOf(audio.size, blockStart + size + 5 * 16000)
                            for (window in contextAsrWindows(size, blockStart - contextStart,
                                    contextEnd - contextStart)) {
                                val recognized = engines.recognize(audio.copyOfRange(
                                    contextStart + window.audioBegin, contextStart + window.audioEnd),
                                    Timecode.ms((contextStart + window.audioBegin).toLong()))
                                result += TranscriptMerger.words(recognized.second).filter {
                                    it.startMs * 16 >= blockStart + window.begin &&
                                        it.startMs * 16 < blockStart + window.end
                                }
                            }
                            blockStart += size
                        }
                        Log.i("ContextBenchmark", "seam=$boundaryMs text=${result.joinToString(" ") { it.text }}")
                        assertEquals("Word lost or duplicated at $boundaryMs", 1,
                            result.count { normalized(it.text) == normalized(target.text) })
                    }
                }
            } finally { source.delete(); pcm.delete() }
        }
    }
}
