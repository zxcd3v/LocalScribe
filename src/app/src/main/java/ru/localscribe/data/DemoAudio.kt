package ru.localscribe.data

import android.content.Context
import java.io.File
import java.security.MessageDigest

data class DemoAudio(val id: String, val title: String, val durationMs: Long, val sha256: String)

object Demos {
    val all =
        listOf(
            DemoAudio(
                "client",
                "Созвон с клиентом",
                22411L,
                "10cb145d573043645acf4e069efb39006d00bce19f365c0945826282144e7da5",
            ),
            DemoAudio(
                "clinic",
                "Приём у врача",
                24466L,
                "c632f1b4b4bff9eb0e592ee0dcbfc4fbc5b643ab0a18fe53ea2c83724f756403",
            ),
            DemoAudio(
                "interview",
                "Интервью",
                21865L,
                "82d1a6e741cbd6fbe0ca00a284601b431fedb43eba189cfaaca11897e979e69d",
            ),
        )

    fun copy(context: Context, demo: DemoAudio, destination: File) {
        require(demo in all)
        val digest = MessageDigest.getInstance("SHA-256")
        try {
            context.assets.open("demos/${demo.id}.wav").use { input ->
                destination.outputStream().use { output ->
                    val buffer = ByteArray(65536)
                    while (true) {
                        val n = input.read(buffer)
                        if (n < 0) break
                        digest.update(buffer, 0, n)
                        output.write(buffer, 0, n)
                    }
                }
            }
            check(digest.digest().joinToString("") { "%02x".format(it) } == demo.sha256) {
                "Повреждена демо-запись"
            }
        } catch (e: Exception) {
            destination.delete()
            throw e
        }
    }
}
