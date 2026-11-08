.class public final Lru/localscribe/engine/LiveProcessor;
.super Ljava/lang/Object;
.source "LiveProcessor.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveProcessor.kt\nru/localscribe/engine/LiveProcessor\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n230#2,5:321\n230#2,5:338\n1#3:326\n1#3:358\n360#4,7:327\n1563#4:334\n1634#4,3:335\n1563#4:343\n1634#4,3:344\n543#4,6:347\n774#4:353\n865#4,2:354\n1625#4:356\n1869#4:357\n1870#4:359\n1626#4:360\n*S KotlinDebug\n*F\n+ 1 LiveProcessor.kt\nru/localscribe/engine/LiveProcessor\n*L\n132#1:321,5\n272#1:338,5\n298#1:358\n201#1:327,7\n233#1:334\n233#1:335,3\n288#1:343\n288#1:344,3\n63#1:347,6\n298#1:353\n298#1:354,2\n298#1:356\n298#1:357\n298#1:359\n298#1:360\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010-\u001a\u00020.H\u0002J\u000e\u0010/\u001a\u00020\r2\u0006\u00100\u001a\u00020!J\"\u00101\u001a\u00020\r2\u0006\u00102\u001a\u00020\u001d2\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010!H\u0002J\u0006\u00106\u001a\u00020\rJ\u0008\u00107\u001a\u000204H\u0002J\u001a\u00108\u001a\u0004\u0018\u0001092\u0006\u0010:\u001a\u00020\u001d2\u0006\u0010;\u001a\u00020\u001dH\u0002J\u0006\u0010<\u001a\u00020\rJ\u0008\u0010=\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010+R\u000e\u0010,\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lru/localscribe/engine/LiveProcessor;",
        "Ljava/io/Closeable;",
        "recording",
        "Lru/localscribe/core/Recording;",
        "repository",
        "Lru/localscribe/data/Repository;",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "startSamples",
        "",
        "onStage",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lru/localscribe/core/Recording;Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;JLkotlin/jvm/functions/Function1;)V",
        "engines",
        "Lru/localscribe/engine/Engines;",
        "recognizer",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
        "stream",
        "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
        "vad",
        "Lcom/k2fsa/sherpa/onnx/Vad;",
        "cluster",
        "Lru/localscribe/core/SpeakerCluster;",
        "identities",
        "Lru/localscribe/core/SessionSpeakers;",
        "savedSpeakerCount",
        "",
        "prosody",
        "Lru/localscribe/core/ProsodyAnalyzer;",
        "audio",
        "",
        "offset",
        "previousEnd",
        "embeddingAt",
        "turn",
        "Lru/localscribe/core/VoiceTurnTracker;",
        "lastSpeakerId",
        "lastVoiceEnd",
        "lastDraftSize",
        "firstSpeech",
        "Ljava/lang/Integer;",
        "lastSpeech",
        "analysis",
        "Lru/localscribe/analysis/AdvancedModels;",
        "accept",
        "x",
        "splitAt",
        "cut",
        "next",
        "Lru/localscribe/core/SpeakerCluster$Match;",
        "nextEmbedding",
        "finish",
        "presentedMatch",
        "cleanVoiceWindow",
        "Lru/localscribe/analysis/SampleSpan;",
        "begin",
        "end",
        "refine",
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
.field private analysis:Lru/localscribe/analysis/AdvancedModels;

.field private audio:[F

.field private final cluster:Lru/localscribe/core/SpeakerCluster;

.field private embeddingAt:I

.field private final engines:Lru/localscribe/engine/Engines;

.field private firstSpeech:Ljava/lang/Integer;

.field private final identities:Lru/localscribe/core/SessionSpeakers;

.field private lastDraftSize:I

.field private lastSpeakerId:Ljava/lang/String;

.field private lastSpeech:I

.field private lastVoiceEnd:J

.field private final models:Lru/localscribe/data/ModelStore;

.field private offset:J

.field private previousEnd:J

.field private final prosody:Lru/localscribe/core/ProsodyAnalyzer;

.field private recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

.field private recording:Lru/localscribe/core/Recording;

.field private final repository:Lru/localscribe/data/Repository;

.field private savedSpeakerCount:I

.field private stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

.field private final turn:Lru/localscribe/core/VoiceTurnTracker;

.field private vad:Lcom/k2fsa/sherpa/onnx/Vad;


# direct methods
.method public static synthetic $r8$lambda$2qblyHSm9oLN4et1GN4AZ7uabGQ(Ljava/util/Set;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/LiveProcessor;->refine$lambda$0(Ljava/util/Set;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CDCFsme7TlhTHFOr8hBJ5WbNyds(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/LiveProcessor;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qy3re-l7NIradYm1tHDZRUdq4F0(Lru/localscribe/engine/LiveProcessor;Ljava/util/Map;Lru/localscribe/core/Segment;)Lru/localscribe/core/Segment;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/LiveProcessor;->refine$lambda$1(Lru/localscribe/engine/LiveProcessor;Ljava/util/Map;Lru/localscribe/core/Segment;)Lru/localscribe/core/Segment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pzbiuPwNxlEdl02Daqh020wIpVQ(Lru/localscribe/engine/LiveProcessor;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/LiveProcessor;->_init_$lambda$1(Lru/localscribe/engine/LiveProcessor;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/LiveProcessor;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/core/Recording;Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;JLkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Recording;",
            "Lru/localscribe/data/Repository;",
            "Lru/localscribe/data/ModelStore;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recording"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "models"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStage"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    iput-object p2, p0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iput-object p3, p0, Lru/localscribe/engine/LiveProcessor;->models:Lru/localscribe/data/ModelStore;

    new-instance v1, Lru/localscribe/engine/Engines;

    iget-object v2, p0, Lru/localscribe/engine/LiveProcessor;->models:Lru/localscribe/data/ModelStore;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v3

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p6

    invoke-direct/range {v1 .. v8}, Lru/localscribe/engine/Engines;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    nop

    nop

    const/4 p6, 0x0

    :try_start_0
    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->online()Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->vad()Lcom/k2fsa/sherpa/onnx/Vad;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    const-string v0, "streaming ASR create stream"

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v0, :cond_0

    const-string v0, "recognizer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p6

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p6, v1, p6}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->createStream$default(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    new-instance p6, Lru/localscribe/core/SpeakerCluster;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v2, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/localscribe/data/Repository;->speakers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lru/localscribe/core/SpeakerCluster;-><init>(Lru/localscribe/core/Settings;Ljava/util/List;)V

    iput-object p6, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    new-instance p6, Lru/localscribe/core/SessionSpeakers;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-direct {p6, v0, v1}, Lru/localscribe/core/SessionSpeakers;-><init>(Lru/localscribe/core/Settings;Lru/localscribe/core/SpeakerCluster;)V

    iput-object p6, p0, Lru/localscribe/engine/LiveProcessor;->identities:Lru/localscribe/core/SessionSpeakers;

    iget-object p6, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {p6}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    iput p6, p0, Lru/localscribe/engine/LiveProcessor;->savedSpeakerCount:I

    new-instance p6, Lru/localscribe/core/ProsodyAnalyzer;

    invoke-direct {p6}, Lru/localscribe/core/ProsodyAnalyzer;-><init>()V

    iput-object p6, p0, Lru/localscribe/engine/LiveProcessor;->prosody:Lru/localscribe/core/ProsodyAnalyzer;

    const/4 p6, 0x0

    new-array p6, p6, [F

    iput-object p6, p0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    iput-wide p4, p0, Lru/localscribe/engine/LiveProcessor;->offset:J

    new-instance p6, Lru/localscribe/core/VoiceTurnTracker;

    invoke-direct {p6}, Lru/localscribe/core/VoiceTurnTracker;-><init>()V

    iput-object p6, p0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lru/localscribe/engine/LiveProcessor;->lastVoiceEnd:J

    nop

    iget-object p6, p0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {p6, v0, v1}, Lru/localscribe/data/Repository;->restoreConstraints(Ljava/lang/String;Lru/localscribe/core/SpeakerCluster;)V

    iget-object p6, p0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/engine/LiveProcessor;)V

    invoke-virtual {p6, v0, v1}, Lru/localscribe/data/Repository;->visitSegments(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v1, :cond_1

    const-string v1, "vad"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p6, v1

    :goto_0
    invoke-virtual {p6}, Lcom/k2fsa/sherpa/onnx/Vad;->release()V

    :cond_2
    iget-object p6, p0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {p6}, Lru/localscribe/engine/Engines;->close()V

    throw v0
.end method

.method public synthetic constructor <init>(Lru/localscribe/core/Recording;Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const-wide/16 p4, 0x0

    move-wide v4, p4

    goto :goto_0

    :cond_0
    move-wide v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    new-instance p6, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda2;

    invoke-direct {p6}, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda2;-><init>()V

    move-object v6, p6

    goto :goto_1

    :cond_1
    move-object v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lru/localscribe/engine/LiveProcessor;-><init>(Lru/localscribe/core/Recording;Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final _init_$lambda$1(Lru/localscribe/engine/LiveProcessor;Ljava/util/List;)Lkotlin/Unit;
    .locals 8

    const-string v0, "saved"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lru/localscribe/engine/LiveProcessor;->previousEnd:J

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/core/Segment;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/localscribe/core/Segment;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_1

    move-object v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lru/localscribe/engine/LiveProcessor;->previousEnd:J

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->identities:Lru/localscribe/core/SessionSpeakers;

    invoke-virtual {v0, p1}, Lru/localscribe/core/SessionSpeakers;->restore(Ljava/util/List;)V

    move-object v0, p1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lru/localscribe/core/Segment;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    move-object v4, v3

    goto :goto_4

    :cond_6
    nop

    :goto_4
    check-cast v4, Lru/localscribe/core/Segment;

    if-eqz v4, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->lastSpeakerId:Ljava/lang/String;

    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final analysis()Lru/localscribe/analysis/AdvancedModels;
    .locals 8

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->analysis:Lru/localscribe/analysis/AdvancedModels;

    if-nez v0, :cond_0

    new-instance v1, Lru/localscribe/analysis/AdvancedModels;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v0}, Lru/localscribe/data/ModelStore;->getRoot()Ljava/io/File;

    move-result-object v0

    const-string v3, "advanced"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getThreads()I

    move-result v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lru/localscribe/analysis/AdvancedModels;-><init>(Ljava/io/File;IZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    const/4 v2, 0x0

    iput-object v0, p0, Lru/localscribe/engine/LiveProcessor;->analysis:Lru/localscribe/analysis/AdvancedModels;

    nop

    nop

    :cond_0
    return-object v0
.end method

.method private final cleanVoiceWindow(II)Lru/localscribe/analysis/SampleSpan;
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    sub-int v2, v1, v0

    const/16 v3, 0x3200

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return-object v4

    :cond_0
    const v2, 0x27100

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v3, p0

    iget-object v5, v3, Lru/localscribe/engine/LiveProcessor;->audio:[F

    invoke-static {v5, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v5

    array-length v6, v5

    const v7, 0xbb80

    if-lt v6, v7, :cond_2

    invoke-direct {v3}, Lru/localscribe/engine/LiveProcessor;->analysis()Lru/localscribe/analysis/AdvancedModels;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v5, v4, v7, v4}, Lru/localscribe/analysis/AdvancedModels;->overlaps$default(Lru/localscribe/analysis/AdvancedModels;[FLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    move-object v8, v4

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lru/localscribe/analysis/SampleSpan;

    const/4 v13, 0x0

    new-instance v14, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v15

    add-int/2addr v15, v2

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v16

    move/from16 v17, v2

    add-int v2, v16, v17

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v14, v15, v2, v3}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;)V

    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    move/from16 v2, v17

    goto :goto_0

    :cond_1
    move/from16 v17, v2

    move-object v2, v7

    check-cast v2, Ljava/util/List;

    nop

    goto :goto_1

    :cond_2
    move/from16 v17, v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    nop

    nop

    sget-object v3, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    invoke-virtual {v3, v0, v1, v2}, Lru/localscribe/analysis/AnalysisMath;->recentCleanVoiceWindow(IILjava/util/List;)Lru/localscribe/analysis/SampleSpan;

    move-result-object v3

    return-object v3
.end method

.method private final presentedMatch()Lru/localscribe/core/SpeakerCluster$Match;
    .locals 7

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    invoke-virtual {v0}, Lru/localscribe/core/VoiceTurnTracker;->getCurrent()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    invoke-virtual {v0}, Lru/localscribe/core/VoiceTurnTracker;->getCurrent()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    invoke-virtual {v0}, Lru/localscribe/core/VoiceTurnTracker;->getEmbedding()[F

    move-result-object v2

    iget-object v3, p0, Lru/localscribe/engine/LiveProcessor;->lastSpeakerId:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lru/localscribe/core/SpeakerCluster;->provisional$default(Lru/localscribe/core/SpeakerCluster;[FLjava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final refine$lambda$0(Ljava/util/Set;Ljava/util/List;)Lkotlin/Unit;
    .locals 11

    const-string v0, "batch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/localscribe/core/Segment;

    const/4 v8, 0x0

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v9

    const-string v10, "corrected"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    nop

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v7

    check-cast v9, Lru/localscribe/core/Segment;

    const/4 v10, 0x0

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v10, 0x0

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    nop

    goto :goto_1

    :cond_3
    nop

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final refine$lambda$1(Lru/localscribe/engine/LiveProcessor;Ljava/util/Map;Lru/localscribe/core/Segment;)Lru/localscribe/core/Segment;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->identities:Lru/localscribe/core/SessionSpeakers;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lru/localscribe/core/SessionSpeakers;->resolve(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/Segment;

    return-object v0
.end method

.method private final splitAt(ILru/localscribe/core/SpeakerCluster$Match;[F)V
    .locals 5

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v1, v1

    invoke-static {v0, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v1

    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, p1, -0x1

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    iget v1, p0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    iput v1, p0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v3, "stream"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v1, :cond_2

    const-string v1, "recognizer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->createStream$default(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v1

    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    const/16 v3, 0x3e80

    invoke-virtual {v2, v1, v3}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    invoke-virtual {p0}, Lru/localscribe/engine/LiveProcessor;->finish()V

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    invoke-virtual {v1, p2, p3}, Lru/localscribe/core/VoiceTurnTracker;->reset(Lru/localscribe/core/SpeakerCluster$Match;[F)V

    array-length v1, v0

    iput v1, p0, Lru/localscribe/engine/LiveProcessor;->embeddingAt:I

    const/4 v1, 0x0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_4

    add-int/lit16 v2, v1, 0x640

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v3

    invoke-virtual {p0, v3}, Lru/localscribe/engine/LiveProcessor;->accept([F)V

    move v1, v2

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final accept([F)V
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "x"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v3, "stream"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    const/16 v5, 0x3e80

    invoke-virtual {v2, v1, v5}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->plus([F[F)[F

    move-result-object v2

    iput-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    const-string v5, "vad"

    if-nez v2, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->acceptWaveform([F)V

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v2, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/Vad;->isSpeechDetected()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    array-length v7, v1

    sub-int/2addr v2, v7

    add-int/lit16 v2, v2, -0xc80

    invoke-static {v2, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    :cond_3
    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    iput v2, v0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    :cond_4
    :goto_0
    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v2, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/Vad;->empty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v2, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/Vad;->front()Lcom/k2fsa/sherpa/onnx/SpeechSegment;

    move-result-object v2

    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v7, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_7
    invoke-virtual {v7}, Lcom/k2fsa/sherpa/onnx/Vad;->pop()V

    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    if-nez v7, :cond_8

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/SpeechSegment;->getStart()J

    move-result-wide v7

    long-to-int v7, v7

    iget-object v8, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v8, v8

    invoke-static {v7, v6, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    :cond_8
    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v7, v7

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/SpeechSegment;->getStart()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/SpeechSegment;->getSamples()[F

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    goto :goto_0

    :cond_9
    :goto_1
    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    const-string v7, "recognizer"

    if-nez v2, :cond_a

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_a
    iget-object v8, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v8, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_b
    invoke-virtual {v2, v8}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v2, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_c
    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v7, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_d
    invoke-virtual {v2, v7}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    goto :goto_1

    :cond_e
    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    iget v8, v0, Lru/localscribe/engine/LiveProcessor;->embeddingAt:I

    sub-int/2addr v2, v8

    const/16 v8, 0x2ee0

    if-lt v2, v8, :cond_12

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v2, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_f
    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/Vad;->isSpeechDetected()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    iput v2, v0, Lru/localscribe/engine/LiveProcessor;->embeddingAt:I

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_10
    move v2, v6

    :goto_2
    iget-object v5, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v5, v5

    invoke-direct {v0, v2, v5}, Lru/localscribe/engine/LiveProcessor;->cleanVoiceWindow(II)Lru/localscribe/analysis/SampleSpan;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-wide v8, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iget-wide v10, v0, Lru/localscribe/engine/LiveProcessor;->lastVoiceEnd:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_11

    iget-wide v8, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v0, Lru/localscribe/engine/LiveProcessor;->lastVoiceEnd:J

    iget-object v5, v0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    iget-object v8, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v9

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v10

    invoke-static {v8, v9, v10}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v8

    invoke-virtual {v5, v8}, Lru/localscribe/engine/Engines;->embedding([F)[F

    move-result-object v10

    iget-object v9, v0, Lru/localscribe/engine/LiveProcessor;->identities:Lru/localscribe/core/SessionSpeakers;

    iget-wide v11, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v5

    int-to-long v13, v5

    add-long/2addr v11, v13

    iget-wide v13, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    int-to-long v4, v5

    add-long/2addr v13, v4

    invoke-virtual/range {v9 .. v14}, Lru/localscribe/core/SessionSpeakers;->observe([FJJ)Lru/localscribe/core/SessionSpeakers$Observation;

    move-result-object v4

    iget-object v9, v0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    iget-wide v11, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v5

    int-to-long v13, v5

    add-long v12, v11, v13

    iget-wide v14, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    move-object/from16 v17, v7

    int-to-long v6, v5

    add-long/2addr v14, v6

    move-object v11, v10

    move-object v10, v4

    invoke-virtual/range {v9 .. v15}, Lru/localscribe/core/VoiceTurnTracker;->observe(Lru/localscribe/core/SessionSpeakers$Observation;[FJJ)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v10

    move-object v10, v11

    if-eqz v4, :cond_13

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    sub-long v11, v6, v8

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v13, 0x1

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v6

    long-to-int v3, v6

    nop

    invoke-virtual {v5}, Lru/localscribe/core/SessionSpeakers$Observation;->getMatch()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v6

    invoke-direct {v0, v3, v6, v10}, Lru/localscribe/engine/LiveProcessor;->splitAt(ILru/localscribe/core/SpeakerCluster$Match;[F)V

    return-void

    :cond_11
    move-object/from16 v17, v7

    goto :goto_3

    :cond_12
    move-object/from16 v17, v7

    :cond_13
    :goto_3
    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v2, :cond_14

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_14
    iget-object v4, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v4, :cond_15

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_15
    invoke-virtual {v2, v4}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    iget v4, v0, Lru/localscribe/engine/LiveProcessor;->lastDraftSize:I

    sub-int/2addr v2, v4

    const/16 v4, 0x1f40

    if-lt v2, v4, :cond_17

    move-object/from16 v2, v23

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    iput v2, v0, Lru/localscribe/engine/LiveProcessor;->lastDraftSize:I

    invoke-direct {v0}, Lru/localscribe/engine/LiveProcessor;->presentedMatch()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v2

    iget-object v4, v0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v5, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v5}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v6}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v6

    iget-wide v9, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":live:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v6, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v6}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v20

    sget-object v9, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    iget-wide v6, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    iget-object v10, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_4

    :cond_16
    const/4 v10, 0x0

    :goto_4
    int-to-long v10, v10

    add-long/2addr v10, v6

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v21

    sget-object v9, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    iget-wide v6, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    iget-object v10, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v10, v6

    invoke-static/range {v9 .. v14}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster$Match;->getSimilarity()Ljava/lang/Float;

    move-result-object v28

    new-instance v18, Lru/localscribe/core/Segment;

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    const v46, 0x1fdff00

    const/16 v47, 0x0

    const-string v27, "preliminary"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "vad_endpoint_estimate"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v26, v23

    move-wide/from16 v23, v6

    invoke-direct/range {v18 .. v47}, Lru/localscribe/core/Segment;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v26

    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v7}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lru/localscribe/data/Repository;->append(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :cond_17
    sget-object v2, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v2}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    const/4 v4, 0x0

    :cond_18
    nop

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lru/localscribe/service/LiveState;

    const/4 v6, 0x0

    nop

    nop

    move-object/from16 v7, v23

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 v24, 0x0

    goto :goto_5

    :cond_19
    invoke-direct {v0}, Lru/localscribe/engine/LiveProcessor;->presentedMatch()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v7

    invoke-virtual {v7}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v7

    :goto_5
    const/16 v30, 0x1e7

    const/16 v31, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    invoke-static/range {v18 .. v31}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v7

    nop

    nop

    invoke-interface {v2, v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    nop

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v2, :cond_1a

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1a
    iget-object v4, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v4, :cond_1b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1b
    invoke-virtual {v2, v4}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isEndpoint(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v2, v2

    const v3, 0x2ee00

    if-lt v2, v3, :cond_1d

    :cond_1c
    invoke-virtual {v0}, Lru/localscribe/engine/LiveProcessor;->finish()V

    :cond_1d
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "stream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v0, :cond_1

    const-string v0, "vad"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/Vad;->release()V

    nop

    :try_start_0
    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor;->analysis:Lru/localscribe/analysis/AdvancedModels;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/localscribe/analysis/AdvancedModels;->close()V

    :cond_2
    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->analysis:Lru/localscribe/analysis/AdvancedModels;

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lru/localscribe/engine/LiveProcessor;->analysis:Lru/localscribe/analysis/AdvancedModels;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lru/localscribe/analysis/AdvancedModels;->close()V

    :cond_3
    iput-object v1, p0, Lru/localscribe/engine/LiveProcessor;->analysis:Lru/localscribe/analysis/AdvancedModels;

    throw v0
.end method

.method public final finish()V
    .locals 63

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v4, "stream"

    const/4 v5, 0x0

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_2
    const/16 v6, 0x3e80

    new-array v7, v6, [F

    invoke-virtual {v1, v7, v6}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_3
    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->inputFinished()V

    :goto_1
    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    const-string v6, "recognizer"

    if-nez v1, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_4
    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v7, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_5
    invoke-virtual {v1, v7}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v1, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_6
    iget-object v6, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v6, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_7
    invoke-virtual {v1, v6}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v1, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_9
    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v7, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_a
    invoke-virtual {v1, v7}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, ":live:"

    if-nez v7, :cond_24

    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_b
    move v7, v3

    :goto_2
    iget-object v9, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v9, v9

    sub-int/2addr v9, v2

    invoke-static {v7, v3, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    iget v9, v0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    if-lez v9, :cond_c

    iget v9, v0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    goto :goto_3

    :cond_c
    iget-object v9, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v9, v9

    :goto_3
    add-int/lit8 v10, v7, 0x1

    iget-object v11, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v11, v11

    invoke-static {v9, v10, v11}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    nop

    iget-wide v10, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    int-to-long v12, v7

    add-long v15, v10, v12

    iget-wide v10, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    int-to-long v12, v9

    add-long/2addr v10, v12

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    iget-object v13, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    invoke-static {v13, v7, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v13

    invoke-direct {v0}, Lru/localscribe/engine/LiveProcessor;->analysis()Lru/localscribe/analysis/AdvancedModels;

    move-result-object v14

    move/from16 v47, v2

    const/4 v2, 0x2

    invoke-static {v14, v13, v5, v2, v5}, Lru/localscribe/analysis/AdvancedModels;->overlaps$default(Lru/localscribe/analysis/AdvancedModels;[FLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    move/from16 v48, v14

    iget-object v14, v0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    invoke-virtual {v14}, Lru/localscribe/core/VoiceTurnTracker;->getCurrent()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v14

    invoke-virtual {v14}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_e

    invoke-direct {v0, v7, v9}, Lru/localscribe/engine/LiveProcessor;->cleanVoiceWindow(II)Lru/localscribe/analysis/SampleSpan;

    move-result-object v14

    if-eqz v14, :cond_d

    iget-object v5, v0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    move-object/from16 v49, v1

    invoke-virtual {v14}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v1

    move-object/from16 v50, v2

    invoke-virtual {v14}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v2

    invoke-static {v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v1

    invoke-virtual {v5, v1}, Lru/localscribe/engine/Engines;->embedding([F)[F

    move-result-object v18

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->identities:Lru/localscribe/core/SessionSpeakers;

    iget-wide v2, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v14}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v5

    move-object/from16 v17, v1

    move-wide/from16 v19, v2

    int-to-long v1, v5

    add-long v19, v19, v1

    iget-wide v1, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v14}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v3

    move-wide/from16 v21, v1

    int-to-long v1, v3

    add-long v21, v21, v1

    invoke-virtual/range {v17 .. v22}, Lru/localscribe/core/SessionSpeakers;->observe([FJJ)Lru/localscribe/core/SessionSpeakers$Observation;

    move-result-object v1

    nop

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    move-object v3, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v14}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v5

    move-wide/from16 v19, v1

    int-to-long v1, v5

    add-long v20, v19, v1

    iget-wide v1, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    invoke-virtual {v14}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    move-wide/from16 v22, v1

    int-to-long v1, v5

    add-long v22, v22, v1

    move-object/from16 v19, v18

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v23}, Lru/localscribe/core/VoiceTurnTracker;->observe(Lru/localscribe/core/SessionSpeakers$Observation;[FJJ)Ljava/lang/Long;

    move-object/from16 v18, v19

    goto :goto_4

    :cond_d
    move-object/from16 v49, v1

    move-object/from16 v50, v2

    goto :goto_4

    :cond_e
    move-object/from16 v49, v1

    move-object/from16 v50, v2

    :goto_4
    invoke-direct {v0}, Lru/localscribe/engine/LiveProcessor;->presentedMatch()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v1

    if-nez v48, :cond_11

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v2, v13}, Lru/localscribe/engine/Engines;->embedding([F)[F

    move-result-object v2

    if-eqz v2, :cond_f

    move-object v3, v2

    const/4 v5, 0x0

    iget-object v14, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v14, v3}, Lru/localscribe/core/SpeakerCluster;->identify([F)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v14

    invoke-virtual {v14}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v51, v1

    invoke-virtual/range {v51 .. v51}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_f
    move-object/from16 v51, v1

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    move-object/from16 v51, v1

    const/4 v2, 0x0

    :goto_5
    nop

    nop

    if-nez v2, :cond_12

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    invoke-virtual {v1}, Lru/localscribe/core/VoiceTurnTracker;->getEmbedding()[F

    move-result-object v1

    goto :goto_6

    :cond_12
    move-object v1, v2

    :goto_6
    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {v0}, Lru/localscribe/engine/LiveProcessor;->analysis()Lru/localscribe/analysis/AdvancedModels;

    move-result-object v17

    if-eqz v48, :cond_13

    const-string v3, "overlapping_speech"

    move-object/from16 v19, v3

    goto :goto_7

    :cond_13
    const/16 v19, 0x0

    :goto_7
    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v13

    invoke-static/range {v17 .. v22}, Lru/localscribe/analysis/AdvancedModels;->emotion$default(Lru/localscribe/analysis/AdvancedModels;[FLjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lru/localscribe/core/EmotionAssessment;

    move-result-object v3

    move-object/from16 v5, v18

    move-object/from16 v38, v3

    goto :goto_8

    :cond_14
    move-object v5, v13

    const/16 v38, 0x0

    :goto_8
    nop

    nop

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v3}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    check-cast v19, Lru/localscribe/core/Speaker;

    const/16 v20, 0x0

    move-object/from16 v52, v1

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v53, v2

    invoke-virtual/range {v51 .. v51}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    nop

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    goto :goto_9

    :cond_16
    move-object/from16 v52, v1

    move-object/from16 v53, v2

    const/4 v1, -0x1

    move v14, v1

    :goto_a
    move v1, v14

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/core/Settings;->getProsody()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->prosody:Lru/localscribe/core/ProsodyAnalyzer;

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    iget-wide v13, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    sub-long v13, v15, v13

    long-to-int v13, v13

    move-object/from16 v54, v4

    move-object/from16 v55, v5

    iget-wide v4, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    invoke-static {v3, v13, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v3

    invoke-virtual/range {v49 .. v49}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v4

    sget-object v14, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v13

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    iget-wide v2, v0, Lru/localscribe/engine/LiveProcessor;->previousEnd:J

    sub-long/2addr v13, v2

    const-wide/16 v2, 0x0

    invoke-static {v13, v14, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v20

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lru/localscribe/core/Speaker;

    move-object/from16 v19, v4

    invoke-virtual/range {v17 .. v22}, Lru/localscribe/core/ProsodyAnalyzer;->analyze([FLjava/lang/String;JLru/localscribe/core/Speaker;)Lru/localscribe/core/Acoustics;

    move-result-object v2

    move-object/from16 v32, v2

    goto :goto_b

    :cond_17
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    const/16 v32, 0x0

    :goto_b
    nop

    move-object/from16 v2, v32

    if-ltz v1, :cond_18

    if-eqz v2, :cond_18

    if-nez v48, :cond_18

    invoke-virtual/range {v51 .. v51}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v3}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lru/localscribe/engine/LiveProcessor;->prosody:Lru/localscribe/core/ProsodyAnalyzer;

    iget-object v5, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v5}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/localscribe/core/Speaker;

    invoke-virtual {v4, v5, v2}, Lru/localscribe/core/ProsodyAnalyzer;->updateNorm(Lru/localscribe/core/Speaker;Lru/localscribe/core/Acoustics;)Lru/localscribe/core/Speaker;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v14, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v13

    sget-object v17, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-wide/from16 v18, v10

    invoke-static/range {v17 .. v22}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v22

    invoke-virtual/range {v51 .. v51}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v49 .. v49}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v51 .. v51}, Lru/localscribe/core/SpeakerCluster$Match;->getSimilarity()Ljava/lang/Float;

    move-result-object v27

    sget-object v5, Lru/localscribe/core/TranscriptMerger;->INSTANCE:Lru/localscribe/core/TranscriptMerger;

    invoke-virtual {v5, v12}, Lru/localscribe/core/TranscriptMerger;->words(Ljava/util/List;)Ljava/util/List;

    move-result-object v31

    if-eqz v52, :cond_19

    invoke-static/range {v52 .. v52}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1a

    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_1a
    move-object/from16 v34, v5

    if-eqz v53, :cond_1b

    const-string v5, "utterance"

    move-object/from16 v35, v5

    goto :goto_d

    :cond_1b
    if-eqz v52, :cond_1c

    const-string v5, "clean_window"

    goto :goto_c

    :cond_1c
    const-string v5, "unavailable"

    :goto_c
    move-object/from16 v35, v5

    :goto_d
    nop

    if-eqz v48, :cond_1d

    const-string v5, "detected_requires_offline"

    goto :goto_e

    :cond_1d
    const-string v5, "not_detected"

    :goto_e
    move-object/from16 v36, v5

    move-object/from16 v5, v50

    check-cast v5, Ljava/lang/Iterable;

    const/4 v8, 0x0

    move/from16 v56, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v32, v2

    const/16 v2, 0xa

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    move-object v2, v5

    const/16 v17, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    check-cast v20, Lru/localscribe/analysis/SampleSpan;

    const/16 v21, 0x0

    new-instance v39, Lru/localscribe/core/OverlapSpan;

    sget-object v40, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    move-object/from16 v26, v2

    invoke-virtual/range {v20 .. v20}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v2

    move-object/from16 v28, v3

    int-to-long v2, v2

    add-long v41, v15, v2

    const/16 v44, 0x2

    const/16 v45, 0x0

    const/16 v43, 0x0

    invoke-static/range {v40 .. v45}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v40

    sget-object v57, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    invoke-virtual/range {v20 .. v20}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v2

    int-to-long v2, v2

    add-long v58, v15, v2

    const/16 v61, 0x2

    const/16 v62, 0x0

    const/16 v60, 0x0

    invoke-static/range {v57 .. v62}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v42

    invoke-virtual/range {v20 .. v20}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v44

    invoke-direct/range {v39 .. v44}, Lru/localscribe/core/OverlapSpan;-><init>(JJLjava/lang/Double;)V

    move-object/from16 v2, v39

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    goto :goto_f

    :cond_1e
    move-object/from16 v26, v2

    move-object/from16 v28, v3

    move-object/from16 v39, v1

    check-cast v39, Ljava/util/List;

    nop

    nop

    if-eqz v48, :cond_1f

    const-string v1, "mixture"

    goto :goto_10

    :cond_1f
    const-string v1, "original"

    :goto_10
    move-object/from16 v42, v1

    if-eqz v38, :cond_22

    move-object/from16 v1, v38

    const/4 v2, 0x0

    new-instance v3, Lru/localscribe/core/Tag;

    invoke-virtual {v1}, Lru/localscribe/core/EmotionAssessment;->getLabel()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "emotion_"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/EmotionAssessment;->getConfidence()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/EmotionAssessment;->getLabel()Ljava/lang/String;

    move-result-object v8

    move/from16 v18, v2

    const-string v2, "unknown"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_11

    :cond_20
    const-string v2, "estimated"

    :goto_11
    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/EmotionAssessment;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v5, v2, v8}, Lru/localscribe/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    if-nez v1, :cond_21

    goto :goto_12

    :cond_21
    move-object/from16 v33, v1

    goto :goto_13

    :cond_22
    :goto_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v33, v1

    :goto_13
    nop

    new-instance v17, Lru/localscribe/core/Segment;

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    const v45, 0x1b00240

    const/16 v46, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    const-string v37, "vad_endpoint_estimate"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v19, v4

    move-object/from16 v30, v12

    move-wide/from16 v20, v13

    invoke-direct/range {v17 .. v46}, Lru/localscribe/core/Segment;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v17

    move-object/from16 v17, v38

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v2

    if-nez v2, :cond_23

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    :cond_23
    iput-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v3}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v21

    iget-wide v3, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    iget-object v5, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v5, v5

    int-to-long v12, v5

    add-long v22, v3, v12

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v23}, Lru/localscribe/data/Repository;->commitLive(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v2

    iput-wide v2, v0, Lru/localscribe/engine/LiveProcessor;->previousEnd:J

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lru/localscribe/engine/LiveProcessor;->lastSpeakerId:Ljava/lang/String;

    goto :goto_14

    :cond_24
    move-object/from16 v49, v1

    move/from16 v47, v2

    move-object/from16 v54, v4

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lru/localscribe/data/Repository;->removePreliminary(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v10

    iget-wide v1, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v3, v3

    int-to-long v3, v3

    add-long v11, v1, v3

    invoke-virtual/range {v7 .. v12}, Lru/localscribe/data/Repository;->commitLive(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    :goto_14
    iget-wide v1, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    iget-object v3, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lru/localscribe/engine/LiveProcessor;->offset:J

    const/4 v1, 0x0

    new-array v2, v1, [F

    iput-object v2, v0, Lru/localscribe/engine/LiveProcessor;->audio:[F

    iput v1, v0, Lru/localscribe/engine/LiveProcessor;->lastDraftSize:I

    const/4 v2, 0x0

    iput-object v2, v0, Lru/localscribe/engine/LiveProcessor;->firstSpeech:Ljava/lang/Integer;

    iput v1, v0, Lru/localscribe/engine/LiveProcessor;->lastSpeech:I

    iput v1, v0, Lru/localscribe/engine/LiveProcessor;->embeddingAt:I

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->turn:Lru/localscribe/core/VoiceTurnTracker;

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, Lru/localscribe/core/VoiceTurnTracker;->reset$default(Lru/localscribe/core/VoiceTurnTracker;Lru/localscribe/core/SpeakerCluster$Match;[FILjava/lang/Object;)V

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    if-nez v2, :cond_25

    invoke-static/range {v54 .. v54}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_25
    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-nez v2, :cond_26

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_26
    move/from16 v1, v47

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->createStream$default(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v1

    iput-object v1, v0, Lru/localscribe/engine/LiveProcessor;->stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    iget-object v1, v0, Lru/localscribe/engine/LiveProcessor;->vad:Lcom/k2fsa/sherpa/onnx/Vad;

    if-nez v1, :cond_27

    const-string v1, "vad"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_15

    :cond_27
    move-object v5, v1

    :goto_15
    invoke-virtual {v5}, Lcom/k2fsa/sherpa/onnx/Vad;->reset()V

    sget-object v1, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v1}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    :cond_28
    nop

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/localscribe/service/LiveState;

    const/16 v18, 0x0

    const/16 v16, 0x1e7

    const/16 v17, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v17}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v4

    nop

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    nop

    iget v1, v0, Lru/localscribe/engine/LiveProcessor;->savedSpeakerCount:I

    iget-object v2, v0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_29

    invoke-virtual {v0}, Lru/localscribe/engine/LiveProcessor;->refine()V

    :cond_29
    return-void
.end method

.method public final refine()V
    .locals 9

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v2, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Lru/localscribe/data/Repository;->visitSegments(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v1, v0}, Lru/localscribe/core/SpeakerCluster;->refine(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/engine/LiveProcessor;->repository:Lru/localscribe/data/Repository;

    iget-object v3, p0, Lru/localscribe/engine/LiveProcessor;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v4}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v1}, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/engine/LiveProcessor;Ljava/util/Map;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lru/localscribe/data/Repository;->refineSpeakers$default(Lru/localscribe/data/Repository;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    iget-object v2, p0, Lru/localscribe/engine/LiveProcessor;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lru/localscribe/engine/LiveProcessor;->savedSpeakerCount:I

    return-void
.end method
