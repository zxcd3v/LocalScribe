package ru.localscribe.engine

/** A 12-second owned interval with up to 1.5 seconds of acoustic context at each edge. */
internal data class ContextAsrWindow(
    val begin: Int,
    val end: Int,
    val audioBegin: Int,
    val audioEnd: Int,
)

internal fun contextAsrWindows(blockSize: Int, coreStart: Int, contextSize: Int): List<ContextAsrWindow> {
    require(blockSize >= 0 && coreStart >= 0 && contextSize >= coreStart + blockSize)
    return buildList {
        var begin = 0
        while (begin < blockSize) {
            val end = minOf(blockSize, begin + 12 * 16000)
            add(ContextAsrWindow(begin, end, maxOf(0, coreStart + begin - 24000),
                minOf(contextSize, coreStart + end + 24000)))
            begin = end
        }
    }
}
