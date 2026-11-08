package ru.localscribe

import android.app.Application
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import ru.localscribe.core.Settings
import ru.localscribe.data.ModelStore
import ru.localscribe.engine.Engines

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], manifest = Config.NONE, application = Application::class)
class AsrWindowTest {
    @Test
    fun oversizedInputIsRejectedBeforeAnyNativeModelLoad() {
        val engines = Engines(ModelStore(RuntimeEnvironment.getApplication()), Settings())
        try {
            val error =
                assertThrows(IllegalArgumentException::class.java) {
                    engines.recognize(FloatArray(240001), 0)
                }
            assertTrue(error.message!!.contains("15 секунд"))
        } finally {
            engines.close()
        }
    }
}
