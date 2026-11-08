package ru.localscribe.audio

import java.io.Closeable
import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder

class WavFile(file: File, append: Boolean = false) : Closeable {
    private val raf = RandomAccessFile(file, "rw")
    var samples: Long = 0
        private set

    init {
        if (append && raf.length() >= 44) samples = (raf.length() - 44) / 2 else raf.setLength(44)
        header()
        raf.seek(44 + samples * 2)
    }

    fun write(x: FloatArray) {
        require((samples + x.size) * 2 < 0xfffffff0L) { "Достигнут лимит WAV (около 37 часов)" }
        val b = ByteBuffer.allocate(x.size * 2).order(ByteOrder.LITTLE_ENDIAN)
        x.forEach { b.putShort((it.coerceIn(-1f, 1f) * 32767).toInt().toShort()) }
        raf.write(b.array())
        samples += x.size
    }

    internal fun writePcm16(bytes: ByteArray, count: Int) {
        require(count in 0..bytes.size && count % 2 == 0)
        require(samples * 2 + count < 0xfffffff0L) { "Достигнут лимит WAV" }
        raf.write(bytes, 0, count)
        samples += count / 2
    }

    fun checkpoint() {
        val pos = raf.filePointer
        header()
        raf.fd.sync()
        raf.seek(pos)
    }

    private fun header() {
        require(samples * 2 < 0xfffffff0L) { "Достигнут лимит WAV (около 37 часов при 16 кГц)" }
        val b = ByteBuffer.allocate(44).order(ByteOrder.LITTLE_ENDIAN)
        b.put("RIFF".toByteArray())
        b.putInt((samples * 2 + 36).toInt())
        b.put("WAVEfmt ".toByteArray())
        b.putInt(16)
        b.putShort(1)
        b.putShort(1)
        b.putInt(16000)
        b.putInt(32000)
        b.putShort(2)
        b.putShort(16)
        b.put("data".toByteArray())
        b.putInt((samples * 2).toInt())
        raf.seek(0)
        raf.write(b.array())
    }

    override fun close() {
        try {
            checkpoint()
        } finally {
            raf.close()
        }
    }

    companion object {
        fun isCanonical(file: File, allowUncommittedLength: Boolean = false): Boolean {
            if (!file.isFile || file.length() < 44) return false
            return RandomAccessFile(file, "r").use { input ->
                val bytes = ByteArray(44)
                input.readFully(bytes)
                val b = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
                fun text(at: Int, length: Int) = String(bytes, at, length, Charsets.US_ASCII)
                text(0, 4) == "RIFF" &&
                    text(8, 8) == "WAVEfmt " &&
                    b.getInt(16) == 16 &&
                    b.getShort(20).toInt() == 1 &&
                    b.getShort(22).toInt() == 1 &&
                    b.getInt(24) == 16000 &&
                    b.getInt(28) == 32000 &&
                    b.getShort(32).toInt() == 2 &&
                    b.getShort(34).toInt() == 16 &&
                    text(36, 4) == "data" &&
                    (allowUncommittedLength ||
                        ((b.getInt(40).toLong() and 0xffffffffL) == file.length() - 44 &&
                            (b.getInt(4).toLong() and 0xffffffffL) == file.length() - 8)) &&
                    (file.length() - 44) % 2 == 0L
            }
        }

        fun read(raf: RandomAccessFile, start: Long, count: Int): FloatArray {
            val size =
                minOf(count.toLong(), ((raf.length() - 44) / 2 - start).coerceAtLeast(0)).toInt()
            val b = ByteArray(size * 2)
            raf.seek(44 + start * 2)
            raf.readFully(b)
            val bb = ByteBuffer.wrap(b).order(ByteOrder.LITTLE_ENDIAN)
            return FloatArray(size) { bb.short / 32768f }
        }

        fun repair(file: File) {
            runCatching {
                if (isCanonical(file, allowUncommittedLength = true)) WavFile(file, true).close()
            }
        }
    }
}
