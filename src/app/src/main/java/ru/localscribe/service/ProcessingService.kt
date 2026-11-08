package ru.localscribe.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.os.PowerManager
import kotlinx.coroutines.*
import ru.localscribe.ScribeApp
import ru.localscribe.data.EngineGate
import ru.localscribe.engine.OfflinePipeline

class ProcessingService : Service() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    private var job: Job? = null

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent?.action == "STOP") {
            job?.cancel()
            if (job?.isActive != true) stopSelf()
            return START_NOT_STICKY
        }
        val id = intent?.getStringExtra("id") ?: return START_NOT_STICKY
        if (job?.isActive == true) return START_NOT_STICKY
        try {
            foreground(false, "Подготовка моделей")
        } catch (e: RuntimeException) {
            val app = application as ScribeApp
            app.diagnostics.failure("foreground-start", e)
            app.scope.launch {
                app.ready.await()
                app.repository.recording(id)?.let {
                    app.repository.save(
                        it.copy(
                            state = "error",
                            error =
                                "Android не разрешил запуск. Откройте приложение и проверьте разрешение микрофона.",
                        )
                    )
                }
            }
            stopSelf()
            return START_NOT_STICKY
        }
        job =
            scope.launch {
                val app = application as ScribeApp
                var wake: PowerManager.WakeLock? = null
                try {
                    app.ready.await()
                    require(!EngineGate.mutex.isLocked) { "Другая задача уже выполняется" }
                    EngineGate.exclusive {
                        JobState.processingStage.value = "Подготовка обработки"
                        JobState.processingProgress.value = 0f
                        JobState.active.value = id
                        wake =
                            getSystemService(PowerManager::class.java)
                                .newWakeLock(
                                    PowerManager.PARTIAL_WAKE_LOCK,
                                    "LocalScribe:processing",
                                )
                                .apply { acquire(6 * 60 * 60 * 1000L) }
                        OfflinePipeline(app.repository, app.models).run(
                            id,
                            onProgress = { JobState.processingProgress.value = it },
                        ) { text ->
                            JobState.processingStage.value = text
                            app.diagnostics.stage(text)
                            foreground(false, text)
                        }
                    }
                } catch (e: CancellationException) {
                    app.repository.recording(id)?.let {
                        app.repository.save(
                            it.copy(
                                state = "cancelled",
                                error =
                                    "Обработка остановлена. Можно продолжить с последнего блока.",
                            )
                        )
                    }
                } catch (e: OutOfMemoryError) {
                    app.diagnostics.failure("offline-memory", e)
                    app.repository.recording(id)?.let {
                        app.repository.save(
                            it.copy(
                                state = "error",
                                error =
                                    "Недостаточно памяти. Выберите быстрый профиль и новую обработку.",
                            )
                        )
                    }
                } catch (e: LinkageError) {
                    app.diagnostics.failure("offline-native-load", e)
                    app.repository.recording(id)?.let {
                        app.repository.save(
                            it.copy(
                                state = "error",
                                error =
                                    "Не удалось загрузить движок. Сохраните диагностику и проверьте ARM64-сборку приложения.",
                            )
                        )
                    }
                } catch (e: Exception) {
                    app.diagnostics.failure("offline", e)
                    app.repository.recording(id)?.let {
                        app.repository.save(
                            it.copy(state = "error", error = e.message ?: e.javaClass.simpleName)
                        )
                    }
                } finally {
                    wake?.let { if (it.isHeld) it.release() }
                    if (JobState.active.value == id) {
                        JobState.processingStage.value = ""
                        JobState.active.value = null
                    }
                    stopForeground(STOP_FOREGROUND_REMOVE)
                    stopSelf()
                }
            }
        return START_NOT_STICKY
    }

    override fun onTimeout(startId: Int, fgsType: Int) {
        job?.cancel()
        stopForeground(STOP_FOREGROUND_REMOVE)
        stopSelf()
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
