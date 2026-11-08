package ru.localscribe.audio

import java.io.File
import ru.localscribe.core.Recording

/** Check input before loading native models or making a reprocessing copy. */
object AudioPreflight {
    fun requireProcessable(recording: Recording) {
        val pcm = recording.pcmPath.takeIf { it.isNotBlank() }?.let(::File)
        if (pcm != null && WavFile.isCanonical(pcm) && pcm.length() > 44) return
        val original = File(recording.audioPath)
        require(original.isFile && original.canRead()) {
            "Аудиофайл отсутствует. Если запись не началась, запустите микрофон повторно. " +
                "Для импортированной записи выберите исходный файл заново. Сохранённый текст доступен."
        }
        require(
            original.length() > 0 && !(WavFile.isCanonical(original) && original.length() == 44L)
        ) {
            "Аудио пустое: микрофон не успел записать звук. Запустите запись повторно."
        }
    }
}
