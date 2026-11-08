package ru.localscribe

import android.app.Application
import java.io.ByteArrayOutputStream
import java.io.File
import java.util.zip.ZipInputStream
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.core.*
import ru.localscribe.data.*

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], application = Application::class)
class PreflightDiagnosticsTest {
    @Test
    fun selfDeclaredCompatibleButWrongWeightsAreRejectedBeforeJni() {
        val c = RuntimeEnvironment.getApplication()
        val store = ModelStore(c)
        store.root.mkdirs()
        val weights = File(store.root, "speaker.onnx").apply { writeText("not an ONNX model") }
        File(store.root, "manifest.json")
            .writeText(
                codec.encodeToString(
                    ModelManifest(
                        "arbitrary",
                        "1",
                        mapOf("speaker.onnx" to ModelStore.sha(weights)),
                    )
                )
            )
        val error = assertThrows(IllegalArgumentException::class.java) { store.verify(Settings()) }
        assertTrue(error.message!!.contains("несовместима"))
        store.root.deleteRecursively()
    }

    @Test
    fun localDiagnosticsRetainStackFramesButNotExceptionPayloadAndAreBounded() {
        val c = RuntimeEnvironment.getApplication()
        val folder = File(c.filesDir, "diagnostics")
        folder.deleteRecursively()
        val d = Diagnostics(c)
        repeat(24) { d.failure("test", IllegalArgumentException("PRIVATE TRANSCRIPT")) }
        d.stage("Определение участников")
        assertTrue(folder.listFiles()!!.size <= 17)
        val text = folder.listFiles()!!.filter { it.isFile }.joinToString { it.readText() }
        assertTrue(text.contains("IllegalArgumentException"))
        assertTrue(text.contains("PreflightDiagnosticsTest"))
        assertFalse(text.contains("PRIVATE TRANSCRIPT"))
    }
}
