package ru.localscribe.audio

import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive

/** Lossless, bounded PCM16 mono 16 kHz path, independent of device MediaCodec availability. */
object PcmWav {
    suspend fun normalize(source: File, target: File): Boolean {
        require(source.canonicalPath != target.canonicalPath)
        RandomAccessFile(source, "r").use { input ->
            if (input.length() < 12) return false
            val header = ByteArray(12)
            input.readFully(header)
            if (
                String(header, 0, 4, Charsets.US_ASCII) != "RIFF" ||
                    String(header, 8, 4, Charsets.US_ASCII) != "WAVE"
            )
                return false
            val limit =
                (ByteBuffer.wrap(header).order(ByteOrder.LITTLE_ENDIAN).getInt(4).toLong() and
                    0xffffffffL) + 8
            require(limit in 12..input.length()) { "Повреждён заголовок WAV" }
            var format = false
            var compatible = false
            var dataStart = -1L
            var dataSize = 0L
            var chunks = 0
            while (input.filePointer + 8 <= limit) {
                currentCoroutineContext().ensureActive()
                require(++chunks <= 1024) { "Слишком много секций WAV" }
                val chunk = ByteArray(8)
                input.readFully(chunk)
                val size =
                    ByteBuffer.wrap(chunk).order(ByteOrder.LITTLE_ENDIAN).getInt(4).toLong() and
                        0xffffffffL
                val start = input.filePointer
                require(size <= limit - start) { "Обрезана секция WAV" }
                when (String(chunk, 0, 4, Charsets.US_ASCII)) {
                    "fmt " -> {
                        require(!format && size >= 16) { "Повреждён формат WAV" }
                        val fmt = ByteArray(16)
                        input.readFully(fmt)
                        val b = ByteBuffer.wrap(fmt).order(ByteOrder.LITTLE_ENDIAN)
                        compatible =
                            b.getShort(0).toInt() == 1 &&
                                b.getShort(2).toInt() == 1 &&
                                b.getInt(4) == 16000 &&
                                b.getInt(8) == 32000 &&
                                b.getShort(12).toInt() == 2 &&
                                b.getShort(14).toInt() == 16
                        format = true
                    }
                    "data" -> {
                        require(dataStart < 0) { "Несколько секций аудио WAV не поддерживаются" }
                        dataStart = start
                        dataSize = size
                    }
                }
                input.seek(start + size + size % 2)
            }
            require(format && dataStart >= 0) { "WAV не содержит формат или аудио" }
            if (!compatible) return false
            require(dataSize > 0 && dataSize % 2 == 0L) { "Пустое или обрезанное аудио WAV" }
            input.seek(dataStart)
            try {
                WavFile(target).use { writer ->
                    val bytes = ByteArray(65536)
                    var left = dataSize
                    while (left > 0) {
                        currentCoroutineContext().ensureActive()
                        val n = minOf(left, bytes.size.toLong()).toInt()
                        input.readFully(bytes, 0, n)
                        writer.writePcm16(bytes, n)
                        left -= n
                    }
                }
            } catch (t: Throwable) {
                target.delete()
                throw t
            }
            return true
        }
    }
}
