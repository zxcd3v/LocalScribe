package ru.localscribe.engine

import java.io.Closeable
import kotlinx.serialization.Serializable
import ru.localscribe.core.*

/** Called by one EngineGate owner. JNI never holds a Kotlin array across calls. */
class NativeDiarizer(
    path: String,
    secondary: Boolean = false,
    step: Double = 1.0,
    workers: Int = 0,
) : Closeable {
    private var handle = open(path, "libonnxruntime.so", secondary, step, workers)

    @Serializable private data class NativeTurn(val start: Long, val end: Long, val speaker: Int)

    private fun turns(text: String) =
        codec
            .decodeFromString<List<NativeTurn>>(text)
            .filter { it.end > it.start }
            .map { VoiceTurn(it.start, it.end, it.speaker) }

    fun accept(samples: FloatArray): List<VoiceTurn> {
        check(handle != 0L)
        return turns(push(handle, samples))
    }

    fun complete(): List<VoiceTurn> {
        check(handle != 0L)
        return turns(finish(handle))
    }

    override fun close() {
        if (handle != 0L) {
            release(handle)
            handle = 0L
        }
    }

    private external fun open(
        path: String,
        runtime: String,
        secondary: Boolean,
        step: Double,
        workers: Int,
    ): Long

    private external fun push(handle: Long, samples: FloatArray): String

    private external fun finish(handle: Long): String

    private external fun release(handle: Long)

    companion object {
        init {
            System.loadLibrary("localscribe_diar_jni")
        }
    }
}
