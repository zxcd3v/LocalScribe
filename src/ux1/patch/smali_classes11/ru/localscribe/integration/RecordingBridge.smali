.class public final Lru/localscribe/integration/RecordingBridge;
.super Ljava/lang/Object;
.source "RecordingBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/integration/RecordingBridge$Snapshot;
    }
.end annotation


# static fields
.field private static viewModel:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "kotlinx.coroutines.flow.MutableStateFlow"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setValue"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getActive"

    invoke-static {v1, v2}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static audio(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "audio"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u0430\u0443\u0434\u0438\u043e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".wav"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static awaitReady(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getReady"

    invoke-static {p0, v0}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 105
    const-string v0, "kotlinx.coroutines.Job"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "isCompleted"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    .line 107
    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gtz v5, :cond_0

    .line 109
    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u041d\u0435 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0430"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "isCancelled"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 113
    return-void

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0438 LocalScribe. \u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0443."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static busy()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getActive"

    invoke-static {v0, v1}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static control(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    const-string v0, "PAUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RESUME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1
    :goto_0
    invoke-static {}, Lru/localscribe/integration/PlaybackService;->running()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 58
    :cond_2
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;

    move-result-object v0

    iget-object v0, v0, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ru.localscribe.service.CaptureService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    :cond_3
    :goto_1
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 73
    nop

    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static flowValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    const-string v0, "kotlinx.coroutines.flow.StateFlow"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getValue"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static jobs()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    const-string v0, "ru.localscribe.service.JobState"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized model(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lru/localscribe/integration/RecordingBridge;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lru/localscribe/integration/RecordingBridge;->viewModel:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "ru.localscribe.ui.ScribeViewModel"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/Application;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lru/localscribe/integration/RecordingBridge;->viewModel:Ljava/lang/Object;

    .line 42
    :cond_0
    sget-object p0, Lru/localscribe/integration/RecordingBridge;->viewModel:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static newId()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    const-string v1, "getRepository"

    invoke-static {v0, v1}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "recording"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    if-nez v2, :cond_0

    const-string v3, "getModels"

    invoke-static {v0, v3}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "settings"

    invoke-static {v0, v3}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "getSettings"

    invoke-static {v2, v0}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    move-object v15, v0

    .line 90
    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-string v0, "getCreatedAt"

    invoke-static {v2, v0}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 91
    :goto_1
    const-string v0, "ru.localscribe.core.Recording"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    const-string v4, "ru.localscribe.core.Settings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    .line 93
    const-class v16, Ljava/lang/String;

    const-class v17, Ljava/lang/String;

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v19, Ljava/lang/String;

    const-class v20, Ljava/lang/String;

    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v22, Ljava/lang/String;

    sget-object v23, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v25, Ljava/lang/String;

    const-class v26, Ljava/lang/Double;

    .line 95
    const-string v4, "ru.localscribe.core.ModelInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v27

    const-class v29, Ljava/lang/String;

    const-class v30, Ljava/lang/String;

    const-class v31, Ljava/lang/Long;

    const-class v32, Ljava/lang/String;

    filled-new-array/range {v16 .. v32}, [Ljava/lang/Class;

    move-result-object v4

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041a\u043e\u043d\u0444\u0435\u0440\u0435\u043d\u0446\u0438\u044f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "dd.MM HH:mm"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 99
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, "playback"

    const-string v17, "offline"

    move-object v3, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v3

    move-object/from16 v3, p1

    move-object/from16 v9, p5

    move-object/from16 v12, p6

    filled-new-array/range {v3 .. v19}, [Ljava/lang/Object;

    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "save"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public static snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-static {}, Lru/localscribe/integration/PlaybackService;->snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->jobs()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getLive"

    invoke-static {v0, v1}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    new-instance v1, Lru/localscribe/integration/RecordingBridge$Snapshot;

    const-string v2, "getRecordingId"

    invoke-static {v0, v2}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "getElapsedMs"

    invoke-static {v0, v3}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 68
    const-string v5, "getPaused"

    invoke-static {v0, v5}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "getPreparing"

    invoke-static {v0, v6}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 69
    const-string v7, "getMessage"

    invoke-static {v0, v7}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lru/localscribe/integration/RecordingBridge$Snapshot;-><init>(Ljava/lang/String;JZZLjava/lang/String;)V

    .line 67
    return-object v1
.end method

.method public static startMicrophone(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->busy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/localscribe/integration/PlaybackService;->running()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {p0}, Lru/localscribe/integration/RecordingBridge;->model(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "getBusy"

    invoke-static {p0, v1}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getModels"

    invoke-static {p0, v0}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->flowValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "record"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u0414\u043e\u0436\u0434\u0438\u0442\u0435\u0441\u044c \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0438 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u043e\u0434\u0435\u043b\u0435\u0439 \u0432 LocalScribe"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u0414\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
