package ru.localscribe

import android.app.Application
import java.io.File
import kotlinx.coroutines.*
import org.junit.Assert.*
import org.junit.Assume.assumeNotNull
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowStatFs
import ru.localscribe.core.*
import ru.localscribe.data.*

/**
 * Uses the actual APK model assets. Lightweight builds explicitly skip this full-distribution test.
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], application = Application::class)
class BundledModelsTest {
    @Test
    fun realBundledPackSupportsFirstLaunchRetryDeletionAndRestore(): Unit = runBlocking {
        val context = RuntimeEnvironment.getApplication()
        val store = ModelStore(context)
        val bundle = store.bundledInfo()
        assumeNotNull(bundle)
        assertTrue(bundle!!.unpackedBytes > 500_000_000L)
        ShadowStatFs.registerStats(context.filesDir, 1_000_000, 900_000, 900_000)
        store.root.deleteRecursively()
        store.preferences.edit().clear().commit()
        val stage = File(context.filesDir, "models-stage").apply { mkdirs() }
        File(stage, "interrupted.tmp").writeText("left by a killed process")
        val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
        val setup = ModelPreparation(store, scope)
        try {
            setup.prepare().join()
            assertEquals(setup.state.value.error, "ready", setup.state.value.phase)
            assertEquals(bundle.manifest.id, setup.state.value.modelId)
            assertEquals(bundle.manifest, store.manifest())
            assertFalse(stage.exists())
            store.verify(Settings(quality = Quality.BALANCED))
            assertTrue(File(store.root, "advanced/emo.int8.onnx").length() > 300_000_000L)
            assertTrue(File(store.root, "advanced/mossformer2.onnx").length() > 240_000_000L)
            assertTrue(File(store.root, "gigaam-v3/encoder.int8.onnx").length() > 100_000_000L)

            // A second launch must not rewrite 530 MB of weights.
            val weights = File(store.root, "speaker.onnx")
            assertTrue(weights.setLastModified(1000L))
            setup.prepare().join()
            assertEquals(1000L, weights.lastModified())

            // A pre-v3 automatic installation is upgraded, while a manually selected pack stays
            // intact.
            val manifestFile = File(store.root, "manifest.json")
            val old = bundle.manifest.copy(version = "2026-10-31-previous")
            manifestFile.writeText(codec.encodeToString(old))
            store.preferences.edit().putBoolean("manual_models", true).commit()
            setup.prepare().join()
            assertEquals(old, store.manifest())
            store.preferences.edit().putBoolean("manual_models", false).commit()
            setup.prepare().join()
            assertEquals(setup.state.value.error, "ready", setup.state.value.phase)
            assertEquals(bundle.manifest, store.manifest())
            assertTrue(weights.setLastModified(1000L))

            val retired = File(store.root, "offline-small/encoder.int8.onnx")
            retired.parentFile!!.mkdirs()
            retired.writeText("retired weights")
            manifestFile.writeText(codec.encodeToString(old.copy(
                id = "ru-zipformer-tone-wespeaker",
                files = old.files + ("offline-small/encoder.int8.onnx" to "0".repeat(64)),
            )))
            store.preferences.edit().putBoolean("manual_models", true).commit()
            setup.prepare().join()
            assertEquals(bundle.manifest, store.manifest())
            assertFalse(retired.exists())
            assertTrue(weights.setLastModified(1000L))

            // Insufficient space cannot destroy the previous working installation.
            ShadowStatFs.registerStats(context.filesDir, 1_000_000, 0, 0)
            setup.prepare(force = true).join()
            assertEquals("error", setup.state.value.phase)
            assertTrue(setup.state.value.error!!.contains("освободить"))
            assertEquals(bundle.manifest.id, store.manifest()!!.id)
            assertEquals(1000L, weights.lastModified())

            ShadowStatFs.registerStats(context.filesDir, 1_000_000, 900_000, 900_000)
            store.delete()
            setup.refresh()
            setup.prepare().join()
            assertFalse(store.root.exists())
            assertNull(setup.state.value.modelId)
            assertTrue(setup.state.value.hasBundledModels)
            setup.prepare(force = true).join()
            assertEquals(setup.state.value.error, "ready", setup.state.value.phase)
            assertEquals(bundle.manifest, store.manifest())
        } finally {
            scope.cancel()
            store.root.deleteRecursively()
            store.preferences.edit().clear().commit()
        }
    }
}
