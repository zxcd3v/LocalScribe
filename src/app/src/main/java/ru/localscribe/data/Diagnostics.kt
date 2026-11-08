package ru.localscribe.data

import android.app.ActivityManager
import android.content.Context
import android.os.Build
import java.io.File

/** Local bounded diagnostics. No audio, recognized text, profile vectors, or automatic upload. */
class Diagnostics(private val context: Context) {
    private val folder = File(context.filesDir, "diagnostics")

    @Synchronized
    fun failure(stage: String, error: Throwable) {
        runCatching {
            val text = buildString {
                appendLine("stage=$stage")
                var cause: Throwable? = error
                repeat(6) {
                    val t = cause ?: return@repeat
                    appendLine(t.javaClass.name)
                    t.stackTrace.take(64).forEach { appendLine("  at $it") }
                    cause = t.cause.takeUnless { it === t }
                }
            }
            write("failure", text)
        }
    }

    @Synchronized
    fun stage(value: String) {
        runCatching {
            folder.mkdirs()
            File(folder, "last-stage.txt").writeText("${System.currentTimeMillis()} $value")
        }
    }

    fun previousExit() {
        if (Build.VERSION.SDK_INT < 30) return
        runCatching {
                val exits =
                    context
                        .getSystemService(ActivityManager::class.java)
                        .getHistoricalProcessExitReasons(context.packageName, 0, 4)
                synchronized(this) {
                    write(
                        "system-exit",
                        exits.joinToString("\n") {
                            "timestamp=${it.timestamp} reason=${it.reason} status=${it.status} pss_kb=${it.pss} rss_kb=${it.rss}"
                        },
                    )
                }
                // Native tombstones are binary protobuf on supported Android versions; keep bytes
                // intact.
                val exit = exits.firstOrNull()
                synchronized(this) {
                    folder.mkdirs()
                    File(folder, "system-trace.bin").delete()
                    File(folder, "system-trace-info.txt").delete()
                }
                exit?.traceInputStream?.use { input ->
                    synchronized(this) {
                        File(folder, "system-trace.bin").outputStream().use { out ->
                            val buffer = ByteArray(8192)
                            val limit = 4 * 1024 * 1024
                            var remaining = limit
                            while (remaining > 0) {
                                val n = input.read(buffer, 0, minOf(buffer.size, remaining))
                                if (n < 0) break
                                out.write(buffer, 0, n)
                                remaining -= n
                            }
                            val truncated = input.read() != -1
                            File(folder, "system-trace-info.txt")
                                .writeText(
                                    "timestamp=${exit.timestamp} reason=${exit.reason} status=${exit.status}\n" +
                                        "bytes=${limit - remaining} truncated=$truncated\n"
                                )
                        }
                    }
                }
            }
            .onFailure { failure("read-exit-info", it) }
    }

    private fun write(kind: String, text: String) {
        folder.mkdirs()
        File(folder, "$kind-${System.currentTimeMillis()}.txt").writeText(text.take(65536))
        folder
            .listFiles()
            ?.filter { it.name.startsWith("failure-") || it.name.startsWith("system-exit-") }
            ?.sortedByDescending { it.lastModified() }
            ?.drop(16)
            ?.forEach { it.delete() }
    }

}
