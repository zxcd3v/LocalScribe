package ru.localscribe.ui

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.semantics.*
import androidx.compose.ui.unit.dp
import java.io.File
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import ru.localscribe.ScribeApp
import ru.localscribe.audio.RecordingWaveform
import ru.localscribe.core.Recording
import ru.localscribe.core.Timecode

/** One bounded envelope for the complete audio; transcript paging never truncates its timeline. */
@Composable
fun RecordingWaveformView(recording: Recording, positionMs: Long, seek: (Long) -> Unit) {
    val app = LocalContext.current.applicationContext as? ScribeApp ?: return
    val revision by app.repository.revision.collectAsState()
    val waveform by produceState<Pair<RecordingWaveform, List<String?>>?>(
        null, recording.id, recording.pcmPath, recording.state, recording.checkpointSamples, revision,
    ) {
        value = null
        val file = File(recording.pcmPath.ifBlank { recording.audioPath })
        if (!file.isFile || recording.state in setOf("recording", "processing", "decoding")) return@produceState
        try {
            value = withContext(Dispatchers.IO) {
                val envelope = RecordingWaveform.read(file)
                val speakers = arrayOfNulls<String>(envelope.peaks.size)
                val coverage = LongArray(speakers.size)
                if (envelope.durationMs > 0) app.repository.visitSegments(recording.id) { batch ->
                    for (segment in batch) {
                        val first = (segment.startMs.coerceAtLeast(0) * speakers.size / envelope.durationMs)
                            .toInt().coerceIn(0, speakers.size)
                        val last = (segment.endMs.coerceAtLeast(0) * speakers.size / envelope.durationMs)
                            .toInt().coerceIn(0, speakers.size - 1)
                        for (bin in first..last) {
                            val start = bin.toLong() * envelope.durationMs / speakers.size
                            val end = (bin + 1L) * envelope.durationMs / speakers.size
                            val overlap = minOf(end, segment.endMs) - maxOf(start, segment.startMs)
                            if (overlap > coverage[bin]) {
                                coverage[bin] = overlap
                                speakers[bin] = segment.speakerId
                            }
                        }
                    }
                }
                envelope to speakers.toList()
            }
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (_: Exception) {
            // Unsupported/import-pending audio remains playable through the regular controls.
            value = null
        }
    }
    val (audio, speakers) = waveform ?: return
    if (audio.peaks.isEmpty() || audio.durationMs <= 0) return
    val palette = listOf(Color(0xff7C7EFF), Color(0xff00A18C), Color(0xffDB8D30),
        Color(0xffCD5C93), Color(0xff389ECE), Color(0xff9A68BF))
    val neutral = MaterialTheme.colorScheme.outline
    val cursor = MaterialTheme.colorScheme.onSurface
    Column(Modifier.fillMaxWidth().padding(horizontal = 20.dp, vertical = 8.dp)) {
        Text("Вся запись · ${Timecode.subtitle(audio.durationMs, '.')}")
        Canvas(Modifier.fillMaxWidth().height(64.dp)
            .semantics {
                contentDescription = "Аудиоволна всей записи"
                progressBarRangeInfo = ProgressBarRangeInfo(
                    positionMs.toFloat().coerceIn(0f, audio.durationMs.toFloat()),
                    0f..audio.durationMs.toFloat(),
                )
                setProgress { fraction -> seek(fraction.toLong().coerceIn(0, audio.durationMs)); true }
            }
            .pointerInput(audio.durationMs, seek) {
                detectTapGestures { point ->
                    seek((point.x / size.width.coerceAtLeast(1) * audio.durationMs).toLong()
                        .coerceIn(0, audio.durationMs))
                }
            }) {
            val step = size.width / audio.peaks.size
            audio.peaks.forEachIndexed { i, peak ->
                val color = speakers[i]?.let { palette[Math.floorMod(it.hashCode(), palette.size)] } ?: neutral
                val half = peak * size.height / 2
                val x = (i + .5f) * step
                drawLine(color, Offset(x, size.height / 2 - half), Offset(x, size.height / 2 + half),
                    strokeWidth = step.coerceAtLeast(1f))
            }
            val x = positionMs.coerceIn(0, audio.durationMs).toFloat() / audio.durationMs * size.width
            drawLine(cursor, Offset(x, 0f), Offset(x, size.height), strokeWidth = 2f)
        }
    }
}
