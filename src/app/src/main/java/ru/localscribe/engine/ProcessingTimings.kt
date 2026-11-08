package ru.localscribe.engine

/** Timings contain stage names and durations only, never speech or file names. */
class ProcessingTimings(private val observer: (String, Long) -> Unit = { name, ms ->
    android.util.Log.i("LocalScribePerf", "stage=$name elapsed_ms=$ms")
}) {
    fun elapsed(name: String, started: Long) = observer(name, (System.nanoTime() - started) / 1_000_000)
    fun <T> measure(name: String, work: () -> T): T {
        val start = System.nanoTime()
        try { return work() } finally { elapsed(name, start) }
    }
    suspend fun <T> suspendMeasure(name: String, work: suspend () -> T): T {
        val start = System.nanoTime()
        try { return work() } finally { elapsed(name, start) }
    }
}
