package ru.localscribe.ui

import android.app.Application
import android.content.Intent
import android.media.MediaPlayer
import android.net.Uri
import android.provider.OpenableColumns
import androidx.core.content.ContextCompat
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import java.io.File
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.channels.Channel
import ru.localscribe.ScribeApp
import ru.localscribe.core.*
import ru.localscribe.data.EngineGate
import ru.localscribe.data.TranscriptPage
import ru.localscribe.data.TranscriptQuery
import ru.localscribe.service.*

sealed interface SummaryState {
    val recordingId: String

    data class Running(override val recordingId: String) : SummaryState
    data class Ready(override val recordingId: String, val text: String) : SummaryState
}

data class TextEditingState(val recordingId: String, val stage: String, val progress: Float = 0f)

data class RangePreviewState(val recordingId: String, val revision: Long, val startMs: Long,
    val endMs: Long, val segments: List<Segment>, val speakers: List<Speaker>,
    val temporaryAudioPaths: List<String> = emptyList())

data class NoteState(val recordingId: String, val text: String, val saving: Boolean = false,
    val error: String? = null)

class ScribeViewModel(application: Application) : AndroidViewModel(application) {
    private val app = application as ScribeApp
    val records = MutableStateFlow<List<Recording>>(emptyList())
    val selected = MutableStateFlow<String?>(null)
    val transcript = MutableStateFlow<Transcript?>(null)
    val page = MutableStateFlow<TranscriptPage?>(null)
    val query = MutableStateFlow(TranscriptQuery())
    val settings = MutableStateFlow(app.models.settings())
    val message = MutableStateFlow("")
    val preparation = app.preparation.state
    private val fileOperation = MutableStateFlow(false)
    val busy =
        combine(fileOperation, preparation) { file, setup -> file || setup.running }
            .stateIn(viewModelScope, SharingStarted.Eagerly, true)
    val models =
        preparation.map { it.modelId }.stateIn(viewModelScope, SharingStarted.Eagerly, null)
    val darkMode = MutableStateFlow(app.models.preferences.getString("theme", "system")!!)
    val active = JobState.active
    val live = JobState.live
    private var player: MediaPlayer? = null
    private var playbackJob: Job? = null
    private var optionalJob: Job? = null
    val playback = MutableStateFlow(PlaybackState())
    val profiles = MutableStateFlow<List<VoiceProfile>>(emptyList())
    val extraModels = MutableStateFlow(app.models.extras.status())
    val bundleBytes = MutableStateFlow<Long?>(null)
    private val summaryState = MutableStateFlow<SummaryState?>(null)
    val summary = summaryState.asStateFlow()
    val textEditing = MutableStateFlow<TextEditingState?>(null)
    val rangePreview = MutableStateFlow<RangePreviewState?>(null)
    val notes = MutableStateFlow<NoteState?>(null)
    private val noteUpdates = Channel<Unit>(Channel.CONFLATED)
    private val pendingNotes = ConcurrentHashMap<String, NoteState>()
    private val noteDrafts = ConcurrentHashMap<String, NoteState>()
    val pssMiB = MutableStateFlow<Int?>(null)

    init {
        // Application-owned writer drains the last edit even when this screen is closed.
        app.scope.launch(Dispatchers.IO) {
            for (signal in noteUpdates) while (true) {
                val draft = pendingNotes.values.firstOrNull() ?: break
                if (!pendingNotes.remove(draft.recordingId, draft)) continue
                try {
                    app.repository.saveNote(draft.recordingId, draft.text)
                    noteDrafts.computeIfPresent(draft.recordingId) { _, current ->
                        if (current.text == draft.text) current.copy(saving = false, error = null) else current
                    }
                    notes.update { current ->
                        if (current?.recordingId == draft.recordingId && current.text == draft.text)
                            current.copy(saving = false, error = null) else current
                    }
                } catch (failure: Exception) {
                    if (failure is CancellationException) throw failure
                    app.diagnostics.failure("note-save", failure)
                    noteDrafts.computeIfPresent(draft.recordingId) { _, current ->
                        if (current.text == draft.text) current.copy(saving = false,
                            error = failure.message ?: "Не удалось сохранить") else current
                    }
                    notes.update { current ->
                        if (current?.recordingId == draft.recordingId && current.text == draft.text)
                            current.copy(saving = false, error = failure.message ?: "Не удалось сохранить") else current
                    }
                }
            }
        }
        viewModelScope.launch {
            preparation.collectLatest { setup ->
                bundleBytes.value = if (setup.hasBundledModels) withContext(Dispatchers.IO) {
                    app.models.bundledInfo()?.unpackedBytes
                } else null
            }
        }
        viewModelScope.launch {
            combine(active, fileOperation) { id, file -> id != null || file }
                .distinctUntilChanged()
                .collectLatest { running ->
                    pssMiB.value = null
                    while (running) {
                        pssMiB.value = withContext(Dispatchers.IO) {
                            (android.os.Debug.getPss() / 1024).toInt()
                        }
                        delay(1000)
                    }
                }
        }
        viewModelScope.launch {
            try {
                app.ready.await()
            } catch (t: Throwable) {
                if (t is CancellationException) throw t
                app.diagnostics.failure("startup-ui", t)
                message.value = "Не удалось открыть хранилище. Сохраните диагностику."
                return@launch
            }
            combine(app.repository.revision, selected, query) { _, id, q -> id to q }
                .collectLatest { (id, q) ->
                    try {
                        withContext(Dispatchers.IO) {
                            records.value = app.repository.recordings()
                            profiles.value = app.repository.voiceProfiles()
                            extraModels.value = app.models.extras.status()
                            val result =
                                id?.let {
                                    app.repository.recording(it)?.let { app.repository.page(id, q) }
                                }
                            page.value = result
                            transcript.value = result?.transcript
                        }
                    } catch (e: CancellationException) {
                        throw e
                    } catch (e: Exception) {
                        message.value = e.message ?: e.javaClass.simpleName
                    }
                }
        }
    }

    fun action(block: suspend () -> Unit) {
        viewModelScope.launch {
            try {
                app.ready.await()
                block()
            } catch (e: CancellationException) {
                throw e
            } catch (e: OutOfMemoryError) {
                app.diagnostics.failure("user-action-memory", e)
                message.value = "Недостаточно памяти. Закройте другие приложения и повторите."
            } catch (e: LinkageError) {
                app.diagnostics.failure("user-action-native", e)
                message.value = "Не удалось загрузить движок. Сохраните диагностику."
            } catch (e: Exception) {
                app.diagnostics.failure("user-action", e)
                message.value = e.message ?: e.javaClass.simpleName
            }
        }
    }

    fun select(id: String?) {
        if (selected.value != id) {
            query.value = TranscriptQuery()
            stopPlayback()
        }
        selected.value = id
    }

    fun search(text: String) {
        query.value = query.value.copy(text = text, offset = 0, followLatest = false, positionMs = null)
    }

    fun filter(speakerId: String?) {
        query.value = query.value.copy(speakerId = speakerId, offset = 0, followLatest = false, positionMs = null)
    }

    fun page(direction: Int) {
        val current = page.value ?: return
        query.value =
            query.value.copy(
                offset = (current.offset + direction * current.size).coerceAtLeast(0),
                followLatest = false,
                positionMs = null,
            )
    }

    fun followLatest() {
        query.value = TranscriptQuery(followLatest = true)
    }

    fun followPlaybackPosition(positionMs: Long) {
        val current = playback.value
        if (!current.ready || current.recordingId != selected.value) return
        query.value = TranscriptQuery(positionMs = positionMs.coerceAtLeast(0))
    }

    fun update(s: Settings) {
        settings.value = s
        app.models.saveSettings(s)
    }

    fun theme(s: String) {
        darkMode.value = s
        app.models.preferences.edit().putString("theme", s).apply()
    }

    fun demo(demo: ru.localscribe.data.DemoAudio) = action {
        require(!busy.value && active.value == null && !EngineGate.mutex.isLocked) {
            "Дождитесь завершения задачи"
        }
        require(models.value != null) { "Дождитесь подготовки моделей" }
        fileOperation.value = true
        try {
            val id =
                withContext(Dispatchers.IO) {
                    val id = UUID.randomUUID().toString()
                    val file = File(File(app.filesDir, "audio").apply { mkdirs() }, "$id.wav")
                    ru.localscribe.data.Demos.copy(app, demo, file)
                    try {
                        app.repository.save(
                            Recording(
                                id,
                                "Демо · ${demo.title}",
                                System.currentTimeMillis(),
                                file.absolutePath,
                                durationMs = demo.durationMs,
                                source = "demo",
                                settings = settings.value.copy(speakers = 2),
                            )
                        )
                    } catch (e: Exception) {
                        file.delete()
                        throw e
                    }
                    id
                }
            select(id)
            ContextCompat.startForegroundService(
                app,
                Intent(app, ProcessingService::class.java).putExtra("id", id),
            )
        } finally {
            fileOperation.value = false
        }
    }

    fun importAudio(uri: Uri) = action {
        require(!busy.value)
        fileOperation.value = true
        try {
            withContext(Dispatchers.IO) {
                val id = UUID.randomUUID().toString()
                val dir = File(app.filesDir, "audio").apply { mkdirs() }
                val f = File(dir, "$id.original")
                val tmp = File(dir, "$id.part")
                val name =
                    app.contentResolver
                        .query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
                        ?.use { if (it.moveToFirst()) it.getString(0) else null } ?: "Аудиофайл"
                try {
                    app.contentResolver.openInputStream(uri)!!.use { input ->
                        tmp.outputStream().use { output ->
                            val b = ByteArray(65536)
                            while (true) {
                                currentCoroutineContext().ensureActive()
                                val n = input.read(b)
                                if (n < 0) break
                                output.write(b, 0, n)
                            }
                        }
                    }
                    check(tmp.renameTo(f))
                } finally {
                    tmp.delete()
                }
                val r =
                    Recording(
                        id,
                        name,
                        System.currentTimeMillis(),
                        f.absolutePath,
                        settings = settings.value,
                    )
                app.repository.save(r)
                select(id)
            }
        } finally {
            fileOperation.value = false
        }
    }

    fun startProcessing(id: String) = action {
        require(!fileOperation.value && !busy.value && active.value == null && !EngineGate.mutex.isLocked) {
            "Уже выполняется другая задача"
        }
        require(models.value != null) { "Дождитесь подготовки моделей или откройте настройки" }
        val target =
            withContext(Dispatchers.IO) {
                val r = app.repository.recording(id) ?: error("Запись не найдена")
                ru.localscribe.audio.AudioPreflight.requireProcessable(r)
                if (r.checkpointSamples == 0L && app.repository.segmentCount(id) > 0)
                    app.repository.prepareProcessing(id, settings.value).id
                else id
            }
        select(target)
        ContextCompat.startForegroundService(
            app,
            Intent(app, ProcessingService::class.java).putExtra("id", target),
        )
    }

    fun reprocess(id: String) = action {
        require(!fileOperation.value && !busy.value && active.value == null) { "Дождитесь завершения задачи" }
        require(models.value != null && !EngineGate.mutex.isLocked) {
            "Сначала установите модели и дождитесь завершения задачи"
        }
        val recording =
            withContext(Dispatchers.IO) {
                ru.localscribe.audio.AudioPreflight.requireProcessable(
                    app.repository.recording(id) ?: error("Запись не найдена")
                )
                app.repository.prepareProcessing(id, settings.value)
            }
        select(recording.id)
        startProcessing(recording.id)
    }

    fun record(profileId: String? = null) = action {
        require(!busy.value && active.value == null && !EngineGate.mutex.isLocked) {
            "Уже выполняется другая задача"
        }
        require(models.value != null) { "Дождитесь подготовки моделей или откройте настройки" }
        val r =
            withContext(Dispatchers.IO) {
                val id = UUID.randomUUID().toString()
                val file = File(File(app.filesDir, "audio").apply { mkdirs() }, "$id.wav")
                val r =
                    Recording(
                        id,
                        "Разговор " +
                            java.text
                                .SimpleDateFormat("dd.MM HH:mm", java.util.Locale.getDefault())
                                .format(java.util.Date()),
                        System.currentTimeMillis(),
                        file.absolutePath,
                        file.absolutePath,
                        settings =
                            if (profileId != null)
                                settings.value.copy(
                                    speakers = 1,
                                    emotions = false,
                                    separateOverlap = false,
                                )
                            else settings.value,
                        source = "microphone",
                        state = "capture_empty",
                        enrollmentProfileId = profileId,
                    )
                app.repository.save(r)
                r
            }
        select(r.id)
        followLatest()
        ContextCompat.startForegroundService(
            app,
            Intent(app, CaptureService::class.java).putExtra("id", r.id),
        )
    }

    fun control(command: String) {
        app.startService(Intent(app, CaptureService::class.java).setAction(command))
    }

    fun resumeRecording(id: String) = action {
        require(!busy.value && active.value == null && !EngineGate.mutex.isLocked) {
            "Уже выполняется другая задача"
        }
        require(models.value != null) { "Сначала подготовьте модели" }
        stopPlayback()
        select(id)
        followLatest()
        ContextCompat.startForegroundService(
            app,
            Intent(app, CaptureService::class.java).putExtra("id", id),
        )
    }

    fun cancel() {
        app.startService(Intent(app, ProcessingService::class.java).setAction("STOP"))
    }

    fun install(uri: Uri) = action {
        require(!busy.value && active.value == null) { "Дождитесь завершения текущей задачи" }
        app.preparation.import(uri)
    }

    fun prepareModels() = action {
        require(!busy.value && active.value == null) { "Дождитесь завершения текущей задачи" }
        app.preparation.prepare(force = true)
    }

    fun manageExtra(group: String, prepare: Boolean) = action {
        require(!busy.value && active.value == null) { "Дождитесь завершения текущей задачи" }
        fileOperation.value = true
        try {
            EngineGate.exclusive {
                withContext(Dispatchers.IO) {
                    if (prepare) app.models.extras.prepare(group)
                    else app.models.extras.remove(group)
                    extraModels.value = app.models.extras.status()
                }
            }
        } finally {
            fileOperation.value = false
        }
    }

    fun summarize(id: String) = action {
        require(!fileOperation.value && !busy.value && active.value == null) {
            "Дождитесь завершения текущей задачи"
        }
        fileOperation.value = true
        summaryState.value = SummaryState.Running(id)
        try {
            val text = EngineGate.exclusive {
                withContext(Dispatchers.IO) {
                    val recording = app.repository.recording(id) ?: error("Запись не найдена")
                    val summary = ExtractiveSummary(recording.durationMs)
                    app.repository.visitSegments(id) { batch -> batch.forEach(summary::add) }
                    summary.render(app.repository.speakers(id).associate { it.id to it.name })
                        .also { require(it.isNotBlank()) { "Расшифровка пуста" } }
                }
            }
            summaryState.value = SummaryState.Ready(id, text)
        } finally {
            if (summaryState.value is SummaryState.Running) summaryState.value = null
            fileOperation.value = false
        }
    }

    fun dismissSummary() {
        if (summaryState.value is SummaryState.Ready) summaryState.value = null
    }

    fun openNotes(id: String) = action {
        noteDrafts[id]?.let { notes.value = it; return@action }
        val text = withContext(Dispatchers.IO) {
            require(app.repository.recording(id) != null) { "Запись удалена" }
            app.repository.note(id)
        }
        notes.value = NoteState(id, text)
    }

    fun updateNote(text: String) {
        val current = notes.value ?: return
        val draft = current.copy(text = text, saving = true, error = null)
        notes.value = draft
        noteDrafts[draft.recordingId] = draft
        pendingNotes[draft.recordingId] = draft
        if (noteUpdates.trySend(Unit).isFailure)
            notes.value = draft.copy(saving = false, error = "Не удалось поставить сохранение в очередь")
    }

    fun dismissNotes() {
        notes.value = null
    }

    fun editTranscript(id: String) = action {
        require(!fileOperation.value && !busy.value && active.value == null) {
            "Дождитесь завершения текущей задачи"
        }
        fileOperation.value = true
        textEditing.value = TextEditingState(id, "Подготовка редактора")
        optionalJob = currentCoroutineContext()[Job]
        try {
            EngineGate.exclusive {
                ru.localscribe.engine.OfflinePipeline(app.repository, app.models).editTranscript(
                    id,
                    onStatus = { text -> textEditing.value = textEditing.value?.copy(stage = text) },
                    onProgress = { progress -> textEditing.value = textEditing.value?.copy(progress = progress) },
                )
            }
            message.value = "Редактирование завершено"
        } finally {
            optionalJob = null
            textEditing.value = null
            fileOperation.value = false
        }
    }

    fun previewRange(id: String, startMs: Long, endMs: Long) = action {
        require(!fileOperation.value && !busy.value && active.value == null) {
            "Дождитесь завершения текущей задачи"
        }
        fileOperation.value = true
        rangePreview.value?.let { discardPreviewFiles(it) }
        rangePreview.value = null
        textEditing.value = TextEditingState(id, "Обработка выбранного интервала")
        optionalJob = currentCoroutineContext()[Job]
        try {
            EngineGate.exclusive {
                val revision = app.repository.revision.value
                val result = ru.localscribe.engine.RangeReprocessor(app.repository, app.models).preview(
                    id, startMs, endMs,
                    onStatus = { stage -> textEditing.value = textEditing.value?.copy(stage = stage) },
                    onProgress = { progress -> textEditing.value = textEditing.value?.copy(progress = progress) },
                )
                rangePreview.value = RangePreviewState(id, revision, startMs, endMs, result.segments,
                    result.speakers, result.temporaryAudioPaths)
            }
        } finally {
            optionalJob = null
            textEditing.value = null
            fileOperation.value = false
        }
    }

    fun applyRangePreview() = action {
        require(!fileOperation.value && !busy.value && active.value == null && !EngineGate.mutex.isLocked) {
            "Дождитесь завершения текущей задачи"
        }
        val preview = rangePreview.value ?: return@action
        fileOperation.value = true
        try {
            EngineGate.exclusive {
                withContext(Dispatchers.IO) {
                    try {
                        app.repository.applyRangePreview(preview.recordingId, preview.revision,
                            preview.startMs, preview.endMs, preview.segments, preview.speakers)
                    } catch (failure: Exception) {
                        discardPreviewFiles(preview)
                        rangePreview.value = null
                        throw failure
                    }
                    app.repository.cleanupSeparated(preview.recordingId)
                }
            }
            rangePreview.value = null
        } finally {
            fileOperation.value = false
        }
    }

    fun dismissRangePreview() = action {
        val preview = rangePreview.value ?: return@action
        rangePreview.value = null
        withContext(Dispatchers.IO) { discardPreviewFiles(preview) }
    }

    private fun discardPreviewFiles(preview: RangePreviewState) {
        preview.temporaryAudioPaths.forEach { File(it).delete() }
    }

    fun cancelOptionalProcessing() {
        optionalJob?.cancel()
        message.value = "Обработка остановлена. Сохранённые данные доступны."
    }

    fun deleteModels() = action {
        require(!busy.value && active.value == null)
        withContext(Dispatchers.IO) {
            app.models.delete()
            app.preparation.refresh()
        }
    }

    fun delete(id: String) = action {
        require(active.value != id && textEditing.value?.recordingId != id)
        stopPlayback()
        withContext(Dispatchers.IO) { app.repository.delete(id) }
        select(null)
    }

    fun edit(s: Segment, text: String) = action {
        require(active.value != s.recordingId && textEditing.value?.recordingId != s.recordingId)
        withContext(Dispatchers.IO) { app.repository.edit(s.recordingId, s.copy(text = text)) }
    }

    fun editTurn(parts: List<Segment>, text: String, speakerId: String?) = action {
        require(parts.isNotEmpty() && active.value != parts.first().recordingId)
        withContext(Dispatchers.IO) { app.repository.editTurn(parts, text, speakerId) }
    }

    fun rename(s: Speaker, name: String) = action {
        val id = selected.value ?: return@action
        require(active.value != id)
        withContext(Dispatchers.IO) { app.repository.rename(id, s, name) }
    }

    fun merge(from: String, to: String) = action {
        val id = selected.value ?: return@action
        require(active.value != id)
        withContext(Dispatchers.IO) { app.repository.mergeSpeakers(id, from, to) }
    }

    fun splitTurn(parts: List<Segment>) = action {
        require(parts.isNotEmpty() && active.value != parts.first().recordingId)
        withContext(Dispatchers.IO) { app.repository.splitTurn(parts) }
    }

    fun split(s: Segment) = action {
        require(active.value != s.recordingId)
        withContext(Dispatchers.IO) { app.repository.splitSpeaker(s.recordingId, s) }
    }

    fun export(uri: Uri, format: String) = action {
        val id = selected.value ?: return@action
        require(!busy.value && active.value == null) { "Дождитесь завершения текущей операции" }
        fileOperation.value = true
        try {
            withContext(Dispatchers.IO) {
                app.contentResolver.openOutputStream(uri, "wt")!!.use { stream ->
                    require(format == "json") { "Доступен только JSON" }
                    stream.bufferedWriter().use { app.repository.export(id, "json", it) }
                }
            }
            message.value = "Экспорт всей записи сохранён"
        } finally {
            fileOperation.value = false
        }
    }

    fun rememberVoice(s: Speaker, name: String) = action {
        val id = selected.value ?: return@action
        require(active.value == null && !busy.value)
        val remembered = withContext(Dispatchers.IO) { app.repository.renameAndRemember(id, s, name) }
        message.value = if (remembered) "Имя и голос сохранены для других записей"
            else "Имя сохранено. Для памяти нужен чистый образец одного голоса от 3 секунд."
    }

    fun createProfile(name: String) = action {
        require(active.value == null && !busy.value)
        withContext(Dispatchers.IO) { app.repository.createVoiceProfile(name) }
    }

    fun updateProfile(p: VoiceProfile, name: String, enabled: Boolean, threshold: Float) = action {
        require(active.value == null && !busy.value)
        withContext(Dispatchers.IO) {
            app.repository.updateVoiceProfile(p.id, name, enabled, threshold)
        }
    }

    fun addSample(profileId: String, speakerId: String, segmentId: String? = null) = action {
        require(active.value == null && !busy.value)
        val id = selected.value ?: error("Откройте запись")
        withContext(Dispatchers.IO) {
            app.repository.addVoiceSample(profileId, id, speakerId, segmentId)
        }
        message.value = "Образец сохранён по вашему выбору. Проверьте узнавание на другой записи."
    }

    fun removeSample(profileId: String, sampleId: String) = action {
        require(active.value == null && !busy.value)
        stopPlayback()
        withContext(Dispatchers.IO) { app.repository.removeVoiceSample(profileId, sampleId) }
    }

    fun assignProfile(segment: Segment, profileId: String) = action {
        require(active.value == null && !busy.value)
        withContext(Dispatchers.IO) {
            app.repository.assignProfile(segment.recordingId, segment, profileId)
        }
    }

    fun assignTurnProfile(parts: List<Segment>, text: String, profileId: String) = action {
        require(active.value == null && !busy.value && parts.isNotEmpty())
        withContext(Dispatchers.IO) {
            app.repository.editTurn(parts, text, parts.first().speakerId)
            parts.forEach { part -> app.repository.segment(part.recordingId, part.id)?.let {
                app.repository.assignProfile(it.recordingId, it, profileId)
            } }
            app.repository.recordings().forEach { app.repository.reidentify(it.id) }
        }
        message.value = "Человек назначен. Для узнавания сохраняются чистые образцы голоса от 3 секунд."
    }

    fun reidentify() = action {
        require(active.value == null && !busy.value)
        val id = selected.value ?: return@action
        withContext(Dispatchers.IO) { app.repository.reidentify(id) }
        message.value = "Имена по голосу обновлены. Ручные назначения сохранены."
    }

    fun playSample(sample: VoiceSample) = action {
        require(active.value == null)
        require(sample.audioPath.isNotBlank() && File(sample.audioPath).isFile) {
            "Аудио образца недоступно"
        }
        stopPlayback()
        val mp = MediaPlayer()
        player = mp
        mp.setOnPreparedListener { if (player === it) it.start() }
        mp.setOnCompletionListener { stopPlayback() }
        mp.setOnErrorListener { _, _, _ ->
            stopPlayback()
            message.value = "Не удалось воспроизвести образец"
            true
        }
        try {
            mp.setDataSource(sample.audioPath)
            mp.prepareAsync()
        } catch (e: Exception) {
            stopPlayback()
            throw e
        }
    }

    fun forgetVoice(id: String) = action {
        require(active.value == null && !busy.value)
        stopPlayback()
        withContext(Dispatchers.IO) { app.repository.forgetVoice(id) }
        message.value = "Профиль голоса удалён. Имена в прежних расшифровках сохранены."
    }

    fun play(segment: Segment) = playAudio(segment.startMs, segment.separatedAudioPath, segment.id)

    fun playOriginal() = playAudio(0, "", null)

    private fun playAudio(startMs: Long, separatedPath: String, segmentId: String?) = action {
        val r = transcript.value?.recording ?: return@action
        require(active.value != r.id) { "Воспроизведение доступно после остановки" }
        stopPlayback()
        val separated = separatedPath.takeIf { it.isNotBlank() && File(it).isFile }
        val offset = if (separated != null) startMs else 0L
        val mp = MediaPlayer()
        player = mp
        try {
            mp.setDataSource(separated ?: r.pcmPath.ifBlank { r.audioPath })
            playback.value =
                PlaybackState(
                    recordingId = r.id,
                    positionMs = startMs,
                    offsetMs = offset,
                    separatedId = segmentId.takeIf { separated != null },
                )
            mp.setOnPreparedListener { ready ->
                if (player === ready) {
                    playback.update { it.copy(durationMs = ready.duration.toLong(), ready = true) }
                    ready.setOnSeekCompleteListener { sought ->
                        if (player === sought) {
                            sought.setOnSeekCompleteListener(null)
                            sought.start()
                            playback.update { it.copy(playing = true) }
                        }
                    }
                    ready.seekTo(if (separated != null) 0 else startMs, MediaPlayer.SEEK_CLOSEST)
                    playbackJob =
                        viewModelScope.launch {
                            while (player === ready) {
                                playback.update {
                                    it.copy(
                                        positionMs = offset + ready.currentPosition,
                                        playing = ready.isPlaying,
                                    )
                                }
                                delay(32)
                            }
                        }
                }
            }
            mp.setOnCompletionListener { if (player === it) stopPlayback() }
            mp.setOnErrorListener { failed, what, extra ->
                if (player === failed) {
                    stopPlayback()
                    message.value = "Ошибка воспроизведения $what/$extra"
                }
                true
            }
            mp.prepareAsync()
        } catch (e: Exception) {
            stopPlayback()
            throw e
        }
    }

    fun togglePlayback() {
        val mp = player ?: return
        if (!playback.value.ready) return
        if (mp.isPlaying) mp.pause() else mp.start()
        playback.update { it.copy(playing = mp.isPlaying) }
    }

    fun seekPlayback(positionMs: Long) {
        val mp = player ?: return
        val state = playback.value
        if (state.ready) {
            mp.seekTo(
                (positionMs - state.offsetMs).coerceIn(0, state.durationMs),
                MediaPlayer.SEEK_CLOSEST,
            )
        }
    }

    fun stopPlayback() {
        playbackJob?.cancel()
        playbackJob = null
        player?.release()
        player = null
        playback.value = PlaybackState()
    }

    override fun onCleared() {
        stopPlayback()
        noteUpdates.close()
        rangePreview.value?.let { preview ->
            app.scope.launch(Dispatchers.IO) { discardPreviewFiles(preview) }
        }
    }
}
