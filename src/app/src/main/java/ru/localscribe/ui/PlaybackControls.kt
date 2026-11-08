package ru.localscribe.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import ru.localscribe.core.Timecode

@Composable
fun PlaybackControls(
    state: PlaybackState,
    toggle: () -> Unit,
    seek: (Long) -> Unit,
    stop: () -> Unit,
) {
    var dragging by remember(state.recordingId, state.separatedId) { mutableStateOf<Float?>(null) }
    Card(Modifier.fillMaxWidth().padding(horizontal = 20.dp, vertical = 8.dp)) {
        Column(Modifier.padding(12.dp)) {
            Text(if (state.separatedId == null) "Исходная запись" else "Разделённый голос")
            Text(Timecode.subtitle(state.positionMs, '.').substringBeforeLast('.'))
            Slider(
                value =
                    dragging
                        ?: (state.positionMs - state.offsetMs)
                            .toFloat()
                            .coerceIn(0f, state.durationMs.coerceAtLeast(1).toFloat()),
                onValueChange = { dragging = it },
                onValueChangeFinished = {
                    dragging?.let { seek(state.offsetMs + it.toLong()) }
                    dragging = null
                },
                valueRange = 0f..state.durationMs.coerceAtLeast(1).toFloat(),
                enabled = state.ready,
            )
            FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = toggle, enabled = state.ready) {
                    Text(if (state.playing) "Пауза аудио" else "Продолжить аудио")
                }
                TextButton(onClick = stop) { Text("Закрыть плеер") }
            }
        }
    }
}
