package ru.localscribe.engine

import java.io.Closeable
import kotlinx.coroutines.*
import ru.localscribe.core.TranscriptEdits

class LocalTextEditor(
    path: String,
    private val instructions: String,
    generationThreads: Int = 2,
    prefillThreads: Int = Runtime.getRuntime().availableProcessors().coerceIn(1, 2),
) : Closeable {
    private val accelerated =
        avxAvailable() && runCatching { NativeAvxEditor.load() }.getOrDefault(false)
    private var handle =
        if (accelerated)
            NativeAvxEditor.open(path.encodeToByteArray(), generationThreads, prefillThreads)
        else open(path.encodeToByteArray(), generationThreads, prefillThreads)

    init {
        android.util.Log.i(
            "LocalScribePerf",
            "editor.backend=${if (accelerated) "AVX" else "portable"}",
        )
    }

    fun edit(text: String): String = editBatch(listOf(text)).single()

    fun editBatch(texts: List<String>, previous: List<String> = emptyList()): List<String> {
        check(handle != 0L)
        if (texts.isEmpty()) return emptyList()
        val text = texts.joinToString(" ")
        if (text.length > 1500 || text.contains('\n') || text.contains('\r') || "<|" in text)
            return texts
        val history = editorHistory(previous)
        val candidate =
            (if (accelerated)
                    NativeAvxEditor.generate(
                        handle,
                        instructions.encodeToByteArray(),
                        text.replace('\u0000', ' ').encodeToByteArray(),
                        history.encodeToByteArray(),
                    )
                else
                    generate(
                        handle,
                        instructions.encodeToByteArray(),
                        text.replace('\u0000', ' ').encodeToByteArray(),
                        history.encodeToByteArray(),
                    ))
                .decodeToString()
                .trim()
        return TranscriptEdits.partition(texts, candidate) ?: texts
    }

    @Synchronized
    fun cancel() {
        if (handle != 0L) {
            if (accelerated) NativeAvxEditor.abortInference(handle) else abortInference(handle)
        }
    }

    @Synchronized
    override fun close() {
        if (handle == 0L) return
        if (accelerated) NativeAvxEditor.release(handle) else release(handle)
        handle = 0L
    }

    private external fun abortInference(handle: Long)

    private external fun avxAvailable(): Boolean

    private external fun open(model: ByteArray, threads: Int, batchThreads: Int): Long

    private external fun generate(
        handle: Long,
        instructions: ByteArray,
        text: ByteArray,
        previous: ByteArray,
    ): ByteArray

    private external fun release(handle: Long)

    companion object {
        init {
            System.loadLibrary("localscribe_llama")
        }
    }
}

/** Bound context by words while retaining the speaker label and the most recent clause. */
internal fun editorHistory(previous: List<String>): String =
    previous
        .takeLast(2)
        .filter { "<|" !in it }
        .map { turn ->
            val clean = turn.replace(Regex("[\\p{Cc}]+"), " ")
            if (clean.length <= 200) clean
            else {
                val label = clean.substringBefore(": ", "").take(48)
                val body = if (label.isEmpty()) clean else clean.substringAfter(": ")
                val tail = body.takeLast(160).substringAfter(' ')
                if (label.isEmpty()) "…$tail" else "$label: …$tail"
            }
        }
        .joinToString("\n")

/** Loaded only after CPUID and OS register-state checks pass in the portable library. */
internal object NativeAvxEditor {
    fun load(): Boolean {
        System.loadLibrary("localscribe_llama_avx")
        return true
    }

    external fun open(model: ByteArray, threads: Int, batchThreads: Int): Long

    external fun generate(
        handle: Long,
        instructions: ByteArray,
        text: ByteArray,
        previous: ByteArray,
    ): ByteArray

    external fun release(handle: Long)

    external fun abortInference(handle: Long)
}

/** Signal native cancellation before waiting for the blocking inference to return. */
internal suspend fun <T> LocalTextEditor.cancellable(block: suspend () -> T): T = coroutineScope {
    val watcher =
        launch(start = CoroutineStart.UNDISPATCHED) {
            try {
                awaitCancellation()
            } finally {
                this@cancellable.cancel()
            }
        }
    try {
        block()
    } finally {
        withContext(NonCancellable) { watcher.cancelAndJoin() }
    }
}
