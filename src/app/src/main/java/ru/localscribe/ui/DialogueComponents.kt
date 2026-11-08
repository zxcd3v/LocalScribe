package ru.localscribe.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.unit.dp
import ru.localscribe.core.Segment
import ru.localscribe.core.Timecode

/** Text gets the remaining width; the switch has its own space and one accessible click target. */
@Composable
fun SettingSwitch(
    title: String,
    checked: Boolean,
    onChange: (Boolean) -> Unit,
    description: String? = null,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier
            .fillMaxWidth()
            .heightIn(min = 64.dp)
            .toggleable(value = checked, role = Role.Switch, onValueChange = onChange)
            .padding(vertical = 10.dp),
        horizontalArrangement = Arrangement.spacedBy(16.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(
            Modifier.weight(1f).testTag("setting-text"),
            verticalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            Text(title, style = MaterialTheme.typography.bodyLarge)
            description?.let {
                Text(
                    it,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
        Switch(
            checked = checked,
            onCheckedChange = null,
            modifier = Modifier.testTag("setting-switch"),
        )
    }
}

@Composable
fun DialogueBubble(
    segment: Segment,
    name: String,
    color: Color,
    alignEnd: Boolean,
    active: Boolean,
    showTags: Boolean,
    play: (Segment) -> Unit,
    edit: () -> Unit,
    split: () -> Unit,
    highlighted: Boolean = false,
    parts: List<Segment> = listOf(segment),
    playback: PlaybackState = PlaybackState(),
) {
    val s = segment
    val spoken = remember(parts) { ru.localscribe.core.DialogueTurns.spoken(parts) }
    val wordIndex = if (playback.ready && playback.recordingId == s.recordingId &&
        (playback.separatedId == null || parts.any { it.id == playback.separatedId }))
        spoken.active(playback.positionMs) else -1
    val wordColor = MaterialTheme.colorScheme.primaryContainer
    val highlightedText = remember(spoken, wordIndex, wordColor) {
        buildAnnotatedString {
            append(spoken.text.ifBlank { "[Речь обнаружена, текст не распознан]" })
            spoken.words.getOrNull(wordIndex)?.let {
                addStyle(SpanStyle(background = wordColor), it.from, it.until)
            }
        }
    }
    var labelInfo by remember { mutableStateOf<ru.localscribe.core.SpeechLabel?>(null) }
    var details by rememberSaveable(s.id) { mutableStateOf(false) }
    Box(
        Modifier.fillMaxWidth(),
        contentAlignment = if (alignEnd) Alignment.CenterEnd else Alignment.CenterStart,
    ) {
        Surface(
            modifier =
                Modifier.fillMaxWidth(0.94f)
                    .widthIn(max = 680.dp)
                    .testTag("bubble-${s.id}")
                    .clickable(enabled = !active) { play(s) },
            shape =
                RoundedCornerShape(
                    topStart = if (alignEnd) 20.dp else 4.dp,
                    topEnd = if (alignEnd) 4.dp else 20.dp,
                    bottomStart = 20.dp,
                    bottomEnd = 20.dp,
                ),
            color =
                lerp(
                    MaterialTheme.colorScheme.surfaceContainer,
                    color,
                    0.10f,
                ),
        ) {
            Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    Box(Modifier.size(8.dp).background(color, RoundedCornerShape(50)))
                    Text(name, Modifier.weight(1f), style = MaterialTheme.typography.labelLarge)
                }
                Text(
                    highlightedText,
                    style = MaterialTheme.typography.bodyLarge,
                )
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    TextButton(
                        onClick = { play(s) },
                        enabled = !active,
                        contentPadding = PaddingValues(0.dp),
                    ) {
                        Text("${stamp(s.startMs)} — ${stamp(s.endMs)}")
                    }
                    if (s.status == "preliminary")
                        Text("Распознаётся…", style = MaterialTheme.typography.labelSmall)
                    else if (s.status == "corrected")
                        Text("Исправлено", style = MaterialTheme.typography.labelSmall)
                }
                if (s.speakerId == null || s.speakerProvisional)
                    Text("Предварительное назначение", style = MaterialTheme.typography.labelSmall)
                if (s.overlap.startsWith("detected"))
                    Text(
                        if (s.separation != null)
                            "Одновременная речь · канал ${s.separation!!.channel + 1}"
                        else "Одновременная речь · нужна повторная обработка",
                        style = MaterialTheme.typography.labelMedium,
                    )
                if (showTags) {
                    FlowRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                        ru.localscribe.core.SpeechLabels.forSegment(s).forEach { label ->
                            AssistChip(
                                onClick = { labelInfo = label },
                                label = { Text(label.title) },
                            )
                        }
                    }
                }
                FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    TextButton(onClick = { details = !details }) {
                        Text(if (details) "Скрыть детали" else "Детали")
                    }
                    if (!active) {
                        TextButton(onClick = edit) { Text("Изменить") }
                        TextButton(onClick = split) { Text("Другой участник") }
                    }
                }
                if (details) {
                    if (parts.size > 1 && showTags) parts.forEach { part ->
                        val labels = ru.localscribe.core.SpeechLabels.forSegment(part)
                        if (labels.isNotEmpty()) Text(
                            "${stamp(part.startMs)} — ${stamp(part.endMs)} · ${labels.joinToString { it.title }}",
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                    s.speakerSimilarity?.let {
                        Text(
                            "Сходство голоса: %.2f. Это не вероятность.".format(it),
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                    s.acoustics?.let { a ->
                        Text(
                            buildString {
                                a.f0MedianHz?.let { append("F0 %.0f Гц · ".format(it)) }
                                append("%.1f dBFS".format(a.rmsDbfs))
                                a.relativeDb?.let { append(" · к норме %+.1f дБ".format(it)) }
                                a.finalRiseSemitones?.let {
                                    append(" · конец фразы %+.1f полутонов".format(it))
                                }
                                a.wordsPerMinute?.let { append(" · %.0f слов/мин".format(it)) }
                                if (a.pauseBeforeMs >= 1500) append(" · …")
                            },
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                    if (showTags)
                        s.emotion?.let { e ->
                            e.confidence?.let {
                                Text(
                                    "Оценка модели: %.2f; не откалибрована.".format(it),
                                    style = MaterialTheme.typography.bodySmall,
                                )
                            }
                        }
                    if (s.separation != null) {
                        Text(
                            "Разделённый голос может содержать артефакты. Исходное аудио сохранено.",
                            style = MaterialTheme.typography.bodySmall,
                        )
                        TextButton(
                            onClick = { play(s.copy(separatedAudioPath = "")) },
                            enabled = !active,
                        ) {
                            Text("Слушать исходный микс")
                        }
                    }
                    if (showTags)
                        Text(
                            "Смех, плач, крик, шёпот, неуверенность, удивление и ударения слов: отдельные проверенные классификаторы в этом пакете отсутствуют.",
                            style = MaterialTheme.typography.bodySmall,
                        )
                    Text(
                        "Границы реплики приблизительны. Confidence ASR недоступен.",
                        style = MaterialTheme.typography.bodySmall,
                    )
                }
            }
        }
    }
    labelInfo?.let { label ->
        AlertDialog(
            onDismissRequest = { labelInfo = null },
            title = { Text(label.title) },
            text = {
                Text(
                    if (label.title == "…") label.detail else "${Timecode.subtitle(label.startMs, '.')} — ${Timecode.subtitle(label.endMs, '.')}\n${label.detail}"
                )
            },
            confirmButton = { TextButton(onClick = { labelInfo = null }) { Text("Понятно") } },
        )
    }
}

private fun stamp(ms: Long) = Timecode.subtitle(ms, '.').substringBeforeLast('.')
