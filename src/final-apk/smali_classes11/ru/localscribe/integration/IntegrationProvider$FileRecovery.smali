.class final Lru/localscribe/integration/IntegrationProvider$FileRecovery;
.super Ljava/lang/Object;
.source "IntegrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/integration/IntegrationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileRecovery"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recover(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    const-string v0, "getAudioPath"

    invoke-static {p1, v0}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lru/localscribe/integration/PcmWave;->repair(Ljava/io/File;)J

    move-result-wide v3

    const-string v0, "getId"

    invoke-static {p1, v0}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v5, "interrupted"

    const-string v6, "\u0417\u0430\u043f\u0438\u0441\u044c \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u0430 \u0441\u0438\u0441\u0442\u0435\u043c\u043e\u0439. \u0421\u043e\u0445\u0440\u0430\u043d\u0451\u043d\u043d\u043e\u0435 \u0430\u0443\u0434\u0438\u043e \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e; \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u0443\u044e \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0443."

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/localscribe/integration/RecordingBridge;->savePlayback(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
