package ru.localscribe.core

object SpeakerLabels {
    fun name(segment: Segment, names: Map<String, String>): String =
        if (segment.speakerId == null) "Участник не определён"
        else names[segment.speakerId] ?: "Участник ${segment.speakerId.removePrefix("speaker_")}"

    fun exported(segment: Segment, names: Map<String, String>): String =
        name(segment, names) +
            if (segment.speakerId == null || segment.speakerProvisional) " (предварительно)" else ""
}
