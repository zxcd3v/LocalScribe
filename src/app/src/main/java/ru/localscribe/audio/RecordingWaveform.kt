package ru.localscribe.audio

import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import ru.localscribe.core.WaveformAccumulator

data class RecordingWaveform(val durationMs: Long, val peaks: List<Float>) {
    companion object {
        /** Reads canonical saved PCM in 32 KiB blocks; never retains the whole audio. */
        suspend fun read(file: File, maxPeaks: Int = 2048): RecordingWaveform =
            withContext(Dispatchers.IO) {
                require(WavFile.isCanonical(file)) { "Ожидается сохранённый PCM16 WAV 16 кГц" }
                RandomAccessFile(file, "r").use { input ->
                    val samples = (input.length() - 44) / 2
                    val envelope = WaveformAccumulator(samples, maxPeaks)
                    while (envelope.consumedSamples < samples) {
                        currentCoroutineContext().ensureActive()
                        val block = WavFile.read(input, envelope.consumedSamples, 16384)
                        check(block.isNotEmpty()) { "Аудио оборвалось при построении волны" }
                        envelope.append(block)
                    }
                    RecordingWaveform(samples * 1000 / 16000, envelope.finish())
                }
            }
    }
}
