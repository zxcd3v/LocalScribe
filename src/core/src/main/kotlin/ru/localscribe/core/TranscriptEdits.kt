package ru.localscribe.core

object TranscriptEdits {
    // Numeric spans include their sign, decimal/time separators and group spacing.
    private val numeric = """(?:[\p{Sc}][ \u00A0\u202F]?)?[+\-−]?\p{N}+(?:(?:[.:/,\-−]|[ \u00A0\u202F](?=\p{N}{3}(?!\p{N})))\p{N}+)*(?:[ \u00A0\u202F]?[\p{Sc}%])?"""
    private val tokens = Regex(
        """$numeric|[\p{L}\p{M}\p{N}]+(?:[-_'’@./:+][\p{L}\p{M}\p{N}]+)*|[^\s\p{Z}.,!?;:…"«»„“”()—–]"""
    )
    private val russian = Regex("[а-яё]+")
    private val endings = setOf(
        "", "а", "я", "у", "ю", "е", "и", "ы", "о", "ь", "й", "ов", "ев", "ей",
        "ам", "ям", "ом", "ем", "ах", "ях", "ами", "ями", "ою", "ею",
        "ый", "ий", "ой", "ая", "яя", "ое", "ее", "ые", "ие", "ого", "его",
        "ому", "ему", "ым", "им", "ую", "юю", "ых", "их", "ыми", "ими",
        "л", "ла", "ло", "ли",
    )

    fun accept(original: String, candidate: String): String {
        if (candidate.isBlank() || candidate.any { it.isISOControl() } || "<|" in candidate)
            return original
        val before = tokens.findAll(original).map { it.value }.toList()
        val after = tokens.findAll(candidate).map { it.value }.toList()
        if (before.size != after.size) return original
        var changedEndings = 0
        for ((index, old) in before.withIndex()) {
            val new = after[index]
            if (old.equals(new, ignoreCase = true)) continue
            if (++changedEndings > 2 || !compatibleEnding(old, new, index == 0))
                return original
        }
        return candidate
    }

    /** Edit adjacent fragments together, then restore their word ownership without rewriting IDs. */
    fun partition(originals: List<String>, candidate: String): List<String>? {
        if (originals.isEmpty()) return emptyList()
        val joined = originals.joinToString(" ")
        if (accept(joined, candidate) != candidate) return null
        val counts = originals.map { tokens.findAll(it).count() }
        if (counts.any { it == 0 }) return null
        val matches = tokens.findAll(candidate).toList()
        val out = mutableListOf<String>()
        var start = 0
        var count = 0
        for (size in counts.dropLast(1)) {
            count += size
            var end = matches[count].range.first
            val previousEnd = matches[count - 1].range.last + 1
            while (end > previousEnd && (candidate[end - 1].isWhitespace() ||
                    candidate[end - 1] in "«„“(")) end--
            out += candidate.substring(start, end).trim()
            start = end
        }
        out += candidate.substring(start).trim()
        return out.takeIf { parts -> parts.indices.all { accept(originals[it], parts[it]) == parts[it] } }
    }

    private fun compatibleEnding(old: String, new: String, first: Boolean): Boolean {
        if ((!first && old.first().isUpperCase()) || old.drop(1).any { it.isUpperCase() } ||
            (!first && new.first().isUpperCase()) || new.drop(1).any { it.isUpperCase() }
        ) return false
        val a = old.lowercase()
        val b = new.lowercase()
        if (!russian.matches(a) || !russian.matches(b)) return false
        val shared = a.commonPrefixWith(b).length
        // Conservative heuristic, not a morphological dictionary.
        return (4..shared).any { a.substring(it) in endings && b.substring(it) in endings }
    }
}
