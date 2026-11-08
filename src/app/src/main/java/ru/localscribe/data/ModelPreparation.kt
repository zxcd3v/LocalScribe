package ru.localscribe.data

import android.net.Uri
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Application-owned setup survives Activity recreation. Interrupted staging is safely replaced on
 * retry.
 */
data class PreparationState(
    val phase: String = "checking",
    val message: String = "Проверяем локальные модели; интернет не используется",
    val progress: Float? = null,
    val hasBundledModels: Boolean = false,
    val modelId: String? = null,
    val error: String? = null,
) {
    val running: Boolean
        get() = phase == "checking" || phase == "installing"
}

class ModelPreparation(
    private val store: ModelStore,
    private val scope: CoroutineScope,
    private val onFailure: (Throwable) -> Unit = {},
) {
    private val mutableState = MutableStateFlow(PreparationState())
    val state = mutableState.asStateFlow()
    private var job: Job? = null

    fun startupFailed() {
        mutableState.value =
            PreparationState(
                phase = "error",
                error =
                    "Не удалось открыть локальное хранилище. Сохраните диагностику. Исходные файлы не удалены.",
            )
    }

    @Synchronized
    fun prepare(force: Boolean = false): Job {
        job?.takeIf { it.isActive }
            ?.let {
                return it
            }
        mutableState.value =
            mutableState.value.copy(phase = "checking", error = null, progress = null)
        return scope
            .launch {
                execute {
                    val bundle = store.bundledInfo()
                    val bundled = bundle != null
                    val manifest = store.manifest()
                    val installed = manifest?.id
                    val update =
                        bundle != null &&
                            manifest != null &&
                            (manifest.files.keys.any { it.startsWith("offline-small/") } ||
                                (manifest.id == bundle.manifest.id &&
                                    manifest != bundle.manifest &&
                                    !store.preferences.getBoolean("manual_models", false)))
                    mutableState.value =
                        mutableState.value.copy(hasBundledModels = bundled, modelId = installed)
                    if (
                        bundled &&
                            (force ||
                                ((installed == null || update) &&
                                    store.automaticPreparationEnabled()))
                    ) {
                        store.installBundled(::progress)
                    }
                    refresh()
                }
            }
            .also { job = it }
    }

    @Synchronized
    fun import(uri: Uri): Job {
        check(job?.isActive != true) { "Дождитесь подготовки моделей" }
        mutableState.value =
            mutableState.value.copy(phase = "installing", error = null, progress = null)
        return scope
            .launch {
                execute {
                    store.install(uri, ::progress)
                    refresh()
                }
            }
            .also { job = it }
    }

    // Called after deliberate removal, while inference and setup are idle.
    fun refresh() {
        mutableState.value =
            PreparationState(
                phase = "ready",
                message = "",
                hasBundledModels = store.bundledInfo() != null,
                modelId = store.manifest()?.id,
            )
    }

    private fun progress(p: ModelInstallProgress) {
        mutableState.value =
            mutableState.value.copy(phase = "installing", message = p.label, progress = p.fraction)
    }

    private suspend fun execute(block: suspend () -> Unit) {
        try {
            block()
        } catch (e: CancellationException) {
            mutableState.value =
                mutableState.value.copy(
                    phase = "error",
                    error = "Подготовка прервана. Нажмите «Повторить».",
                )
            throw e
        } catch (e: OutOfMemoryError) {
            onFailure(e)
            mutableState.value =
                mutableState.value.copy(
                    phase = "error",
                    error =
                        "Недостаточно оперативной памяти. Закройте другие приложения и повторите подготовку.",
                )
        } catch (e: Exception) {
            onFailure(e)
            mutableState.value =
                mutableState.value.copy(
                    phase = "error",
                    modelId = store.manifest()?.id,
                    error = e.message ?: "Не удалось подготовить модели",
                )
        }
    }
}
