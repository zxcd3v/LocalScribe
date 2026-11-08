package ru.localscribe.core

/** Parameter configurations, not measured accuracy guarantees or audio noise suppression. */
enum class ProcessingPreset(
    val title: String,
    val description: String,
    private val quality: Quality,
    private val refine: Boolean,
    private val separation: Boolean,
    private val acousticAnalysis: Boolean,
    private val emotionAnalysis: Boolean,
) {
    CONFERENCE("Конференция", "2 потока, уточнение участников и разделение наложений",
        Quality.BALANCED, true, true, true, false),
    QUIET("Тихая комната", "2 потока, основной диаризатор и акустические характеристики",
        Quality.BALANCED, false, false, true, false),
    NOISY("Шумная среда", "4 потока, уточнение участников и разделение; акустические оценки выключены",
        Quality.ACCURATE, true, true, false, false),
    FAST("Быстро", "1 поток, основной диаризатор, без разделения и дополнительных оценок",
        Quality.FAST, false, false, false, false),
    ACCURATE("Максимальная точность", "4 потока, оба диаризатора и все дополнительные оценки",
        Quality.ACCURATE, true, true, true, true);

    fun applyTo(settings: Settings): Settings = settings.copy(
        quality = quality,
        refineDiarization = refine,
        separateOverlap = separation,
        prosody = acousticAnalysis,
        emotions = emotionAnalysis,
    )

    fun matches(settings: Settings): Boolean = applyTo(settings) == settings
}
