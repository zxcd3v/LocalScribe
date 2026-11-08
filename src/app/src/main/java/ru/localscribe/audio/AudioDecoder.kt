package ru.localscribe.audio

import android.media.*
import java.io.File
import java.nio.ByteOrder
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import ru.localscribe.core.Resampler

class AudioDecoder {
    suspend fun decode(source: File, target: File, progress: (Float) -> Unit) {
        // PCM WAV may contain LIST/JUNK chunks: never assume its audio starts at byte 44.
        if (PcmWav.normalize(source, target)) {
            progress(1f)
            return
        }
        val extractor = MediaExtractor()
        var decoder: MediaCodec? = null
        try {
            extractor.setDataSource(source.absolutePath)
            val track =
                (0 until extractor.trackCount).firstOrNull {
                    extractor
                        .getTrackFormat(it)
                        .getString(MediaFormat.KEY_MIME)
                        ?.startsWith("audio/") == true
                } ?: error("Аудиодорожка не найдена")
            extractor.selectTrack(track)
            val input = extractor.getTrackFormat(track)
            val duration =
                if (input.containsKey(MediaFormat.KEY_DURATION))
                    input.getLong(MediaFormat.KEY_DURATION)
                else 0L
            decoder = MediaCodec.createDecoderByType(input.getString(MediaFormat.KEY_MIME)!!)
            input.setInteger(MediaFormat.KEY_PCM_ENCODING, AudioFormat.ENCODING_PCM_16BIT)
            decoder.configure(input, null, null, 0)
            decoder.start()
            var rate = input.getInteger(MediaFormat.KEY_SAMPLE_RATE)
            var channels = input.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
            var encoding = AudioFormat.ENCODING_PCM_16BIT
            var resampler = Resampler(rate)
            var started = false
            var inputDone = false
            var outputDone = false
            val info = MediaCodec.BufferInfo()
            WavFile(target).use { writer ->
                while (!outputDone) {
                    currentCoroutineContext().ensureActive()
                    // Fill available input buffers without a per-packet 10 ms wait.
                    // A bounded burst keeps output draining and cancellation responsive.
                    var fed = false
                    for (packet in 0 until 8) {
                        if (inputDone) break
                        val i = decoder.dequeueInputBuffer(0)
                        if (i < 0) break
                        fed = true
                        run {
                            val b = decoder.getInputBuffer(i)!!
                            val n = extractor.readSampleData(b, 0)
                            if (n < 0) {
                                decoder.queueInputBuffer(
                                    i,
                                    0,
                                    0,
                                    0,
                                    MediaCodec.BUFFER_FLAG_END_OF_STREAM,
                                )
                                inputDone = true
                            } else {
                                decoder.queueInputBuffer(i, 0, n, extractor.sampleTime, 0)
                                extractor.advance()
                            }
                        }
                    }
                    // Wait only when input made no progress; ready outputs return immediately.
                    when (val o = decoder.dequeueOutputBuffer(info, if (fed) 0 else 10000)) {
                        MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                            val f = decoder.outputFormat
                            val newRate = f.getInteger(MediaFormat.KEY_SAMPLE_RATE)
                            require(!started || newRate == rate) {
                                "Смена частоты посреди дорожки не поддерживается"
                            }
                            rate = newRate
                            channels = f.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
                            encoding =
                                if (f.containsKey(MediaFormat.KEY_PCM_ENCODING))
                                    f.getInteger(MediaFormat.KEY_PCM_ENCODING)
                                else AudioFormat.ENCODING_PCM_16BIT
                            require(
                                encoding == AudioFormat.ENCODING_PCM_16BIT ||
                                    encoding == AudioFormat.ENCODING_PCM_FLOAT
                            ) {
                                "Декодер вернул неподдерживаемый PCM: $encoding"
                            }
                            if (!started) resampler = Resampler(rate)
                        }
                        else ->
                            if (o >= 0) {
                                try {
                                    if (info.size > 0) {
                                        val b =
                                            decoder
                                                .getOutputBuffer(o)!!
                                                .order(ByteOrder.LITTLE_ENDIAN)
                                        b.position(info.offset)
                                        b.limit(info.offset + info.size)
                                        val width =
                                            if (encoding == AudioFormat.ENCODING_PCM_FLOAT) 4 else 2
                                        val frames = info.size / (width * channels)
                                        val mono =
                                            FloatArray(frames) {
                                                var v = 0f
                                                repeat(channels) {
                                                    v +=
                                                        if (width == 4) b.float
                                                        else b.short / 32768f
                                                }
                                                (v / channels).coerceIn(-1f, 1f)
                                            }
                                        writer.write(resampler.push(mono))
                                        started = true
                                        if (duration > 0)
                                            progress(
                                                (info.presentationTimeUs.toDouble() / duration)
                                                    .toFloat()
                                                    .coerceIn(0f, 1f)
                                            )
                                    }
                                    outputDone =
                                        info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0
                                } finally {
                                    decoder.releaseOutputBuffer(o, false)
                                }
                            }
                    }
                }
                writer.write(resampler.push(FloatArray(0), true))
            }
        } finally {
            runCatching { decoder?.stop() }
            decoder?.release()
            extractor.release()
        }
    }
}
