package ru.localscribe.core

/** Hysteresis for online turns; missing evidence never erases a previously observed voice. */
class VoiceTurnTracker {
    var current = SpeakerCluster.Match(null, null)
        private set

    var embedding: FloatArray? = null
        private set

    private data class Pending(val id: String, val since: Long, val observedAt: Long)

    private var pending: Pending? = null

    /** Returns the estimated new turn boundary; the caller must split audio before reset(next). */
    fun observe(
        observation: SessionSpeakers.Observation,
        voice: FloatArray?,
        start: Long,
        end: Long,
    ): Long? {
        val next = observation.match
        if (next.id == null || next.provisional) {
            if (current.id == null && voice != null) embedding = voice.copyOf()
            pending = null
            return null
        }
        if (current.id == null || current.id == next.id) {
            current = next
            embedding = voice?.copyOf()
            pending = null
            return null
        }
        val previous = pending
        // A newly established voice already has two independent observations in SessionSpeakers.
        if (observation.since < start) return observation.since
        if (previous?.id == next.id && end - previous.observedAt >= 8000) return previous.since
        if (previous?.id != next.id) pending = Pending(next.id, observation.since, end)
        return null
    }

    fun reset(
        next: SpeakerCluster.Match = SpeakerCluster.Match(null, null),
        voice: FloatArray? = null,
    ) {
        current = next
        embedding = voice?.copyOf()
        pending = null
    }
}
