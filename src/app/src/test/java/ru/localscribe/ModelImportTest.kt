package ru.localscribe

import android.app.Application
import android.net.Uri
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.encodeToString
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.core.codec
import ru.localscribe.data.ModelManifest
import ru.localscribe.data.ModelStore

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE, application = Application::class)
class ModelImportTest {
    private fun zip(files: Map<String, String>): File {
        val f = File.createTempFile("models-", ".zip")
        ZipOutputStream(f.outputStream()).use { z ->
            files.forEach { (name, body) ->
                z.putNextEntry(ZipEntry(name))
                z.write(body.toByteArray())
                z.closeEntry()
            }
        }
        return f
    }

    @Test
    fun zipTraversalIsRejected() = runBlocking {
        val store = ModelStore(RuntimeEnvironment.getApplication())
        val f = zip(mapOf("../escape.onnx" to "bad"))
        try {
            store.install(Uri.fromFile(f)) {}
            fail("Traversal must be rejected")
        } catch (expected: IllegalArgumentException) {
            assertTrue(expected.message!!.contains("ZIP"))
        } finally {
            f.delete()
        }
    }

    @Test
    fun corruptedWeightsDoNotReplaceExistingModels(): Unit = runBlocking {
        val store = ModelStore(RuntimeEnvironment.getApplication())
        store.root.mkdirs()
        val marker = File(store.root, "keep")
        marker.writeText("original")
        val manifest = ModelManifest("test", "1", mapOf("speaker.onnx" to "0".repeat(64)))
        val f =
            zip(
                mapOf(
                    "manifest.json" to codec.encodeToString(manifest),
                    "speaker.onnx" to "corrupt",
                )
            )
        try {
            store.install(Uri.fromFile(f)) {}
            fail("Corrupt hash must be rejected")
        } catch (expected: IllegalArgumentException) {
            assertTrue(expected.message!!.contains("Повреждена"))
        } finally {
            f.delete()
        }
        assertEquals("original", marker.readText())
        store.root.deleteRecursively()
        Unit
    }
}
