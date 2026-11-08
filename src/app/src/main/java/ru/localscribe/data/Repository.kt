package ru.localscribe.data

import android.content.ContentValues
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper
import java.io.File
import java.io.Writer
import java.util.Locale
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.serialization.encodeToString
import ru.localscribe.core.*

class Repository(private val context: Context) :
    SQLiteOpenHelper(context, "transcripts.db", null, 6) {
    val revision = MutableStateFlow(0L)

    override fun onConfigure(db: SQLiteDatabase) {
        db.setForeignKeyConstraintsEnabled(true)
        db.enableWriteAheadLogging()
    }

    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL(
            "CREATE TABLE recordings(id TEXT PRIMARY KEY, created INTEGER NOT NULL, payload TEXT NOT NULL)"
        )
        db.execSQL(
            "CREATE TABLE segments(id TEXT PRIMARY KEY, recording_id TEXT NOT NULL REFERENCES recordings(id) ON DELETE CASCADE, start_ms INTEGER NOT NULL, end_ms INTEGER NOT NULL DEFAULT 0, payload TEXT NOT NULL, speaker_id TEXT, search_text TEXT NOT NULL DEFAULT '', separation_group TEXT, status TEXT NOT NULL DEFAULT 'final')"
        )
        db.execSQL("CREATE INDEX segments_time ON segments(recording_id,start_ms,id)")
        db.execSQL("CREATE INDEX segments_end ON segments(recording_id,end_ms,start_ms)")
        db.execSQL(
            "CREATE INDEX segments_speaker_time ON segments(recording_id,speaker_id,start_ms,id)"
        )
        db.execSQL(
            "CREATE INDEX segments_separation ON segments(recording_id,separation_group,speaker_id)"
        )
        db.execSQL(
            "CREATE TABLE speakers(recording_id TEXT NOT NULL REFERENCES recordings(id) ON DELETE CASCADE, id TEXT NOT NULL, payload TEXT NOT NULL, PRIMARY KEY(recording_id,id))"
        )
        createProfiles(db)
        createProcessingTables(db)
        createNotes(db)
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        if (oldVersion < 3) createProfiles(db)
        if (oldVersion < 2) {
            db.execSQL("ALTER TABLE segments ADD COLUMN speaker_id TEXT")
            db.execSQL("ALTER TABLE segments ADD COLUMN search_text TEXT NOT NULL DEFAULT ''")
            db.execSQL("ALTER TABLE segments ADD COLUMN separation_group TEXT")
            // Iterate stable primary keys in bounded batches; onUpgrade itself is transactional.
            var last: String? = null
            while (true) {
                val batch =
                    db.rawQuery(
                            "SELECT id,payload FROM segments" +
                                (if (last == null) "" else " WHERE id>?") +
                                " ORDER BY id LIMIT 100",
                            last?.let { arrayOf(it) },
                        )
                        .use { c ->
                            buildList {
                                while (c.moveToNext()) add(
                                    c.getString(0) to
                                        codec.decodeFromString<Segment>(c.getString(1))
                                )
                            }
                        }
                if (batch.isEmpty()) break
                for ((id, segment) in batch) db.update(
                    "segments",
                    ContentValues().apply {
                        put("speaker_id", segment.speakerId)
                        put("separation_group", segment.separation?.group)
                        put("search_text", segment.text.lowercase(Locale.ROOT))
                    },
                    "id=?",
                    arrayOf(id),
                )
                last = batch.last().first
            }
            db.execSQL("DROP INDEX segments_time")
            db.execSQL("CREATE INDEX segments_time ON segments(recording_id,start_ms,id)")
            db.execSQL(
                "CREATE INDEX segments_speaker_time ON segments(recording_id,speaker_id,start_ms,id)"
            )
            db.execSQL(
                "CREATE INDEX segments_separation ON segments(recording_id,separation_group,speaker_id)"
            )
        }
        if (oldVersion < 4) {
            db.execSQL("ALTER TABLE segments ADD COLUMN end_ms INTEGER NOT NULL DEFAULT 0")
            var last: String? = null
            while (true) {
                val batch = db.rawQuery(
                    "SELECT id,payload FROM segments" +
                        (if (last == null) "" else " WHERE id>?") + " ORDER BY id LIMIT 100",
                    last?.let { arrayOf(it) },
                ).use { c -> buildList {
                    while (c.moveToNext()) add(c.getString(0) to codec.decodeFromString<Segment>(c.getString(1)).endMs)
                } }
                if (batch.isEmpty()) break
                for ((id, endMs) in batch) db.update("segments", ContentValues().apply {
                    put("end_ms", endMs)
                }, "id=?", arrayOf(id))
                last = batch.last().first
            }
            db.execSQL("CREATE INDEX segments_end ON segments(recording_id,end_ms,start_ms)")
        }
        if (oldVersion < 5) {
            db.execSQL("ALTER TABLE segments ADD COLUMN status TEXT NOT NULL DEFAULT 'final'")
            var last: String? = null
            while (true) {
                val batch = db.rawQuery("SELECT id,payload FROM segments" +
                    (if (last == null) "" else " WHERE id>?") + " ORDER BY id LIMIT 100",
                    last?.let { arrayOf(it) }).use { c -> buildList {
                    while (c.moveToNext()) add(c.getString(0) to codec.decodeFromString<Segment>(c.getString(1)).status)
                } }
                if (batch.isEmpty()) break
                for ((id, status) in batch) db.update("segments", ContentValues().apply {
                    put("status", status)
                }, "id=?", arrayOf(id))
                last = batch.last().first
            }
            createProcessingTables(db)
        }
        if (oldVersion < 6) createNotes(db)
    }

    private fun createNotes(db: SQLiteDatabase) {
        db.execSQL("CREATE TABLE notes(recording_id TEXT PRIMARY KEY REFERENCES recordings(id) ON DELETE CASCADE, content TEXT NOT NULL)")
    }

    @Synchronized
    fun note(id: String): String = readableDatabase.rawQuery(
        "SELECT content FROM notes WHERE recording_id=?", arrayOf(id),
    ).use { if (it.moveToFirst()) it.getString(0) else "" }

    @Synchronized
    fun saveNote(id: String, text: String) {
        require(recording(id) != null) { "Запись удалена" }
        writableDatabase.insertWithOnConflict("notes", null, ContentValues().apply {
            put("recording_id", id)
            put("content", text)
        }, SQLiteDatabase.CONFLICT_REPLACE)
        revision.update { it + 1 }
    }

    private fun createProcessingTables(db: SQLiteDatabase) {
        db.execSQL("CREATE TABLE processing_runs(recording_id TEXT PRIMARY KEY REFERENCES recordings(id) ON DELETE CASCADE)")
        db.execSQL("CREATE TABLE processing_segments(id TEXT NOT NULL, recording_id TEXT NOT NULL REFERENCES processing_runs(recording_id) ON DELETE CASCADE, start_ms INTEGER NOT NULL, end_ms INTEGER NOT NULL, payload TEXT NOT NULL, speaker_id TEXT, search_text TEXT NOT NULL DEFAULT '', separation_group TEXT, status TEXT NOT NULL DEFAULT 'final', PRIMARY KEY(recording_id,id))")
        db.execSQL("CREATE INDEX processing_segments_time ON processing_segments(recording_id,start_ms,id)")
        db.execSQL("CREATE TABLE processing_speakers(recording_id TEXT NOT NULL REFERENCES processing_runs(recording_id) ON DELETE CASCADE, id TEXT NOT NULL, payload TEXT NOT NULL, PRIMARY KEY(recording_id,id))")
    }

    @Synchronized
    fun recordings(): List<Recording> =
        readableDatabase
            .rawQuery("SELECT payload FROM recordings ORDER BY created DESC", null)
            .use { c ->
                buildList { while (c.moveToNext()) add(codec.decodeFromString(c.getString(0))) }
            }

    @Synchronized
    fun recording(id: String): Recording? =
        readableDatabase.rawQuery("SELECT payload FROM recordings WHERE id=?", arrayOf(id)).use {
            if (it.moveToFirst()) codec.decodeFromString(it.getString(0)) else null
        }

    @Synchronized
    fun segments(id: String): List<Segment> =
        readableDatabase
            .rawQuery(
                "SELECT payload FROM segments WHERE recording_id=? ORDER BY start_ms,id",
                arrayOf(id),
            )
            .use { c ->
                buildList { while (c.moveToNext()) add(codec.decodeFromString(c.getString(0))) }
            }

    @Synchronized
    fun speakers(id: String): List<Speaker> =
        readableDatabase
            .rawQuery("SELECT payload FROM speakers WHERE recording_id=? ORDER BY id", arrayOf(id))
            .use { c ->
                buildList { while (c.moveToNext()) add(codec.decodeFromString(c.getString(0))) }
            }

    @Synchronized
    fun snapshot(id: String): Transcript {
        return Transcript(
            recording = recording(id) ?: error("Запись удалена"),
            speakers = speakers(id),
            segments = segments(id),
        )
    }

    @Synchronized
    fun segmentCount(id: String): Int =
        readableDatabase
            .rawQuery("SELECT COUNT(*) FROM segments WHERE recording_id=?", arrayOf(id))
            .use {
                it.moveToFirst()
                it.getInt(0)
            }

    @Synchronized
    fun segment(recordingId: String, id: String): Segment? =
        readableDatabase
            .rawQuery(
                "SELECT payload FROM segments WHERE recording_id=? AND id=?",
                arrayOf(recordingId, id),
            )
            .use { if (it.moveToFirst()) codec.decodeFromString(it.getString(0)) else null }

    @Synchronized
    fun page(id: String, query: TranscriptQuery = TranscriptQuery()): TranscriptPage {
        val args = mutableListOf(id)
        val where = buildString {
            append("recording_id=?")
            query.speakerId?.let {
                if (it == "unknown") append(" AND speaker_id IS NULL")
                else {
                    append(" AND speaker_id=?")
                    args += it
                }
            }
            if (query.text.isNotBlank()) {
                append(" AND instr(search_text,?)>0")
                args += query.text.lowercase(Locale.ROOT)
            }
        }
        val starts = mutableListOf<Int>()
        val turnTimes = mutableListOf<Long>()
        var anchoredTurn = 0
        var row = 0
        var previousSpeaker: String? = null
        var previousSeparated = false
        readableDatabase.rawQuery("SELECT speaker_id,separation_group,start_ms FROM segments WHERE $where ORDER BY start_ms,id",
            args.toTypedArray()).use { c -> while (c.moveToNext()) {
            val speaker = if (c.isNull(0)) null else c.getString(0)
            val separated = !c.isNull(1)
            if (row == 0 || speaker == null || speaker != previousSpeaker || separated || previousSeparated) {
                starts += row
                turnTimes += c.getLong(2)
            }
            if (query.positionMs != null && c.getLong(2) <= query.positionMs) anchoredTurn = starts.lastIndex
            previousSpeaker = speaker; previousSeparated = separated; row++
        } }
        val total = starts.size
        val size = 100
        val lastOffset = ((total - 1).coerceAtLeast(0) / size) * size
        val offset = when {
            query.followLatest -> lastOffset
            query.positionMs != null -> (anchoredTurn / size) * size
            else -> query.offset.coerceIn(0, lastOffset)
        }
        val startRow = starts.getOrNull(offset) ?: 0
        val stopRow = starts.getOrNull(offset + size) ?: row
        val values =
            readableDatabase
                .rawQuery(
                    "SELECT payload FROM segments WHERE $where ORDER BY start_ms,id LIMIT ? OFFSET ?",
                    (args + listOf((stopRow - startRow).toString(), startRow.toString())).toTypedArray(),
                )
                .use { c ->
                    buildList<Segment> {
                        while (c.moveToNext()) add(codec.decodeFromString(c.getString(0)))
                    }
                }
        return TranscriptPage(
            Transcript(
                recording = recording(id) ?: error("Запись удалена"),
                speakers = speakers(id),
                segments = values,
            ),
            total,
            offset,
            size,
            minOf(size, total - offset),
            turnTimes.getOrNull(offset + size),
        )
    }

    /** Snapshot transaction prevents concurrent revisions changing an export mid-document. */
    @Synchronized
    fun export(id: String, format: String, writer: Writer) =
        readForExport(id) { header, rows -> Exporter.write(header, rows, format, writer) }

    private fun readForExport(id: String, consume: (Transcript, Sequence<Segment>) -> Unit) {
        val db = readableDatabase
        db.beginTransactionNonExclusive()
        try {
            val header =
                Transcript(
                    recording = recording(id) ?: error("Запись удалена"),
                    speakers = speakers(id),
                    segments = emptyList(),
                )
            db.rawQuery(
                    "SELECT payload FROM segments WHERE recording_id=? ORDER BY start_ms,id",
                    arrayOf(id),
                )
                .use { c ->
                    consume(
                        header,
                        sequence {
                            while (c.moveToNext()) yield(
                                codec.decodeFromString<Segment>(c.getString(0))
                            )
                        },
                    )
                }
            db.setTransactionSuccessful()
        } finally {
            db.endTransaction()
        }
    }

    /** Keyset page releases the repository monitor before callers run model inference. */
    @Synchronized
    fun segmentBatchAfter(id: String, startMs: Long? = null, lastId: String = ""): List<Segment> {
        val args = if (startMs == null) arrayOf(id)
            else arrayOf(id, startMs.toString(), startMs.toString(), lastId)
        return readableDatabase.rawQuery(
            "SELECT payload FROM segments WHERE recording_id=?" +
                (if (startMs == null) "" else " AND (start_ms>? OR (start_ms=? AND id>?))") +
                " ORDER BY start_ms,id LIMIT 100", args,
        ).use { c -> buildList {
            while (c.moveToNext()) add(codec.decodeFromString<Segment>(c.getString(0)))
        } }
    }

    /** Bounded traversal for refinement. Do not change segment IDs or start times in callbacks. */
    @Synchronized
    fun visitSegments(id: String, visit: (List<Segment>) -> Unit) {
        var start: Long? = null
        var lastId = ""
        while (true) {
            val args =
                if (start == null) arrayOf(id)
                else arrayOf(id, start.toString(), start.toString(), lastId)
            val batch =
                readableDatabase
                    .rawQuery(
                        "SELECT payload FROM segments WHERE recording_id=?" +
                            (if (start == null) ""
                            else " AND (start_ms>? OR (start_ms=? AND id>?))") +
                            " ORDER BY start_ms,id LIMIT 100",
                        args,
                    )
                    .use { c ->
                        buildList<Segment> {
                            while (c.moveToNext()) add(codec.decodeFromString(c.getString(0)))
                        }
                    }
            if (batch.isEmpty()) return
            start = batch.last().startMs
            lastId = batch.last().id
            visit(batch)
        }
    }

    @Synchronized
    fun refineSpeakers(
        id: String,
        speakers: List<Speaker>,
        transform: (Segment) -> Segment,
        completed: Boolean = false,
    ) {
        val db = writableDatabase
        db.beginTransaction()
        try {
            val r = recording(id) ?: error("Запись удалена")
            visitSegments(id) { batch ->
                val changed =
                    batch.map { old -> transform(old).takeIf { it != old } }.filterNotNull()
                if (changed.isNotEmpty()) commit(r, changed, emptyList())
            }
            replaceSpeakers(
                if (completed) r.copy(state = "done", progress = 1f) else r,
                emptyList(),
                speakers,
            )
            db.setTransactionSuccessful()
        } finally {
            db.endTransaction()
        }
    }

    @Synchronized
    fun commitLive(id: String, segments: List<Segment>, speakers: List<Speaker>, samples: Long) {
        val r = recording(id) ?: error("Запись удалена")
        require(samples >= (r.liveCheckpointSamples ?: 0L)) { "Live checkpoint moved backwards" }
        require(segments.all { it.recordingId == id }) { "Segment belongs to another recording" }
        val safe = segments.filter { segment(id, it.id)?.status != "corrected" }
        commit(r.copy(liveCheckpointSamples = samples), safe, speakers)
    }

    @Synchronized
    fun restoreConstraints(id: String, cluster: SpeakerCluster) {
        readableDatabase
            .rawQuery(
                "SELECT DISTINCT a.speaker_id,b.speaker_id FROM segments a JOIN segments b " +
                    "ON a.recording_id=b.recording_id AND a.separation_group=b.separation_group " +
                    "WHERE a.recording_id=? AND a.separation_group IS NOT NULL AND a.speaker_id<b.speaker_id",
                arrayOf(id),
            )
            .use { c ->
                while (c.moveToNext()) cluster.keepDistinct(c.getString(0), c.getString(1))
            }
    }

    private fun createProfiles(db: SQLiteDatabase) {
        db.execSQL("CREATE TABLE voice_profiles(id TEXT PRIMARY KEY, payload TEXT NOT NULL)")
    }

    @Synchronized
    fun voiceProfiles(): List<VoiceProfile> =
        readableDatabase.rawQuery("SELECT payload FROM voice_profiles ORDER BY id", null).use { c ->
            buildList {
                while (c.moveToNext()) add(codec.decodeFromString<VoiceProfile>(c.getString(0)))
            }
        }

    private fun voiceSegments(recordingId: String, speakerId: String): List<Segment> =
        readableDatabase
            .rawQuery(
                "SELECT payload FROM segments WHERE recording_id=? AND speaker_id=? ORDER BY start_ms DESC,id DESC LIMIT 12",
                arrayOf(recordingId, speakerId),
            )
            .use { c ->
                buildList {
                    while (c.moveToNext()) add(codec.decodeFromString<Segment>(c.getString(0)))
                }
            }

    /** Called only after explicit UI consent; ordinary renaming never enrolls a voice. */
    @Synchronized
    fun rememberVoice(recordingId: String, speakerId: String, name: String): VoiceProfile {
        require(name.isNotBlank()) { "Введите имя участника" }
        val r = recording(recordingId) ?: error("Запись удалена")
        val speaker = speakers(recordingId).first { it.id == speakerId }
        val model =
            r.modelInfo?.sha256?.get("speaker.onnx")
                ?: error("Неизвестна версия модели голоса; сначала обработайте запись")
        val voice =
            Voiceprints.enrollment(voiceSegments(recordingId, speakerId))
                ?: error(
                    "Нужно 3 секунды чистой речи одного голоса. Для старой записи выполните повторную обработку; проверьте назначение участника."
                )
        val existing = voiceProfiles().firstOrNull { it.id == speaker.voiceProfileId }
        val profile = existing ?: createVoiceProfile(name)
        try {
            val evidence =
                voiceSegments(recordingId, speakerId)
                    .filter {
                        it.embeddingSource == "utterance" &&
                            it.status != "preliminary" &&
                            it.separation == null &&
                            !it.overlap.startsWith("detected") &&
                            it.endMs - it.startMs >= 800 &&
                            SpeakerCluster.normalize(it.embedding.toFloatArray()) != null
                    }
                    .sortedBy { it.startMs }
                    .takeLast(6)
                    .map { it.id }
            if (profile.samples.none { it.sourceSegments == evidence })
                addVoiceSample(profile.id, recordingId, speakerId)
            updateVoiceProfile(profile.id, name, profile.enabled, profile.threshold)
            val updated = voiceProfiles().first { it.id == profile.id }
            commit(
                r,
                emptyList(),
                listOf(
                    speaker.copy(
                        name = updated.name,
                        nameIsManual = true,
                        voiceProfileId = updated.id,
                        voiceProfileSimilarity = null,
                    )
                ),
            )
            return updated
        } catch (t: Throwable) {
            if (existing == null) forgetVoice(profile.id)
            throw t
        }
    }

    @Synchronized
    fun forgetVoice(id: String) {
        val profile = voiceProfiles().firstOrNull { it.id == id }
        writableDatabase.delete("voice_profiles", "id=?", arrayOf(id))
        profile
            ?.samples
            ?.filter { it.audioPath.isNotBlank() }
            ?.forEach { File(it.audioPath).delete() }
        // Historic transcript labels remain; only the reusable voice vector is removed.
        revision.update { it + 1 }
    }

    @Synchronized
    fun createVoiceProfile(name: String): VoiceProfile {
        require(name.isNotBlank()) { "Введите имя" }
        require(voiceProfiles().size < 100) { "Достигнут лимит 100 профилей" }
        return VoiceProfile(
                java.util.UUID.randomUUID().toString(),
                name.trim().take(120),
                "",
                emptyList(),
                System.currentTimeMillis(),
            )
            .also { saveVoiceProfile(it) }
    }

    private fun saveVoiceProfile(profile: VoiceProfile) {
        writableDatabase.insertWithOnConflict(
            "voice_profiles",
            null,
            ContentValues().apply {
                put("id", profile.id)
                put("payload", codec.encodeToString(profile))
            },
            SQLiteDatabase.CONFLICT_REPLACE,
        )
        revision.update { it + 1 }
    }

    @Synchronized
    fun updateVoiceProfile(id: String, name: String, enabled: Boolean, threshold: Float) {
        require(name.isNotBlank()) { "Введите имя" }
        require(threshold.isFinite() && threshold in 0.65f..0.95f)
        val profile = voiceProfiles().first { it.id == id }
        saveVoiceProfile(
            profile.copy(name = name.trim().take(120), enabled = enabled, threshold = threshold)
        )
    }

    @Synchronized
    fun addVoiceSample(
        profileId: String,
        recordingId: String,
        speakerId: String,
        segmentId: String? = null,
    ) {
        val profile = voiceProfiles().first { it.id == profileId }
        require(profile.samples.size < 8) { "Можно сохранить до 8 образцов; удалите ненужный" }
        val r = recording(recordingId) ?: error("Запись удалена")
        val model = r.modelInfo?.sha256?.get("speaker.onnx") ?: error("Сначала обработайте запись")
        require(profile.modelSha256.isBlank() || profile.modelSha256 == model) {
            "Модель голоса изменилась; создайте новый профиль"
        }
        val candidates =
            if (segmentId != null) listOfNotNull(segment(recordingId, segmentId))
            else voiceSegments(recordingId, speakerId)
        val clean =
            candidates
                .filter {
                    it.speakerId == speakerId &&
                        it.embeddingSource == "utterance" &&
                        it.status != "preliminary" &&
                        it.separation == null &&
                        !it.overlap.startsWith("detected") &&
                        it.endMs - it.startMs >= 800 &&
                        SpeakerCluster.normalize(it.embedding.toFloatArray()) != null
                }
                .sortedBy { it.startMs }
                .takeLast(6)
        val vector =
            Voiceprints.enrollment(clean)
                ?: error(
                    "Нужно минимум 3 секунды чистой речи одного человека. Исправьте назначение реплик или запишите более длинный образец."
                )
        val evidence = clean.map { it.id }
        require(profile.samples.none { it.sourceSegments == evidence }) {
            "Этот образец уже сохранён"
        }
        if (profile.embedding.isNotEmpty())
            require(
                SpeakerCluster.cosine(vector.toFloatArray(), profile.embedding.toFloatArray()) >=
                    0.75f
            ) {
                "Образец заметно отличается от профиля. Проверьте человека; ошибочный образец можно удалить."
            }
        val input = File(r.pcmPath)
        require(ru.localscribe.audio.WavFile.isCanonical(input) && input.length() > 44) {
            "Нет нормализованного аудио. Выполните обработку записи."
        }
        val folder = File(context.filesDir, "voice-samples").apply { mkdirs() }
        val key = java.util.UUID.randomUUID().toString()
        val output = File(folder, "$key.wav")
        try {
            var previousEnd = 0L
            var written = 0L
            java.io.RandomAccessFile(input, "r").use { source ->
                ru.localscribe.audio.WavFile(output).use { target ->
                    for (turn in clean) {
                        val start = maxOf(previousEnd, turn.startMs) * 16
                        val end = turn.endMs * 16
                        require(end - start <= 15 * 16000) {
                            "Слишком длинный образец; выберите отдельную реплику"
                        }
                        if (end > start) {
                            val audio =
                                ru.localscribe.audio.WavFile.read(
                                    source,
                                    start,
                                    (end - start).toInt(),
                                )
                            require(audio.size == (end - start).toInt()) { "Аудио короче реплики" }
                            target.write(audio)
                            written += audio.size
                        }
                        previousEnd = maxOf(previousEnd, turn.endMs)
                    }
                }
            }
            val legacy =
                if (profile.samples.isEmpty() && profile.embedding.isNotEmpty())
                    listOf(VoiceSample("legacy", profile.embedding, 0))
                else emptyList()
            val samples =
                profile.samples +
                    legacy +
                    VoiceSample(key, vector, written / 16, output.path, evidence)
            require(samples.size <= 8) { "Достигнут лимит образцов" }
            val centroid =
                SpeakerCluster.normalize(
                        FloatArray(vector.size) { i ->
                            samples.sumOf { it.embedding[i].toDouble() }.toFloat() / samples.size
                        }
                    )!!
                    .toList()
            saveVoiceProfile(
                profile.copy(modelSha256 = model, embedding = centroid, samples = samples)
            )
        } catch (t: Throwable) {
            output.delete()
            throw t
        }
    }

    @Synchronized
    fun removeVoiceSample(profileId: String, sampleId: String) {
        val profile = voiceProfiles().first { it.id == profileId }
        val sample = profile.samples.first { it.id == sampleId }
        val samples = profile.samples.filterNot { it.id == sampleId }
        val centroid =
            if (samples.isEmpty()) emptyList()
            else
                SpeakerCluster.normalize(
                        FloatArray(samples.first().embedding.size) { i ->
                            samples.sumOf { it.embedding[i].toDouble() }.toFloat() / samples.size
                        }
                    )!!
                    .toList()
        saveVoiceProfile(profile.copy(samples = samples, embedding = centroid))
        if (sample.audioPath.isNotBlank()) File(sample.audioPath).delete()
    }

    /** Explicit person assignment also saves qualified voice evidence for other sessions. */
    @Synchronized
    fun assignProfile(recordingId: String, segment: Segment, profileId: String) {
        require(segment.recordingId == recordingId)
        val textChanged = this.segment(recordingId, segment.id)?.text != segment.text
        val profile = voiceProfiles().first { it.id == profileId }
        val r = recording(recordingId) ?: error("Запись удалена")
        val ss = speakers(recordingId)
        val n =
            (ss.mapNotNull { it.id.removePrefix("speaker_").toIntOrNull() }.maxOrNull() ?: 0) + 1
        val speaker =
            ss.firstOrNull { it.voiceProfileId == profileId }
                ?: Speaker("speaker_$n", profile.name, segment.embedding, 1)
        commit(
            r,
            listOf(
                segment.copy(
                    speakerId = speaker.id,
                    status = "corrected",
                    speakerProvisional = false,
                    speakerSimilarity = null,
                    tokens = if (textChanged) emptyList() else segment.tokens,
                    words = if (textChanged) emptyList() else segment.words,
                    confidence = null,
                    acoustics =
                        segment.acoustics?.copy(
                            relativeDb = null,
                            relativeF0Semitones = null,
                            wordsPerMinute = null,
                        ),
                )
            ),
            listOf(
                speaker.copy(
                    name = profile.name,
                    nameIsManual = true,
                    voiceProfileId = profile.id,
                    voiceProfileSimilarity = null,
                )
            ),
        )
        rememberAssignedVoice(recordingId, speaker.id, profile.id)
    }

    @Synchronized
    fun reidentify(recordingId: String) {
        val r = recording(recordingId) ?: error("Запись удалена")
        commit(
            r,
            emptyList(),
            speakers(recordingId).map { s ->
                if (s.nameIsManual) s
                else
                    s.copy(
                        name = "Участник ${s.id.removePrefix("speaker_")}",
                        voiceProfileId = null,
                        voiceProfileSimilarity = null,
                    )
            },
        )
    }

    /** Explicitly resume this microphone session; never truncate an existing WAV or a fork. */
    @Synchronized
    fun prepareCapture(id: String): Recording {
        val r = recording(id) ?: error("Запись не найдена")
        require(r.source == "microphone" && r.analysisMode == "streaming") {
            "Продолжить можно только исходную запись микрофона"
        }
        require(r.state in setOf("imported", "capture_empty", "recorded", "interrupted", "error")) {
            "Эта запись уже выполняется"
        }
        val file = File(r.audioPath)
        val neverStarted =
            r.state in setOf("imported", "capture_empty", "interrupted", "error") &&
                r.durationMs == 0L &&
                segmentCount(id) == 0 &&
                (r.liveCheckpointSamples ?: 0L) == 0L &&
                r.checkpointSamples == 0L
        if (file.exists()) {
            ru.localscribe.audio.WavFile.repair(file)
            require(ru.localscribe.audio.WavFile.isCanonical(file)) {
                "Исходное аудио повреждено. Оно сохранено без перезаписи."
            }
        } else {
            require(neverStarted) { "Исходное аудио отсутствует или повреждено" }
        }
        val shared =
            recordings().any { it.id != id && r.audioPath in listOf(it.audioPath, it.pcmPath) }
        val audio =
            if (shared && file.isFile) {
                File(file.parentFile, "$id-resume-${java.util.UUID.randomUUID()}.wav").also {
                    try {
                        file.copyTo(it)
                    } catch (t: Throwable) {
                        it.delete()
                        throw t
                    }
                }
            } else file
        return r.copy(audioPath = audio.absolutePath, pcmPath = audio.absolutePath).also {
            save(it)
        }
    }

    /** A failure before AudioRecord starts is retryable, but missing recorded audio is not. */
    @Synchronized
    fun captureStopped(id: String, reason: String, state: String = "interrupted") {
        val r = recording(id) ?: return
        val file = File(r.audioPath)
        ru.localscribe.audio.WavFile.repair(file)
        val valid = ru.localscribe.audio.WavFile.isCanonical(file)
        val hasAudio = valid && file.length() > 44
        val hadAudio =
            r.durationMs > 0 ||
                segmentCount(id) > 0 ||
                (r.liveCheckpointSamples ?: 0L) > 0 ||
                r.checkpointSamples > 0
        val retryable = !hadAudio && (!file.exists() || (valid && file.length() == 44L))
        save(
            r.copy(
                state =
                    if (hasAudio) state else if (retryable) "capture_empty" else "audio_missing",
                durationMs = if (hasAudio) Timecode.ms((file.length() - 44) / 2) else r.durationMs,
                error =
                    reason +
                        " " +
                        when {
                            hasAudio ->
                                "Сохранённое аудио доступно; запись или обработку можно продолжить."
                            retryable -> "Звук не записан. Нажмите «Начать запись заново»."
                            else ->
                                "Аудио отсутствует или повреждено. Сохранённый текст доступен; начните новую запись."
                        },
            )
        )
    }

    private fun putRecord(db: SQLiteDatabase, r: Recording) {
        val v =
            ContentValues().apply {
                put("id", r.id)
                put("created", r.createdAt)
                put("payload", codec.encodeToString(r))
            }
        // REPLACE would cascade-delete children. Update first instead.
        if (db.update("recordings", v, "id=?", arrayOf(r.id)) == 0)
            db.insertOrThrow("recordings", null, v)
    }

    @Synchronized
    fun save(r: Recording) {
        putRecord(writableDatabase, r)
        revision.update { it + 1 }
    }

    @Synchronized
    fun update(id: String, change: (Recording) -> Recording) {
        recording(id)?.let { save(change(it)) }
    }

    @Synchronized
    fun append(id: String, segments: List<Segment>, speakers: List<Speaker>) {
        recording(id)?.let { commit(it, segments, speakers) }
    }

    @Synchronized
    fun removePreliminary(recordingId: String, segmentId: String) {
        val db = writableDatabase
        val preliminary =
            db.rawQuery(
                    "SELECT payload FROM segments WHERE id=? AND recording_id=?",
                    arrayOf(segmentId, recordingId),
                )
                .use {
                    it.moveToFirst() &&
                        codec.decodeFromString<Segment>(it.getString(0)).status == "preliminary"
                }
        if (preliminary) {
            db.delete("segments", "id=? AND recording_id=?", arrayOf(segmentId, recordingId))
            revision.update { it + 1 }
        }
    }

    @Synchronized
    fun prepareProcessing(id: String, settings: Settings): Recording {
        val r = recording(id) ?: error("Запись не найдена")
        require(r.state !in setOf("capture_pending", "recording", "paused", "processing", "decoding", "finishing")) {
            "Дождитесь завершения текущей задачи"
        }
        // Keep the current transcript until each replacement block commits successfully.
        val next = r.copy(
            analysisMode = "offline",
            state = "imported",
            checkpointSamples = 0,
            progress = 0f,
            error = null,
            modelInfo = null,
            rtf = null,
            liveCheckpointSamples = null,
            settings = settings,
        )
        val db = writableDatabase
        db.beginTransaction()
        try {
            db.delete("processing_runs", "recording_id=?", arrayOf(id))
            db.insertOrThrow("processing_runs", null, ContentValues().apply { put("recording_id", id) })
            putRecord(db, next)
            db.setTransactionSuccessful()
        } finally { db.endTransaction() }
        revision.update { it + 1 }
        return next
    }

    private fun hasProcessingRun(id: String): Boolean = readableDatabase.rawQuery(
        "SELECT 1 FROM processing_runs WHERE recording_id=?", arrayOf(id),
    ).use { it.moveToFirst() }

    @Synchronized
    fun processingSpeakers(id: String): List<Speaker> {
        if (!hasProcessingRun(id)) return speakers(id)
        val staged = readableDatabase.rawQuery(
            "SELECT payload FROM processing_speakers WHERE recording_id=? ORDER BY id", arrayOf(id),
        ).use { c -> buildList<Speaker> {
            while (c.moveToNext()) add(codec.decodeFromString(c.getString(0)))
        } }
        return staged.ifEmpty { speakers(id) }
    }

    @Synchronized
    fun processingSegmentBatchAfter(id: String, startMs: Long? = null, lastId: String = ""): List<Segment> {
        if (!hasProcessingRun(id)) return segmentBatchAfter(id, startMs, lastId)
        val args = if (startMs == null) arrayOf(id)
            else arrayOf(id, startMs.toString(), startMs.toString(), lastId)
        return readableDatabase.rawQuery(
            "SELECT payload FROM processing_segments WHERE recording_id=?" +
                (if (startMs == null) "" else " AND (start_ms>? OR (start_ms=? AND id>?))") +
                " ORDER BY start_ms,id LIMIT 100", args,
        ).use { c -> buildList<Segment> {
            while (c.moveToNext()) add(codec.decodeFromString(c.getString(0)))
        } }
    }

    /** Promote a complete rerun in one transaction; cancellation leaves the old transcript intact. */
    @Synchronized
    fun completeProcessing(id: String) {
        if (!hasProcessingRun(id)) return
        val db = writableDatabase
        db.beginTransaction()
        try {
            val recording = recording(id) ?: error("Запись удалена")
            val speakers = processingSpeakers(id)
            db.delete("segments", "recording_id=? AND status!='corrected'", arrayOf(id))
            db.execSQL("INSERT OR REPLACE INTO segments(id,recording_id,start_ms,end_ms,payload,speaker_id,search_text,separation_group,status) " +
                "SELECT s.id,s.recording_id,s.start_ms,s.end_ms,s.payload,s.speaker_id,s.search_text,s.separation_group,s.status FROM processing_segments s " +
                "WHERE s.recording_id=? AND NOT EXISTS (SELECT 1 FROM segments p WHERE p.recording_id=s.recording_id AND p.status='corrected' " +
                "AND (p.id=s.id OR (p.start_ms<s.end_ms AND s.start_ms<p.end_ms)))", arrayOf(id))
            commit(recording, emptyList(), speakers)
            db.delete("processing_runs", "recording_id=?", arrayOf(id))
            db.setTransactionSuccessful()
        } finally { db.endTransaction() }
        revision.update { it + 1 }
    }

    /** Apply editor output only while its original ASR text remains unchanged. */
    @Synchronized
    fun commitEditedText(id: String, candidates: List<Segment>) {
        val r = recording(id) ?: return
        val changed = candidates.mapNotNull { candidate ->
            val current = segment(id, candidate.id) ?: return@mapNotNull null
            if (current.status == "corrected" || current.originalAsrText != null ||
                candidate.recordingId != id || candidate.originalAsrText != current.text) null
            else current.copy(text = candidate.text, originalAsrText = current.text)
        }
        if (changed.isNotEmpty()) commit(r, changed, emptyList())
    }

    /** Explicit preview acceptance changes only complete segments inside the chosen interval. */
    @Synchronized
    fun applyRangePreview(
        id: String,
        expectedRevision: Long,
        startMs: Long,
        endMs: Long,
        segments: List<Segment>,
        speakers: List<Speaker>,
    ) {
        require(revision.value == expectedRevision) { "Запись изменилась. Получите новый предпросмотр." }
        require(startMs >= 0 && endMs > startMs && endMs - startMs <= 60000) { "Выберите интервал до 60 секунд" }
        require(segments.all { it.recordingId == id && it.startMs >= startMs && it.endMs <= endMs }) {
            "Результат выходит за выбранный интервал"
        }
        val recording = recording(id) ?: error("Запись удалена")
        val db = writableDatabase
        db.beginTransaction()
        try {
            val protected = mutableListOf<Segment>()
            visitSegments(id) { batch ->
                for (old in batch) if (old.startMs < endMs && old.endMs > startMs) {
                    if (old.status == "corrected" || old.startMs < startMs || old.endMs > endMs) protected += old
                    else db.delete("segments", "recording_id=? AND id=?", arrayOf(id, old.id))
                }
            }
            val safe = segments.filter { fresh ->
                protected.none { it.id == fresh.id || (it.startMs < fresh.endMs && fresh.startMs < it.endMs) }
            }
            commit(recording, safe, speakers)
            db.setTransactionSuccessful()
        } finally { db.endTransaction() }
    }

    /** Replace one completed audio interval atomically, retaining manual corrections. */
    @Synchronized
    fun commitProcessedBlock(
        r: Recording,
        segments: List<Segment>,
        speakers: List<Speaker>,
        startMs: Long,
        endMs: Long,
    ) {
        require(endMs > startMs && startMs >= 0) { "Invalid processing interval" }
        require(segments.all { it.recordingId == r.id }) { "Segment belongs to another recording" }
        val db = writableDatabase
        if (hasProcessingRun(r.id)) {
            db.beginTransaction()
            try {
                db.delete("processing_segments", "recording_id=? AND start_ms<? AND end_ms>?",
                    arrayOf(r.id, endMs.toString(), startMs.toString()))
                for (segment in segments) db.insertWithOnConflict("processing_segments", null,
                    segmentValues(r.id, segment), SQLiteDatabase.CONFLICT_REPLACE)
                for (speaker in speakers) db.insertWithOnConflict("processing_speakers", null,
                    ContentValues().apply {
                        put("recording_id", r.id)
                        put("id", speaker.id)
                        put("payload", codec.encodeToString(speaker))
                    }, SQLiteDatabase.CONFLICT_REPLACE)
                putRecord(db, r)
                db.setTransactionSuccessful()
            } finally { db.endTransaction() }
            revision.update { it + 1 }
            return
        }
        db.beginTransaction()
        try {
            val existing = db.rawQuery(
                "SELECT payload FROM segments WHERE recording_id=? AND start_ms<? AND end_ms>?",
                arrayOf(r.id, endMs.toString(), startMs.toString()),
            ).use { c ->
                buildList<Segment> {
                    while (c.moveToNext()) {
                        val segment = codec.decodeFromString<Segment>(c.getString(0))
                        if (segment.endMs > startMs) add(segment)
                    }
                }
            }
            val protected = existing.filter { it.status == "corrected" }
            for (old in existing) if (old.status != "corrected") {
                db.delete("segments", "recording_id=? AND id=?", arrayOf(r.id, old.id))
            }
            val safe = segments.filter { fresh ->
                segment(r.id, fresh.id)?.status != "corrected" &&
                    protected.none { it.startMs < fresh.endMs && fresh.startMs < it.endMs }
            }
            commit(r, safe, speakers)
            db.setTransactionSuccessful()
        } finally {
            db.endTransaction()
        }
    }

    @Synchronized
    fun forkProcessing(id: String, settings: Settings): Recording {
        val r = recording(id) ?: error("Запись не найдена")
        return r.copy(
                id = java.util.UUID.randomUUID().toString(),
                title = r.title + " • повтор",
                analysisMode = "offline",
                createdAt = System.currentTimeMillis(),
                state = "imported",
                checkpointSamples = 0,
                progress = 0f,
                error = null,
                modelInfo = null,
                rtf = null,
                liveCheckpointSamples = null,
                settings = settings,
            )
            .also { save(it) }
    }

    @Synchronized
    fun commit(r: Recording, segments: List<Segment>, speakers: List<Speaker>) {
        require(segments.all { it.recordingId == r.id }) { "Segment belongs to another recording" }
        val db = writableDatabase
        db.beginTransaction()
        try {
            putRecord(db, r)
            for (s in segments) db.insertWithOnConflict(
                "segments",
                null,
                segmentValues(r.id, s),
                SQLiteDatabase.CONFLICT_REPLACE,
            )
            val knownProfiles = voiceProfiles()
            val previousNames = this.speakers(r.id).associateBy { it.id }
            val assignedProfiles =
                previousNames.values
                    .filter { it.voiceProfileId != null && it.nameIsManual }
                    .associate { it.voiceProfileId!! to it.id }
                    .toMutableMap()
            for (incoming in speakers) {
                val old = previousNames[incoming.id]
                val base =
                    if (
                        (old?.nameIsManual == true ||
                            (old != null &&
                                old.voiceProfileId == null &&
                                old.name != "Участник ${old.id.removePrefix("speaker_")}")) &&
                            !incoming.nameIsManual
                    )
                        incoming.copy(
                            name = old.name,
                            nameIsManual = true,
                            voiceProfileId = old.voiceProfileId,
                        )
                    else if (
                        incoming.voiceProfileId == null &&
                            incoming.name != "Участник ${incoming.id.removePrefix("speaker_")}"
                    )
                        incoming.copy(nameIsManual = true)
                    else incoming
                val cleanBase =
                    if (base.voiceProfileId != null && !base.nameIsManual)
                        base.copy(
                            name = "Участник ${base.id.removePrefix("speaker_")}",
                            voiceProfileId = null,
                            voiceProfileSimilarity = null,
                        )
                    else base
                val voice =
                    if (!cleanBase.nameIsManual && knownProfiles.isNotEmpty())
                        Voiceprints.enrollment(voiceSegments(r.id, base.id))
                    else null
                val matched =
                    voice?.let {
                        Voiceprints.match(
                            it,
                            r.modelInfo?.sha256?.get("speaker.onnx") ?: "",
                            knownProfiles,
                        )
                    }
                val accepted =
                    matched?.takeIf {
                        assignedProfiles[it.profile.id] == null ||
                            assignedProfiles[it.profile.id] == base.id
                    }
                val s =
                    if (accepted != null)
                        cleanBase.copy(
                            name = accepted.profile.name,
                            voiceProfileId = accepted.profile.id,
                            voiceProfileSimilarity = accepted.similarity,
                        )
                    else cleanBase
                if (accepted != null) assignedProfiles[accepted.profile.id] = base.id
                db.insertWithOnConflict(
                    "speakers",
                    null,
                    ContentValues().apply {
                        put("id", s.id)
                        put("recording_id", r.id)
                        put("payload", codec.encodeToString(s))
                    },
                    SQLiteDatabase.CONFLICT_REPLACE,
                )
            }
            db.setTransactionSuccessful()
        } finally {
            db.endTransaction()
        }
        revision.update { it + 1 }
    }

    private fun segmentValues(recordingId: String, segment: Segment) = ContentValues().apply {
        put("id", segment.id)
        put("recording_id", recordingId)
        put("start_ms", segment.startMs)
        put("end_ms", segment.endMs)
        put("status", segment.status)
        put("speaker_id", segment.speakerId)
        put("separation_group", segment.separation?.group)
        put("search_text", segment.text.lowercase(Locale.ROOT))
        put("payload", codec.encodeToString(segment))
    }

    @Synchronized
    fun replaceSpeakers(r: Recording, segments: List<Segment>, speakers: List<Speaker>) {
        val db = writableDatabase
        db.beginTransaction()
        try {
            db.delete("speakers", "recording_id=?", arrayOf(r.id))
            commit(r, segments, speakers)
            db.setTransactionSuccessful()
        } finally {
            db.endTransaction()
        }
        revision.update { it + 1 }
    }

    @Synchronized
    fun edit(id: String, segment: Segment) {
        val r = recording(id) ?: return
        val original = segment(id, segment.id)
        val textChanged = original?.text != segment.text
        val speakerChanged = original?.speakerId != segment.speakerId
        commit(
            r,
            listOf(
                segment.copy(
                    speakerSimilarity = if (speakerChanged) null else segment.speakerSimilarity,
                    speakerProvisional = if (speakerChanged) false else segment.speakerProvisional,
                    status = "corrected",
                    tokens = if (textChanged) emptyList() else segment.tokens,
                    words = if (textChanged) emptyList() else segment.words,
                    confidence = if (textChanged) null else segment.confidence,
                    acoustics =
                        segment.acoustics?.copy(
                            wordsPerMinute = null,
                            relativeDb =
                                if (speakerChanged) null else segment.acoustics?.relativeDb,
                            relativeF0Semitones =
                                if (speakerChanged) null else segment.acoustics?.relativeF0Semitones,
                        ),
                )
            ),
            emptyList(),
        )
    }

    /** Editing a displayed turn retains every original segment ID and time interval. */
    @Synchronized
    fun editTurn(parts: List<Segment>, text: String, speakerId: String?) {
        require(parts.isNotEmpty())
        val id = parts.first().recordingId
        require(parts.all { it.recordingId == id })
        if (text == DialogueTurns.text(parts)) {
            if (parts.all { it.speakerId == speakerId }) return
            val db = writableDatabase
            db.beginTransaction()
            try {
                parts.forEach { edit(id, it.copy(speakerId = speakerId)) }
                db.setTransactionSuccessful()
            } finally { db.endTransaction() }
            return
        }
        val words = Regex("\\S+").findAll(text.trim()).map { it.value }.toList()
        var cursor = 0
        val db = writableDatabase
        db.beginTransaction()
        try {
            parts.forEachIndexed { i, part ->
                val oldCount = Regex("\\S+").findAll(part.text).count()
                val end = if (i == parts.lastIndex) words.size else minOf(words.size, cursor + oldCount)
                edit(id, part.copy(text = words.subList(cursor, end).joinToString(" "), speakerId = speakerId))
                cursor = end
            }
            db.setTransactionSuccessful()
        } finally { db.endTransaction() }
    }

    /** Explicit naming is an enrollment request; insufficient evidence never creates a fake identity. */
    @Synchronized
    fun renameAndRemember(id: String, speaker: Speaker, name: String): Boolean {
        require(name.isNotBlank()) { "Введите имя участника" }
        rename(id, speaker, name)
        val remembered = rememberAssignedVoice(id, speaker.id, speaker.voiceProfileId, name)
        if (remembered) recordings().forEach { if (it.id != id) reidentify(it.id) }
        return remembered
    }

    private fun rememberAssignedVoice(id: String, speakerId: String, preferred: String?, name: String? = null): Boolean {
        val r = recording(id) ?: return false
        val speaker = speakers(id).firstOrNull { it.id == speakerId } ?: return false
        val model = r.modelInfo?.sha256?.get("speaker.onnx") ?: return false
        val evidence = voiceSegments(id, speakerId).filter {
            it.embeddingSource == "utterance" && it.status != "preliminary" &&
            it.separation == null && !it.overlap.startsWith("detected") &&
            it.endMs - it.startMs >= 800 && SpeakerCluster.normalize(it.embedding.toFloatArray()) != null
        }.sortedBy { it.startMs }.takeLast(6)
        val vector = Voiceprints.enrollment(evidence)
        val profiles = voiceProfiles()
        var profile = profiles.firstOrNull { it.id == preferred && (it.modelSha256.isBlank() || it.modelSha256 == model) }
        if (profile == null && vector != null) profile = Voiceprints.match(vector, model,
            profiles.filter { it.name.equals(name ?: speaker.name, ignoreCase = true) })?.profile
        if (profile == null && vector == null) return false
        profile = profile ?: createVoiceProfile(name ?: speaker.name)
        val ids = evidence.filter { it.embeddingSource == "utterance" && it.status != "preliminary" &&
            it.separation == null && !it.overlap.startsWith("detected") }.map { "$id:${it.id}" }
        val qualified = vector?.takeIf { profile.embedding.isEmpty() ||
            (profile.embedding.size == it.size && SpeakerCluster.cosine(it.toFloatArray(), profile.embedding.toFloatArray()) >= 0.75f) }
        val samples = if (qualified != null && profile.samples.size < 8 && profile.samples.none { it.sourceSegments == ids })
            (profile.samples + VoiceSample(java.util.UUID.randomUUID().toString(), qualified,
                evidence.sumOf { (it.endMs - it.startMs).coerceAtLeast(0) }, sourceSegments = ids))
            else profile.samples
        if (samples.isEmpty() && profile.embedding.isEmpty()) return false
        val vectors = samples.map { it.embedding }.filter { it.size == (vector ?: profile.embedding).size }
        val center = if (vectors.isEmpty()) profile.embedding else SpeakerCluster.normalize(
            FloatArray(vectors.first().size) { i -> vectors.sumOf { it[i].toDouble() }.toFloat() / vectors.size })!!.toList()
        val saved = profile.copy(name = (name ?: profile.name).trim().take(120), modelSha256 = model,
            samples = samples, embedding = center)
        saveVoiceProfile(saved)
        commit(r, emptyList(), listOf(speaker.copy(name = saved.name, nameIsManual = true,
            voiceProfileId = saved.id, voiceProfileSimilarity = null)))
        return saved.embedding.isNotEmpty()
    }

    /** Backfill existing explicitly named voices using stored vectors, without running ML again. */
    @Synchronized
    fun rememberNamedVoices() {
        val all = recordings()
        var changed = false
        all.forEach { r -> speakers(r.id).filter { it.nameIsManual && it.voiceProfileId == null &&
            it.name.isNotBlank() && !it.name.matches(Regex("Участник \\d+")) }.forEach { speaker ->
            runCatching { rememberAssignedVoice(r.id, speaker.id, null, speaker.name) }.onSuccess { changed = changed || it }
        } }
        if (changed) all.forEach { reidentify(it.id) }
    }

    @Synchronized
    fun rename(id: String, speaker: Speaker, name: String) {
        commit(
            recording(id) ?: return,
            emptyList(),
            listOf(
                speaker.copy(
                    name = name.trim().take(120),
                    nameIsManual = true,
                    voiceProfileId = null,
                    voiceProfileSimilarity = null,
                )
            ),
        )
    }

    @Synchronized
    fun mergeSpeakers(id: String, from: String, to: String) {
        require(from != to)
        val r = recording(id) ?: return
        val ss = speakers(id)
        require(ss.any { it.id == to })
        val transform: (Segment) -> Segment = {
            if (it.speakerId == from)
                it.copy(
                    speakerId = to,
                    speakerSimilarity = null,
                    acoustics = it.acoustics?.copy(relativeDb = null, relativeF0Semitones = null),
                    speakerProvisional = false,
                    status = "corrected",
                )
            else it
        }
        val target = ss.first { it.id == to }
        val source = ss.firstOrNull { it.id == from }
        val voices =
            (target.voiceSamples +
                    listOf(target.centroid) +
                    (source?.voiceSamples ?: emptyList()) +
                    listOfNotNull(source?.centroid))
                .filter { it.isNotEmpty() }
                .distinct()
                .take(6)
        refineSpeakers(
            id,
            ss.filterNot { it.id == from }
                .map {
                    if (it.id == to)
                        it.copy(
                            voiceSamples = voices,
                            distinctFrom =
                                ((it.distinctFrom + (source?.distinctFrom ?: emptyList())) -
                                        setOf(from, to))
                                    .distinct(),
                            centroid = it.centroid.ifEmpty { source?.centroid ?: emptyList() },
                        )
                    else
                        it.copy(
                            distinctFrom =
                                it.distinctFrom
                                    .map { x -> if (x == from) to else x }
                                    .filter { x -> x != it.id }
                                    .distinct()
                        )
                },
            transform,
        )
    }

    @Synchronized
    fun splitTurn(parts: List<Segment>) {
        require(parts.isNotEmpty() && parts.all { it.recordingId == parts.first().recordingId })
        val id = parts.first().recordingId
        val db = writableDatabase
        db.beginTransaction()
        try {
            splitSpeaker(id, parts.first())
            val speakerId = segment(id, parts.first().id)!!.speakerId
            parts.drop(1).forEach { edit(id, it.copy(speakerId = speakerId)) }
            db.setTransactionSuccessful()
        } finally { db.endTransaction() }
    }

    @Synchronized
    fun splitSpeaker(id: String, segment: Segment) {
        val r = recording(id) ?: return
        val ss = speakers(id)
        val n =
            (ss.mapNotNull { it.id.removePrefix("speaker_").toIntOrNull() }.maxOrNull() ?: 0) + 1
        val s =
            Speaker(
                "speaker_$n",
                "Участник $n",
                segment.embedding,
                if (segment.embedding.isEmpty()) 0 else 1,
                voiceSamples =
                    if (segment.embedding.isEmpty()) emptyList() else listOf(segment.embedding),
            )
        commit(
            r,
            listOf(
                segment.copy(
                    speakerId = s.id,
                    status = "corrected",
                    speakerSimilarity = null,
                    acoustics =
                        segment.acoustics?.copy(relativeDb = null, relativeF0Semitones = null),
                    speakerProvisional = false,
                )
            ),
            listOf(s),
        )
    }

    @Synchronized
    fun delete(id: String) {
        val r = recording(id) ?: return
        writableDatabase.delete("recordings", "id=?", arrayOf(id))
        File(File(r.audioPath).parentFile, "separated-${r.id}").deleteRecursively()
        val refs = recordings().flatMap { listOf(it.audioPath, it.pcmPath) }.toSet()
        listOf(r.audioPath, r.pcmPath)
            .filter { it.isNotBlank() && it !in refs }
            .forEach { File(it).delete() }
        revision.update { it + 1 }
    }

    /** Remove tracks written by a cancelled block before its SQLite checkpoint was committed. */
    @Synchronized
    fun cleanupSeparated(id: String) {
        val r = recording(id) ?: return
        if (r.audioPath.isBlank()) return
        val directory = File(File(r.audioPath).parentFile, "separated-${r.id}")
        val referenced = mutableSetOf<String>()
        visitSegments(id) { batch ->
            batch.mapNotNullTo(referenced) { it.separatedAudioPath.takeIf(String::isNotBlank) }
        }
        readableDatabase.rawQuery("SELECT payload FROM processing_segments WHERE recording_id=?", arrayOf(id)).use { c ->
            while (c.moveToNext()) {
                val path = codec.decodeFromString<Segment>(c.getString(0)).separatedAudioPath
                if (path.isNotBlank()) referenced += path
            }
        }
        directory
            .listFiles()
            ?.filter { it.isFile && it.absolutePath !in referenced }
            ?.forEach { it.delete() }
    }

    @Synchronized
    fun numberUnassignedSpeakers(id: String) {
        val r = recording(id) ?: return
        if (r.modelInfo?.engine?.contains("nemotron3") == true) return
        val needsRepair =
            readableDatabase
                .rawQuery(
                    "SELECT 1 FROM segments WHERE recording_id=? AND speaker_id IS NULL LIMIT 1",
                    arrayOf(id),
                )
                .use { it.moveToFirst() }
        if (!needsRepair) return
        val cluster = SpeakerCluster(r.settings, speakers(id))
        var previous: String? = null
        refineSpeakers(
            id,
            cluster.speakers,
            { s ->
                if (s.speakerId != null || s.status == "corrected") {
                    if (s.speakerId != null) previous = s.speakerId
                    s
                } else {
                    val voice =
                        s.embedding
                            .takeIf {
                                !s.overlap.startsWith("detected") ||
                                    s.embeddingSource == "clean_window"
                            }
                            ?.toFloatArray()
                    val match = cluster.provisional(voice, previous)
                    previous = match.id
                    s.copy(
                        speakerId = match.id,
                        speakerSimilarity = match.similarity,
                        speakerProvisional = true,
                    )
                }
            },
        )
    }

    @Synchronized
    fun recover() {
        val retainedSamples = voiceProfiles().flatMap { it.samples }.map { it.audioPath }.toSet()
        File(context.filesDir, "voice-samples")
            .listFiles()
            ?.filter { it.isFile && it.path !in retainedSamples }
            ?.forEach { it.delete() }
        recordings()
            .filter {
                it.state in
                    setOf(
                        "capture_pending",
                        "recording",
                        "paused",
                        "processing",
                        "decoding",
                        "finishing",
                    ) ||
                    (it.source == "microphone" &&
                        it.state in setOf("error", "interrupted", "imported") &&
                        (!File(it.audioPath).isFile || File(it.audioPath).length() <= 44))
            }
            .forEach { r ->
                // v0.6.0 changed analysisMode to offline before discovering ENOENT. Recover
                // those empty microphone sessions too, without changing a real offline transcript.
                val emptyMicrophone =
                    r.source == "microphone" &&
                        r.durationMs == 0L &&
                        r.checkpointSamples == 0L &&
                        (r.liveCheckpointSamples ?: 0L) == 0L &&
                        segmentCount(r.id) == 0 &&
                        (!File(r.audioPath).exists() || File(r.audioPath).length() == 44L)
                if (
                    r.source == "microphone" && (r.analysisMode == "streaming" || emptyMicrophone)
                ) {
                    if (emptyMicrophone && r.analysisMode != "streaming")
                        save(r.copy(analysisMode = "streaming"))
                    captureStopped(r.id, "Работа прервана до завершения записи.")
                    return@forEach
                }
                val audio = File(r.audioPath)
                if (r.source == "microphone") ru.localscribe.audio.WavFile.repair(audio)
                val recoveredDuration =
                    if (r.source == "microphone" && audio.isFile && audio.length() >= 44)
                        Timecode.ms((audio.length() - 44) / 2)
                    else r.durationMs
                save(
                    r.copy(
                        state = "interrupted",
                        durationMs = recoveredDuration,
                        error =
                            if (audio.isFile && audio.length() > 44)
                                "Работа прервана системой. Сохранённое аудио доступно; обработку можно продолжить."
                            else
                                "Работа прервана системой. Исходный аудиофайл недоступен; импортируйте его заново.",
                    )
                )
            }
        recordings().forEach { numberUnassignedSpeakers(it.id) }
    }
}
