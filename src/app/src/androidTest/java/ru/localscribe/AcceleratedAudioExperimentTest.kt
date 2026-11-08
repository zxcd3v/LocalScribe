package ru.localscribe

import android.util.Log
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*
import ru.localscribe.data.EngineGate
import ru.localscribe.engine.*

/** Compare pitch-preserving tempo changes; this experiment never changes production audio. */
@RunWith(AndroidJUnit4::class)
class AcceleratedAudioExperimentTest {
    @Test
    fun compareOriginalAndAcceleratedAsr(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        val inputs = listOf("1.0", "1.25", "1.5").map { File(app.cacheDir, "tempo-$it.wav") }
        assumeTrue(inputs.all { it.isFile })
        EngineGate.exclusive {
            Engines(app.models, Settings()).use { engines ->
                RandomAccessFile(inputs[0], "r").use {
                    engines.recognize(WavFile.read(it, 0, 5 * 16000), 0)
                }
                val results =
                    inputs.map { input ->
                        val samples =
                            RandomAccessFile(input, "r").use { WavFile.read(it, 0, 30 * 16000) }
                        val start = System.nanoTime()
                        val words =
                            contextAsrWindows(samples.size, 0, samples.size).flatMap { window ->
                                val recognized =
                                    engines.recognize(
                                        samples.copyOfRange(window.audioBegin, window.audioEnd),
                                        Timecode.ms(window.audioBegin.toLong()),
                                    )
                                TranscriptMerger.words(recognized.second).filter {
                                    it.startMs * 16 >= window.begin && it.startMs * 16 < window.end
                                }
                            }
                        assertTrue(words.isNotEmpty())
                        val ms = (System.nanoTime() - start) / 1_000_000
                        val text = words.joinToString(" ") { it.text }
                        Log.i("TempoExperiment", "${input.name} elapsed_ms=$ms text=<$text>")
                        "${input.name}\t$ms\t$text"
                    }
                File(app.cacheDir, "tempo-experiment.tsv").writeText(results.joinToString("\n"))
            }
        }
    }
}
