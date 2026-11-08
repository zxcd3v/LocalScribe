package ru.localscribe.engine

/** Keep the 30-second cap, but prefer a nearby pause to a cut through speech. */
internal fun offlineBlockEnd(samples: FloatArray, hasFollowingAudio: Boolean): Int {
    if (!hasFollowingAudio || samples.size < 16000) return samples.size
    val halfWindow = 640 // Half of an 80 ms window at 16 kHz.
    val quietPeak = 0.008f
    fun quiet(begin: Int, end: Int): Boolean =
        (begin until end).all { kotlin.math.abs(samples[it]) <= quietPeak }
    // Keep the nominal boundary if it already ends in a pause.
    if (quiet(samples.size - 2 * halfWindow, samples.size)) return samples.size
    val earliest = samples.size - 16000 + halfWindow
    for (end in samples.size - halfWindow downTo earliest step 320) {
        if (quiet(end - halfWindow, end + halfWindow)) return end
    }
    return samples.size
}
