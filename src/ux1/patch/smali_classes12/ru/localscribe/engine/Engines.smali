.class public final Lru/localscribe/engine/Engines;
.super Ljava/lang/Object;
.source "Engines.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngines.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Engines.kt\nru/localscribe/engine/Engines\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n1#2:193\n1#2:204\n1617#3,9:194\n1869#3:203\n1870#3:205\n1626#3:206\n*S KotlinDebug\n*F\n+ 1 Engines.kt\nru/localscribe/engine/Engines\n*L\n165#1:204\n165#1:194,9\n165#1:203\n165#1:205\n165#1:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ(\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 0\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020\tJ\u0008\u0010%\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lru/localscribe/engine/Engines;",
        "Ljava/io/Closeable;",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "onStage",
        "Lkotlin/Function1;",
        "",
        "",
        "timing",
        "Lru/localscribe/engine/ProcessingTimings;",
        "cpuThreads",
        "",
        "<init>",
        "(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;I)V",
        "recognitionCache",
        "Lru/localscribe/engine/ExactAsrCache;",
        "withRecognitionCache",
        "cache",
        "offline",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
        "online",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
        "embedding",
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;",
        "vad",
        "Lcom/k2fsa/sherpa/onnx/Vad;",
        "",
        "x",
        "recognize",
        "Lkotlin/Pair;",
        "",
        "Lru/localscribe/core/TokenStamp;",
        "offsetMs",
        "",
        "releaseOffline",
        "close",
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


# instance fields
.field private final cpuThreads:I

.field private embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

.field private final models:Lru/localscribe/data/ModelStore;

.field private offline:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

.field private final onStage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private online:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

.field private recognitionCache:Lru/localscribe/engine/ExactAsrCache;

.field private final settings:Lru/localscribe/core/Settings;

.field private final timing:Lru/localscribe/engine/ProcessingTimings;


# direct methods
.method public static synthetic $r8$lambda$jIk_VzYOBlbLiNQKY9V1L3nJsJU(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/Engines;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vDdXv3intBzSdlj9aEZZ26SY13s(Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/Engines;->recognize$lambda$4(Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xs6DyYShgAcPON-atZcq_m-rcK0(Lru/localscribe/engine/Engines;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/Engines;->recognize$lambda$3(Lru/localscribe/engine/Engines;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/Engines;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;I)V
    .locals 1
    .param p1, "models"    # Lru/localscribe/data/ModelStore;
    .param p2, "settings"    # Lru/localscribe/core/Settings;
    .param p3, "onStage"    # Lkotlin/jvm/functions/Function1;
    .param p4, "timing"    # Lru/localscribe/engine/ProcessingTimings;
    .param p5, "cpuThreads"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/data/ModelStore;",
            "Lru/localscribe/core/Settings;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lru/localscribe/engine/ProcessingTimings;",
            "I)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timing"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    .line 10
    iput-object p2, p0, Lru/localscribe/engine/Engines;->settings:Lru/localscribe/core/Settings;

    .line 11
    iput-object p3, p0, Lru/localscribe/engine/Engines;->onStage:Lkotlin/jvm/functions/Function1;

    .line 12
    iput-object p4, p0, Lru/localscribe/engine/Engines;->timing:Lru/localscribe/engine/ProcessingTimings;

    .line 13
    iput p5, p0, Lru/localscribe/engine/Engines;->cpuThreads:I

    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 8
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 11
    new-instance p3, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda2;-><init>()V

    move-object v3, p3

    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 12
    new-instance p4, Lru/localscribe/engine/ProcessingTimings;

    const/4 p3, 0x1

    const/4 p7, 0x0

    invoke-direct {p4, p7, p3, p7}, Lru/localscribe/engine/ProcessingTimings;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, p4

    goto :goto_1

    .line 8
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getThreads()I

    move-result p5

    move v5, p5

    goto :goto_2

    .line 8
    :cond_2
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lru/localscribe/engine/Engines;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;I)V

    .line 14
    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final recognize$lambda$3(Lru/localscribe/engine/Engines;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .locals 1
    .param p0, "this$0"    # Lru/localscribe/engine/Engines;

    .line 154
    invoke-virtual {p0}, Lru/localscribe/engine/Engines;->offline()Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    move-result-object v0

    return-object v0
.end method

.method private static final recognize$lambda$4(Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lkotlin/Unit;
    .locals 1
    .param p0, "$r"    # Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .param p1, "$s"    # Lcom/k2fsa/sherpa/onnx/OfflineStream;

    .line 158
    invoke-virtual {p0, p1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OfflineStream;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lru/localscribe/engine/Engines;->releaseOffline()V

    .line 186
    iget-object v0, p0, Lru/localscribe/engine/Engines;->online:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->release()V

    .line 187
    :cond_0
    iget-object v0, p0, Lru/localscribe/engine/Engines;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->release()V

    .line 188
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lru/localscribe/engine/Engines;->online:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    .line 189
    iput-object v0, p0, Lru/localscribe/engine/Engines;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    .line 190
    return-void
.end method

.method public final embedding([F)[F
    .locals 10
    .param p1, "x"    # [F

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    array-length v0, p1

    const/16 v1, 0x3200

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 128
    :cond_0
    iget-object v0, p0, Lru/localscribe/engine/Engines;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    .line 131
    new-instance v3, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    .line 132
    iget-object v1, p0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v4, "speaker.onnx"

    invoke-virtual {v1, v4}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    iget v5, p0, Lru/localscribe/engine/Engines;->cpuThreads:I

    .line 131
    nop

    .line 134
    nop

    .line 131
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string v7, "cpu"

    invoke-direct/range {v3 .. v9}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    move-object v1, v0

    .line 193
    .local v1, "it\\1":Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$a$-also-Engines$embedding$e$1\\1\\137\\0":I
    iput-object v1, p0, Lru/localscribe/engine/Engines;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    .line 128
    .end local v1    # "it\\1":Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
    .end local v3    # "$i$a$-also-Engines$embedding$e$1\\1\\137\\0":I
    :cond_1
    nop

    .line 127
    move-object v1, v0

    .line 138
    .local v1, "e":Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->createStream()Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v3

    .line 139
    .local v3, "s":Lcom/k2fsa/sherpa/onnx/OnlineStream;
    nop

    .line 140
    const/16 v0, 0x3e80

    :try_start_0
    invoke-virtual {v3, p1, v0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    .line 141
    invoke-virtual {v3}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->inputFinished()V

    .line 142
    invoke-virtual {v1, v3}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v1, v3}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->compute(Lcom/k2fsa/sherpa/onnx/OnlineStream;)[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_2
    invoke-virtual {v3}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    .line 145
    nop

    .line 139
    return-object v2

    .line 144
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    throw v0
.end method

.method public final offline()Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .locals 36

    .line 22
    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/engine/Engines;->offline:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    if-eqz v1, :cond_0

    .local v1, "it\\1":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    const/4 v2, 0x0

    .line 23
    .local v2, "$i$a$-let-Engines$offline$1\\1\\22\\0":I
    return-object v1

    .line 25
    .end local v1    # "it\\1":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .end local v2    # "$i$a$-let-Engines$offline$1\\1\\22\\0":I
    :cond_0
    iget-object v1, v0, Lru/localscribe/engine/Engines;->onStage:Lkotlin/jvm/functions/Function1;

    const-string v2, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043c\u043e\u0434\u0435\u043b\u0438 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0432\u0430\u043d\u0438\u044f \u0444\u0430\u0439\u043b\u0430"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, v0, Lru/localscribe/engine/Engines;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v1}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v1

    sget-object v2, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    const-string v3, "\u0420\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0432\u0430\u043d\u0438\u0435 \u0440\u0435\u0447\u0438"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    .line 27
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    .line 29
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    .line 33
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    .line 34
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v2

    const-string v8, "tiny-encoder.int8.onnx"

    invoke-virtual {v2, v8}, Lru/localscribe/data/ExtraModels;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 35
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v2

    const-string v9, "tiny-decoder.int8.onnx"

    invoke-virtual {v2, v9}, Lru/localscribe/data/ExtraModels;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    nop

    .line 37
    nop

    .line 33
    const/16 v15, 0x70

    const/16 v16, 0x0

    const-string v10, "en"

    const-string v11, "transcribe"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v2

    const-string v8, "tiny-tokens.txt"

    invoke-virtual {v2, v8}, Lru/localscribe/data/ExtraModels;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 41
    iget v2, v0, Lru/localscribe/engine/Engines;->cpuThreads:I

    const/4 v8, 0x2

    invoke-static {v2, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v26

    .line 31
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    .line 33
    nop

    .line 31
    nop

    .line 41
    nop

    .line 31
    nop

    .line 42
    nop

    .line 40
    nop

    .line 39
    nop

    .line 31
    const v33, 0x18bfffb

    const/16 v34, 0x0

    move-object v10, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-string v28, "cpu"

    const-string v29, "whisper"

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v7 .. v34}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    const/16 v18, 0x7fd

    move-object v8, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FLcom/k2fsa/sherpa/onnx/OfflineCtcFstDecoderConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-direct {v1, v5, v6, v4, v5}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    move-object v2, v1

    .local v2, "it\\2":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$a$-also-Engines$offline$2\\2\\46\\0":I
    iput-object v2, v0, Lru/localscribe/engine/Engines;->offline:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    .line 48
    iget-object v5, v0, Lru/localscribe/engine/Engines;->onStage:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    nop

    .line 46
    .end local v2    # "it\\2":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .end local v4    # "$i$a$-also-Engines$offline$2\\2\\46\\0":I
    nop

    .line 27
    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    .line 54
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    .line 55
    new-instance v7, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v8, 0x3e80

    const/16 v9, 0x40

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    .line 60
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v9, "gigaam-v3/encoder.int8.onnx"

    invoke-virtual {v2, v9}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v10, "gigaam-v3/decoder.onnx"

    invoke-virtual {v2, v10}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v11, "gigaam-v3/joiner.onnx"

    invoke-virtual {v2, v11}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    iget-object v2, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v9, "gigaam-v3/tokens.txt"

    invoke-virtual {v2, v9}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 66
    iget v2, v0, Lru/localscribe/engine/Engines;->cpuThreads:I

    .line 57
    move-object v9, v8

    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    .line 59
    nop

    .line 57
    nop

    .line 66
    nop

    .line 57
    nop

    .line 67
    nop

    .line 65
    nop

    .line 64
    nop

    .line 57
    const v34, 0x18bfffe

    const/16 v35, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string v29, "cpu"

    const-string v30, "nemo_transducer"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v27, v2

    invoke-direct/range {v8 .. v35}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    nop

    .line 69
    nop

    .line 54
    const/16 v18, 0x7f4

    const/4 v9, 0x0

    const-string v10, "greedy_search"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FLcom/k2fsa/sherpa/onnx/OfflineCtcFstDecoderConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-direct {v1, v5, v6, v4, v5}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    nop

    .line 72
    .local v1, "r":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    iput-object v1, v0, Lru/localscribe/engine/Engines;->offline:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    .line 73
    iget-object v2, v0, Lru/localscribe/engine/Engines;->onStage:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object v1
.end method

.method public final online()Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    .locals 20

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/engine/Engines;->online:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-eqz v1, :cond_0

    .local v1, "it\\1":Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    const/4 v2, 0x0

    .line 79
    .local v2, "$i$a$-let-Engines$online$1\\1\\78\\0":I
    return-object v1

    .line 81
    .end local v1    # "it\\1":Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    .end local v2    # "$i$a$-let-Engines$online$1\\1\\78\\0":I
    :cond_0
    iget-object v1, v0, Lru/localscribe/engine/Engines;->onStage:Lkotlin/jvm/functions/Function1;

    const-string v2, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043c\u043e\u0434\u0435\u043b\u0438 \u043f\u043e\u0442\u043e\u043a\u043e\u0432\u043e\u0433\u043e \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0432\u0430\u043d\u0438\u044f"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    .line 85
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    .line 86
    new-instance v3, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    new-instance v4, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 90
    new-instance v9, Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    iget-object v5, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    iget-object v6, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v6}, Lru/localscribe/data/ModelStore;->onlineName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v5, v0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v6, "streaming/tokens.txt"

    invoke-virtual {v5, v6}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    iget v11, v0, Lru/localscribe/engine/Engines;->cpuThreads:I

    .line 88
    nop

    .line 93
    nop

    .line 88
    const/16 v17, 0xe8f

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-string v13, "cpu"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v4 .. v18}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    nop

    .line 96
    new-instance v8, Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    .line 97
    new-instance v5, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const v6, 0x4019999a    # 2.4f

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v7, v6, v9}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 98
    new-instance v6, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const v10, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10, v9}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 99
    new-instance v10, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/high16 v12, 0x41400000    # 12.0f

    invoke-direct {v10, v7, v9, v12}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 96
    invoke-direct {v8, v5, v6, v10}, Lcom/k2fsa/sherpa/onnx/EndpointConfig;-><init>(Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;)V

    .line 85
    const/16 v17, 0x3fdc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v14, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v0, v19

    invoke-direct/range {v2 .. v18}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    nop

    .line 103
    .local v1, "r":Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    move-object/from16 v0, p0

    iput-object v1, v0, Lru/localscribe/engine/Engines;->online:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    .line 104
    return-object v1
.end method

.method public final recognize([FJ)Lkotlin/Pair;
    .locals 30
    .param p1, "x"    # [F
    .param p2, "offsetMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FJ)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v0, "x"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    array-length v0, v2

    const v5, 0x3a980

    if-gt v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 152
    iget-object v0, v1, Lru/localscribe/engine/Engines;->recognitionCache:Lru/localscribe/engine/ExactAsrCache;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v3, v4}, Lru/localscribe/engine/ExactAsrCache;->key([FJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v8, v0

    .line 153
    .local v8, "cacheKey":Ljava/lang/String;
    if-eqz v8, :cond_3

    move-object v0, v8

    .line 193
    .local v0, "it\\2":Ljava/lang/String;
    const/4 v9, 0x0

    .line 153
    .local v9, "$i$a$-let-Engines$recognize$2\\2\\153\\0":I
    iget-object v10, v1, Lru/localscribe/engine/Engines;->recognitionCache:Lru/localscribe/engine/ExactAsrCache;

    if-eqz v10, :cond_2

    invoke-virtual {v10, v0}, Lru/localscribe/engine/ExactAsrCache;->get(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .end local v0    # "it\\2":Ljava/lang/String;
    .end local v9    # "$i$a$-let-Engines$recognize$2\\2\\153\\0":I
    :goto_2
    if-eqz v10, :cond_3

    .line 193
    .local v10, "it\\3":Lkotlin/Pair;
    const/4 v0, 0x0

    .line 153
    .local v0, "$i$a$-let-Engines$recognize$3\\3\\153\\0":I
    return-object v10

    .line 154
    .end local v0    # "$i$a$-let-Engines$recognize$3\\3\\153\\0":I
    .end local v10    # "it\\3":Lkotlin/Pair;
    :cond_3
    iget-object v0, v1, Lru/localscribe/engine/Engines;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v9, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/engine/Engines;)V

    const-string v10, "asr.acquire"

    invoke-virtual {v0, v10, v9}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    .line 155
    .local v9, "r":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    invoke-virtual {v9}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->createStream()Lcom/k2fsa/sherpa/onnx/OfflineStream;

    move-result-object v10

    .line 156
    .local v10, "s":Lcom/k2fsa/sherpa/onnx/OfflineStream;
    nop

    .line 157
    const/16 v0, 0x3e80

    :try_start_0
    invoke-virtual {v10, v2, v0}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->acceptWaveform([FI)V

    .line 158
    iget-object v11, v1, Lru/localscribe/engine/Engines;->timing:Lru/localscribe/engine/ProcessingTimings;

    const-string v12, "asr.infer"

    new-instance v13, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda1;

    invoke-direct {v13, v9, v10}, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda1;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Lcom/k2fsa/sherpa/onnx/OfflineStream;)V

    invoke-virtual {v11, v12, v13}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v9, v10}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    move-result-object v11

    .line 160
    .local v11, "result":Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    invoke-virtual {v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 161
    nop

    .line 162
    iget-object v13, v1, Lru/localscribe/engine/Engines;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v13}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v13

    sget-object v14, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eq v13, v14, :cond_9

    .line 163
    :try_start_1
    invoke-virtual {v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getTimestamps()[F

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getTokens()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ne v13, v14, :cond_8

    .line 165
    invoke-virtual {v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getTokens()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v13

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$mapNotNull\\4":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 194
    .local v14, "$i$f$mapNotNull\\4\\165":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/Collection;

    .local v15, "destination\\5":Ljava/util/Collection;
    move-object/from16 v16, v13

    .local v16, "$this$mapNotNullTo\\5":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 202
    .local v17, "$i$f$mapNotNullTo\\5\\194":I
    move-object/from16 v18, v16

    .local v18, "$this$forEach\\6":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 203
    .local v19, "$i$f$forEach\\6\\202":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v21, v20

    check-cast v21, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v21 .. v21}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v21

    .local v21, "element\\6":I
    move/from16 v22, v21

    .local v22, "element\\7":I
    const/16 v23, 0x0

    .line 202
    .local v23, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\7\\203\\5":I
    move/from16 v24, v22

    .local v24, "i\\9":I
    const/16 v25, 0x0

    .line 166
    .local v25, "$i$a$-mapNotNull-Engines$recognize$recognized$2\\9\\202\\0":I
    invoke-virtual {v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getTimestamps()[F

    move-result-object v26

    aget v26, v26, v24

    .line 167
    .local v26, "t\\9":F
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const v28, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v27, v27, v28

    if-gtz v27, :cond_4

    const/16 v27, 0x1

    goto :goto_4

    :cond_4
    const/16 v27, 0x0

    :goto_4
    if-eqz v27, :cond_5

    const/16 v27, 0x0

    cmpl-float v27, v26, v27

    if-ltz v27, :cond_5

    int-to-float v5, v0

    mul-float v5, v5, v26

    array-length v0, v2

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_5

    .line 168
    new-instance v0, Lru/localscribe/core/TokenStamp;

    invoke-virtual {v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->getTokens()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x3e8

    int-to-float v6, v6

    mul-float v6, v6, v26

    move-object/from16 v29, v8

    .end local v8    # "cacheKey":Ljava/lang/String;
    .local v29, "cacheKey":Ljava/lang/String;
    float-to-long v7, v6

    add-long v6, v3, v7

    :try_start_2
    invoke-direct {v0, v5, v6, v7}, Lru/localscribe/core/TokenStamp;-><init>(Ljava/lang/String;J)V

    goto :goto_5

    .line 167
    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "cacheKey":Ljava/lang/String;
    :cond_5
    move-object/from16 v29, v8

    .line 169
    .end local v8    # "cacheKey":Ljava/lang/String;
    .restart local v29    # "cacheKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 202
    .end local v24    # "i\\9":I
    .end local v25    # "$i$a$-mapNotNull-Engines$recognize$recognized$2\\9\\202\\0":I
    .end local v26    # "t\\9":F
    :goto_5
    if-eqz v0, :cond_6

    .line 204
    .local v0, "it\\7":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 202
    .local v5, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\8\\204\\7":I
    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "it\\7":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\8\\204\\7":I
    .end local v22    # "element\\7":I
    .end local v23    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\7\\203\\5":I
    :cond_6
    move-object/from16 v8, v29

    const/16 v0, 0x3e80

    .end local v21    # "element\\6":I
    goto :goto_3

    .line 205
    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "cacheKey":Ljava/lang/String;
    :cond_7
    move-object/from16 v29, v8

    .line 206
    .end local v8    # "cacheKey":Ljava/lang/String;
    .end local v18    # "$this$forEach\\6":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEach\\6\\202":I
    .restart local v29    # "cacheKey":Ljava/lang/String;
    nop

    .end local v15    # "destination\\5":Ljava/util/Collection;
    .end local v16    # "$this$mapNotNullTo\\5":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapNotNullTo\\5\\194":I
    move-object v0, v15

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    nop

    .end local v13    # "$this$mapNotNull\\4":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapNotNull\\4\\165":I
    goto :goto_7

    .line 173
    .end local v11    # "result":Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    :catchall_0
    move-exception v0

    move-object/from16 v6, v29

    goto :goto_9

    .line 163
    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "cacheKey":Ljava/lang/String;
    .restart local v11    # "result":Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    :cond_8
    move-object/from16 v29, v8

    .end local v8    # "cacheKey":Ljava/lang/String;
    .restart local v29    # "cacheKey":Ljava/lang/String;
    goto :goto_6

    .line 173
    .end local v11    # "result":Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "cacheKey":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v29, v8

    move-object/from16 v6, v29

    .end local v8    # "cacheKey":Ljava/lang/String;
    .restart local v29    # "cacheKey":Ljava/lang/String;
    goto :goto_9

    .line 162
    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "cacheKey":Ljava/lang/String;
    .restart local v11    # "result":Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    :cond_9
    move-object/from16 v29, v8

    .line 171
    .end local v8    # "cacheKey":Ljava/lang/String;
    .restart local v29    # "cacheKey":Ljava/lang/String;
    :goto_6
    :try_start_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 160
    :goto_7
    invoke-static {v12, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 173
    .end local v11    # "result":Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    invoke-virtual {v10}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V

    .line 174
    nop

    .line 156
    nop

    .line 175
    .local v0, "recognized":Lkotlin/Pair;
    if-eqz v29, :cond_a

    iget-object v5, v1, Lru/localscribe/engine/Engines;->recognitionCache:Lru/localscribe/engine/ExactAsrCache;

    if-eqz v5, :cond_a

    move-object/from16 v6, v29

    .end local v29    # "cacheKey":Ljava/lang/String;
    .local v6, "cacheKey":Ljava/lang/String;
    invoke-virtual {v5, v6, v0}, Lru/localscribe/engine/ExactAsrCache;->put(Ljava/lang/String;Lkotlin/Pair;)V

    goto :goto_8

    .end local v6    # "cacheKey":Ljava/lang/String;
    .restart local v29    # "cacheKey":Ljava/lang/String;
    :cond_a
    move-object/from16 v6, v29

    .line 176
    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v6    # "cacheKey":Ljava/lang/String;
    :goto_8
    return-object v0

    .line 173
    .end local v0    # "recognized":Lkotlin/Pair;
    .end local v6    # "cacheKey":Ljava/lang/String;
    .restart local v29    # "cacheKey":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v6, v29

    .end local v29    # "cacheKey":Ljava/lang/String;
    .restart local v6    # "cacheKey":Ljava/lang/String;
    goto :goto_9

    .end local v6    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "cacheKey":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v6, v8

    .end local v8    # "cacheKey":Ljava/lang/String;
    .restart local v6    # "cacheKey":Ljava/lang/String;
    :goto_9
    invoke-virtual {v10}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V

    throw v0

    .line 193
    .end local v6    # "cacheKey":Ljava/lang/String;
    .end local v9    # "r":Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    .end local v10    # "s":Lcom/k2fsa/sherpa/onnx/OfflineStream;
    :cond_b
    const/4 v0, 0x0

    .line 151
    .local v0, "$i$a$-require-Engines$recognize$1\\1\\151\\0":I
    nop

    .end local v0    # "$i$a$-require-Engines$recognize$1\\1\\151\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "\u0424\u0440\u0430\u0433\u043c\u0435\u043d\u0442 ASR \u043f\u0440\u0435\u0432\u044b\u0448\u0430\u0435\u0442 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0435 \u043e\u043a\u043d\u043e 15 \u0441\u0435\u043a\u0443\u043d\u0434"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final releaseOffline()V
    .locals 1

    .line 180
    iget-object v0, p0, Lru/localscribe/engine/Engines;->offline:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->release()V

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lru/localscribe/engine/Engines;->offline:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    .line 182
    return-void
.end method

.method public final vad()Lcom/k2fsa/sherpa/onnx/Vad;
    .locals 13

    .line 108
    iget-object v0, p0, Lru/localscribe/engine/Engines;->onStage:Lkotlin/jvm/functions/Function1;

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440\u0430 \u0440\u0435\u0447\u0438"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/k2fsa/sherpa/onnx/Vad;

    .line 111
    new-instance v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    .line 114
    iget-object v2, p0, Lru/localscribe/engine/Engines;->models:Lru/localscribe/data/ModelStore;

    const-string v3, "silero.onnx"

    invoke-virtual {v2, v3}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    new-instance v2, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    .line 114
    nop

    .line 113
    nop

    .line 116
    nop

    .line 115
    nop

    .line 113
    nop

    .line 117
    nop

    .line 113
    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v6, 0x0

    const v7, 0x3eb33333    # 0.35f

    const v8, 0x3e19999a    # 0.15f

    const/4 v9, 0x0

    const/high16 v10, 0x41700000    # 15.0f

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    nop

    .line 119
    nop

    .line 120
    nop

    .line 111
    const/16 v8, 0x32

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3e80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/Vad;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final withRecognitionCache(Lru/localscribe/engine/ExactAsrCache;)Lru/localscribe/engine/Engines;
    .locals 0
    .param p1, "cache"    # Lru/localscribe/engine/ExactAsrCache;

    .line 16
    iput-object p1, p0, Lru/localscribe/engine/Engines;->recognitionCache:Lru/localscribe/engine/ExactAsrCache;

    return-object p0
.end method
