package ru.localscribe.core

/** Neural cluster ordinals are scoped to one inference pass, never persisted participant IDs. */
class GlobalTimelineSpeakers(
    private val settings: Settings,
    private val cluster: SpeakerCluster,
    initialBindings: Map<Int, String> = emptyMap(),
) {
    private val bindings = initialBindings.filter { (local, id) ->
        local >= 0 && cluster.speakers.any { it.id == id }
    }.toMutableMap()

    fun resolve(local: Int, raw: FloatArray?): SpeakerCluster.Match {
        if (local < 0) return SpeakerCluster.Match(null, null, true)
        val voice = raw?.let { SpeakerCluster.normalize(it) }
        bindings[local]?.let { id ->
            val index = cluster.speakers.indexOfFirst { it.id == id }
            val speaker = cluster.speakers[index]
            // Reprocessing never overwrites the established voice behind a retained name.
            if (speaker.centroid.isEmpty() && voice != null)
                cluster.speakers[index] = speaker.copy(centroid = voice.toList(),
                    observations = 1, voiceSamples = listOf(voice.toList()))
            return SpeakerCluster.Match(id, null, false)
        }
        val used = bindings.values.toSet()
        val matched = cluster.assign(voice, excludedIds = used)
        if (matched.id != null) return bind(local, matched)
        if (cluster.speakers.size >= 64 ||
            (settings.speakers > 0 && cluster.speakers.size >= settings.speakers))
            return SpeakerCluster.Match(null, matched.similarity, true)
        val next = (cluster.speakers.mapNotNull {
            it.id.removePrefix("speaker_").toIntOrNull()
        }.maxOrNull() ?: 0) + 1
        val speaker = Speaker("speaker_$next", "Участник $next",
            centroid = voice?.toList().orEmpty(), observations = if (voice == null) 0 else 1,
            voiceSamples = voice?.let { listOf(it.toList()) }.orEmpty())
        cluster.speakers += speaker
        return bind(local, SpeakerCluster.Match(speaker.id, null, false))
    }

    private fun bind(local: Int, match: SpeakerCluster.Match): SpeakerCluster.Match {
        val id = match.id ?: return match
        bindings.values.forEach { cluster.keepDistinct(it, id) }
        bindings[local] = id
        return match
    }
}
