package ru.localscribe

import android.Manifest
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.interaction.collectIsDraggedAsState
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import ru.localscribe.core.*
import ru.localscribe.data.PreparationState
import ru.localscribe.data.ExtraModels
import ru.localscribe.data.ModelStatus
import ru.localscribe.data.TranscriptPage
import ru.localscribe.data.TranscriptQuery
import ru.localscribe.service.LiveState
import ru.localscribe.ui.DialogueBubble
import ru.localscribe.ui.PlaybackControls
import ru.localscribe.ui.PlaybackState
import ru.localscribe.ui.ScribeViewModel
import ru.localscribe.ui.SettingSwitch
import ru.localscribe.ui.SummaryState
import ru.localscribe.ui.RecordingWaveformView
import ru.localscribe.ui.NotesDialog
import ru.localscribe.ui.SettingsPresets

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent { ScribeUi() }
    }
}

private fun time(ms: Long) = Timecode.subtitle(ms, '.').substringBeforeLast('.')

private fun quality(q: Quality) =
    when (q) {
        Quality.FAST -> "Быстрый"
        Quality.BALANCED -> "Сбалансированный"
        Quality.ACCURATE -> "Точный"
    }

private fun state(s: String) =
    when (s) {
        "imported" -> "Готово к обработке"
        "capture_pending" -> "Подготовка микрофона и моделей"
        "capture_empty" -> "Запись ещё не началась"
        "audio_missing" -> "Аудио недоступно"
        "recording" -> "Идёт запись"
        "paused" -> "Пауза"
        "processing" -> "Распознавание"
        "decoding" -> "Декодирование"
        "done" -> "Обработано"
        "recorded" -> "Записано"
        "finishing" -> "Завершение"
        "cancelled" -> "Остановлено"
        "error" -> "Ошибка"
        "interrupted" -> "Прервано системой"
        else -> s
    }

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ScribeUi(vm: ScribeViewModel = viewModel()) {
    val playback by vm.playback.collectAsStateWithLifecycle()
    val profiles by vm.profiles.collectAsStateWithLifecycle()
    var profilesOpen by remember { mutableStateOf(false) }
    var demosOpen by remember { mutableStateOf(false) }
    val records by vm.records.collectAsStateWithLifecycle()
    val selected by vm.selected.collectAsStateWithLifecycle()
    val t by vm.transcript.collectAsStateWithLifecycle()
    val transcriptPage by vm.page.collectAsStateWithLifecycle()
    val transcriptQuery by vm.query.collectAsStateWithLifecycle()
    val settings by vm.settings.collectAsStateWithLifecycle()
    val message by vm.message.collectAsStateWithLifecycle()
    val busy by vm.busy.collectAsStateWithLifecycle()
    val models by vm.models.collectAsStateWithLifecycle()
    val preparation by vm.preparation.collectAsStateWithLifecycle()
    val active by vm.active.collectAsStateWithLifecycle()
    val live by vm.live.collectAsStateWithLifecycle()
    val extraModels by vm.extraModels.collectAsStateWithLifecycle()
    val bundleBytes by vm.bundleBytes.collectAsStateWithLifecycle()
    val summary by vm.summary.collectAsStateWithLifecycle()
    val textEditing by vm.textEditing.collectAsStateWithLifecycle()
    val rangePreview by vm.rangePreview.collectAsStateWithLifecycle()
    val notes by vm.notes.collectAsStateWithLifecycle()
    val pss by vm.pssMiB.collectAsStateWithLifecycle()
    val processingStage by ru.localscribe.service.JobState.processingStage.collectAsStateWithLifecycle()
    val processingProgress by ru.localscribe.service.JobState.processingProgress.collectAsStateWithLifecycle()
    val mode by vm.darkMode.collectAsStateWithLifecycle()
    var settingsOpen by rememberSaveable { mutableStateOf(false) }
    val context = LocalContext.current
    val dark =
        when (mode) {
            "dark" -> true
            "light" -> false
            else -> isSystemInDarkTheme()
        }
    val colors =
        if (Build.VERSION.SDK_INT >= 31) {
            if (dark) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        } else if (dark) darkColorScheme() else lightColorScheme()
    val importAudio =
        rememberLauncherForActivityResult(ActivityResultContracts.OpenDocument()) {
            it?.let(vm::importAudio)
        }
    val importModel =
        rememberLauncherForActivityResult(ActivityResultContracts.OpenDocument()) {
            it?.let(vm::install)
        }
    val export =
        rememberLauncherForActivityResult(
            ActivityResultContracts.CreateDocument("application/json")
        ) {
            it?.let { uri -> vm.export(uri, "json") }
        }
    var enrollmentId by rememberSaveable { mutableStateOf<String?>(null) }
    var resumeId by rememberSaveable { mutableStateOf<String?>(null) }
    val permissions =
        rememberLauncherForActivityResult(ActivityResultContracts.RequestMultiplePermissions()) {
            result ->
            if (result[Manifest.permission.RECORD_AUDIO] == true) {
                val id = resumeId
                resumeId = null
                if (id == null) vm.record(enrollmentId) else vm.resumeRecording(id)
                enrollmentId = null
            } else vm.message.value = "Для записи требуется разрешение микрофона"
        }
    val snackbar = remember { SnackbarHostState() }
    val nested = profilesOpen || settingsOpen || selected != null
    val processing = active != null && active == selected && live.recordingId != selected
    val navigateBack: () -> Unit = {
        when {
            profilesOpen -> {
                profilesOpen = false
                vm.stopPlayback()
            }
            settingsOpen -> settingsOpen = false
            else -> vm.select(null)
        }
    }
    BackHandler(enabled = nested, onBack = navigateBack)
    LaunchedEffect(message) {
        if (message.isNotEmpty()) {
            snackbar.showSnackbar(message)
            if (vm.message.value == message) vm.message.value = ""
        }
    }
    DisposableEffect(Unit) { onDispose { vm.stopPlayback() } }
    MaterialTheme(colorScheme = colors) {
        Scaffold(
            snackbarHost = { SnackbarHost(snackbar) },
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            if (profilesOpen) "Участники"
                            else if (settingsOpen) "Менеджер моделей"
                            else if (processing) "Обработка"
                            else if (selected != null) "Расшифровка" else "LocalScribe"
                        )
                    },
                    navigationIcon = {
                        if (nested)
                            TextButton(onClick = navigateBack) {
                                Text("Назад")
                            }
                    },
                    actions = {
                        if (!settingsOpen && !profilesOpen)
                            TextButton(onClick = { settingsOpen = true }) { Text("Настройки") }
                    },
                )
            },
        ) { padding ->
            Box(Modifier.padding(padding).fillMaxSize(), contentAlignment = Alignment.TopCenter) {
                val width = Modifier.widthIn(max = 1000.dp).fillMaxWidth()
                if (profilesOpen)
                    ru.localscribe.ui.ParticipantsScreen(
                        profiles,
                        !busy && active == null,
                        dismiss = {
                            profilesOpen = false
                            vm.stopPlayback()
                        },
                        create = vm::createProfile,
                        update = vm::updateProfile,
                        delete = vm::forgetVoice,
                        record = { id ->
                            profilesOpen = false
                            enrollmentId = id
                            resumeId = null
                            val required = mutableListOf(Manifest.permission.RECORD_AUDIO)
                            if (Build.VERSION.SDK_INT >= 33)
                                required += Manifest.permission.POST_NOTIFICATIONS
                            permissions.launch(required.toTypedArray())
                        },
                        play = vm::playSample,
                        stop = vm::stopPlayback,
                        remove = vm::removeSample,
                    )
                else if (settingsOpen)
                    SettingsScreen(
                        settings,
                        vm::update,
                        models,
                        busy || active != null,
                        {
                            importModel.launch(
                                arrayOf("application/zip", "application/octet-stream")
                            )
                        },
                        vm::deleteModels,
                        mode,
                        vm::theme,
                        preparation,
                        vm::prepareModels,
                        width,
                        extraModels,
                        bundleBytes,
                        vm::manageExtra,
                    )
                else if (
                    selected == null &&
                        models == null &&
                        (preparation.running || preparation.phase == "error")
                )
                    PreparationScreen(
                        preparation,
                        vm::prepareModels,
                        { settingsOpen = true },
                        width,
                    )
                else if (selected == null)
                    LazyColumn(
                        width.padding(horizontal = 20.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        item {
                            Text(
                                "Разговор остаётся на устройстве",
                                style = MaterialTheme.typography.headlineMedium,
                            )
                            Spacer(Modifier.height(8.dp))
                            Text(
                                "Русский и английский для файлов · локальные модели",
                                style = MaterialTheme.typography.bodyMedium,
                            )
                        }
                        if (models == null)
                            item {
                                Card(Modifier.fillMaxWidth()) {
                                    Column(
                                        Modifier.padding(20.dp),
                                        verticalArrangement = Arrangement.spacedBy(10.dp),
                                    ) {
                                        Text(
                                            if (preparation.hasBundledModels)
                                                "Модели удалены. Их можно восстановить из приложения без интернета."
                                            else
                                                "Установите пакет моделей в настройках, чтобы начать распознавание."
                                        )
                                        Button(
                                            onClick = {
                                                if (preparation.hasBundledModels) vm.prepareModels()
                                                else settingsOpen = true
                                            },
                                            enabled = !busy,
                                        ) {
                                            Text(
                                                if (preparation.hasBundledModels)
                                                    "Подготовить распознавание"
                                                else "Открыть настройки"
                                            )
                                        }
                                    }
                                }
                            }
                        item {
                            FlowRow(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                Button(
                                    onClick = {
                                        resumeId = null
                                        enrollmentId = null
                                        val p = mutableListOf(Manifest.permission.RECORD_AUDIO)
                                        if (Build.VERSION.SDK_INT >= 33)
                                            p += Manifest.permission.POST_NOTIFICATIONS
                                        permissions.launch(p.toTypedArray())
                                    },
                                    enabled = models != null && !busy && active == null,
                                ) {
                                    Text("Записать")
                                }
                                OutlinedButton(
                                    onClick = {
                                        importAudio.launch(
                                            arrayOf(
                                                "audio/*",
                                                "application/ogg",
                                                "application/octet-stream",
                                            )
                                        )
                                    },
                                    enabled = !busy,
                                ) {
                                    Text("Импорт аудио")
                                }
                            }
                        }
                        item {
                            TextButton(onClick = { demosOpen = !demosOpen }) { Text("Демо-записи") }
                        }
                        if (demosOpen)
                            item {
                                Column {
                                    Text(
                                        "Три синтетических диалога по 20–30 секунд. Задано 2 участника; голоса разделяет модель. Нажатие запускает распознавание, готового текста внутри нет."
                                    )
                                    ru.localscribe.data.Demos.all.forEach { demo ->
                                        OutlinedButton(
                                            onClick = { vm.demo(demo) },
                                            enabled = models != null && !busy && active == null,
                                        ) {
                                            Text("${demo.title} · ${demo.durationMs / 1000} с")
                                        }
                                    }
                                }
                            }
                        item {
                            TextButton(onClick = { profilesOpen = true }) {
                                Text("Участники (${profiles.size})")
                            }
                        }
                        if (busy) item { LinearProgressIndicator(Modifier.fillMaxWidth()) }
                        if (records.isEmpty())
                            item {
                                Text(
                                    "Здесь появятся ваши записи и расшифровки.",
                                    Modifier.padding(vertical = 32.dp),
                                )
                            }
                        items(records, key = { it.id }) { r ->
                            Card(
                                onClick = { vm.select(r.id) },
                                modifier = Modifier.fillMaxWidth(),
                            ) {
                                Column(Modifier.padding(18.dp)) {
                                    Text(r.title, style = MaterialTheme.typography.titleMedium)
                                    Text(
                                        "${time(r.durationMs)} · ${state(r.state)} · ${quality(r.settings.quality)}",
                                        style = MaterialTheme.typography.bodySmall,
                                    )
                                    r.error?.let {
                                        Text(
                                            it,
                                            color = MaterialTheme.colorScheme.error,
                                            maxLines = 2,
                                        )
                                    }
                                }
                            }
                        }
                        item { Spacer(Modifier.height(24.dp)) }
                    }
                else if (processing)
                    t?.recording?.takeIf { it.id == selected }?.let {
                        ProcessingScreen(it, processingStage, processingProgress, pss, vm::cancel, width)
                    }
                else
                    t?.let { transcript ->
                        ResultScreen(
                            transcript,
                            active == selected || textEditing?.recordingId == selected,
                            live,
                            settings.showInterpretations,
                            { vm.startProcessing(transcript.recording.id) },
                            { vm.reprocess(transcript.recording.id) },
                            vm::control,
                            {
                                resumeId = transcript.recording.id
                                permissions.launch(arrayOf(Manifest.permission.RECORD_AUDIO))
                            },
                            vm::play,
                            vm::playOriginal,
                            vm::stopPlayback,
                            vm::edit,
                            vm::rename,
                            vm::merge,
                            vm::split,
                            { _ -> export.launch("dialogue.json") },
                            { vm.delete(transcript.recording.id) },
                            width,
                            editTurn = vm::editTurn,
                            splitTurn = vm::splitTurn,
                            assignTurn = vm::assignTurnProfile,
                            page = transcriptPage,
                            search = transcriptQuery,
                            onSearch = vm::search,
                            onFilter = vm::filter,
                            onPage = vm::page,
                            onFollowLatest = vm::followLatest,
                            playback = playback,
                            togglePlayback = vm::togglePlayback,
                            seekPlayback = vm::seekPlayback,
                            rememberVoice = vm::rememberVoice,
                            profiles = profiles,
                            assignProfile = vm::assignProfile,
                            addSample = vm::addSample,
                            reidentify = vm::reidentify,
                            openProfiles = { profilesOpen = true },
                            changeTags = { vm.update(settings.copy(showInterpretations = it)) },
                            pssMiB = pss,
                            summarize = { vm.summarize(transcript.recording.id) },
                            summaryEnabled = !busy && active == null,
                            summaryRunning = (summary as? SummaryState.Running)
                                ?.takeIf { it.recordingId == transcript.recording.id },
                            editTranscript = if (extraModels.any { it.group == ExtraModels.QWEN } &&
                                transcript.recording.state == "done" &&
                                transcript.recording.settings.fileAsr != FileAsr.WHISPER_EN)
                                ({ vm.editTranscript(transcript.recording.id) }) else null,
                            editorState = textEditing?.takeIf { it.recordingId == transcript.recording.id },
                            previewRange = if (transcript.recording.state == "done")
                                ({ start, end -> vm.previewRange(transcript.recording.id, start, end) }) else null,
                            rangePreview = rangePreview?.takeIf { it.recordingId == transcript.recording.id },
                            acceptRangePreview = vm::applyRangePreview,
                            dismissRangePreview = vm::dismissRangePreview,
                            cancelOptionalProcessing = vm::cancelOptionalProcessing,
                            openNotes = { vm.openNotes(transcript.recording.id) },
                            onPlaybackPage = vm::followPlaybackPosition,
                        )
                    }
                notes?.let { NotesDialog(it, vm::updateNote, vm::dismissNotes) }
                (summary as? SummaryState.Ready)?.takeIf { it.recordingId == selected }?.let { result ->
                    AlertDialog(
                        onDismissRequest = vm::dismissSummary,
                        title = { Text("Итог разговора") },
                        text = {
                            Column(Modifier.heightIn(max = 320.dp).verticalScroll(rememberScrollState())) {
                                Text("Ключевые цитаты из всей записи с таймкодами.")
                                Spacer(Modifier.height(8.dp))
                                androidx.compose.foundation.text.selection.SelectionContainer { Text(result.text) }
                            }
                        },
                        confirmButton = { TextButton(onClick = vm::dismissSummary) { Text("Закрыть") } },
                    )
                }
            }
        }
    }
}

@Composable
private fun ProcessingScreen(
    recording: Recording,
    stage: String,
    progress: Float,
    pssMiB: Int?,
    cancel: () -> Unit,
    modifier: Modifier,
) {
    Column(
        modifier.padding(20.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text(recording.title, style = MaterialTheme.typography.headlineMedium)
        LinearProgressIndicator(
            progress = { progress },
            modifier = Modifier.fillMaxWidth(),
        )
        Text("${(progress * 100).toInt()} %")
        Text(stage.ifBlank { state(recording.state) })
        pssMiB?.let { Text("Память процесса (PSS): $it МиБ") }
        OutlinedButton(onClick = cancel) { Text("Остановить обработку") }
    }
}

@Composable
fun PreparationProgress(state: PreparationState) {
    if (state.running) {
        if (state.progress == null) LinearProgressIndicator(Modifier.fillMaxWidth())
        else
            LinearProgressIndicator(
                progress = { state.progress },
                modifier = Modifier.fillMaxWidth(),
            )
        Spacer(Modifier.height(12.dp))
        Text(state.message)
        state.progress?.let {
            Text("${(it * 100).toInt()} %", style = MaterialTheme.typography.labelLarge)
        }
    }
    state.error?.let { Text(it, color = MaterialTheme.colorScheme.error) }
}

@Composable
fun PreparationScreen(
    state: PreparationState,
    retry: () -> Unit,
    settings: () -> Unit,
    modifier: Modifier,
) {
    Column(
        modifier.fillMaxHeight().verticalScroll(rememberScrollState()).padding(28.dp),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text("LocalScribe", style = MaterialTheme.typography.headlineLarge)
        Spacer(Modifier.height(12.dp))
        Text(
            if (state.error == null) "Готовим приложение к первому разговору"
            else "Не удалось завершить подготовку",
            style = MaterialTheme.typography.titleLarge,
        )
        Spacer(Modifier.height(24.dp))
        Card(Modifier.widthIn(max = 560.dp).fillMaxWidth()) {
            Column(Modifier.padding(24.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
                PreparationProgress(state)
                Text(
                    "Русское распознавание и анализ голосов работают без интернета. При первом запуске подготовка может занять несколько минут.",
                    style = MaterialTheme.typography.bodyMedium,
                )
                if (state.error != null) {
                    Button(onClick = retry) { Text("Повторить") }
                    TextButton(onClick = settings) { Text("Открыть настройки") }
                }
            }
        }
    }
}

@Composable
fun SettingsScreen(
    s: Settings,
    onChange: (Settings) -> Unit,
    models: String?,
    busy: Boolean,
    import: () -> Unit,
    delete: () -> Unit,
    theme: String,
    onTheme: (String) -> Unit,
    preparation: PreparationState,
    restore: () -> Unit,
    modifier: Modifier,
    extraModels: List<ModelStatus> = emptyList(),
    bundleBytes: Long? = null,
    manageExtra: (String, Boolean) -> Unit = { _, _ -> },
) {
    var count by
        remember(s.speakers) { mutableStateOf(if (s.speakers == 0) "" else s.speakers.toString()) }
    var deleteDialog by remember { mutableStateOf(false) }
    LazyColumn(
        modifier.padding(horizontal = 20.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp),
    ) {
        item { SettingsPresets(s, onChange) }
        item {
            Text("Модели", style = MaterialTheme.typography.titleLarge)
            Text(if (models == null) "Не подготовлены" else "Готовы к работе")
            bundleBytes?.let {
                Text("Встроенный пакет · ${it / 1048576} МиБ на диске")
            }
            Row {
                Button(onClick = import, enabled = !busy) { Text("Импорт ZIP") }
                TextButton(onClick = { deleteDialog = true }, enabled = !busy && models != null) {
                    Text("Удалить")
                }
            }
        }
        if (extraModels.any { it.group == ExtraModels.WHISPER }) {
            item { Text("Язык и движок файлов", style = MaterialTheme.typography.titleLarge) }
            items(listOf(FileAsr.GIGAAM_V3, FileAsr.WHISPER_EN)) { engine ->
                val label = if (engine == FileAsr.WHISPER_EN) "Английский · Whisper Tiny INT8"
                    else "Русский · GigaAM v3 E2E RNN‑T INT8"
                Row(verticalAlignment = Alignment.CenterVertically) {
                    RadioButton(s.fileAsr == engine, { onChange(s.copy(fileAsr = engine)) }, enabled = !busy)
                    Text(label)
                }
            }
        }
        item {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Switch(s.refineDiarization, { onChange(s.copy(refineDiarization = it)) }, enabled = !busy)
                Spacer(Modifier.width(8.dp))
                Text("Уточнять пропущенную речь вторым проходом")
            }
        }
        if (extraModels.any { it.group == ExtraModels.QWEN }) {
            item {
                Text("Редактор текста запускается отдельно кнопкой «Править текст локальной моделью» в готовой записи.")
            }
        }
        if (preparation.hasBundledModels)
            item {
                OutlinedButton(onClick = restore, enabled = !busy) {
                    Text("Восстановить встроенные модели")
                }
                Text(
                    "Все модели уже входят в приложение. Восстановление не требует интернета.",
                    style = MaterialTheme.typography.bodySmall,
                )
            }
        if (preparation.running || preparation.phase == "error")
            item { PreparationProgress(preparation) }
        item {
            Text(
                "Распознавание выполняется на устройстве. Аудио и тексты никуда не отправляются. Импорт ZIP нужен только для отдельного пакета моделей.",
                style = MaterialTheme.typography.bodySmall,
            )
        }
        item { Text("Качество файлов", style = MaterialTheme.typography.titleLarge) }
        items(Quality.entries) { q ->
            Row(
                Modifier.fillMaxWidth().clickable { onChange(s.copy(quality = q)) },
                verticalAlignment = Alignment.CenterVertically,
            ) {
                RadioButton(s.quality == q, { onChange(s.copy(quality = q)) })
                Column(Modifier.weight(1f).padding(start = 8.dp)) {
                    Text(quality(q))
                    Text(
                        when (q) {
                            Quality.FAST -> "Меньше памяти и расхода батареи"
                            Quality.BALANCED -> "Основной режим для разговоров"
                            Quality.ACCURATE -> "Больше памяти и времени на обработку"
                        },
                        style = MaterialTheme.typography.bodySmall,
                    )
                }
            }
        }
        item {
            Text(
                "Живая запись использует T-one во всех профилях. Скорость зависит от устройства; отставание показывается во время записи."
            )
        }
        item {
            OutlinedTextField(
                count,
                { v ->
                    count = v.filter(Char::isDigit).take(2)
                    onChange(s.copy(speakers = count.toIntOrNull()?.coerceIn(1, 8) ?: 0))
                },
                label = { Text("Ожидается участников: пусто — авто, 1–8") },
                modifier = Modifier.fillMaxWidth(),
            )
        }
        item {
            Text("Порог совпадения: %.2f".format(s.matchThreshold))
            Slider(
                s.matchThreshold,
                { onChange(s.copy(matchThreshold = it)) },
                valueRange = 0.5f..0.9f,
            )
            Text(
                "Это порог косинусного сходства, не вероятность. На короткой и шумной речи номер участника назначается предварительно.",
                style = MaterialTheme.typography.bodySmall,
            )
        }
        item {
            SettingSwitch(
                "Измерять акустические параметры",
                s.prosody,
                { onChange(s.copy(prosody = it)) },
            )
        }
        item {
            SettingSwitch(
                "Разделять одновременную речь",
                s.separateOverlap,
                { onChange(s.copy(separateOverlap = it)) },
                "Два голоса, при обработке файла или повторном проходе. Требует времени и памяти. В быстром профиле — только обнаружение перекрытий.",
            )
        }
        item {
            SettingSwitch(
                "Оценивать эмоциональную окраску",
                s.emotions,
                { onChange(s.copy(emotions = it)) },
                "Русская речь: положительная, раздражённая, грустная, нейтральная окраска. Оценки модели могут ошибаться. В быстром профиле анализ эмоций выключен.",
            )
        }
        item {
            SettingSwitch(
                "Показывать вероятностные метки",
                s.showInterpretations,
                { onChange(s.copy(showInterpretations = it)) },
                "Оценка эмоций — предположение по голосу. На короткой или смешанной речи может быть «не определено». Акцент, смех, плач и шёпот не классифицируются.",
            )
        }
        item {
            Text("Оформление", style = MaterialTheme.typography.titleLarge)
            FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                listOf("system" to "Система", "light" to "Светлая", "dark" to "Тёмная").forEach {
                    (key, label) ->
                    FilterChip(theme == key, { onTheme(key) }, label = { Text(label) })
                }
            }
        }
        item {
            Text(
                "Голосовые характеристики сохраняются только внутри записи. Удаление записи удаляет связанные эмбеддинги. Между записями личности не сопоставляются."
            )
            Spacer(Modifier.height(24.dp))
        }
    }
    if (deleteDialog)
        AlertDialog(
            onDismissRequest = { deleteDialog = false },
            title = { Text("Удалить модели?") },
            text = {
                Text(
                    if (preparation.hasBundledModels)
                        "Существующие записи останутся доступны. Встроенные модели можно восстановить без интернета; файлы внутри установочного пакета останутся частью приложения."
                    else
                        "Существующие записи останутся доступны. Для нового распознавания потребуется импорт ZIP."
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        deleteDialog = false
                        delete()
                    }
                ) {
                    Text("Удалить")
                }
            },
            dismissButton = { TextButton(onClick = { deleteDialog = false }) { Text("Отмена") } },
        )
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun ResultScreen(
    t: Transcript,
    active: Boolean,
    live: LiveState,
    showTags: Boolean,
    start: () -> Unit,
    reprocess: () -> Unit,
    control: (String) -> Unit,
    resumeRecording: () -> Unit,
    play: (Segment) -> Unit,
    playOriginal: () -> Unit,
    stop: () -> Unit,
    edit: (Segment, String) -> Unit,
    rename: (Speaker, String) -> Unit,
    merge: (String, String) -> Unit,
    split: (Segment) -> Unit,
    export: (String) -> Unit,
    delete: () -> Unit,
    modifier: Modifier,
    page: TranscriptPage? = null,
    search: TranscriptQuery = TranscriptQuery(),
    onSearch: (String) -> Unit = {},
    onFilter: (String?) -> Unit = {},
    onPage: (Int) -> Unit = {},
    onFollowLatest: () -> Unit = {},
    playback: PlaybackState = PlaybackState(),
    togglePlayback: () -> Unit = {},
    seekPlayback: (Long) -> Unit = {},
    rememberVoice: (Speaker, String) -> Unit = { _, _ -> },
    profiles: List<VoiceProfile> = emptyList(),
    assignProfile: (Segment, String) -> Unit = { _, _ -> },
    addSample: (String, String, String?) -> Unit = { _, _, _ -> },
    reidentify: () -> Unit = {},
    openProfiles: () -> Unit = {},
    changeTags: (Boolean) -> Unit = {},
    pssMiB: Int? = null,
    summarize: (() -> Unit)? = null,
    summaryEnabled: Boolean = true,
    summaryRunning: SummaryState.Running? = null,
    splitTurn: (List<Segment>) -> Unit = { parts -> split(parts.first()) },
    editTurn: (List<Segment>, String, String?) -> Unit = { parts, text, assigned -> edit(parts.first().copy(speakerId = assigned), text) },
    assignTurn: (List<Segment>, String, String) -> Unit = { parts, text, profile -> assignProfile(parts.first().copy(text = text), profile) },
    editTranscript: (() -> Unit)? = null,
    editorState: ru.localscribe.ui.TextEditingState? = null,
    previewRange: ((Long, Long) -> Unit)? = null,
    rangePreview: ru.localscribe.ui.RangePreviewState? = null,
    acceptRangePreview: () -> Unit = {},
    dismissRangePreview: () -> Unit = {},
    cancelOptionalProcessing: () -> Unit = {},
    openNotes: () -> Unit = {},
    onPlaybackPage: (Long) -> Unit = {},
) {
    val query = search.text
    val filter = search.speakerId
    var editing by remember { mutableStateOf<Segment?>(null) }
    var editingParts by remember { mutableStateOf<List<Segment>>(emptyList()) }
    val turns = remember(t.segments) { DialogueTurns.groups(t.segments) }
    val listState = rememberLazyListState()
    val userDragging by listState.interactionSource.collectIsDraggedAsState()
    var followPlayback by remember(t.recording.id) { mutableStateOf(true) }
    val playbackReady = playback.ready && playback.recordingId == t.recording.id
    val playbackTurn = if (playbackReady)
        turns.indexOfFirst { parts -> parts.any(playback::highlights) } else -1
    val playbackTurnKey = turns.getOrNull(playbackTurn)?.firstOrNull()?.id
    LaunchedEffect(userDragging) {
        if (userDragging) followPlayback = false
    }
    LaunchedEffect(query, filter) {
        if (query.isNotBlank() || filter != null) followPlayback = false
    }
    val needsPlaybackPage = playbackReady && page != null && query.isBlank() && filter == null &&
        ((page.hasPrevious && t.segments.firstOrNull()?.let { playback.positionMs < it.startMs } == true) ||
            (page.nextPageStartMs?.let { playback.positionMs >= it } == true))
    LaunchedEffect(followPlayback, needsPlaybackPage, page?.offset, playback.recordingId) {
        if (followPlayback && needsPlaybackPage) onPlaybackPage(playback.positionMs)
    }
    LaunchedEffect(followPlayback, playbackTurnKey, page?.offset, active) {
        if (!followPlayback || playbackTurn < 0 || playbackTurnKey == null) return@LaunchedEffect
        val visible = listState.layoutInfo.visibleItemsInfo.firstOrNull { it.key == playbackTurnKey }
        if (visible != null && visible.offset >= listState.layoutInfo.viewportStartOffset &&
            (visible.offset + visible.size <= listState.layoutInfo.viewportEndOffset ||
                visible.size > listState.layoutInfo.viewportEndOffset - listState.layoutInfo.viewportStartOffset))
            return@LaunchedEffect
        // Title, search and filters; actions and speaker controls; optional pager.
        val headerCount = 3 + (if (!active) 2 else 0) + (if (page != null) 1 else 0)
        listState.animateScrollToItem(headerCount + playbackTurn)
    }
    var text by remember { mutableStateOf("") }
    var assigned by remember { mutableStateOf<String?>(null) }
    var speaker by remember { mutableStateOf<Speaker?>(null) }
    var speakerName by remember { mutableStateOf("") }
    var deletion by remember { mutableStateOf(false) }
    var rangeOpen by remember { mutableStateOf(false) }
    var rangeStart by remember { mutableStateOf("0") }
    var rangeEnd by remember(t.recording.id) { mutableStateOf((minOf(30000L, t.recording.durationMs) / 1000.0).toString()) }
    val names =
        t.speakers.associate {
            it.id to
                (it.name +
                    if (it.voiceProfileId != null && !it.nameIsManual)
                        " · имя по голосу" +
                            (it.voiceProfileSimilarity?.let { score ->
                                ", сходство %.2f".format(score)
                            } ?: "")
                    else "")
        }
    val r = t.recording
    val isLive = live.recordingId == r.id
    val audioUnavailable = r.state in setOf("capture_empty", "capture_pending", "audio_missing")
    val palette =
        listOf(
            Color(0xff7C7EFF),
            Color(0xff00A18C),
            Color(0xffDB8D30),
            Color(0xffCD5C93),
            Color(0xff389ECE),
            Color(0xff9A68BF),
        )
    Column(modifier) {
        editorState?.let { editor ->
            Column(Modifier.fillMaxWidth().padding(horizontal = 20.dp, vertical = 8.dp)
                .semantics { liveRegion = LiveRegionMode.Polite }) {
                Text(editor.stage)
                LinearProgressIndicator(progress = { editor.progress }, modifier = Modifier.fillMaxWidth())
                TextButton(onClick = cancelOptionalProcessing) { Text("Остановить") }
            }
        }
        summaryRunning?.let {
            Column(
                Modifier.fillMaxWidth().padding(horizontal = 20.dp, vertical = 8.dp)
                    .semantics { liveRegion = LiveRegionMode.Polite },
                verticalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                Text("Подбираем ключевые цитаты…")
                LinearProgressIndicator(Modifier.fillMaxWidth())
            }
        }
        if (playback.recordingId == r.id)
            PlaybackControls(playback, togglePlayback, seekPlayback, stop)
        if (playback.ready && playback.recordingId == r.id && playback.separatedId == null)
            RecordingWaveformView(r, playback.positionMs, seekPlayback)
        if (playbackReady && !followPlayback)
            TextButton(onClick = {
                followPlayback = true
                onPlaybackPage(playback.positionMs)
            }) { Text("Вернуться к воспроизведению") }
        if (isLive) {
            Card(Modifier.fillMaxWidth().padding(horizontal = 20.dp, vertical = 8.dp)) {
                Column(Modifier.padding(16.dp)) {
                    Text("${time(live.elapsedMs)} · отставание %.1f с".format(live.lagSeconds))
                    Signal(live.level)
                    Text(live.message)
                    pssMiB?.let { Text("Память процесса (PSS): $it МиБ") }
                    if (live.preparing) {
                        LinearProgressIndicator(Modifier.fillMaxWidth())
                        Text("Подготовка выполняется на устройстве. Микрофон ещё не записывает.")
                    } else if (live.preliminary.isEmpty()) Text("Ожидание речи…")
                    FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Button(
                            enabled = !live.preparing,
                            onClick = { control(if (live.paused) "RESUME" else "PAUSE") },
                        ) {
                            Text(if (live.paused) "Продолжить" else "Пауза")
                        }
                        TextButton(onClick = { control("STOP") }) { Text("Завершить") }
                    }
                }
            }
        }
        LazyColumn(
            Modifier.weight(1f).padding(horizontal = 20.dp).testTag("transcript-list"),
            state = listState,
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            item {
                Text(r.title, style = MaterialTheme.typography.headlineSmall)
                Text("${state(r.state)} · ${time(r.durationMs)} · ${t.speakers.size} участников")
                if (r.settings.speakers > 0)
                    Text(
                        "Заданное число участников: ${r.settings.speakers}",
                        style = MaterialTheme.typography.bodySmall,
                    )
                r.rtf?.let {
                    Text(
                        "RTF: %.2f (время обработки / длительность аудио)".format(it),
                        style = MaterialTheme.typography.bodySmall,
                    )
                }
                r.error?.let { Text(it, color = MaterialTheme.colorScheme.error) }
                SettingSwitch("Метки анализа речи", showTags, changeTags)
                if (r.enrollmentProfileId != null) {
                    Text(
                        "Образец для: " +
                            (profiles.firstOrNull { it.id == r.enrollmentProfileId }?.name
                                ?: "удалённый профиль")
                    )
                    if (!active)
                        t.speakers.forEach { voice ->
                            OutlinedButton(
                                onClick = { addSample(r.enrollmentProfileId!!, voice.id, null) }
                            ) {
                                Text("Сохранить образец: ${voice.name}")
                            }
                        }
                    Text(
                        "Сначала прослушайте запись. Если голос не выделен, выполните повторную обработку."
                    )
                }
            }
            if (!active)
                item {
                    FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        if (r.state in setOf("imported", "cancelled", "interrupted", "error"))
                            Button(onClick = start) {
                                Text(
                                    if (r.checkpointSamples > 0) "Продолжить обработку"
                                    else "Обработать файл"
                                )
                            }
                        if (
                            r.source == "microphone" &&
                                r.analysisMode == "streaming" &&
                                r.state in
                                    setOf("capture_empty", "recorded", "interrupted", "error")
                        ) {
                            Button(onClick = resumeRecording) {
                                Text(
                                    if (r.state == "capture_empty") "Начать запись заново"
                                    else "Продолжить запись"
                                )
                            }
                        }
                        TextButton(onClick = openProfiles) { Text("Участники") }
                        TextButton(onClick = openNotes, enabled = summaryEnabled) { Text("Конспект") }
                        if (summarize != null && t.segments.isNotEmpty())
                            TextButton(onClick = summarize, enabled = summaryEnabled && summaryRunning == null) {
                                Text("Краткий итог")
                            }
                        TextButton(onClick = reidentify) { Text("Повторная идентификация") }
                        editTranscript?.let { edit ->
                            TextButton(onClick = edit, enabled = summaryEnabled && editorState == null) {
                                Text("Править текст локальной моделью")
                            }
                        }
                        previewRange?.let {
                            TextButton(onClick = { rangeOpen = true }, enabled = summaryEnabled) {
                                Text("Обработать интервал")
                            }
                        }
                        if (!audioUnavailable) {
                            OutlinedButton(onClick = reprocess) { Text(if (r.analysisMode == "streaming") "Уточнить участников и текст" else "Повторная обработка") }
                            TextButton(onClick = playOriginal) { Text("Слушать") }
                        }
                        if (playback.recordingId == r.id)
                            TextButton(onClick = stop) { Text("Стоп аудио") }
                    }
                }
            item {
                OutlinedTextField(
                    query,
                    onSearch,
                    label = { Text("Поиск в расшифровке") },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                )
            }
            item {
                FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    FilterChip(filter == null, { onFilter(null) }, label = { Text("Все") })
                    t.speakers.forEach { s ->
                        FilterChip(filter == s.id, { onFilter(s.id) }, label = { Text(s.name) })
                    }
                }
            }
            if (!active)
                item {
                    FlowRow {
                        t.speakers.forEach { s ->
                            TextButton(
                                onClick = {
                                    speaker = s
                                    speakerName = s.name
                                }
                            ) {
                                Text("Изменить: ${s.name}")
                            }
                        }
                    }
                }
            if (page != null) item { TranscriptPager(page,
                { followPlayback = false; onPage(it) },
                { followPlayback = false; onFollowLatest() }, isLive) }
            items(turns, key = { it.first().id }) { parts ->
                val first = parts.first()
                val s = remember(parts) { first.copy(endMs = parts.maxOf { it.endMs },
                    text = DialogueTurns.text(parts),
                    speakerProvisional = parts.any { it.speakerProvisional },
                    acoustics = first.acoustics.takeIf { parts.size == 1 },
                    emotion = first.emotion.takeIf { parts.size == 1 },
                    tags = if (parts.size == 1) first.tags else emptyList(),
                    originalAsrText = if (parts.any { it.originalAsrText != null })
                        parts.joinToString(" ") { it.originalAsrText ?: it.text } else null) }
                val index = (s.speakerId?.removePrefix("speaker_")?.toIntOrNull() ?: 0)
                DialogueBubble(
                    s,
                    SpeakerLabels.name(s, names),
                    palette[index.mod(palette.size)],
                    alignEnd = index > 0 && index % 2 == 0,
                    active = active,
                    parts = parts,
                    playback = playback,
                    showTags = showTags,
                    play = play,
                    edit = {
                        editing = s
                        editingParts = parts
                        text = s.text
                        assigned = s.speakerId
                    },
                    split = { splitTurn(parts) },
                )
            }
            if (page != null && t.segments.isNotEmpty())
                item { TranscriptPager(page, { followPlayback = false; onPage(it) },
                    { followPlayback = false; onFollowLatest() }, isLive) }
            if (t.segments.isEmpty())
                item {
                    Text(
                        if (query.isNotBlank() || filter != null)
                            "Ничего не найдено. Измените поиск или участника."
                        else "Реплики появятся после обработки или во время записи.",
                        Modifier.padding(vertical = 20.dp),
                    )
                }
            if (!active)
                item {
                    Text("Экспорт", style = MaterialTheme.typography.titleLarge)
                    FlowRow {
                        listOf("json").forEach { f ->
                            TextButton(onClick = { export(f) }) { Text(f.uppercase()) }
                        }
                        TextButton(onClick = { deletion = true }) {
                            Text("Удалить запись", color = MaterialTheme.colorScheme.error)
                        }
                    }
                }
            item {
                Text(
                    "Разделение рассчитано на два одновременных голоса и может содержать артефакты. Начала слов приблизительны; точные окончания слов недоступны.",
                    style = MaterialTheme.typography.bodySmall,
                )
                Spacer(Modifier.height(24.dp))
            }
        }
    }
    editing?.let { s ->
        AlertDialog(
            onDismissRequest = { editing = null },
            title = { Text("Редактирование реплики") },
            text = {
                Column(Modifier.verticalScroll(rememberScrollState())) {
                    OutlinedTextField(text, { text = it }, minLines = 3, maxLines = 8)
                    s.originalAsrText?.let { original ->
                        TextButton(onClick = { text = original }) { Text("Вернуть текст распознавания") }
                    }
                    Text("Участник")
                    t.speakers.forEach { p ->
                        TextButton(onClick = { assigned = p.id }) {
                            Text((if (assigned == p.id) "✓ " else "") + p.name)
                        }
                    }
                    Text("Указать человека и запомнить голос для других записей:")
                    profiles.forEach { p ->
                        TextButton(
                            onClick = {
                                assignTurn(editingParts, text, p.id)
                                editing = null
                            }
                        ) {
                            Text("Это говорит ${p.name}")
                        }
                    }
                    if (s.speakerId != null) {
                        Text("Добавить чистые фрагменты этого голоса в профиль (от 3 с):")
                        profiles.forEach { p ->
                            TextButton(
                                onClick = {
                                    addSample(p.id, s.speakerId!!, if (editingParts.size == 1) s.id else null)
                                    editing = null
                                }
                            ) {
                                Text("Добавить образец: ${p.name}")
                            }
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        editTurn(editingParts, text, assigned)
                        editing = null
                    }
                ) {
                    Text("Сохранить")
                }
            },
            dismissButton = { TextButton(onClick = { editing = null }) { Text("Отмена") } },
        )
    }
    speaker?.let { s ->
        var rememberVoiceConsent by remember(s.id) { mutableStateOf(true) }
        AlertDialog(
            onDismissRequest = { speaker = null },
            title = { Text("Участник") },
            text = {
                Column(Modifier.verticalScroll(rememberScrollState())) {
                    OutlinedTextField(speakerName, { speakerName = it }, label = { Text("Имя") })
                    SettingSwitch(
                        "Запомнить голос",
                        rememberVoiceConsent,
                        { rememberVoiceConsent = it },
                        "Сохранить голосовой вектор только на этом устройстве и предлагать имя в других записях. Нужно 3 секунды чистой речи. Возможны ошибки. Профиль можно удалить на главной.",
                    )
                    s.voiceProfileSimilarity?.let {
                        Text("Сходство с профилем %.2f; не вероятность личности".format(it))
                    }
                    Text("Добавить образец в профиль (после прослушивания):")
                    profiles.forEach { p ->
                        TextButton(
                            onClick = {
                                addSample(p.id, s.id, null)
                                speaker = null
                            }
                        ) {
                            Text(p.name)
                        }
                    }
                    Text("Объединить с:")
                    t.speakers
                        .filter { it.id != s.id }
                        .forEach { other ->
                            TextButton(
                                onClick = {
                                    merge(s.id, other.id)
                                    speaker = null
                                }
                            ) {
                                Text(other.name)
                            }
                        }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        if (rememberVoiceConsent) rememberVoice(s, speakerName)
                        else rename(s, speakerName)
                        speaker = null
                    }
                ) {
                    Text(if (rememberVoiceConsent) "Сохранить имя и голос" else "Сохранить имя")
                }
            },
            dismissButton = { TextButton(onClick = { speaker = null }) { Text("Отмена") } },
        )
    }
    if (rangeOpen) {
        val startMs = rangeStart.replace(',', '.').toDoubleOrNull()
            ?.takeIf { it.isFinite() && it >= 0 && it <= r.durationMs / 1000.0 }
            ?.let { (it * 1000).toLong() }
        val endMs = rangeEnd.replace(',', '.').toDoubleOrNull()
            ?.takeIf { it.isFinite() && it >= 0 && it <= r.durationMs / 1000.0 }
            ?.let { (it * 1000).toLong() }
        val valid = startMs != null && endMs != null && endMs > startMs && endMs - startMs <= 60000
        AlertDialog(
            onDismissRequest = { rangeOpen = false },
            title = { Text("Повторная обработка интервала") },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text("Выберите до 60 секунд. Распознавание и участники будут показаны до сохранения. Ручные исправления и реплики, пересекающие границу, сохраняются.")
                    OutlinedTextField(rangeStart, { rangeStart = it }, label = { Text("Начало, секунд") }, singleLine = true)
                    OutlinedTextField(rangeEnd, { rangeEnd = it }, label = { Text("Конец, секунд") }, singleLine = true)
                    if (!valid) Text("Нужен интервал до 60 секунд внутри записи", color = MaterialTheme.colorScheme.error)
                }
            },
            confirmButton = { TextButton(enabled = valid, onClick = {
                rangeOpen = false
                previewRange?.invoke(startMs!!, endMs!!)
            }) { Text("Предпросмотр") } },
            dismissButton = { TextButton(onClick = { rangeOpen = false }) { Text("Отмена") } },
        )
    }
    rangePreview?.let { preview ->
        val previewNames = preview.speakers.associate { it.id to it.name }
        AlertDialog(
            onDismissRequest = dismissRangePreview,
            title = { Text("Результат ${time(preview.startMs)}–${time(preview.endMs)}") },
            text = {
                LazyColumn(Modifier.heightIn(max = 350.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    item { Text("Сохранение обновит только этот интервал. Ручные исправления и пограничные реплики сохраняются.") }
                    if (preview.segments.isEmpty()) item { Text("Речь не обнаружена. Сохранение удалит прежние автоматические реплики внутри интервала.") }
                    items(preview.segments, key = { it.id }) { segment ->
                        Text("${time(segment.startMs)} · ${previewNames[segment.speakerId] ?: "Неопределённый участник"}\n${segment.text}")
                    }
                }
            },
            confirmButton = { TextButton(onClick = acceptRangePreview, enabled = summaryEnabled) { Text("Сохранить интервал") } },
            dismissButton = { TextButton(onClick = dismissRangePreview) { Text("Отмена") } },
        )
    }
    if (deletion)
        AlertDialog(
            onDismissRequest = { deletion = false },
            title = { Text("Удалить запись?") },
            text = {
                Text(
                    "Будут удалены текст, эмбеддинги и аудио, если оно не используется повторной обработкой."
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        deletion = false
                        delete()
                    }
                ) {
                    Text("Удалить")
                }
            },
            dismissButton = { TextButton(onClick = { deletion = false }) { Text("Отмена") } },
        )
}

@Composable
fun Signal(level: Float) {
    val levels = remember { mutableStateListOf<Float>() }
    LaunchedEffect(level) {
        levels += level
        while (levels.size > 80) levels.removeAt(0)
    }
    val color = MaterialTheme.colorScheme.primary
    Canvas(Modifier.fillMaxWidth().height(64.dp)) {
        val step = size.width / 80
        levels.forEachIndexed { i, v ->
            val h = (v * 6).coerceIn(0.02f, 1f) * size.height / 2
            drawLine(
                color,
                Offset(i * step, size.height / 2 - h),
                Offset(i * step, size.height / 2 + h),
                3f,
            )
        }
    }
}

@Composable
private fun TranscriptPager(
    page: TranscriptPage,
    onPage: (Int) -> Unit,
    onLatest: () -> Unit,
    live: Boolean,
) {
    Column {
        Text(
            if (page.total == 0) "Блоков: 0"
            else
                "Блоки ${page.offset + 1}–${page.offset + page.visibleCount} из ${page.total}",
            style = MaterialTheme.typography.labelMedium,
        )
        FlowRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            TextButton(onClick = { onPage(-1) }, enabled = page.hasPrevious) { Text("Предыдущие") }
            TextButton(onClick = { onPage(1) }, enabled = page.hasNext) { Text("Следующие") }
            if (live) TextButton(onClick = onLatest) { Text("К новым репликам") }
        }
    }
}
