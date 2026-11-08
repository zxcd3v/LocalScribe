package ru.localscribe.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun NotesDialog(note: NoteState, onChange: (String) -> Unit, onDismiss: () -> Unit) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Конспект") },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text("Личные заметки. Заголовок: # Тема. Список: - пункт. Изменения сохраняются автоматически.")
                OutlinedTextField(
                    value = note.text,
                    onValueChange = onChange,
                    modifier = Modifier.fillMaxWidth().heightIn(min = 220.dp, max = 360.dp),
                    label = { Text("Текст конспекта") },
                    minLines = 8,
                )
                Text(when {
                    note.saving -> "Сохранение…"
                    note.error != null -> "Не сохранено: ${note.error}"
                    else -> "Сохранено на устройстве"
                }, color = if (note.error != null) MaterialTheme.colorScheme.error
                    else MaterialTheme.colorScheme.onSurfaceVariant)
                if (note.error != null)
                    TextButton(onClick = { onChange(note.text) }) { Text("Повторить сохранение") }
            }
        },
        confirmButton = { TextButton(onClick = onDismiss) { Text("Закрыть") } },
    )
}
