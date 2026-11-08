package ru.localscribe.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.FilterChip
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import ru.localscribe.core.ProcessingPreset
import ru.localscribe.core.Settings

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun SettingsPresets(settings: Settings, onChange: (Settings) -> Unit) {
    Column(Modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(4.dp)) {
        Text("Профиль обработки", style = MaterialTheme.typography.titleMedium)
        FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            ProcessingPreset.entries.forEach { preset ->
                FilterChip(selected = preset.matches(settings),
                    onClick = { onChange(preset.applyTo(settings)) },
                    label = { Text(preset.title) })
            }
        }
        ProcessingPreset.entries.firstOrNull { it.matches(settings) }?.let { preset ->
            Text(preset.description, style = MaterialTheme.typography.bodySmall)
        }
        Text("Профили меняют скорость и дополнительные виды анализа. Шумоподавление не применяется.",
            style = MaterialTheme.typography.bodySmall)
    }
}
