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
import ru.localscribe.core.VoiceTurn
import ru.localscribe.data.*
import ru.localscribe.engine.NativeDiarizer

@RunWith(AndroidJUnit4::class)
class DiarizationWorkersPerformanceTest {
    @Test
    fun compareWorkerCountsWithoutDroppingWindows(): Unit = runBlocking {
        val app =
            InstrumentationRegistry.getInstrumentation().targetContext.applicationContext
                as ScribeApp
        app.ready.await()
        val pcm = File(app.cacheDir, "decoder-baseline.wav")
        assumeTrue(pcm.isFile)
        EngineGate.exclusive {
            app.models.extras.prepare(ExtraModels.VBX)
            val folder = File(app.models.extras.path("segmentation-3.0.safetensors")).parent!!
            var reference: List<VoiceTurn>? = null
            val rows = mutableListOf<String>()
            for (workers in listOf(1, 2, 4)) {
                val turns =
                    NativeDiarizer(folder, secondary = true, workers = workers).use { model ->
                        val begin = System.nanoTime()
                        RandomAccessFile(pcm, "r").use { file ->
                            val total = (pcm.length() - 44) / 2
                            var offset = 0L
                            while (offset < total) {
                                model.accept(WavFile.read(file, offset, 160000))
                                offset += 16000
                            }
                        }
                        val result = model.complete()
                        val ms = (System.nanoTime() - begin) / 1_000_000
                        rows += "$workers\t$ms\t${result.size}"
                        Log.i("DiarWorkers", "workers=$workers elapsed_ms=$ms turns=${result.size}")
                        result
                    }
                if (reference == null) reference = turns
                else assertEquals("Window order or speaker results changed", reference, turns)
            }
            File(app.cacheDir, "diar-workers.tsv").writeText(rows.joinToString("\n"))
        }
    }
}
