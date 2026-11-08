package ru.localscribe

import android.app.Application
import java.io.File
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.data.Demos

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], application = Application::class)
class DemoAudioTest {
    @Test
    fun threeSyntheticDemosAreBundledVerifiedAndCopiedWithoutTranscripts() =
        kotlinx.coroutines.runBlocking {
            val context = RuntimeEnvironment.getApplication()
            assertEquals(3, Demos.all.size)
            for (demo in Demos.all) {
                val destination = File(context.cacheDir, demo.id + ".wav")
                Demos.copy(context, demo, destination)
                assertTrue(demo.durationMs in 20000..30000)
                assertTrue(destination.length() > 640000)
                assertEquals(
                    "RIFF",
                    destination.inputStream().use { it.readNBytes(4).decodeToString() },
                )
                assertFalse(
                    context.assets.list("demos")!!.any { it.endsWith("json") || it.endsWith("txt") }
                )
                val pcm = File(context.cacheDir, demo.id + "-pcm.wav")
                var decoded = false
            ru.localscribe.audio.AudioDecoder().decode(destination, pcm) { decoded = it == 1f }
            assertTrue(decoded)
                assertTrue(ru.localscribe.audio.WavFile.isCanonical(pcm))
                assertEquals(demo.durationMs, (pcm.length() - 44) / 32)
                pcm.delete()
                destination.delete()
            }
        }
}
