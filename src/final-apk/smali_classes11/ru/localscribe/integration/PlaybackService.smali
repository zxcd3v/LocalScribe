.class public final Lru/localscribe/integration/PlaybackService;
.super Landroid/app/Service;
.source "PlaybackService.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "localscribe_playback"

.field private static final NOTICE:I = 0x2d0

.field private static volatile instance:Lru/localscribe/integration/PlaybackService;


# instance fields
.field private volatile paused:Z

.field private projection:Landroid/media/projection/MediaProjection;

.field private volatile recorder:Landroid/media/AudioRecord;

.field private volatile state:Lru/localscribe/integration/RecordingBridge$Snapshot;

.field private volatile stopping:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/localscribe/integration/PlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/integration/PlaybackService;->requestStop()V

    return-void
.end method

.method private command(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private notification(Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/ControlsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0xc000000

    const/16 v2, 0x2d1

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "localscribe_playback"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10800a4

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "LocalScribe \u2014 \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    new-instance p2, Landroid/app/Notification$Action$Builder;

    iget-boolean v0, p0, Lru/localscribe/integration/PlaybackService;->paused:Z

    if-eqz v0, :cond_0

    const-string v0, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    goto :goto_0

    :cond_0
    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    :goto_0
    iget-boolean v1, p0, Lru/localscribe/integration/PlaybackService;->paused:Z

    if-eqz v1, :cond_1

    const-string v1, "RESUME"

    goto :goto_1

    :cond_1
    const-string v1, "PAUSE"

    :goto_1
    const/16 v2, 0x2d2

    invoke-direct {p0, v1, v2}, Lru/localscribe/integration/PlaybackService;->command(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance p2, Landroid/app/Notification$Action$Builder;

    const-string v0, "STOP"

    const/16 v1, 0x2d3

    invoke-direct {p0, v0, v1}, Lru/localscribe/integration/PlaybackService;->command(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    invoke-direct {p2, v2, v1, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private record(Ljava/lang/String;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v8, ". \u041e\u0448\u0438\u0431\u043a\u0430 \u0438\u0441\u0442\u043e\u0440\u0438\u0438: "

    const-string v9, "\u0410\u0443\u0434\u0438\u043e \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u043e: "

    const-string v10, "recorded"

    const-string v11, "capture_empty"

    const-string v12, "\u0417\u0430\u043f\u0438\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430. \u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 LocalScribe \u0434\u043b\u044f \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u043e\u0439 \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0438."

    const-string v13, "\u0417\u0430\u043f\u0438\u0441\u044c \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430 \u0431\u0435\u0437 \u0430\u0443\u0434\u0438\u043e\u0434\u0430\u043d\u043d\u044b\u0445."

    const-string v14, "\u0417\u0430\u043f\u0438\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430, \u043d\u043e \u0441\u0438\u0433\u043d\u0430\u043b \u043d\u0435 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d: \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u044b \u0442\u0438\u0448\u0438\u043d\u0430 \u0438\u043b\u0438 \u0437\u0430\u043f\u0440\u0435\u0442 \u0437\u0430\u0445\u0432\u0430\u0442\u0430. \u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0439\u0442\u0435 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430 \u043f\u0440\u0438 \u043d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e\u0441\u0442\u0438."

    const-string v15, "getActive"

    nop

    nop

    nop

    nop

    const/16 v3, 0x2d0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v16, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v1}, Lru/localscribe/integration/RecordingBridge;->awaitReady(Landroid/content/Context;)V

    iget-boolean v0, v1, Lru/localscribe/integration/PlaybackService;->stopping:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    if-eqz v0, :cond_7

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v5, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    :cond_0
    nop

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    iput-object v5, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    :cond_1
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    cmp-long v7, v16, v16

    if-lez v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v14, v5

    :goto_1
    nop

    :try_start_2
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5}, Lru/localscribe/integration/RecordingBridge;->active(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    if-nez v14, :cond_4

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    iput-object v5, v1, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    sput-object v5, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    invoke-virtual {v1, v4}, Lru/localscribe/integration/PlaybackService;->stopForeground(I)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v14, :cond_5

    move-object v12, v14

    goto :goto_4

    :cond_5
    if-lez v7, :cond_6

    goto :goto_4

    :cond_6
    move-object v12, v13

    :goto_4
    nop

    invoke-direct {v1, v12, v6}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v1}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    return-void

    :cond_7
    move v7, v3

    :try_start_3
    invoke-static/range {p0 .. p1}, Lru/localscribe/integration/RecordingBridge;->audio(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1b
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    :try_start_4
    new-instance v4, Lru/localscribe/integration/PcmWave;

    invoke-direct {v4, v3}, Lru/localscribe/integration/PcmWave;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1a
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    move/from16 v19, v6

    :try_start_5
    const-string v6, "recording"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_19
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    move/from16 v20, v7

    const/4 v7, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    const-wide/16 v4, 0x0

    move-object/from16 v23, v10

    const/4 v10, 0x2

    :try_start_6
    invoke-static/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_18
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    const/16 v0, 0x10

    const/16 v2, 0x3e80

    :try_start_7
    invoke-static {v2, v0, v10}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    if-lez v4, :cond_29

    new-instance v5, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    iget-object v6, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-direct {v5, v6}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v5

    new-instance v6, Landroid/media/AudioRecord$Builder;

    invoke-direct {v6}, Landroid/media/AudioRecord$Builder;-><init>()V

    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v7, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    const/16 v2, 0x7d00

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "LocalScribe:playback"

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x1499700

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-boolean v0, v1, Lru/localscribe/integration/PlaybackService;->stopping:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_11

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_8

    :try_start_8
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_5
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lru/localscribe/integration/PcmWave;->durationMs()J

    move-result-wide v4

    :try_start_9
    invoke-virtual/range {v21 .. v21}, Lru/localscribe/integration/PcmWave;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v0, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    :cond_9
    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_a
    cmp-long v16, v4, v16

    if-lez v16, :cond_b

    if-nez v0, :cond_b

    move-object v7, v14

    goto :goto_7

    :cond_b
    move-object v7, v0

    :goto_7
    if-eqz v3, :cond_d

    if-lez v16, :cond_c

    move-object/from16 v6, v23

    goto :goto_8

    :cond_c
    move-object v6, v11

    :goto_8
    move-object/from16 v2, p1

    :try_start_a
    invoke-static/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_d
    move-object/from16 v2, p1

    :goto_9
    :try_start_b
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lru/localscribe/integration/RecordingBridge;->active(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    if-nez v7, :cond_e

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_e
    :goto_a
    nop

    :goto_b
    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    sput-object v2, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    invoke-virtual {v1, v10}, Lru/localscribe/integration/PlaybackService;->stopForeground(I)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v7, :cond_f

    move-object v12, v7

    goto :goto_c

    :cond_f
    if-lez v16, :cond_10

    goto :goto_c

    :cond_10
    move-object v12, v13

    :goto_c
    nop

    const/4 v6, 0x0

    invoke-direct {v1, v12, v6}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x2d0

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v1}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    return-void

    :cond_11
    move-object/from16 v2, p1

    move-object/from16 v18, v3

    const/16 v3, 0x2d0

    :try_start_c
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_27

    const/16 v0, 0x2000

    new-array v4, v0, [B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-wide/from16 v24, v5

    move-wide/from16 v26, v24

    move-wide/from16 v28, v16

    move-wide/from16 v30, v28

    const/4 v6, 0x0

    :goto_d
    :try_start_d
    iget-boolean v5, v1, Lru/localscribe/integration/PlaybackService;->stopping:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-nez v5, :cond_1e

    :try_start_e
    iget-object v5, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    invoke-virtual {v5, v4, v3, v0, v3}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v5

    iget-boolean v3, v1, Lru/localscribe/integration/PlaybackService;->stopping:Z

    if-eqz v3, :cond_12

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    goto/16 :goto_21

    :cond_12
    if-ltz v5, :cond_1d

    if-nez v5, :cond_13

    const/16 v3, 0x2d0

    goto :goto_d

    :cond_13
    iget-boolean v3, v1, Lru/localscribe/integration/PlaybackService;->paused:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-nez v3, :cond_17

    move-object/from16 v3, v21

    :try_start_f
    invoke-virtual {v3, v4, v5}, Lru/localscribe/integration/PcmWave;->write([BI)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    nop

    const/16 v21, 0x0

    :goto_e
    add-int/lit8 v0, v21, 0x1

    if-ge v0, v5, :cond_15

    :try_start_10
    aget-byte v7, v4, v21

    and-int/lit16 v7, v7, 0xff

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v7

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/16 v7, 0x64

    if-le v0, v7, :cond_14

    const/4 v0, 0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v21, v21, 0x2

    const/16 v0, 0x2000

    const/4 v7, 0x1

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v5, v3

    move-object/from16 v21, v11

    goto :goto_11

    :catch_6
    move-exception v0

    move-object v5, v3

    move-object/from16 v21, v11

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_16

    move-object/from16 v21, v11

    move-wide/from16 v30, v16

    goto :goto_10

    :cond_16
    :try_start_11
    div-int/lit8 v5, v5, 0x2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v21, v11

    int-to-long v10, v5

    add-long v30, v30, v10

    :goto_10
    or-int/2addr v0, v6

    move v10, v0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v21, v11

    move-object v10, v0

    move-object v5, v3

    :goto_11
    move-object/from16 v3, v18

    goto/16 :goto_3d

    :catch_7
    move-exception v0

    move-object/from16 v21, v11

    move-object v5, v3

    :goto_12
    move-object/from16 v3, v18

    goto/16 :goto_31

    :cond_17
    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move v10, v6

    :goto_13
    :try_start_12
    invoke-virtual {v3}, Lru/localscribe/integration/PcmWave;->durationMs()J

    move-result-wide v28
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    const-wide/32 v5, 0x1f400

    cmp-long v0, v30, v5

    if-ltz v0, :cond_18

    :try_start_13
    const-string v0, "\u041d\u0435\u0442 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0433\u043e \u0441\u0438\u0433\u043d\u0430\u043b\u0430: \u0442\u0438\u0448\u0438\u043d\u0430 \u0438\u043b\u0438 \u0437\u0430\u043f\u0440\u0435\u0442 \u0437\u0430\u0445\u0432\u0430\u0442\u0430. \u0414\u043b\u044f \u0437\u0430\u043f\u0438\u0441\u0438 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u0435 \u044d\u0442\u043e\u0442 \u0440\u0435\u0436\u0438\u043c \u0438 \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d."
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-object v6, v0

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v5, v3

    move v6, v10

    move-object/from16 v3, v18

    goto/16 :goto_3c

    :catch_8
    move-exception v0

    move-object v5, v3

    move v6, v10

    goto :goto_12

    :cond_18
    :try_start_14
    const-string v0, "\u0422\u043e\u043b\u044c\u043a\u043e \u0440\u0430\u0437\u0440\u0435\u0448\u0451\u043d\u043d\u043e\u0435 Android \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0435; \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    move-object v6, v0

    :goto_14
    new-instance v0, Lru/localscribe/integration/RecordingBridge$Snapshot;

    move-object v5, v4

    iget-boolean v4, v1, Lru/localscribe/integration/PlaybackService;->paused:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object v7, v5

    const/4 v5, 0x0

    move-object v11, v3

    move-object/from16 v20, v7

    move/from16 v32, v10

    const/16 v10, 0x2d0

    move-object v7, v1

    move-object v1, v2

    move-wide/from16 v2, v28

    const/16 v28, 0x2000

    :try_start_15
    invoke-direct/range {v0 .. v6}, Lru/localscribe/integration/RecordingBridge$Snapshot;-><init>(Ljava/lang/String;JZZLjava/lang/String;)V

    move-object v1, v0

    move-object v0, v6

    iput-object v1, v7, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v24

    const-wide/16 v33, 0x3e8

    cmp-long v1, v4, v33

    if-ltz v1, :cond_1c

    invoke-virtual {v11}, Lru/localscribe/integration/PcmWave;->checkpoint()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v4, v24, v26

    const-wide/16 v33, 0x1388

    cmp-long v1, v4, v33

    if-ltz v1, :cond_1a

    iget-boolean v1, v7, Lru/localscribe/integration/PlaybackService;->paused:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-eqz v1, :cond_19

    :try_start_16
    const-string v1, "paused"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v10, v0

    move-wide/from16 v28, v2

    move-object v1, v7

    move-object v5, v11

    move-object/from16 v3, v18

    move/from16 v6, v32

    move-object/from16 v2, p1

    goto/16 :goto_3d

    :catch_9
    move-exception v0

    move-wide/from16 v28, v2

    move-object v1, v7

    move-object v5, v11

    move-object/from16 v3, v18

    move/from16 v6, v32

    move-object/from16 v2, p1

    goto/16 :goto_31

    :cond_19
    :try_start_17
    const-string v1, "recording"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :goto_15
    move-object v6, v1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide v4, v2

    move-object/from16 v3, v18

    const/4 v10, 0x1

    move-object/from16 v2, p1

    :try_start_18
    invoke-static/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v26, v24

    goto :goto_16

    :cond_1a
    move-wide v4, v2

    move-object v1, v7

    move-object/from16 v3, v18

    const/4 v10, 0x1

    :goto_16
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, v1, Lru/localscribe/integration/PlaybackService;->paused:Z

    if-eqz v7, :cond_1b

    const-string v7, "\u041f\u0430\u0443\u0437\u0430 "

    goto :goto_17

    :cond_1b
    const-string v7, "\u25cf "

    :goto_17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    invoke-virtual {v7}, Lru/localscribe/integration/RecordingBridge$Snapshot;->timer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    const/16 v7, 0x2d0

    invoke-virtual {v2, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_18

    :catchall_4
    move-exception v0

    goto :goto_19

    :catch_a
    move-exception v0

    goto :goto_1a

    :cond_1c
    move-wide v4, v2

    move-object v1, v7

    move-object/from16 v3, v18

    const/4 v10, 0x1

    :goto_18
    move-object/from16 v0, v21

    move-object/from16 v21, v11

    move-object v11, v0

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move v7, v10

    move/from16 v0, v28

    move/from16 v6, v32

    const/16 v3, 0x2d0

    const/4 v10, 0x2

    move-wide/from16 v28, v4

    move-object/from16 v4, v20

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    move-wide v4, v2

    move-object v1, v7

    move-object/from16 v3, v18

    :goto_19
    move-object/from16 v2, p1

    move-object v10, v0

    move-wide/from16 v28, v4

    goto :goto_1c

    :catch_b
    move-exception v0

    move-wide v4, v2

    move-object v1, v7

    move-object/from16 v3, v18

    :goto_1a
    move-object/from16 v2, p1

    move-wide/from16 v28, v4

    goto :goto_1e

    :catchall_6
    move-exception v0

    move-object v11, v3

    move/from16 v32, v10

    move-object/from16 v3, v18

    move-wide/from16 v4, v28

    goto :goto_1b

    :catch_c
    move-exception v0

    move-object v11, v3

    move/from16 v32, v10

    move-object/from16 v3, v18

    move-wide/from16 v4, v28

    goto :goto_1d

    :catchall_7
    move-exception v0

    move-object v11, v3

    move/from16 v32, v10

    move-object/from16 v3, v18

    :goto_1b
    move-object/from16 v2, p1

    move-object v10, v0

    :goto_1c
    move-object v5, v11

    move/from16 v6, v32

    goto/16 :goto_3d

    :catch_d
    move-exception v0

    move-object v11, v3

    move/from16 v32, v10

    move-object/from16 v3, v18

    :goto_1d
    move-object/from16 v2, p1

    :goto_1e
    move-object v5, v11

    move/from16 v6, v32

    goto/16 :goto_31

    :cond_1d
    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_1f

    :catch_e
    move-exception v0

    goto :goto_20

    :catchall_9
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :goto_1f
    move-object/from16 v2, p1

    goto/16 :goto_29

    :catch_f
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :goto_20
    move-object/from16 v2, p1

    goto/16 :goto_2a

    :cond_1e
    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :goto_21
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1f

    :try_start_1a
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_10

    goto :goto_22

    :catch_10
    move-exception v0

    :goto_22
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    :cond_1f
    invoke-virtual {v11}, Lru/localscribe/integration/PcmWave;->durationMs()J

    move-result-wide v4

    :try_start_1b
    invoke-virtual {v11}, Lru/localscribe/integration/PcmWave;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_11

    const/4 v0, 0x0

    goto :goto_23

    :catch_11
    move-exception v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    :cond_20
    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_21

    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_21
    cmp-long v10, v4, v16

    if-lez v10, :cond_22

    if-nez v6, :cond_22

    if-nez v0, :cond_22

    move-object v7, v14

    goto :goto_24

    :cond_22
    move-object v7, v0

    :goto_24
    if-eqz v3, :cond_24

    if-lez v10, :cond_23

    move-object/from16 v6, v23

    goto :goto_25

    :cond_23
    move-object/from16 v6, v21

    :goto_25
    move-object/from16 v2, p1

    :try_start_1c
    invoke-static/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    goto :goto_26

    :catch_12
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_26

    :cond_24
    move-object/from16 v2, p1

    :goto_26
    :try_start_1d
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lru/localscribe/integration/RecordingBridge;->active(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_13

    goto :goto_27

    :catch_13
    move-exception v0

    if-nez v7, :cond_25

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_28

    :cond_25
    :goto_27
    nop

    :goto_28
    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    sput-object v2, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lru/localscribe/integration/PlaybackService;->stopForeground(I)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v7, :cond_26

    goto/16 :goto_39

    :cond_26
    if-lez v10, :cond_33

    goto/16 :goto_3a

    :catchall_a
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :goto_29
    move-object v10, v0

    move-object v5, v11

    goto/16 :goto_3d

    :catch_14
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :goto_2a
    move-object v5, v11

    goto/16 :goto_31

    :cond_27
    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    :try_start_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Android \u043d\u0435 \u043d\u0430\u0447\u0430\u043b \u0437\u0430\u0445\u0432\u0430\u0442"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_b
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    goto/16 :goto_2b

    :catch_15
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v11

    move-object v11, v3

    move-object/from16 v3, v18

    goto/16 :goto_2c

    :cond_28
    move-object/from16 v2, v21

    move-object/from16 v21, v11

    move-object v11, v2

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "\u0417\u0430\u0445\u0432\u0430\u0442 \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object/from16 v2, v21

    move-object/from16 v21, v11

    move-object v11, v2

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442 PCM 16 \u043a\u0413\u0446"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :catchall_c
    move-exception v0

    goto :goto_2b

    :catch_16
    move-exception v0

    goto :goto_2c

    :catchall_d
    move-exception v0

    move-object/from16 v2, v21

    move-object/from16 v21, v11

    move-object v11, v2

    move-object/from16 v2, p1

    goto :goto_2b

    :catch_17
    move-exception v0

    move-object/from16 v2, v21

    move-object/from16 v21, v11

    move-object v11, v2

    move-object/from16 v2, p1

    goto :goto_2c

    :catchall_e
    move-exception v0

    move-object/from16 v35, v21

    move-object/from16 v21, v11

    move-object/from16 v11, v35

    goto :goto_2b

    :catch_18
    move-exception v0

    move-object/from16 v35, v21

    move-object/from16 v21, v11

    move-object/from16 v11, v35

    goto :goto_2c

    :catchall_f
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move-object v11, v4

    :goto_2b
    move-object v10, v0

    move-object v5, v11

    move-wide/from16 v28, v16

    goto :goto_2e

    :catch_19
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move-object v11, v4

    :goto_2c
    move-object v5, v11

    move-wide/from16 v28, v16

    goto :goto_30

    :catchall_10
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move-object v10, v0

    move-wide/from16 v28, v16

    goto :goto_2d

    :catch_1a
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move-wide/from16 v28, v16

    goto :goto_2f

    :catchall_11
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move-object v10, v0

    move-wide/from16 v28, v16

    const/4 v3, 0x0

    :goto_2d
    const/4 v5, 0x0

    :goto_2e
    const/4 v6, 0x0

    goto/16 :goto_3d

    :catch_1b
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move-wide/from16 v28, v16

    const/4 v3, 0x0

    :goto_2f
    const/4 v5, 0x0

    :goto_30
    const/4 v6, 0x0

    :goto_31
    :try_start_1f
    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2a

    :try_start_20
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_1c

    goto :goto_32

    :catch_1c
    move-exception v0

    :goto_32
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v7, 0x0

    iput-object v7, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    :cond_2a
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Lru/localscribe/integration/PcmWave;->durationMs()J

    move-result-wide v28

    :try_start_21
    invoke-virtual {v5}, Lru/localscribe/integration/PcmWave;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1d

    goto :goto_33

    :catch_1d
    move-exception v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    :cond_2b
    :goto_33
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v7, 0x0

    iput-object v7, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    :cond_2c
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2d
    cmp-long v10, v28, v16

    if-lez v10, :cond_2e

    if-nez v6, :cond_2e

    if-nez v4, :cond_2e

    move-object v7, v14

    goto :goto_34

    :cond_2e
    move-object v7, v4

    :goto_34
    if-eqz v3, :cond_30

    if-lez v10, :cond_2f

    move-object/from16 v6, v23

    goto :goto_35

    :cond_2f
    move-object/from16 v6, v21

    :goto_35
    move-wide/from16 v4, v28

    :try_start_22
    invoke-static/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1e

    goto :goto_36

    :catch_1e
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_30
    :goto_36
    :try_start_23
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lru/localscribe/integration/RecordingBridge;->active(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1f

    goto :goto_37

    :catch_1f
    move-exception v0

    if-nez v7, :cond_31

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_38

    :cond_31
    :goto_37
    nop

    :goto_38
    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    sput-object v2, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lru/localscribe/integration/PlaybackService;->stopForeground(I)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v7, :cond_32

    :goto_39
    move-object v12, v7

    goto :goto_3b

    :cond_32
    if-lez v10, :cond_33

    :goto_3a
    goto :goto_3b

    :cond_33
    move-object v12, v13

    :goto_3b
    nop

    const/4 v6, 0x0

    invoke-direct {v1, v12, v6}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    const/16 v7, 0x2d0

    invoke-virtual {v0, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v1}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    nop

    return-void

    :catchall_12
    move-exception v0

    :goto_3c
    move-object v10, v0

    :goto_3d
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_34

    :try_start_24
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_20

    goto :goto_3e

    :catch_20
    move-exception v0

    :goto_3e
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v7, 0x0

    iput-object v7, v1, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    :cond_34
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Lru/localscribe/integration/PcmWave;->durationMs()J

    move-result-wide v28

    :try_start_25
    invoke-virtual {v5}, Lru/localscribe/integration/PcmWave;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_21

    goto :goto_3f

    :catch_21
    move-exception v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    goto :goto_40

    :cond_35
    :goto_3f
    const/4 v5, 0x0

    :goto_40
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_36

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v7, 0x0

    iput-object v7, v1, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    :cond_36
    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_37

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lru/localscribe/integration/PlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_37
    cmp-long v11, v28, v16

    if-lez v11, :cond_38

    if-nez v6, :cond_38

    if-nez v5, :cond_38

    move-object v7, v14

    goto :goto_41

    :cond_38
    move-object v7, v5

    :goto_41
    if-eqz v3, :cond_3a

    if-lez v11, :cond_39

    move-object/from16 v6, v23

    goto :goto_42

    :cond_39
    move-object/from16 v6, v21

    :goto_42
    move-wide/from16 v4, v28

    :try_start_26
    invoke-static/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_22

    goto :goto_43

    :catch_22
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3a
    :goto_43
    :try_start_27
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lru/localscribe/integration/RecordingBridge;->active(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_23

    goto :goto_44

    :catch_23
    move-exception v0

    if-nez v7, :cond_3b

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_45

    :cond_3b
    :goto_44
    nop

    :goto_45
    const/4 v2, 0x0

    iput-object v2, v1, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    sput-object v2, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lru/localscribe/integration/PlaybackService;->stopForeground(I)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v7, :cond_3d

    if-lez v11, :cond_3c

    goto :goto_46

    :cond_3c
    move-object v12, v13

    goto :goto_46

    :cond_3d
    move-object v12, v7

    :goto_46
    nop

    const/4 v6, 0x0

    invoke-direct {v1, v12, v6}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    const/16 v7, 0x2d0

    invoke-virtual {v0, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v1}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    throw v10
.end method

.method private requestStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/localscribe/integration/PlaybackService;->stopping:Z

    iget-object v0, p0, Lru/localscribe/integration/PlaybackService;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static running()Z
    .locals 1

    sget-object v0, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;
    .locals 1

    sget-object v0, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    :goto_0
    return-object v0
.end method


# virtual methods
.method synthetic lambda$onStartCommand$0$ru-localscribe-integration-PlaybackService(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/localscribe/integration/PlaybackService;->record(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "LocalScribe \u2014 \u0437\u0430\u0445\u0432\u0430\u0442 \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u044f"

    const/4 v3, 0x2

    const-string v4, "localscribe_playback"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lru/localscribe/integration/PlaybackService;->requestStop()V

    iget-object v0, p0, Lru/localscribe/integration/PlaybackService;->worker:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, "STOP"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x2

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lru/localscribe/integration/PlaybackService;->requestStop()V

    iget-object p1, p0, Lru/localscribe/integration/PlaybackService;->worker:Ljava/lang/Thread;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    :cond_1
    return v1

    :cond_2
    const-string p3, "PAUSE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "RESUME"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object p2, p0, Lru/localscribe/integration/PlaybackService;->worker:Ljava/lang/Thread;

    if-eqz p2, :cond_4

    return v1

    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_9

    if-nez p1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 p2, 0x2d0

    const/4 p3, 0x0

    :try_start_0
    const-string v0, "projection"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_8

    const-string v2, "result"

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->busy()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lru/localscribe/integration/PlaybackService;->running()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0437\u0430\u0445\u0432\u0430\u0442\u0430"

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object p1

    const/16 v3, 0x20

    invoke-virtual {p0, p2, p1, v3}, Lru/localscribe/integration/PlaybackService;->startForeground(ILandroid/app/Notification;I)V

    iput-boolean p3, p0, Lru/localscribe/integration/PlaybackService;->stopping:Z

    const-class p1, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p0, p1}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p1, v2, v0}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    iget-object p1, p0, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lru/localscribe/integration/PlaybackService;->projection:Landroid/media/projection/MediaProjection;

    new-instance v0, Lru/localscribe/integration/PlaybackService$1;

    invoke-direct {v0, p0}, Lru/localscribe/integration/PlaybackService$1;-><init>(Lru/localscribe/integration/PlaybackService;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->newId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/localscribe/integration/RecordingBridge;->active(Ljava/lang/String;)V

    new-instance v4, Lru/localscribe/integration/RecordingBridge$Snapshot;

    const-string v10, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0437\u0430\u0445\u0432\u0430\u0442\u0430"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v10}, Lru/localscribe/integration/RecordingBridge$Snapshot;-><init>(Ljava/lang/String;JZZLjava/lang/String;)V

    iput-object v4, p0, Lru/localscribe/integration/PlaybackService;->state:Lru/localscribe/integration/RecordingBridge$Snapshot;

    sput-object p0, Lru/localscribe/integration/PlaybackService;->instance:Lru/localscribe/integration/PlaybackService;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lru/localscribe/integration/PlaybackService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v5}, Lru/localscribe/integration/PlaybackService$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/integration/PlaybackService;Ljava/lang/String;)V

    const-string v2, "LocalScribe-playback"

    invoke-direct {p1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lru/localscribe/integration/PlaybackService;->worker:Ljava/lang/Thread;

    iget-object p1, p0, Lru/localscribe/integration/PlaybackService;->worker:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Android \u043e\u0442\u043a\u043b\u043e\u043d\u0438\u043b \u0437\u0430\u0445\u0432\u0430\u0442"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u0414\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "\u041d\u0435\u0442 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e \u0441\u043e\u0433\u043b\u0430\u0441\u0438\u044f \u043d\u0430 \u0437\u0430\u0445\u0432\u0430\u0442"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lru/localscribe/integration/PlaybackService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lru/localscribe/integration/PlaybackService;->notification(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    :goto_1
    return v1

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    return v1

    :cond_a
    :goto_3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lru/localscribe/integration/PlaybackService;->paused:Z

    iget-object p1, p0, Lru/localscribe/integration/PlaybackService;->worker:Ljava/lang/Thread;

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lru/localscribe/integration/PlaybackService;->stopSelf()V

    :cond_b
    return v1
.end method
