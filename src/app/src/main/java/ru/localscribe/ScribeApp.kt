package ru.localscribe

import android.app.Application
import kotlinx.coroutines.*
import ru.localscribe.data.*

class ScribeApp : Application() {
    val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    val diagnostics by lazy { Diagnostics(this) }
    val repository by lazy { Repository(this) }
    val models by lazy { ModelStore(this) }
    val ready = CompletableDeferred<Unit>()
    val preparation by lazy {
        ModelPreparation(models, scope) { diagnostics.failure("model-preparation", it) }
    }

    override fun onCreate() {
        super.onCreate()
        val previous = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, error ->
            diagnostics.failure("uncaught", error)
            previous?.uncaughtException(thread, error)
        }
        scope.launch {
            try {
                diagnostics.previousExit()
                models.recover()
                repository.recover()
                val migration = getSharedPreferences("voice-memory-migrations", MODE_PRIVATE)
                if (!migration.getBoolean("automatic-memory-085", false)) {
                    repository.rememberNamedVoices()
                    migration.edit().putBoolean("automatic-memory-085", true).apply()
                }
                ready.complete(Unit)
                preparation.prepare()
            } catch (t: Throwable) {
                diagnostics.failure("startup-storage", t)
                preparation.startupFailed()
                ready.completeExceptionally(t)
            }
        }
    }
}
