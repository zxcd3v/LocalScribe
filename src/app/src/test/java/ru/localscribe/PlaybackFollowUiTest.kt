package ru.localscribe

import android.app.Application
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import ru.localscribe.core.*
import ru.localscribe.service.LiveState
import ru.localscribe.ui.PlaybackState

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w360dp-h1000dp-mdpi", application = Application::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class PlaybackFollowUiTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun userDragPausesFollowAndReturnButtonRestoresIt() {
        val rows = (0..29).map { i -> Segment("s$i", "r", i * 1000L, (i + 1) * 1000L,
            "speaker_${i % 2 + 1}", "Реплика $i. " + "Длинный текст диалога. ".repeat(5)) }
        val transcript = Transcript(Recording("r", "Разговор", 0, "", state = "done"),
            emptyList(), rows)
        var playback by mutableStateOf(PlaybackState("r", positionMs = 15500,
            durationMs = 30000, separatedId = "s15", ready = true, playing = true))
        compose.setContent {
            MaterialTheme {
                ResultScreen(transcript, false, LiveState(), false,
                    {}, {}, {}, {}, {}, {}, {}, { _, _ -> }, { _, _ -> }, { _, _ -> },
                    {}, {}, {}, Modifier.fillMaxSize(), playback = playback)
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("bubble-s15").assertIsDisplayed()
        compose.onNodeWithText("Вернуться к воспроизведению").assertDoesNotExist()
        compose.onNodeWithTag("transcript-list").performTouchInput { swipeDown() }
        compose.onNodeWithText("Вернуться к воспроизведению").assertIsDisplayed()
        compose.runOnIdle { playback = playback.copy(positionMs = 25500, separatedId = "s25") }
        compose.onNodeWithTag("bubble-s25").assertDoesNotExist()
        compose.onNodeWithText("Вернуться к воспроизведению").performClick()
        compose.waitForIdle()
        compose.onNodeWithTag("bubble-s25").assertIsDisplayed()
        compose.onNodeWithText("Вернуться к воспроизведению").assertDoesNotExist()
    }
}
