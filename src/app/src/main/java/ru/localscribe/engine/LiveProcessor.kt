package ru.localscribe.engine

import com.k2fsa.sherpa.onnx.OnlineRecognizer
import com.k2fsa.sherpa.onnx.OnlineStream
import com.k2fsa.sherpa.onnx.Vad
import java.io.Closeable
import java.io.File
import kotlinx.coroutines.flow.update
import ru.localscribe.analysis.AdvancedModels
import ru.localscribe.analysis.AnalysisMath
import ru.localscribe.analysis.SampleSpan
import ru.localscribe.core.*
import ru.localscribe.data.*
import ru.localscribe.service.*

/** True streaming ASR; speaker assignments are an independent provisional online algorithm. */
class LiveProcessor(
    private var recording: Recording,
    private val repository: Repository,
    private val models: ModelStore,
    startSamples: Long = 0,
    onStage: (String) -> Unit = {},
) : Closeable {
    private val engines = Engines(models, recording.settings, onStage)
    private lateinit var recognizer: OnlineRecognizer
    private lateinit var stream: OnlineStream
    private lateinit var vad: Vad

    init {
        try {
            recognizer = engines.online()
            vad = engines.vad()
            onStage("streaming ASR create stream")
            stream = recognizer.createStream()
        } catch (t: Throwable) {
            if (this::vad.isInitialized) vad.release()
            engines.close()
            throw t
        }
    }

    private val cluster = SpeakerCluster(recording.settings, repository.speakers(recording.id))
    private val identities = SessionSpeakers(recording.settings, cluster)
    private var savedSpeakerCount = cluster.speakers.size
    private val prosody = ProsodyAnalyzer()
    private var audio = FloatArray(0)
    private var offset = startSamples
    private var previousEnd = 0L
    private var embeddingAt = 0
    private val turn = VoiceTurnTracker()
    private var lastSpeakerId: String? = null
    private var lastVoiceEnd = -1L
    private var lastDraftSize = 0
    private var firstSpeech: Int? = null
    private var lastSpeech = 0
    private var analysis: AdvancedModels? = null

    init {
        repository.restoreConstraints(recording.id, cluster)
        repository.visitSegments(recording.id) { saved ->
            previousEnd = maxOf(previousEnd, saved.maxOfOrNull { it.endMs } ?: 0L)
            identities.restore(saved)
            saved.lastOrNull { it.speakerId != null }?.let { lastSpeakerId = it.speakerId }
        }
    }

    private fun analysis(): AdvancedModels =
        analysis
            ?: AdvancedModels(File(models.root, "advanced"), recording.settings.threads).also {
                analysis = it
            }

    fun accept(x: FloatArray) {
        stream.acceptWaveform(x, 16000)
        audio += x
        vad.acceptWaveform(x)
        if (vad.isSpeechDetected()) {
            if (firstSpeech == null) firstSpeech = (audio.size - x.size - 3200).coerceAtLeast(0)
            lastSpeech = audio.size
        }
        while (!vad.empty()) {
            val s = vad.front()
            vad.pop()
            if (firstSpeech == null) firstSpeech = s.start.toInt().coerceIn(0, audio.size)
            lastSpeech = minOf(audio.size, (s.start + s.samples.size).toInt())
        }
        while (recognizer.isReady(stream)) recognizer.decode(stream)
        if (audio.size - embeddingAt >= 12000 && vad.isSpeechDetected()) {
            embeddingAt = audio.size
            val range = cleanVoiceWindow(firstSpeech ?: 0, audio.size)
            if (range != null && offset + range.end > lastVoiceEnd) {
                lastVoiceEnd = offset + range.end
                val e = engines.embedding(audio.copyOfRange(range.start, range.end))
                val observation = identities.observe(e, offset + range.start, offset + range.end)
                val boundary =
                    turn.observe(observation, e, offset + range.start, offset + range.end)
                if (boundary != null) {
                    // Re-decode the head without the new voice. The retained tail starts a new
                    // bubble.
                    // The boundary is an embedding-window estimate, not word-level alignment.
                    val cut =
                        (boundary - offset)
                            .coerceIn(1, range.start.coerceAtLeast(1).toLong())
                            .toInt()
                    splitAt(cut, observation.match, e)
                    return
                }
            }
        }
        val draft = recognizer.getResult(stream).text.trim()
        if (audio.size - lastDraftSize >= 8000 && draft.isNotBlank()) {
            lastDraftSize = audio.size
            val match = presentedMatch()
            repository.append(
                recording.id,
                listOf(
                    Segment(
                        "${recording.id}:live:$offset",
                        recording.id,
                        Timecode.ms(offset + (firstSpeech ?: 0)),
                        Timecode.ms(offset + audio.size),
                        match.id,
                        draft,
                        status = "preliminary",
                        timingKind = "vad_endpoint_estimate",
                        speakerSimilarity = match.similarity,
                    )
                ),
                cluster.speakers,
            )
        }
        JobState.live.update {
            it.copy(
                preliminary = draft,
                speakerId = if (draft.isBlank()) null else presentedMatch().id,
            )
        }
        if (recognizer.isEndpoint(stream) || audio.size >= 12 * 16000) finish()
    }

    private fun splitAt(cut: Int, next: SpeakerCluster.Match, nextEmbedding: FloatArray?) {
        val tail = audio.copyOfRange(cut, audio.size)
        audio = audio.copyOfRange(0, cut)
        firstSpeech = firstSpeech?.coerceAtMost(cut - 1)
        lastSpeech = lastSpeech.coerceAtMost(cut)
        stream.release()
        stream = recognizer.createStream()
        stream.acceptWaveform(audio, 16000)
        finish()
        turn.reset(next, nextEmbedding)
        embeddingAt = tail.size // Already analysed: do not count the replay as new evidence.
        var i = 0
        while (i < tail.size) {
            val end = minOf(i + 1600, tail.size)
            accept(tail.copyOfRange(i, end))
            i = end
        }
    }

    fun finish() {
        if (audio.isEmpty()) return
        stream.acceptWaveform(FloatArray(16000), 16000)
        stream.inputFinished()
        while (recognizer.isReady(stream)) recognizer.decode(stream)
        val result = recognizer.getResult(stream)
        if (result.text.isNotBlank()) {
            val begin = (firstSpeech ?: 0).coerceIn(0, audio.size - 1)
            val finish =
                (if (lastSpeech > 0) lastSpeech else audio.size).coerceIn(begin + 1, audio.size)
            val start = offset + begin
            val end = offset + finish
            // T-one emission timestamps may include decoder delay beyond input duration.
            // Do not expose them as word alignment without validated latency compensation.
            val tokens = emptyList<TokenStamp>()
            val clip = audio.copyOfRange(begin, finish)
            val overlap = analysis().overlaps(clip)
            val simultaneous = overlap.isNotEmpty()
            // Preserve short-window evidence: a whole ASR utterance can contain several voices.
            // A brief overlap must not erase a participant identified on clean speech.
            if (turn.current.id == null) {
                val range = cleanVoiceWindow(begin, finish)
                if (range != null) {
                    val voice = engines.embedding(audio.copyOfRange(range.start, range.end))
                    val observation =
                        identities.observe(voice, offset + range.start, offset + range.end)
                    turn.observe(observation, voice, offset + range.start, offset + range.end)
                }
            }
            val match = presentedMatch()
            // Enrollment needs the exact utterance, not a window attached to a longer clip.
            // Check it read-only; never overwrite the tracked ID with a mixed utterance vector.
            val utteranceVoice =
                if (!simultaneous && !match.provisional)
                    engines.embedding(clip)?.takeIf { cluster.identify(it).id == match.id }
                else null
            val embedding = utteranceVoice ?: turn.embedding
            val emotion =
                if (recording.settings.runEmotions)
                    analysis().emotion(clip, if (simultaneous) "overlapping_speech" else null)
                else null
            val index = cluster.speakers.indexOfFirst { it.id == match.id }
            val acoustics =
                if (recording.settings.prosody)
                    prosody.analyze(
                        audio.copyOfRange((start - offset).toInt(), (end - offset).toInt()),
                        result.text,
                        (Timecode.ms(start) - previousEnd).coerceAtLeast(0),
                        cluster.speakers.getOrNull(index),
                    )
                else null
            if (index >= 0 && acoustics != null && !simultaneous && !match.provisional)
                cluster.speakers[index] = prosody.updateNorm(cluster.speakers[index], acoustics)
            val s =
                Segment(
                    "${recording.id}:live:$offset",
                    recording.id,
                    Timecode.ms(start),
                    Timecode.ms(end),
                    match.id,
                    result.text.trim(),
                    speakerSimilarity = match.similarity,
                    speakerProvisional = true,
                    timingKind = "vad_endpoint_estimate",
                    tokens = tokens,
                    words = TranscriptMerger.words(tokens),
                    acoustics = acoustics,
                    embedding = embedding?.toList() ?: emptyList(),
                    embeddingSource =
                        if (utteranceVoice != null) "utterance"
                        else if (embedding != null) "clean_window" else "unavailable",
                    overlap = if (simultaneous) "detected_requires_offline" else "not_detected",
                    overlapIntervals =
                        overlap.map {
                            OverlapSpan(
                                Timecode.ms(start + it.start),
                                Timecode.ms(start + it.end),
                                it.score,
                            )
                        },
                    analysisSource = if (simultaneous) "mixture" else "original",
                    emotion = emotion,
                    tags =
                        emotion?.let {
                            listOf(
                                Tag(
                                    "emotion_${it.label}",
                                    it.confidence,
                                    if (it.label == "unknown") "unknown" else "estimated",
                                    it.source,
                                )
                            )
                        } ?: emptyList(),
                )
            recording = repository.recording(recording.id) ?: recording
            repository.commitLive(recording.id, listOf(s), cluster.speakers, offset + audio.size)
            previousEnd = s.endMs
            lastSpeakerId = s.speakerId
        } else {
            repository.removePreliminary(recording.id, "${recording.id}:live:$offset")
            repository.commitLive(recording.id, emptyList(), cluster.speakers, offset + audio.size)
        }
        offset += audio.size
        audio = FloatArray(0)
        lastDraftSize = 0
        firstSpeech = null
        lastSpeech = 0
        embeddingAt = 0
        turn.reset()
        stream.release()
        stream = recognizer.createStream()
        vad.reset()
        JobState.live.update { it.copy(preliminary = "", speakerId = null) }
        if (savedSpeakerCount != cluster.speakers.size) refine()
    }

    private fun presentedMatch(): SpeakerCluster.Match =
        if (turn.current.id != null) turn.current
        else cluster.provisional(turn.embedding, preferredId = lastSpeakerId)

    /** Use model context, then exclude only affected intervals, not the entire ASR utterance. */
    private fun cleanVoiceWindow(begin: Int, end: Int): SampleSpan? {
        if (end - begin < 12800) return null
        val contextStart = maxOf(begin, end - 160000)
        val context = audio.copyOfRange(contextStart, end)
        // Segmentation has a 10 s receptive window. Avoid gating on mostly padded tiny inputs.
        val excluded =
            if (context.size >= 48000)
                analysis().overlaps(context).map {
                    SampleSpan(it.start + contextStart, it.end + contextStart, it.score)
                }
            else emptyList()
        return AnalysisMath.recentCleanVoiceWindow(begin, end, excluded)
    }

    fun refine() {
        val protected = mutableSetOf<String>()
        repository.visitSegments(recording.id) { batch ->
            batch.filter { it.status == "corrected" }.mapNotNullTo(protected) { it.speakerId }
        }
        val aliases = cluster.refine(protected)
        repository.refineSpeakers(
            recording.id,
            cluster.speakers,
            { identities.resolve(listOf(it), aliases).single() },
        )
        savedSpeakerCount = cluster.speakers.size
    }

    override fun close() {
        stream.release()
        vad.release()
        try {
            engines.close()
        } finally {
            analysis?.close()
            analysis = null
        }
    }
}
