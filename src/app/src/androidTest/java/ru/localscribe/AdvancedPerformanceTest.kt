package ru.localscribe

import android.util.Log
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.*
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.analysis.AdvancedModels
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*
import ru.localscribe.data.*
import ru.localscribe.engine.*

@RunWith(AndroidJUnit4::class)
class AdvancedPerformanceTest {
    @Test
    fun emotionThreadsAndArenaKeepScores(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        val pcm = File(app.cacheDir, "decoder-baseline.wav")
        assumeTrue(pcm.isFile)
        EngineGate.exclusive {
            val audio = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, 64000) }
            var expected: Map<String, Double>? = null
            val rows = mutableListOf<String>()
            for ((threads, arena) in listOf(1 to true, 2 to false, 2 to true, 4 to true)) {
                val times = mutableListOf<Long>()
                AdvancedModels(
                        File(app.models.root, "advanced"),
                        threads,
                        reuseBuffers = arena,
                        timing = { name, ms -> if (name == "emotion.infer") times += ms },
                    )
                    .use { model ->
                        repeat(4) {
                            val actual = model.emotion(audio).scores
                            if (expected == null) expected = actual
                            else
                                expected!!.forEach { (key, value) ->
                                    assertEquals(value, actual.getValue(key), 0.002)
                                }
                        }
                    }
                rows += "$threads\t$arena\t${times.joinToString(",")}"
                Log.i("AdvancedPerf", rows.last())
            }
            File(app.cacheDir, "emotion-performance.tsv").writeText(rows.joinToString("\n"))
        }
    }

    @Test
    fun editorCancellationInterruptsNativeWork(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.QWEN)
            LocalTextEditor(
                    app.models.extras.path(ExtraModels.QWEN_FILE),
                    app.models.extras.editorInstructions(),
                )
                .use { editor ->
                    val entered = CompletableDeferred<Unit>()
                    val task =
                        launch(Dispatchers.Default) {
                            editor.cancellable {
                                entered.complete(Unit)
                                editor.edit(
                                    "мы будем обсуждать детали совещания ".repeat(24).trim()
                                )
                            }
                        }
                    entered.await()
                    delay(200)
                    val start = System.nanoTime()
                    task.cancelAndJoin()
                    val ms = (System.nanoTime() - start) / 1_000_000
                    Log.i("AdvancedPerf", "editor_cancel_ms=$ms")
                    assertTrue("Native inference ignored cancellation: $ms ms", ms < 5000)
                    assertTrue(task.isCancelled)
                }
        }
    }

    @Test
    fun qwenGenerationThreadsKeepText(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.QWEN)
            val path = app.models.extras.path(ExtraModels.QWEN_FILE)
            val instructions = app.models.extras.editorInstructions()
            LocalTextEditor(path, instructions).use { it.edit("добрый вечер мы уже открыли файл") }
            val raw =
                "мы встретились сегодня чтобы обсудить детали совещания сначала проверим список участников затем согласуем время следующей встречи после этого откроем файл и уточним цифры в отчете пожалуйста сохраняйте все решения чтобы ничего не забыть"
            val rows = mutableListOf<String>()
            for (threads in listOf(1, 2, 4, 1, 2, 4)) {
                LocalTextEditor(path, instructions, generationThreads = threads).use { editor ->
                    val begin = System.nanoTime()
                    val result = editor.edit(raw)
                    val ms = (System.nanoTime() - begin) / 1_000_000
                    assertNotEquals("Editor must format lowercase input", raw, result)
                    assertNotNull(ru.localscribe.core.TranscriptEdits.accept(raw, result))
                    rows += "$threads\t$ms"
                    Log.i("AdvancedPerf", "qwen_generation_threads=$threads elapsed_ms=$ms")
                }
            }
            File(app.cacheDir, "qwen-threads.tsv").writeText(rows.joinToString("\n"))
        }
    }

    @Test
    fun compareQwenPrefillThreads(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.QWEN)
            val rows = mutableListOf<String>()
            var valid = 0
            for (threads in listOf(1, 2, 4)) {
                // Whitespace forces a distinct static prefix without changing the instruction.
                val instructions = " ".repeat(threads) + app.models.extras.editorInstructions()
                LocalTextEditor(
                        app.models.extras.path(ExtraModels.QWEN_FILE),
                        instructions,
                        prefillThreads = threads,
                    )
                    .use { editor ->
                        val begin = System.nanoTime()
                        val actual = editor.edit("добрый вечер мы уже открыли файл")
                        val ms = (System.nanoTime() - begin) / 1_000_000
                        val accepted = actual == "Добрый вечер, мы уже открыли файл."
                        if (accepted) valid++
                        rows += "$threads\t$ms\t$accepted"
                        Log.i(
                            "AdvancedPerf",
                            "qwen_prefill_threads=$threads elapsed_ms=$ms accepted=$accepted",
                        )
                    }
            }
            File(app.cacheDir, "qwen-prefill.tsv").writeText(rows.joinToString("\n"))
            assertTrue("No viable prefill configuration", valid > 0)
        }
    }

    @Test
    fun compareAsrThreadsWithoutChangingWords(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        val pcm = File(app.cacheDir, "decoder-baseline.wav")
        assumeTrue(pcm.isFile)
        EngineGate.exclusive {
            val audio = RandomAccessFile(pcm, "r").use { WavFile.read(it, 0, 30 * 16000) }
            var reference: List<String>? = null
            val rows = mutableListOf<String>()
            for (threads in listOf(1, 2, 4)) {
                Engines(app.models, Settings(), cpuThreads = threads).use { engine ->
                    engine.recognize(audio.copyOfRange(0, 5 * 16000), 0)
                    val begin = System.nanoTime()
                    val words =
                        contextAsrWindows(audio.size, 0, audio.size)
                            .flatMap { window ->
                                val result =
                                    engine.recognize(
                                        audio.copyOfRange(window.audioBegin, window.audioEnd),
                                        Timecode.ms(window.audioBegin.toLong()),
                                    )
                                TranscriptMerger.words(result.second).filter {
                                    it.startMs * 16 >= window.begin && it.startMs * 16 < window.end
                                }
                            }
                            .map { it.text.filter(Char::isLetterOrDigit).lowercase() }
                            .filter { it.isNotEmpty() }
                    val ms = (System.nanoTime() - begin) / 1_000_000
                    rows += "$threads\t$ms"
                    Log.i("AdvancedPerf", "asr_threads=$threads elapsed_ms=$ms words=${words.size}")
                    File(app.cacheDir, "asr-threads.tsv").writeText(rows.joinToString("\n"))
                    if (reference == null) reference = words
                    else assertEquals("ASR words changed with thread count", reference, words)
                }
            }
        }
    }
}
