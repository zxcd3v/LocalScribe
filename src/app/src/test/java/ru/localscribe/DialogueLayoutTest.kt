package ru.localscribe

import android.app.Application
import android.graphics.Bitmap
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import java.io.File
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import ru.localscribe.core.Segment
import ru.localscribe.core.WordStamp
import ru.localscribe.ui.DialogueBubble
import ru.localscribe.ui.SettingSwitch

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w360dp-h1000dp-mdpi", application = Application::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class DialogueLayoutTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()

    @Test
    fun longSettingTextDoesNotOverlapSwitchAtDoubleFontSize() {
        var selected by mutableStateOf(false)
        compose.setContent {
            MaterialTheme {
                CompositionLocalProvider(LocalDensity provides Density(1f, 2f)) {
                    Box(Modifier.width(320.dp).testTag("settings-preview")) {
                        SettingSwitch(
                            "Оценивать эмоциональную окраску",
                            selected,
                            { selected = it },
                            "Оценки модели могут ошибаться.",
                        )
                    }
                }
            }
        }
        val label =
            compose
                .onNodeWithTag("setting-text", useUnmergedTree = true)
                .fetchSemanticsNode()
                .boundsInRoot
        val control =
            compose
                .onNodeWithTag("setting-switch", useUnmergedTree = true)
                .fetchSemanticsNode()
                .boundsInRoot
        assertTrue("Switch overlaps text: $label / $control", label.right + 15 <= control.left)
        assertTrue(control.right <= 320)
        compose.onNodeWithText("Оценивать эмоциональную окраску").performClick()
        assertTrue(selected)
        screenshot("settings-preview", "settings-large-font.png")
    }

    @Test
    fun alternatingSpeakersUseSeparateBubblesAndWrapLongNames() {
        compose.setContent {
            MaterialTheme {
                Column(Modifier.width(320.dp).testTag("dialogue-preview")) {
                    listOf("speaker_1", "speaker_2", "speaker_1").forEachIndexed { i, id ->
                        DialogueBubble(
                            Segment(
                                "s$i",
                                "r",
                                i * 1000L,
                                (i + 1) * 1000L,
                                id,
                                if (i == 0) "Привет!"
                                else if (i == 1) "Привет. Как дела?" else "Всё хорошо.",
                            ),
                            if (i == 1) "Участник с очень длинным именем" else "Участник 1",
                            Color(0xff00A18C),
                            i == 1,
                            active = true,
                            showTags = false,
                            play = {},
                            edit = {},
                            split = {},
                        )
                    }
                }
            }
        }
        val a = compose.onNodeWithTag("bubble-s0").fetchSemanticsNode().boundsInRoot
        val b = compose.onNodeWithTag("bubble-s1").fetchSemanticsNode().boundsInRoot
        val c = compose.onNodeWithTag("bubble-s2").fetchSemanticsNode().boundsInRoot
        assertTrue(a.bottom <= b.top && b.bottom <= c.top)
        assertTrue(a.left < b.left)
        assertEquals(a.left, c.left, .1f)
        assertTrue(b.right <= 320)
        compose.onNodeWithText("Привет!").assertExists()
        compose.onNodeWithText("Привет. Как дела?").assertExists()
        screenshot("dialogue-preview", "dialogue.png")
    }

    @Test
    fun recordingControlsRemainVisibleWhenDialogueIsScrolled() {
        val segments =
            (0 until 100).map {
                Segment("s$it", "r", it * 1000L, (it + 1) * 1000L, "speaker_${it % 2 + 1}", "Реплика $it")
            }
        val transcript =
            ru.localscribe.core.Transcript(
                recording =
                    ru.localscribe.core.Recording(
                        "r",
                        "Разговор",
                        0,
                        "/audio.wav",
                        source = "microphone",
                    ),
                speakers = emptyList(),
                segments = segments,
            )
        val actions = mutableListOf<String>()
        compose.setContent {
            MaterialTheme {
                ResultScreen(
                    t = transcript,
                    active = true,
                    live = ru.localscribe.service.LiveState(recordingId = "r"),
                    showTags = false,
                    start = {},
                    reprocess = {},
                    control = { actions.add(it) },
                    resumeRecording = {},
                    play = {},
                    playOriginal = {},
                    stop = {},
                    edit = { _, _ -> },
                    rename = { _, _ -> },
                    merge = { _, _ -> },
                    split = {},
                    export = {},
                    delete = {},
                    modifier = Modifier.fillMaxSize(),
                    page = ru.localscribe.data.TranscriptPage(transcript, 100, 0),
                )
            }
        }
        compose.onNodeWithTag("transcript-list").performScrollToIndex(90)
        compose.onNodeWithText("Пауза").assertIsDisplayed().performClick()
        compose.onNodeWithText("Завершить").assertIsDisplayed().performClick()
        assertEquals(listOf("PAUSE", "STOP"), actions)
        screenshot("transcript-list", "live-scrolled.png")
    }

    @Test
    fun playingBubbleShowsHighlightAndWholeBubbleCanSeek() {
        val segment = Segment("playing", "r", 1000, 2000, "speaker_1", "Проверяем переход к аудио",
            words = listOf(WordStamp("Проверяем", 1000), WordStamp("переход", 1250),
                WordStamp("к", 1500), WordStamp("аудио", 1750)))
        var clicked = false
        compose.setContent {
            MaterialTheme {
                Column(Modifier.width(320.dp)) {
                    ru.localscribe.ui.PlaybackControls(
                        ru.localscribe.ui.PlaybackState(
                            "r",
                            1200,
                            durationMs = 30000,
                            ready = true,
                            playing = true,
                        ),
                        {},
                        {},
                        {},
                    )
                    DialogueBubble(
                        segment,
                        "Иван · имя по голосу",
                        Color(0xff00A18C),
                        false,
                        active = false,
                        showTags = false,
                        play = { clicked = true },
                        edit = {},
                        split = {},
                        playback = ru.localscribe.ui.PlaybackState("r", 1200, ready = true, playing = true),
                    )
                }
            }
        }
        compose.onNodeWithText("Сейчас звучит").assertDoesNotExist()
        compose.onNodeWithText(segment.text).assertExists()
        compose.onNodeWithTag("bubble-playing").performClick()
        assertTrue(clicked)
        screenshot("bubble-playing", "playback.png")
    }

    @Test
    fun analysisLabelsOpenExplanationAndCanBeHidden() {
        var show by mutableStateOf(true)
        compose.setContent {
            MaterialTheme {
                DialogueBubble(
                    Segment(
                        "label",
                        "r",
                        5000,
                        8000,
                        text = "Проверка",
                        acoustics =
                            ru.localscribe.core.Acoustics(
                                finalRiseSemitones = 4.0,
                                pauseBeforeMs = 2000,
                            ),
                    ),
                    "Ваня",
                    Color.Blue,
                    false,
                    false,
                    show,
                    {},
                    {},
                    {},
                )
            }
        }
        compose.onNodeWithText("Тон повышается").performClick()
        compose.onNodeWithText("Измерение F0", substring = true).assertExists()
        compose.onNodeWithText("Понятно").performClick()
        screenshot("bubble-label", "analysis-labels.png")
        compose.runOnIdle { show = false }
        compose.onNodeWithText("Тон повышается").assertDoesNotExist()
    }

    @Test
    fun participantsAllowExplicitProfileCreationAndEditingAtLargeFont() {
        var created = ""
        val profile = ru.localscribe.core.VoiceProfile("v", "Ваня", "", emptyList(), 0)
        compose.setContent {
            MaterialTheme {
                CompositionLocalProvider(LocalDensity provides Density(1f, 2f)) {
                    ru.localscribe.ui.ParticipantsScreen(
                        listOf(profile),
                        true,
                        {},
                        { created = it },
                        { _, _, _, _ -> },
                        {},
                        {},
                        {},
                        {},
                        { _, _ -> },
                    )
                }
            }
        }
        compose.onNodeWithText("Имя нового участника").performTextInput("Иван")
        compose.onNodeWithText("Создать профиль").performScrollTo().performClick()
        assertEquals("Иван", created)
        compose.onNodeWithText("Ваня · 0 образцов").performScrollTo().performClick()
        compose.onNodeWithText("Автоматически узнавать").performScrollTo().assertIsDisplayed()
        screenshot("participants", "participants-large-font.png")
        compose.onNodeWithText("Записать образец").performScrollTo().assertIsDisplayed()
    }

    @Test
    fun failedStartupOffersMicrophoneRetryWithoutProcessingMissingAudio() {
        showStartupResult("capture_empty", false)
        compose.onNodeWithText("Начать запись заново").assertIsDisplayed()
        compose.onNodeWithText("Обработать файл").assertDoesNotExist()
        compose.onNodeWithText("Повторная обработка").assertDoesNotExist()
        compose.onNodeWithText("Слушать").assertDoesNotExist()
        compose.onNodeWithText("Сохранить исходное аудио").assertDoesNotExist()
        screenshot("startup-screen", "capture-retry.png")
    }

    @Test
    fun preparingMicrophoneShowsLocalPreparationAndDisablesPause() {
        showStartupResult("capture_pending", true)
        compose.onNodeWithText("Пауза").assertIsNotEnabled()
        compose.onNodeWithText("Завершить").assertIsEnabled()
        compose
            .onNodeWithText("Подготовка выполняется на устройстве. Микрофон ещё не записывает.")
            .assertIsDisplayed()
        compose.onNodeWithText("Ожидание речи…").assertDoesNotExist()
        compose.onNodeWithText("Остановить обработку").assertDoesNotExist()
        screenshot("startup-screen", "capture-preparation.png")
    }

    private fun showStartupResult(state: String, preparing: Boolean) {
        compose.setContent {
            MaterialTheme {
                ResultScreen(
                    t =
                        ru.localscribe.core.Transcript(
                            recording =
                                ru.localscribe.core.Recording(
                                    "r",
                                    "Разговор",
                                    0,
                                    "/missing.wav",
                                    source = "microphone",
                                    state = state,
                                ),
                            speakers = emptyList(),
                            segments = emptyList(),
                        ),
                    active = preparing,
                    live =
                        if (preparing)
                            ru.localscribe.service.LiveState(recordingId = "r", preparing = true)
                        else ru.localscribe.service.LiveState(),
                    showTags = false,
                    start = {},
                    reprocess = {},
                    control = {},
                    resumeRecording = {},
                    play = {},
                    playOriginal = {},
                    stop = {},
                    edit = { _, _ -> },
                    rename = { _, _ -> },
                    merge = { _, _ -> },
                    split = {},
                    export = {},
                    delete = {},
                    modifier = Modifier.fillMaxSize().testTag("startup-screen"),
                )
            }
        }
    }

    private fun screenshot(tag: String, name: String) {
        val dir = File("build/reports/dialogue-ui").apply { mkdirs() }
        compose.runOnIdle {
            val view = compose.activity.window.decorView
            val bitmap = Bitmap.createBitmap(view.width, view.height, Bitmap.Config.ARGB_8888)
            view.draw(android.graphics.Canvas(bitmap))
            File(dir, name).outputStream().use {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)
            }
            bitmap.recycle()
        }
    }
}
