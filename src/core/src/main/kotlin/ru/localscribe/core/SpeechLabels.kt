package ru.localscribe.core

import kotlin.math.abs

/** Measured values and explicit model estimates; never infer feelings from transcript text. */
data class SpeechLabel(val title: String, val detail: String, val startMs: Long, val endMs: Long)

object SpeechLabels {
    fun forSegment(s: Segment): List<SpeechLabel> = buildList {
        s.acoustics?.let { a ->
            a.finalRiseSemitones
                ?.takeIf { it.isFinite() && abs(it) >= 2 }
                ?.let {
                    add(
                        SpeechLabel(
                            if (it > 0) "Тон повышается" else "Тон понижается",
                            "Измерение F0: изменение в конце реплики %+.1f полутона. Это не определение вопроса, удивления или эмоции; возможны ошибки оценки F0. Калиброванная уверенность недоступна."
                                .format(it),
                            s.startMs,
                            s.endMs,
                        )
                    )
                }
            a.relativeDb
                ?.takeIf { it.isFinite() && abs(it) >= 3 }
                ?.let {
                    add(
                        SpeechLabel(
                            if (it > 0) "Громче обычного" else "Тише обычного",
                            "Средняя громкость %+.1f дБ относительно накопленной нормы участника. Изменение расстояния до микрофона тоже меняет громкость; крик и шёпот этим не классифицируются."
                                .format(it),
                            s.startMs,
                            s.endMs,
                        )
                    )
                }
            a.wordsPerMinute
                ?.takeIf { it.isFinite() }
                ?.let {
                    add(
                        SpeechLabel(
                            "Темп %.0f слов/мин".format(it),
                            "Число распознанных слов / длительность реплики. Ошибки ASR и паузы влияют на оценку; без индивидуальной нормы не присваивается «необычно быстрый/медленный».",
                            s.startMs,
                            s.endMs,
                        )
                    )
                }
            if (a.pauseBeforeMs >= 1000)
                add(
                    SpeechLabel(
                        "…",
                        "Интервал до начала этой реплики, рассчитанный по границам предыдущей речи. Это не вывод об эмоциях.",
                        (s.startMs - a.pauseBeforeMs).coerceAtLeast(0),
                        s.startMs,
                    )
                )
        }
        s.emotion?.let { e ->
            val name =
                when (e.label) {
                    "positive" -> "Положительная окраска"
                    "angry" -> "Раздражённая окраска"
                    "sad" -> "Грустная окраска"
                    "neutral" -> "Нейтральная окраска"
                    else -> "Эмоция неизвестна"
                }
            add(
                SpeechLabel(
                    name,
                    "Вероятностная интерпретация аудио: ${e.source}. " +
                        (e.confidence?.let { "Оценка модели %.2f, не откалибрована. ".format(it) }
                            ?: "Уверенность недоступна. ") +
                        "Это не установленное состояние человека. " +
                        (e.reason?.let { "Причина отказа/ограничение: $it" } ?: ""),
                    s.startMs,
                    s.endMs,
                )
            )
        }
    }
}
