package ru.localscribe.audio

import java.io.File
import java.io.RandomAccessFile
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive

/** Exact PCM16 sample slicing avoids an extra lossy float-to-integer conversion. */
internal suspend fun copyPcmRange(source: File, target: File, begin: Long, end: Long) {
    require(source.canonicalPath != target.canonicalPath)
    require(WavFile.isCanonical(source)) { "Ожидается PCM16 WAV 16 кГц" }
    RandomAccessFile(source, "r").use { input ->
        require(begin >= 0 && end > begin && end <= (input.length() - 44) / 2)
        input.seek(44 + begin * 2)
        WavFile(target).use { writer ->
            val bytes = ByteArray(32768)
            var remaining = (end - begin) * 2
            while (remaining > 0) {
                currentCoroutineContext().ensureActive()
                val count = minOf(bytes.size.toLong(), remaining).toInt()
                input.readFully(bytes, 0, count)
                writer.writePcm16(bytes, count)
                remaining -= count
            }
        }
    }
}
