.class public final Lru/localscribe/audio/AudioPreflight;
.super Ljava/lang/Object;
.source "AudioPreflight.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioPreflight.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioPreflight.kt\nru/localscribe/audio/AudioPreflight\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,23:1\n1#2:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lru/localscribe/audio/AudioPreflight;",
        "",
        "<init>",
        "()V",
        "requireProcessable",
        "",
        "recording",
        "Lru/localscribe/core/Recording;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lru/localscribe/audio/AudioPreflight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/audio/AudioPreflight;

    invoke-direct {v0}, Lru/localscribe/audio/AudioPreflight;-><init>()V

    sput-object v0, Lru/localscribe/audio/AudioPreflight;->INSTANCE:Lru/localscribe/audio/AudioPreflight;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requireProcessable(Lru/localscribe/core/Recording;)V
    .locals 13

    const-string v0, "recording"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/localscribe/core/Recording;->getPcmPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v1, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const-wide/16 v4, 0x2c

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    sget-object v6, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    invoke-static {v6, v3, v2, v0, v1}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    return-void

    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_5

    sget-object v7, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    invoke-static {v7, v6, v2, v0, v1}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    :cond_4
    move v2, v8

    :cond_5
    if-eqz v2, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0410\u0443\u0434\u0438\u043e \u043f\u0443\u0441\u0442\u043e\u0435: \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u043d\u0435 \u0443\u0441\u043f\u0435\u043b \u0437\u0430\u043f\u0438\u0441\u0430\u0442\u044c \u0437\u0432\u0443\u043a. \u0417\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u0437\u0430\u043f\u0438\u0441\u044c \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u043e."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    nop

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0410\u0443\u0434\u0438\u043e\u0444\u0430\u0439\u043b \u043e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442. \u0415\u0441\u043b\u0438 \u0437\u0430\u043f\u0438\u0441\u044c \u043d\u0435 \u043d\u0430\u0447\u0430\u043b\u0430\u0441\u044c, \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u043e. \u0414\u043b\u044f \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u0438 \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0438\u0441\u0445\u043e\u0434\u043d\u044b\u0439 \u0444\u0430\u0439\u043b \u0437\u0430\u043d\u043e\u0432\u043e. \u0421\u043e\u0445\u0440\u0430\u043d\u0451\u043d\u043d\u044b\u0439 \u0442\u0435\u043a\u0441\u0442 \u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
