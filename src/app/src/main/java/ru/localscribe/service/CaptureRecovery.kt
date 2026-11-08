package ru.localscribe.service

/** Sample positions are in the persisted mono 16 kHz WAV, excluding its header. */
internal object CaptureRecovery {
    fun resumeAt(checkpoint: Long?, available: Long): Long {
        require(available >= 0)
        val position = checkpoint ?: available // Legacy recordings have no reliable checkpoint.
        require(position in 0..available) {
            "Аудиофайл короче сохранённой контрольной точки или повреждён. Запись не изменена."
        }
        return position
    }

    fun isOverloaded(position: Long, written: Long, initialSamples: Long): Boolean {
        // A recovery tail is deliberate work, not evidence that live inference is too slow.
        // Once caught up to the old file end, apply the normal limit to new microphone audio.
        return position >= initialSamples && written - position > 120L * 16000
    }
}
