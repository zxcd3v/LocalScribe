package ru.localscribe.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import ru.localscribe.core.*

@Composable
fun ParticipantsScreen(
    profiles: List<VoiceProfile>,
    enabled: Boolean,
    dismiss: () -> Unit,
    create: (String) -> Unit,
    update: (VoiceProfile, String, Boolean, Float) -> Unit,
    delete: (String) -> Unit,
    record: (String) -> Unit,
    play: (VoiceSample) -> Unit,
    stop: () -> Unit,
    remove: (String, String) -> Unit,
) {
    var selected by remember { mutableStateOf<String?>(null) }
    var newName by remember { mutableStateOf("") }
    val profile = profiles.firstOrNull { it.id == selected }
    Column(Modifier.widthIn(max = 1000.dp).fillMaxSize().padding(20.dp)) {
        Text("Участники", style = MaterialTheme.typography.headlineSmall)
        Column(
            Modifier.weight(1f).verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Text(
                "Голосовые образцы хранятся на устройстве. Имя по голосу — предположение, не подтверждение личности. Добавляйте только образцы, которые вы прослушали и проверили."
            )
            if (profile == null) {
                OutlinedTextField(
                    newName,
                    { newName = it },
                    label = { Text("Имя нового участника") },
                )
                Button(
                    onClick = {
                        create(newName)
                        newName = ""
                    },
                    enabled = enabled && newName.isNotBlank(),
                ) {
                    Text("Создать профиль")
                }
                profiles.forEach { p ->
                    TextButton(onClick = { selected = p.id }) {
                        Text(
                            "${p.name} · ${p.samples.size} образцов" +
                                if (!p.enabled) " · узнавание выключено" else ""
                        )
                    }
                }
            } else
                key(profile.id, profile.name, profile.threshold, profile.enabled) {
                    var name by remember { mutableStateOf(profile.name) }
                    var automatic by remember { mutableStateOf(profile.enabled) }
                    var threshold by remember { mutableFloatStateOf(profile.threshold) }
                    OutlinedTextField(name, { name = it }, label = { Text("Имя") })
                    SettingSwitch("Автоматически узнавать", automatic, { automatic = it })
                    Text("Порог сходства: %.2f".format(threshold))
                    Slider(
                        threshold,
                        { threshold = it },
                        valueRange = 0.65f..0.95f,
                        enabled = enabled,
                    )
                    Text(
                        "Меньший порог увеличивает риск неверного имени. Отрыв от другого кандидата должен быть не меньше 0,08. Это не вероятность."
                    )
                    Button(
                        onClick = { update(profile, name, automatic, threshold) },
                        enabled = enabled && name.isNotBlank(),
                    ) {
                        Text("Сохранить настройки")
                    }
                    OutlinedButton(onClick = { record(profile.id) }, enabled = enabled) {
                        Text("Записать образец")
                    }
                    Text(
                        "Говорите 5–10 секунд в тихом месте. Завершите запись и нажмите «Сохранить образец». Для существующей записи откройте реплику → «Изменить» или участника → «Добавить образец в профиль»."
                    )
                    profile.samples.forEachIndexed { index, sample ->
                        Text("Образец ${index + 1} · ${sample.durationMs / 1000.0} с")
                        FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            TextButton(
                                onClick = { play(sample) },
                                enabled = enabled && sample.audioPath.isNotBlank(),
                            ) {
                                Text("Слушать")
                            }
                            TextButton(onClick = stop) { Text("Стоп") }
                            TextButton(
                                onClick = { remove(profile.id, sample.id) },
                                enabled = enabled,
                            ) {
                                Text("Удалить образец")
                            }
                        }
                    }
                    TextButton(
                        onClick = {
                            delete(profile.id)
                            selected = null
                        },
                        enabled = enabled,
                    ) {
                        Text("Удалить профиль и образцы")
                    }
                    Text(
                        "Удаление не меняет уже сохранённые имена в разговорах. Для их проверки используйте повторную идентификацию."
                    )
                    TextButton(onClick = { selected = null }) { Text("К списку людей") }
                }
        }
        TextButton(onClick = dismiss) { Text("Закрыть") }
    }
}
