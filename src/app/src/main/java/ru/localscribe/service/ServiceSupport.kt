package ru.localscribe.service

import android.app.*
import android.content.*
import android.content.pm.ServiceInfo
import android.os.Build
import kotlinx.coroutines.flow.MutableStateFlow
import ru.localscribe.MainActivity

object JobState {
    val active = MutableStateFlow<String?>(null)
    val processingStage = MutableStateFlow("")
    val processingProgress = MutableStateFlow(0f)
    val live = MutableStateFlow(LiveState())
}

data class LiveState(
    val recordingId: String? = null,
    val elapsedMs: Long = 0,
    val level: Float = 0f,
    val preliminary: String = "",
    val speakerId: String? = null,
    val paused: Boolean = false,
    val preparing: Boolean = false,
    val lagSeconds: Double = 0.0,
    val message: String = "",
)

fun Service.foreground(capture: Boolean, title: String) {
    val channel = if (capture) "recording" else "processing"
    val manager = getSystemService(NotificationManager::class.java)
    manager.createNotificationChannel(
        NotificationChannel(
            channel,
            if (capture) "Запись микрофона" else "Обработка аудио",
            NotificationManager.IMPORTANCE_LOW,
        )
    )
    val open =
        PendingIntent.getActivity(
            this,
            0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
    val stop =
        PendingIntent.getService(
            this,
            if (capture) 1 else 2,
            Intent(this, if (capture) CaptureService::class.java else ProcessingService::class.java)
                .setAction("STOP"),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
    val n =
        Notification.Builder(this, channel)
            .setSmallIcon(android.R.drawable.ic_btn_speak_now)
            .setContentTitle(if (capture) "Запись разговора" else "Локальная обработка")
            .setContentText(title)
            .setContentIntent(open)
            .setOngoing(true)
            .addAction(Notification.Action.Builder(null, "Остановить", stop).build())
            .build()
    val notificationId = if (capture) 10 else 11
    if (capture) {
        if (Build.VERSION.SDK_INT >= 30)
            startForeground(notificationId, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE)
        else startForeground(notificationId, n)
    } else {
        if (Build.VERSION.SDK_INT >= 35)
            startForeground(notificationId, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROCESSING)
        else if (Build.VERSION.SDK_INT >= 29)
            startForeground(notificationId, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC)
        else startForeground(notificationId, n)
    }
}
