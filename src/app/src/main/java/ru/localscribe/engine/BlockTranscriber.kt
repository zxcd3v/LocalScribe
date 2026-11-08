package ru.localscribe.engine

import java.io.Closeable
import java.io.File
import java.util.UUID
import kotlin.math.*
import kotlinx.coroutines.*
import ru.localscribe.analysis.*
import ru.localscribe.audio.WavFile
import ru.localscribe.core.*
import ru.localscribe.data.ModelStore

/** Whole-turn overlap groups are separated before ASR; original mixed text is never duplicated. */
class BlockTranscriber(
    private val recording: Recording,
    private val engines: Engines,
    private val cluster: SpeakerCluster,
    models: ModelStore,
    private val timeline: SpeakerTimeline? = null,
    private val timing: ProcessingTimings = ProcessingTimings(),
    timelineBindings: Map<Int, String> = emptyMap(),
) : Closeable {
    // A reprocessing pass must not overwrite stems referenced by preserved manual corrections.
    private val separationRunId = UUID.randomUUID().toString()
    private val generatedStems = mutableListOf<File>()
    internal val createdSeparatedAudio: List<File> get() = generatedStems.toList()
    private val globalSpeakers =
        if (timeline != null) GlobalTimelineSpeakers(recording.settings, cluster, timelineBindings) else null
    private val wholeRecording = recording.durationMs in 1..30000
    private val neural =
        if (timeline == null) NeuralDiarizer(models, recording.settings, wholeRecording) else null
    private val advanced =
        try {
            AdvancedModels(
                File(models.root, "advanced"),
                recording.settings.threads.coerceAtMost(2),
            ) { name, elapsed ->
                android.util.Log.i("LocalScribePerf", "stage=$name elapsed_ms=$elapsed")
            }
        } catch (e: Throwable) {
            neural?.close()
            throw e
        }
    private val prosody = ProsodyAnalyzer()

    suspend fun process(
        block: FloatArray,
        context: FloatArray,
        coreStart: Int,
        offset: Long,
        previousEnd: Long,
        onStatus: (String) -> Unit,
        onProgress: (Float) -> Unit,
    ): List<Segment> {
        advanced.releaseHeavy()
        val job = currentCoroutineContext()
        val checkCancelled = { job.ensureActive() }
        onStatus("Определение участников и одновременной речи")
        val turns =
            timeline?.window(offset, block.size)?.map {
                NeuralTurn((it.start - offset).toInt(), (it.end - offset).toInt(), it.speaker, null)
            } ?: neural!!.turns(context, coreStart, block.size) { job.isActive }
        checkCancelled()
        onProgress(0.14f)
        val detected =
            (if (timeline == null) advanced.overlaps(context, checkCancelled) else emptyList())
                .mapNotNull {
                    val a = (it.start - coreStart).coerceIn(0, block.size)
                    val b = (it.end - coreStart).coerceIn(0, block.size)
                    if (b > a) SampleSpan(a, b, it.score) else null
                }
        val nativeOverlap =
            turns.flatMap { a ->
                turns
                    .filter { b -> b.localSpeaker > a.localSpeaker }
                    .mapNotNull { b ->
                        val begin = max(a.begin, b.begin)
                        val end = min(a.end, b.end)
                        if (end - begin >= 3200) SampleSpan(begin, end) else null
                    }
            }
        val overlap = AnalysisMath.merge(detected + nativeOverlap)
        // Train global prototypes only on clean speech, excluding every detected overlap and
        // regions where another local diarization speaker is active.
        val refs = mutableMapOf<Int, Pair<SpeakerCluster.Match, FloatArray?>>()
        for (local in turns.map { it.localSpeaker }.distinct()) {
            val own = turns.filter { it.localSpeaker == local }
            val others =
                turns.filter { it.localSpeaker != local }.map { SampleSpan(it.begin, it.end) }
            val uncertainSpans =
                timeline
                    ?.window(offset, block.size)
                    ?.filter { it.uncertain }
                    ?.map { SampleSpan((it.start - offset).toInt(), (it.end - offset).toInt()) }
                    .orEmpty()
            val clean =
                own.flatMap {
                        AnalysisMath.subtract(
                            SampleSpan(it.begin, it.end),
                            overlap + others + uncertainSpans,
                        )
                    }
                    .filter { it.end - it.start >= 4800 }
                    .sortedByDescending { it.end - it.start }
            val buffer = FloatArray(min(96000, clean.sumOf { it.end - it.start }))
            var used = 0
            for (s in clean) {
                val n = min(buffer.size - used, s.end - s.start)
                block.copyInto(buffer, used, s.start, s.start + n)
                used += n
                if (used == buffer.size) break
            }
            val embedding =
                if (buffer.size >= 16000)
                    timing.measure("voice.prototype") { engines.embedding(buffer) }
                else null
            // Distinct neural clusters in the same window are negative evidence.
            // Do not immediately collapse them again using a looser global cosine threshold.
            val excluded = refs.values.mapNotNull { it.first.id }.toSet()
            val match =
                if (timeline != null) {
                    globalSpeakers!!.resolve(local, embedding)
                } else {
                    val identified = cluster.assign(embedding, excludedIds = excluded)
                    if (identified.id != null) identified
                    else cluster.provisional(embedding, excludedIds = excluded)
                }
            if (!match.provisional) excluded.forEach { cluster.keepDistinct(it, match.id) }
            refs[local] = match to embedding
        }
        for (a in turns) for (b in turns) if (
            a.localSpeaker != b.localSpeaker && a.begin < b.end && b.begin < a.end
        )
            cluster.keepDistinct(refs[a.localSpeaker]?.first?.id, refs[b.localSpeaker]?.first?.id)

        var groups = overlap
        // Include complete intersecting turns to avoid cutting words at the overlap boundary.
        repeat(if (timeline == null) turns.size + 1 else 0) {
            val expanded =
                groups.map { s ->
                    val relevant = turns.filter { it.begin < s.end && s.start < it.end }
                    SampleSpan(
                        min(s.start, relevant.minOfOrNull { it.begin } ?: s.start),
                        max(s.end, relevant.maxOfOrNull { it.end } ?: s.end),
                        s.score,
                    )
                }
            groups = AnalysisMath.merge(expanded)
        }
        val segments = mutableListOf<Segment>()
        var lastEnd = previousEnd
        fun emit(
            begin: Int,
            end: Int,
            audio: FloatArray,
            match: SpeakerCluster.Match,
            embedding: FloatArray?,
            silhouette: Float? = null,
            separation: SeparationInfo? = null,
            unresolved: Boolean = false,
            recognized: Pair<String, List<TokenStamp>>? = null,
            recognizedWords: List<WordStamp>? = null,
        ) {
            checkCancelled()
            val assigned =
                if (timeline != null && (unresolved || match.id == null))
                    SpeakerCluster.Match(null, null, true)
                else if (match.id != null && !unresolved) match
                else
                    cluster.provisional(
                        if (unresolved) null else embedding,
                        preferredId = segments.lastOrNull()?.speakerId,
                    )
            val startMs = Timecode.ms(offset + begin)
            val endMs = Timecode.ms(offset + end)
            val (text, tokens) = recognized ?: engines.recognize(audio, startMs)
            // Store evidence from this utterance, not the shared cluster prototype:
            // otherwise enrollment cannot detect a diarization cluster containing two voices.
            val turnVoice =
                if (
                    separation == null &&
                        !unresolved &&
                        timeline?.window(offset + begin, end - begin)?.none { it.uncertain } !=
                            false
                )
                    timing.measure("voice.utterance") { engines.embedding(audio) }
                else null
            val index = cluster.speakers.indexOfFirst { it.id == assigned.id }
            val acoustic =
                if (recording.settings.prosody)
                    prosody.analyze(
                        audio,
                        text,
                        (startMs - lastEnd).coerceAtLeast(0),
                        if (separation == null && !unresolved) cluster.speakers.getOrNull(index)
                        else null,
                    )
                else null
            if (
                index >= 0 &&
                    acoustic != null &&
                    separation == null &&
                    !unresolved &&
                    !assigned.provisional
            )
                cluster.speakers[index] = prosody.updateNorm(cluster.speakers[index], acoustic)
            val intersections =
                overlap.mapNotNull { s ->
                    val a = max(begin, s.start)
                    val b = min(end, s.end)
                    if (b > a)
                        OverlapSpan(Timecode.ms(offset + a), Timecode.ms(offset + b), s.score)
                    else null
                }
            val id = "${recording.id}:${offset+begin}:${offset+end}:${separation?.channel?:"mix"}"
            var stemPath = ""
            if (separation != null) {
                val folder = File(File(recording.audioPath).parentFile, "separated-${recording.id}")
                check(folder.isDirectory || folder.mkdirs()) {
                    "Не удалось сохранить разделённое аудио"
                }
                val target = File(folder,
                    "${offset+begin}-${offset+end}-${separation.channel}-$separationRunId.wav")
                val temp = File(target.path + ".part")
                try {
                    WavFile(temp).use { it.write(audio) }
                    check(temp.renameTo(target))
                    generatedStems += target
                    stemPath = target.absolutePath
                } finally {
                    temp.delete()
                }
            }
            segments +=
                Segment(
                    id,
                    recording.id,
                    startMs,
                    endMs,
                    assigned.id,
                    text,
                    speakerSimilarity = assigned.similarity,
                    speakerProvisional =
                        assigned.provisional ||
                            timeline?.window(offset + begin, end - begin)?.any { it.uncertain } ==
                                true,
                    tokens = tokens,
                    words = recognizedWords ?: TranscriptMerger.words(tokens),
                    acoustics = acoustic,
                    embedding = turnVoice?.toList() ?: emptyList(),
                    embeddingSource = if (turnVoice != null) "utterance" else "unavailable",
                    overlap =
                        if (intersections.isEmpty()) "not_detected"
                        else if (unresolved) "detected_unresolved" else "detected",
                    overlapIntervals = intersections,
                    separation = separation,
                    separatedAudioPath = stemPath,
                    analysisSource =
                        if (separation != null) "separated_estimate"
                        else if (unresolved) "mixture" else "original",
                    clusteringSilhouette = silhouette,
                    timingKind =
                        if (separation != null) "separated_vad_estimate"
                        else if (timeline != null) "global_diarization_token_emission"
                        else "neural_segmentation_estimate",
                )
            lastEnd = max(lastEnd, endMs)
        }
        val cleanParts =
            turns.flatMap { turn ->
                AnalysisMath.subtract(SampleSpan(turn.begin, turn.end), groups)
                    .flatMap(::splitBounded)
                    .map { turn to it }
            }
        val speechWork = cleanParts.size + groups.size
        val speechEnd = if (recording.settings.runEmotions) 0.78f else 0.97f
        var completedSpeechWork = 0
        fun speechDone() {
            completedSpeechWork++
            onProgress(0.25f + (speechEnd - 0.25f) * completedSpeechWork / speechWork)
        }
        val speechStage = "Распознавание речи · ${Timecode.subtitle(Timecode.ms(offset), '.')}"
        onProgress(0.25f)
        if (cleanParts.isNotEmpty()) onStatus(speechStage)
        // No overlapping mixture is transcribed as though it belonged to two known people.
        if (timeline != null && recording.settings.fileAsr != FileAsr.WHISPER_EN) {
            // Decode with sentence context, then attribute words. A 350 ms interjection must
            // not be sent to ASR as a standalone utterance.
            for (window in contextAsrWindows(block.size, coreStart, context.size)) {
                checkCancelled()
                val decodeOffset = window.begin
                val end = window.end
                val size = end - decodeOffset
                var recognized =
                    engines.recognize(
                        context.copyOfRange(window.audioBegin, window.audioEnd),
                        Timecode.ms(offset + window.audioBegin - coreStart),
                    )
                // Context is heard by ASR but each complete word belongs to only one core.
                val words =
                    TranscriptMerger.words(recognized.second).filter {
                        it.startMs * 16 >= offset + decodeOffset && it.startMs * 16 < offset + end
                    }
                if (recognized.second.isEmpty() && recognized.first.isNotBlank()) {
                    // Without timestamps it is unsafe to emit the surrounding context twice.
                    recognized =
                        engines.recognize(
                            block.copyOfRange(decodeOffset, end),
                            Timecode.ms(offset + decodeOffset),
                        )
                    val speaker =
                        WordSpeakers.assign(
                            Timecode.ms(offset + decodeOffset),
                            Timecode.ms(offset + end),
                            timeline.window(offset + decodeOffset, size),
                        )
                    emit(
                        decodeOffset,
                        end,
                        block.copyOfRange(decodeOffset, end),
                        refs[speaker]?.first ?: SpeakerCluster.Match(null, null, true),
                        null,
                        unresolved = speaker == null,
                        recognized = recognized,
                    )
                } else {
                    data class AttributedWord(
                        val word: WordStamp,
                        val endMs: Long,
                        val speaker: Int?,
                    )
                    val attributed =
                        words.mapIndexedNotNull { i, word ->
                            val begin =
                                ((word.startMs * 16) - offset).toInt().coerceIn(decodeOffset, end)
                            val wordEnd =
                                minOf(
                                        words.getOrNull(i + 1)?.startMs
                                            ?: Timecode.ms(offset + end),
                                        word.startMs + 600,
                                    )
                                    .coerceAtLeast(word.startMs + 1)
                            // The mixture in an overlap is handled by the separation branch below.
                            if (groups.any { begin >= it.start && begin < it.end }) null
                            else {
                                val relevant =
                                    timeline.window(
                                        word.startMs * 16,
                                        ((wordEnd - word.startMs) * 16).toInt(),
                                    )
                                if (relevant.isEmpty()) null
                                else
                                    AttributedWord(
                                        word,
                                        wordEnd,
                                        WordSpeakers.assign(word.startMs, wordEnd, relevant),
                                    )
                            }
                        }
                    val batches = mutableListOf<MutableList<AttributedWord>>()
                    for (word in attributed) {
                        val previous = batches.lastOrNull()?.lastOrNull()
                        if (
                            previous == null ||
                                previous.speaker != word.speaker ||
                                word.word.startMs - previous.endMs > 600
                        )
                            batches += mutableListOf(word)
                        else batches.last() += word
                    }
                    for (batch in batches) {
                        val first = batch.first()
                        val begin =
                            ((first.word.startMs * 16) - offset).toInt().coerceIn(decodeOffset, end)
                        val finish =
                            ((batch.last().endMs * 16) - offset).toInt().coerceIn(begin, end)
                        if (finish <= begin) continue
                        val tokens =
                            recognized.second.filter {
                                it.emissionMs >= first.word.startMs &&
                                    it.emissionMs < batch.last().endMs
                            }
                        emit(
                            begin,
                            finish,
                            block.copyOfRange(begin, finish),
                            refs[first.speaker]?.first ?: SpeakerCluster.Match(null, null, true),
                            null,
                            unresolved = first.speaker == null,
                            recognized = batch.joinToString(" ") { it.word.text } to tokens,
                            recognizedWords = batch.map { it.word },
                        )
                    }
                }
            }
            repeat(cleanParts.size) { speechDone() }
        } else {
            for ((turn, part) in cleanParts) {
                val (match, embedding) = refs.getValue(turn.localSpeaker)
                emit(
                    part.start,
                    part.end,
                    block.copyOfRange(part.start, part.end),
                    match,
                    embedding,
                    turn.silhouette,
                )
                speechDone()
            }
        }
        for (group in groups) {
            checkCancelled()
            val mixed = block.copyOfRange(group.start, group.end)
            val separated =
                if (recording.settings.runSeparation) {
                    onStatus("Разделение наложенных голосов")
                    engines.releaseOffline()
                    try {
                        advanced.separate(mixed, checkCancelled)
                    } finally {
                        advanced.releaseHeavy()
                    }
                } else AdvancedModels.Separated(null, "disabled_fast_profile")
            onStatus(speechStage)
            val sources = separated.sources
            if (sources == null) {
                for (part in speech(mixed)) emit(
                    group.start + part.start,
                    group.start + part.end,
                    mixed.copyOfRange(part.start, part.end),
                    SpeakerCluster.Match(null, null),
                    null,
                    unresolved = true,
                )
                speechDone()
                continue
            }
            val groupId = "${recording.id}:overlap:${offset+group.start}:${offset+group.end}"
            val assigned = mutableSetOf<String>()
            val speechByChannel = sources.map { speech(it) }
            if (speechByChannel.any { it.isEmpty() }) {
                for (part in speech(mixed)) emit(
                    group.start + part.start,
                    group.start + part.end,
                    mixed.copyOfRange(part.start, part.end),
                    SpeakerCluster.Match(null, null),
                    null,
                    unresolved = true,
                )
                speechDone()
                continue
            }
            for (channel in 0..1) {
                val source = sources[channel]
                val speech = speechByChannel[channel]
                val main = speech.maxByOrNull { it.end - it.start }
                val embedding =
                    main?.let {
                        engines.embedding(
                            source.copyOfRange(it.start, min(it.end, it.start + 96000))
                        )
                    }
                val identified =
                    cluster.assign(
                        embedding,
                        allowCreate = timeline == null,
                        excludedIds = assigned,
                    )
                val match =
                    if (identified.id != null) identified
                    else if (timeline == null)
                        cluster.provisional(embedding, excludedIds = assigned)
                    else SpeakerCluster.Match(null, null, true)
                if (!match.provisional) assigned.forEach { cluster.keepDistinct(it, match.id) }
                match.id?.let { assigned += it }
                for (part in speech) emit(
                    group.start + part.start,
                    group.start + part.end,
                    source.copyOfRange(part.start, part.end),
                    match,
                    embedding,
                    separation =
                        SeparationInfo(
                            groupId,
                            channel,
                            reconstructionSnrDb = separated.reconstructionSnrDb,
                            sourceCorrelation = separated.sourceCorrelation,
                        ),
                )
            }
            speechDone()
        }
        onProgress(speechEnd)
        if (recording.settings.runEmotions) {
            engines.releaseOffline()
            onStatus("Оценка эмоциональной окраски")
            for (i in segments.indices) {
                checkCancelled()
                val s = segments[i]
                val reason =
                    when {
                        s.separation != null -> "separation_artifacts"
                        s.overlap != "not_detected" -> "overlapping_speech"
                        else -> null
                    }
                val begin = ((s.startMs * 16) - offset).toInt().coerceIn(0, block.size)
                val end = ((s.endMs * 16) - offset).toInt().coerceIn(begin, block.size)
                val emotion =
                    advanced.emotion(block.copyOfRange(begin, end), reason, checkCancelled)
                segments[i] =
                    s.copy(
                        emotion = emotion,
                        tags =
                            s.tags +
                                Tag(
                                    "emotion_${emotion.label}",
                                    emotion.confidence,
                                    if (emotion.label == "unknown") "unknown" else "estimated",
                                    emotion.source,
                                ),
                    )
                onProgress(speechEnd + (0.97f - speechEnd) * (i + 1) / segments.size)
            }
        }
        var chronologyEnd = previousEnd
        return segments.sortedWith(compareBy({ it.startMs }, { it.endMs }, { it.id })).map { segment
            ->
            val pause = (segment.startMs - chronologyEnd).coerceAtLeast(0)
            chronologyEnd = max(chronologyEnd, segment.endMs)
            segment.copy(acoustics = segment.acoustics?.copy(pauseBeforeMs = pause))
        }
    }

    private fun splitBounded(span: SampleSpan): List<SampleSpan> = buildList {
        var p = span.start
        while (p < span.end) {
            val end = min(span.end, p + 15 * 16000)
            add(SampleSpan(p, end))
            p = end
        }
    }

    private fun speech(audio: FloatArray): List<SampleSpan> {
        val vad = engines.vad()
        val out = mutableListOf<SampleSpan>()
        fun drain() {
            while (!vad.empty()) {
                val s = vad.front()
                vad.pop()
                val begin = s.start.toInt().coerceIn(0, audio.size)
                val end = (s.start + s.samples.size).toInt().coerceIn(begin, audio.size)
                if (end > begin) out += SampleSpan(begin, end)
            }
        }
        try {
            var p = 0
            while (p < audio.size) {
                val f = FloatArray(512)
                audio.copyInto(f, 0, p, min(audio.size, p + 512))
                vad.acceptWaveform(f)
                drain()
                p += 512
            }
            vad.flush()
            drain()
        } finally {
            vad.release()
        }
        return out.flatMap(::splitBounded)
    }

    override fun close() {
        try {
            neural?.close()
        } finally {
            advanced.close()
        }
    }
}
