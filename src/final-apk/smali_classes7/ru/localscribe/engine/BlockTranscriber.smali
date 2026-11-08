.class public final Lru/localscribe/engine/BlockTranscriber;
.super Ljava/lang/Object;
.source "BlockTranscriber.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockTranscriber.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockTranscriber.kt\nru/localscribe/engine/BlockTranscriber\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,591:1\n375#2:592\n1563#3:593\n1634#3,3:594\n1617#3,9:597\n1869#3:606\n1870#3:608\n1626#3:609\n1374#3:610\n1460#3,2:611\n774#3:613\n865#3,2:614\n1617#3,9:616\n1869#3:625\n1870#3:627\n1626#3:628\n1462#3,3:629\n1563#3:632\n1634#3,3:633\n774#3:636\n865#3,2:637\n774#3:639\n865#3,2:640\n1563#3:642\n1634#3,3:643\n774#3:646\n865#3,2:647\n1563#3:649\n1634#3,3:650\n1374#3:653\n1460#3,5:654\n774#3:659\n865#3,2:660\n1068#3:662\n1617#3,9:664\n1869#3:673\n1870#3:675\n1626#3:676\n360#3,7:677\n1869#3,2:684\n1563#3:686\n1634#3,2:687\n774#3:689\n865#3,2:690\n1636#3:693\n1374#3:694\n1460#3,2:695\n1374#3:697\n1460#3,5:698\n1563#3:703\n1634#3,3:704\n1462#3,3:707\n774#3:710\n865#3,2:711\n1583#3,11:713\n1878#3,2:724\n1761#3,3:726\n1880#3:730\n1594#3:731\n774#3:732\n865#3,2:733\n1563#3:735\n1634#3,3:736\n1761#3,3:744\n1999#3,14:747\n1869#3,2:761\n1563#3:763\n1634#3,3:764\n1374#3:767\n1460#3,5:768\n2746#3,3:773\n360#3,7:776\n1617#3,9:783\n1869#3:792\n1870#3:794\n1626#3:795\n1761#3,3:797\n1#4:607\n1#4:626\n1#4:663\n1#4:674\n1#4:692\n1#4:729\n1#4:739\n1#4:793\n1#4:796\n11561#5:740\n11896#5,3:741\n*S KotlinDebug\n*F\n+ 1 BlockTranscriber.kt\nru/localscribe/engine/BlockTranscriber\n*L\n50#1:592\n54#1:593\n54#1:594,3\n61#1:597,9\n61#1:606\n61#1:608\n61#1:609\n67#1:610\n67#1:611,2\n69#1:613\n69#1:614,2\n70#1:616,9\n70#1:625\n70#1:627\n70#1:628\n67#1:629,3\n80#1:632\n80#1:633,3\n81#1:636\n81#1:637,2\n83#1:639\n83#1:640,2\n83#1:642\n83#1:643,3\n87#1:646\n87#1:647,2\n88#1:649\n88#1:650,3\n91#1:653\n91#1:654,5\n97#1:659\n97#1:660,2\n98#1:662\n113#1:664,9\n113#1:673\n113#1:675\n113#1:676\n119#1:677,7\n141#1:684,2\n153#1:686\n153#1:687,2\n154#1:689\n154#1:690,2\n153#1:693\n281#1:694\n281#1:695,2\n283#1:697\n283#1:698,5\n284#1:703\n284#1:704,3\n281#1:707,3\n312#1:710\n312#1:711,2\n344#1:713,11\n344#1:724,2\n355#1:726,3\n344#1:730\n344#1:731\n390#1:732\n390#1:733,2\n402#1:735\n402#1:736,3\n452#1:744,3\n467#1:747,14\n485#1:761,2\n537#1:763\n537#1:764,3\n580#1:767\n580#1:768,5\n196#1:773,3\n201#1:776,7\n221#1:783,9\n221#1:792\n221#1:794\n221#1:795\n256#1:797,3\n61#1:607\n70#1:626\n113#1:674\n344#1:729\n221#1:793\n451#1:740\n451#1:741,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014Jd\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020)0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020)0(H\u0086@\u00a2\u0006\u0002\u0010,J\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u001e2\u0006\u0010/\u001a\u00020.H\u0002J\u0016\u00100\u001a\u0008\u0012\u0004\u0012\u00020.0\u001e2\u0006\u00101\u001a\u00020!H\u0002J\u0008\u00102\u001a\u00020)H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000f0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lru/localscribe/engine/BlockTranscriber;",
        "Ljava/io/Closeable;",
        "recording",
        "Lru/localscribe/core/Recording;",
        "engines",
        "Lru/localscribe/engine/Engines;",
        "cluster",
        "Lru/localscribe/core/SpeakerCluster;",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "timeline",
        "Lru/localscribe/core/SpeakerTimeline;",
        "timing",
        "Lru/localscribe/engine/ProcessingTimings;",
        "trackPrefix",
        "",
        "timelineSpeakerIds",
        "",
        "",
        "<init>",
        "(Lru/localscribe/core/Recording;Lru/localscribe/engine/Engines;Lru/localscribe/core/SpeakerCluster;Lru/localscribe/data/ModelStore;Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/engine/ProcessingTimings;Ljava/lang/String;Ljava/util/Map;)V",
        "wholeRecording",
        "",
        "neural",
        "Lru/localscribe/engine/NeuralDiarizer;",
        "advanced",
        "Lru/localscribe/analysis/AdvancedModels;",
        "prosody",
        "Lru/localscribe/core/ProsodyAnalyzer;",
        "process",
        "",
        "Lru/localscribe/core/Segment;",
        "block",
        "",
        "context",
        "coreStart",
        "offset",
        "",
        "previousEnd",
        "onStatus",
        "Lkotlin/Function1;",
        "",
        "onProgress",
        "",
        "([F[FIJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "splitBounded",
        "Lru/localscribe/analysis/SampleSpan;",
        "span",
        "speech",
        "audio",
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
.field private final advanced:Lru/localscribe/analysis/AdvancedModels;

.field private final cluster:Lru/localscribe/core/SpeakerCluster;

.field private final engines:Lru/localscribe/engine/Engines;

.field private final neural:Lru/localscribe/engine/NeuralDiarizer;

.field private final prosody:Lru/localscribe/core/ProsodyAnalyzer;

.field private final recording:Lru/localscribe/core/Recording;

.field private final timeline:Lru/localscribe/core/SpeakerTimeline;

.field private final timelineSpeakerIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timing:Lru/localscribe/engine/ProcessingTimings;

.field private final trackPrefix:Ljava/lang/String;

.field private final wholeRecording:Z


# direct methods
.method public static synthetic $r8$lambda$03sUj6Vt0uTasjScB6T5_sWvtJk(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$2(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5GgnMXGCAaeX97ZctAla12xPyrQ(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$41(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B0GFl2sUnfbRK36vfT56HXZ5fQE(Lru/localscribe/engine/BlockTranscriber;[F)[F
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$15(Lru/localscribe/engine/BlockTranscriber;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D6CrB7OOP2_pCoJKjPsmc3vM5hM(Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$31(Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JQSqDRub5JF8Mkq7ce812XN2HN4(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$40(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bI06nsZrVlrjnxvGil7cGJDDvAs(Lru/localscribe/engine/BlockTranscriber;[F)[F
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/BlockTranscriber;->process$emit$lambda$21(Lru/localscribe/engine/BlockTranscriber;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cBqeY7pA-D9seT--m_trttqrIvQ(Ljava/lang/String;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/BlockTranscriber;->advanced$lambda$0(Ljava/lang/String;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dGwlUUBvmi4c8qGBAE43uEKTBJs(Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$0(Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oikFfR01pd7-yoisErddWTnuZtQ(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/BlockTranscriber;->process$lambda$42(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/BlockTranscriber;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/core/Recording;Lru/localscribe/engine/Engines;Lru/localscribe/core/SpeakerCluster;Lru/localscribe/data/ModelStore;Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/engine/ProcessingTimings;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Recording;",
            "Lru/localscribe/engine/Engines;",
            "Lru/localscribe/core/SpeakerCluster;",
            "Lru/localscribe/data/ModelStore;",
            "Lru/localscribe/core/SpeakerTimeline;",
            "Lru/localscribe/engine/ProcessingTimings;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    const-string v0, "recording"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engines"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cluster"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "models"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timing"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackPrefix"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timelineSpeakerIds"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    iput-object v3, v1, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    iput-object v4, v1, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    move-object/from16 v9, p5

    iput-object v9, v1, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    iput-object v6, v1, Lru/localscribe/engine/BlockTranscriber;->timing:Lru/localscribe/engine/ProcessingTimings;

    iput-object v7, v1, Lru/localscribe/engine/BlockTranscriber;->trackPrefix:Ljava/lang/String;

    iput-object v8, v1, Lru/localscribe/engine/BlockTranscriber;->timelineSpeakerIds:Ljava/util/Map;

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getDurationMs()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v0, v12, v10

    const/4 v12, 0x0

    if-gtz v0, :cond_0

    const-wide/16 v13, 0x7531

    cmp-long v0, v10, v13

    if-gez v0, :cond_0

    const/4 v12, 0x1

    :cond_0
    iput-boolean v12, v1, Lru/localscribe/engine/BlockTranscriber;->wholeRecording:Z

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-nez v0, :cond_1

    new-instance v0, Lru/localscribe/engine/NeuralDiarizer;

    iget-object v10, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v10}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v10

    iget-boolean v11, v1, Lru/localscribe/engine/BlockTranscriber;->wholeRecording:Z

    invoke-direct {v0, v5, v10, v11}, Lru/localscribe/engine/NeuralDiarizer;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->neural:Lru/localscribe/engine/NeuralDiarizer;

    nop

    :try_start_0
    new-instance v10, Lru/localscribe/analysis/AdvancedModels;

    new-instance v11, Ljava/io/File;

    invoke-virtual {v5}, Lru/localscribe/data/ModelStore;->getRoot()Ljava/io/File;

    move-result-object v0

    const-string v12, "advanced"

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getThreads()I

    move-result v0

    const/4 v12, 0x2

    invoke-static {v0, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v12

    new-instance v14, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda0;-><init>()V

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v16}, Lru/localscribe/analysis/AdvancedModels;-><init>(Ljava/io/File;IZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v10, v1, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    new-instance v0, Lru/localscribe/core/ProsodyAnalyzer;

    invoke-direct {v0}, Lru/localscribe/core/ProsodyAnalyzer;-><init>()V

    iput-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->prosody:Lru/localscribe/core/ProsodyAnalyzer;

    return-void

    :catchall_0
    move-exception v0

    iget-object v10, v1, Lru/localscribe/engine/BlockTranscriber;->neural:Lru/localscribe/engine/NeuralDiarizer;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lru/localscribe/engine/NeuralDiarizer;->close()V

    :cond_2
    throw v0
.end method

.method public synthetic constructor <init>(Lru/localscribe/core/Recording;Lru/localscribe/engine/Engines;Lru/localscribe/core/SpeakerCluster;Lru/localscribe/data/ModelStore;Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/engine/ProcessingTimings;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x10

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_1

    new-instance p6, Lru/localscribe/engine/ProcessingTimings;

    const/4 p10, 0x1

    invoke-direct {p6, v0, p10, v0}, Lru/localscribe/engine/ProcessingTimings;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_2

    const-string p7, ""

    :cond_2
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p8

    move-object p9, p8

    goto :goto_0

    :cond_3
    move-object p9, p8

    :goto_0
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lru/localscribe/engine/BlockTranscriber;-><init>(Lru/localscribe/core/Recording;Lru/localscribe/engine/Engines;Lru/localscribe/core/SpeakerCluster;Lru/localscribe/data/ModelStore;Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/engine/ProcessingTimings;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final advanced$lambda$0(Ljava/lang/String;J)Lkotlin/Unit;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " elapsed_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalScribePerf"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final process$emit(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lru/localscribe/engine/BlockTranscriber;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;J",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;II[F",
            "Lru/localscribe/core/SpeakerCluster$Match;",
            "[F",
            "Ljava/lang/Float;",
            "Lru/localscribe/core/SeparationInfo;",
            "Z",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;>;",
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v6, p9

    invoke-interface/range {p0 .. p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    if-nez p14, :cond_0

    invoke-virtual/range {p10 .. p10}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-direct {v0, v12, v12, v11}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    goto :goto_2

    :cond_1
    invoke-virtual/range {p10 .. p10}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p14, :cond_2

    move-object/from16 v0, p10

    goto :goto_2

    :cond_2
    iget-object v13, v1, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    if-eqz p14, :cond_3

    move-object v14, v12

    goto :goto_0

    :cond_3
    move-object/from16 v14, p11

    :goto_0
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/Segment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    :cond_4
    move-object v15, v12

    :goto_1
    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lru/localscribe/core/SpeakerCluster;->provisional$default(Lru/localscribe/core/SpeakerCluster;[FLjava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v0

    :goto_2
    nop

    move-object v13, v0

    sget-object v14, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v7, v3

    add-long v15, p3, v7

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v14

    sget-object v16, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v7, v4

    add-long v17, p3, v7

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v25

    if-nez p15, :cond_5

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0, v6, v14, v15}, Lru/localscribe/engine/Engines;->recognize([FJ)Lkotlin/Pair;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p15

    :goto_3
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Ljava/util/List;

    nop

    if-nez p13, :cond_a

    if-nez p14, :cond_a

    iget-object v5, v1, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-eqz v5, :cond_9

    int-to-long v8, v3

    add-long v8, p3, v8

    sub-int v10, v4, v3

    invoke-virtual {v5, v8, v9, v10}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    check-cast v5, Ljava/lang/Iterable;

    const/4 v8, 0x0

    instance-of v9, v5, Ljava/util/Collection;

    if-eqz v9, :cond_6

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v11

    goto :goto_4

    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Lru/localscribe/core/VoiceTurn;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/core/VoiceTurn;->getUncertain()Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    move v5, v11

    :goto_4
    nop

    nop

    if-nez v5, :cond_9

    move v5, v11

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_a

    iget-object v5, v1, Lru/localscribe/engine/BlockTranscriber;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v8, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1, v6}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/engine/BlockTranscriber;[F)V

    const-string v9, "voice.utterance"

    invoke-virtual {v5, v9, v8}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    goto :goto_6

    :cond_a
    move-object v5, v12

    :goto_6
    nop

    move-object/from16 v16, v5

    iget-object v5, v1, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v5}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v17

    check-cast v18, Lru/localscribe/core/Speaker;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    nop

    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, -0x1

    move v9, v0

    :goto_8
    move v11, v9

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getProsody()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v5, v1, Lru/localscribe/engine/BlockTranscriber;->prosody:Lru/localscribe/core/ProsodyAnalyzer;

    nop

    nop

    iget-wide v8, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v8, v14, v8

    move-object/from16 v17, v13

    const-wide/16 v12, 0x0

    invoke-static {v8, v9, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    if-nez p13, :cond_d

    if-nez p14, :cond_d

    iget-object v10, v1, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v10}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/localscribe/core/Speaker;

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_9
    move-object/from16 v12, v33

    invoke-virtual/range {v5 .. v10}, Lru/localscribe/core/ProsodyAnalyzer;->analyze([FLjava/lang/String;JLru/localscribe/core/Speaker;)Lru/localscribe/core/Acoustics;

    move-result-object v5

    move-object/from16 v35, v5

    goto :goto_a

    :cond_e
    move-object/from16 v17, v13

    move-object/from16 v12, v33

    const/16 v35, 0x0

    :goto_a
    nop

    move-object/from16 v5, v35

    nop

    if-ltz v11, :cond_f

    if-eqz v5, :cond_f

    if-nez p13, :cond_f

    if-nez p14, :cond_f

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v1, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v8}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lru/localscribe/engine/BlockTranscriber;->prosody:Lru/localscribe/core/ProsodyAnalyzer;

    iget-object v10, v1, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v10}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/localscribe/core/Speaker;

    invoke-virtual {v9, v10, v5}, Lru/localscribe/core/ProsodyAnalyzer;->updateNorm(Lru/localscribe/core/Speaker;Lru/localscribe/core/Acoustics;)Lru/localscribe/core/Speaker;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object/from16 v8, p6

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object v13, v8

    const/16 v18, 0x0

    move-object/from16 v19, v13

    const/16 v22, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v27, v24

    const/16 v28, 0x0

    move-object/from16 v29, v27

    check-cast v29, Lru/localscribe/analysis/SampleSpan;

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v35, v5

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-le v5, v0, :cond_10

    new-instance v36, Lru/localscribe/core/OverlapSpan;

    sget-object v37, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    int-to-long v7, v0

    add-long v38, p3, v7

    const/16 v41, 0x2

    const/16 v42, 0x0

    const/16 v40, 0x0

    invoke-static/range {v37 .. v42}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v37

    sget-object v39, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v7, v5

    add-long v40, p3, v7

    const/16 v43, 0x2

    const/16 v44, 0x0

    const/16 v42, 0x0

    invoke-static/range {v39 .. v44}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v39

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v41

    invoke-direct/range {v36 .. v41}, Lru/localscribe/core/OverlapSpan;-><init>(JJLjava/lang/Double;)V

    move-object/from16 v0, v36

    goto :goto_c

    :cond_10
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_11

    const/4 v5, 0x0

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v5, v35

    goto :goto_b

    :cond_12
    move-object/from16 v35, v5

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    nop

    move-object/from16 v42, v10

    check-cast v42, Ljava/util/List;

    nop

    nop

    nop

    iget-object v0, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v0

    int-to-long v7, v3

    add-long v7, p3, v7

    int-to-long v9, v4

    add-long v9, p3, v9

    if-eqz p13, :cond_13

    invoke-virtual/range {p13 .. p13}, Lru/localscribe/core/SeparationInfo;->getChannel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_d

    :cond_13
    const-string v5, "mix"

    :goto_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ":"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    if-eqz p13, :cond_18

    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    iget-object v9, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "separated-"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_17

    new-instance v0, Ljava/io/File;

    iget-object v9, v1, Lru/localscribe/engine/BlockTranscriber;->trackPrefix:Ljava/lang/String;

    move v13, v11

    int-to-long v10, v3

    add-long v10, p3, v10

    move-wide/from16 v23, v14

    move v15, v13

    int-to-long v13, v4

    add-long v13, p3, v13

    invoke-virtual/range {p13 .. p13}, Lru/localscribe/core/SeparationInfo;->getChannel()I

    move-result v4

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".part"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    nop

    :try_start_0
    new-instance v9, Lru/localscribe/audio/WavFile;

    const/4 v0, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v5, v10, v0, v11}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v11, v9

    check-cast v11, Lru/localscribe/audio/WavFile;

    const/4 v13, 0x0

    invoke-virtual {v11, v6}, Lru/localscribe/audio/WavFile;->write([F)V

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v9, "getAbsolutePath(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-object/from16 v44, v7

    goto :goto_10

    :cond_16
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v9, "Check failed."

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_0
    move-exception v0

    move-object v10, v0

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v0

    :cond_17
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0440\u0430\u0437\u0434\u0435\u043b\u0451\u043d\u043d\u043e\u0435 \u0430\u0443\u0434\u0438\u043e"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v18, v5

    move-wide/from16 v23, v14

    const/4 v10, 0x0

    move v15, v11

    move-object/from16 v44, v7

    :goto_10
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/Collection;

    iget-object v4, v1, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/SpeakerCluster$Match;->getSimilarity()Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v1, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-eqz v4, :cond_1c

    int-to-long v7, v3

    add-long v7, p3, v7

    sub-int v5, p8, v3

    invoke-virtual {v4, v7, v8, v5}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1c

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_19

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_19

    move v4, v10

    goto :goto_11

    :cond_19
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/core/VoiceTurn;

    const/4 v11, 0x0

    invoke-virtual {v9}, Lru/localscribe/core/VoiceTurn;->getUncertain()Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    move v4, v10

    :goto_11
    nop

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    move v4, v5

    goto :goto_12

    :cond_1c
    const/4 v5, 0x1

    :cond_1d
    move v4, v10

    :goto_12
    if-eqz v4, :cond_1e

    goto :goto_13

    :cond_1e
    move/from16 v31, v10

    goto :goto_14

    :cond_1f
    const/4 v5, 0x1

    :goto_13
    move/from16 v31, v5

    :goto_14
    nop

    if-nez p16, :cond_20

    sget-object v4, Lru/localscribe/core/TranscriptMerger;->INSTANCE:Lru/localscribe/core/TranscriptMerger;

    invoke-virtual {v4, v12}, Lru/localscribe/core/TranscriptMerger;->words(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v34, v4

    goto :goto_15

    :cond_20
    move-object/from16 v34, p16

    :goto_15
    if-eqz v16, :cond_21

    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_22

    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_22
    move-object/from16 v37, v4

    if-eqz v16, :cond_23

    const-string v4, "utterance"

    goto :goto_16

    :cond_23
    const-string v4, "unavailable"

    :goto_16
    move-object/from16 v38, v4

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "not_detected"

    move-object/from16 v39, v4

    goto :goto_18

    :cond_24
    if-eqz p14, :cond_25

    const-string v4, "detected_unresolved"

    goto :goto_17

    :cond_25
    const-string v4, "detected"

    :goto_17
    move-object/from16 v39, v4

    :goto_18
    nop

    nop

    if-eqz p13, :cond_26

    const-string v4, "separated_estimate"

    move-object/from16 v45, v4

    goto :goto_1a

    :cond_26
    if-eqz p14, :cond_27

    const-string v4, "mixture"

    goto :goto_19

    :cond_27
    const-string v4, "original"

    :goto_19
    move-object/from16 v45, v4

    :goto_1a
    nop

    if-eqz p13, :cond_28

    const-string v4, "separated_vad_estimate"

    move-object/from16 v40, v4

    goto :goto_1b

    :cond_28
    iget-object v4, v1, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-eqz v4, :cond_29

    const-string v4, "global_diarization_token_emission"

    move-object/from16 v40, v4

    goto :goto_1b

    :cond_29
    const-string v4, "neural_segmentation_estimate"

    move-object/from16 v40, v4

    :goto_1b
    nop

    new-instance v20, Lru/localscribe/core/Segment;

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

    nop

    nop

    const v48, 0x1042240

    const/16 v49, 0x0

    const/16 v29, 0x0

    move-object/from16 v7, v32

    const/16 v32, 0x0

    const/16 v36, 0x0

    const/16 v41, 0x0

    const/16 v47, 0x0

    move-object/from16 v46, p12

    move-object/from16 v43, p13

    move-object/from16 v28, v7

    move-object/from16 v33, v12

    move-object/from16 v21, v18

    invoke-direct/range {v20 .. v49}, Lru/localscribe/core/Segment;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v20

    move-wide/from16 v4, v25

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-wide v8, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-void
.end method

.method static synthetic process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p12

    :goto_0
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_1

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    move-object/from16 v16, p13

    :goto_1
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v17, p14

    :goto_2
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_3

    move-object/from16 v18, v2

    goto :goto_3

    :cond_3
    move-object/from16 v18, p15

    :goto_3
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    move-object/from16 v19, v2

    goto :goto_4

    :cond_4
    move-object/from16 v19, p16

    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v3 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;)V

    return-void
.end method

.method private static final process$emit$lambda$21(Lru/localscribe/engine/BlockTranscriber;[F)[F
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0, p1}, Lru/localscribe/engine/Engines;->embedding([F)[F

    move-result-object v0

    return-object v0
.end method

.method private static final process$lambda$0(Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 1

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final process$lambda$15(Lru/localscribe/engine/BlockTranscriber;[F)[F
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0, p1}, Lru/localscribe/engine/Engines;->embedding([F)[F

    move-result-object v0

    return-object v0
.end method

.method private static final process$lambda$2(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    return v0
.end method

.method private static final process$lambda$31(Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getWord()Lru/localscribe/core/WordStamp;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static final process$lambda$40(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final process$lambda$41(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final process$lambda$42(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Segment;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final process$speechDone(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;FI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;FI)V"
        }
    .end annotation

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float v1, p2, v0

    iget v2, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final speech([F)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->vad()Lcom/k2fsa/sherpa/onnx/Vad;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    nop

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x200

    new-array v3, v3, [F

    array-length v4, p1

    add-int/lit16 v5, v2, 0x200

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    invoke-virtual {v0, v3}, Lcom/k2fsa/sherpa/onnx/Vad;->acceptWaveform([F)V

    invoke-static {v0, p1, v1}, Lru/localscribe/engine/BlockTranscriber;->speech$drain(Lcom/k2fsa/sherpa/onnx/Vad;[FLjava/util/List;)V

    add-int/lit16 v2, v2, 0x200

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/Vad;->flush()V

    invoke-static {v0, p1, v1}, Lru/localscribe/engine/BlockTranscriber;->speech$drain(Lcom/k2fsa/sherpa/onnx/Vad;[FLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/Vad;->release()V

    nop

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/analysis/SampleSpan;

    const/4 v10, 0x0

    invoke-direct {p0, v9}, Lru/localscribe/engine/BlockTranscriber;->splitBounded(Lru/localscribe/analysis/SampleSpan;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_1
    nop

    check-cast v4, Ljava/util/List;

    nop

    return-object v4

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/Vad;->release()V

    throw v2
.end method

.method private static final speech$drain(Lcom/k2fsa/sherpa/onnx/Vad;[FLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/k2fsa/sherpa/onnx/Vad;",
            "[F",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;)V"
        }
    .end annotation

    nop

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Vad;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Vad;->front()Lcom/k2fsa/sherpa/onnx/SpeechSegment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Vad;->pop()V

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SpeechSegment;->getStart()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SpeechSegment;->getStart()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SpeechSegment;->getSamples()[F

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    array-length v2, p1

    invoke-static {v1, v5, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    if-le v6, v5, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    new-instance v4, Lru/localscribe/analysis/SampleSpan;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final splitBounded(Lru/localscribe/analysis/SampleSpan;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/analysis/SampleSpan;",
            ")",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v3

    move v5, v3

    :goto_0
    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v3

    if-ge v5, v3, :cond_0

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v3

    const v4, 0x3a980

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v4, Lru/localscribe/analysis/SampleSpan;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    goto :goto_0

    :cond_0
    nop

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    nop

    :try_start_0
    iget-object v0, p0, Lru/localscribe/engine/BlockTranscriber;->neural:Lru/localscribe/engine/NeuralDiarizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/localscribe/engine/NeuralDiarizer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v0}, Lru/localscribe/analysis/AdvancedModels;->close()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v1}, Lru/localscribe/analysis/AdvancedModels;->close()V

    throw v0
.end method

.method public final process([F[FIJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 107
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FIJJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v6, p4

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v0}, Lru/localscribe/analysis/AdvancedModels;->releaseHeavy()V

    const/4 v0, 0x0

    invoke-interface/range {p10 .. p10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    move-object v13, v5

    new-instance v0, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda2;

    invoke-direct {v0, v13}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda2;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    move-object v14, v0

    const-string v0, "\u041e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432 \u0438 \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0439 \u0440\u0435\u0447\u0438"

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    const/16 v15, 0xa

    if-eqz v0, :cond_1

    array-length v8, v1

    invoke-virtual {v0, v6, v7, v8}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    move-object v10, v0

    const/16 v16, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    check-cast v19, Lru/localscribe/core/VoiceTurn;

    const/16 v20, 0x0

    new-instance v15, Lru/localscribe/engine/NeuralTurn;

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v22

    sub-long v5, v22, p4

    long-to-int v5, v5

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v22

    move v6, v8

    sub-long v7, v22, p4

    long-to-int v7, v7

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v8

    move-object/from16 v22, v0

    const/4 v0, 0x0

    invoke-direct {v15, v5, v7, v8, v0}, Lru/localscribe/engine/NeuralTurn;-><init>(IIILjava/lang/Float;)V

    invoke-interface {v9, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v8, v6

    move-object/from16 v0, v22

    const/16 v15, 0xa

    move-wide/from16 v6, p4

    goto :goto_0

    :cond_0
    move-object/from16 v22, v0

    move v6, v8

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    nop

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->neural:Lru/localscribe/engine/NeuralDiarizer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v5, v1

    new-instance v6, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda3;

    invoke-direct {v6, v13}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda3;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Lru/localscribe/engine/NeuralDiarizer;->turns([FIILkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object v0

    :goto_1
    nop

    move-object/from16 v20, v0

    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const v0, 0x3e0f5c29    # 0.14f

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-nez v0, :cond_2

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v0, v3, v14}, Lru/localscribe/analysis/AdvancedModels;->overlaps([FLkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v8

    const/4 v15, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    move-object/from16 v18, v13

    const/4 v13, 0x0

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v17

    const/16 v22, 0x0

    move-object/from16 v23, v19

    check-cast v23, Lru/localscribe/analysis/SampleSpan;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v23}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v25

    sub-int v7, v25, v4

    move-object/from16 v25, v0

    array-length v0, v1

    invoke-static {v7, v13, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual/range {v23 .. v23}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v7

    sub-int/2addr v7, v4

    move/from16 v27, v5

    array-length v5, v1

    invoke-static {v7, v13, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    if-le v5, v0, :cond_3

    new-instance v7, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v23 .. v23}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v13

    invoke-direct {v7, v0, v5, v13}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;)V

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v13, v18

    move-object/from16 v0, v25

    move/from16 v5, v27

    goto :goto_3

    :cond_5
    move-object/from16 v25, v0

    move/from16 v27, v5

    nop

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    nop

    nop

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Iterable;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Lru/localscribe/engine/NeuralTurn;

    const/16 v17, 0x0

    move-object/from16 v19, v20

    check-cast v19, Ljava/lang/Iterable;

    nop

    const/16 v23, 0x0

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v24

    check-cast v15, Ljava/util/Collection;

    move-object/from16 v24, v19

    const/16 v27, 0x0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v30, v13

    check-cast v30, Lru/localscribe/engine/NeuralTurn;

    const/16 v31, 0x0

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v30}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v0

    move/from16 v33, v5

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v5

    if-le v0, v5, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_7

    invoke-interface {v15, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, v32

    move/from16 v5, v33

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v32, v0

    move/from16 v33, v5

    move-object v0, v15

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v5, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    move-object v15, v0

    const/16 v19, 0x0

    move-object/from16 v23, v15

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v27

    const/16 v30, 0x0

    move-object/from16 v31, v28

    check-cast v31, Lru/localscribe/engine/NeuralTurn;

    const/16 v34, 0x0

    move-object/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v0

    move/from16 v36, v5

    invoke-virtual/range {v31 .. v31}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v0

    invoke-virtual/range {v31 .. v31}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v39

    sub-int v0, v39, v38

    const/16 v5, 0xc80

    if-lt v0, v5, :cond_9

    new-instance v37, Lru/localscribe/analysis/SampleSpan;

    const/16 v41, 0x4

    const/16 v42, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v37 .. v42}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    :cond_9
    const/16 v37, 0x0

    :goto_9
    if-eqz v37, :cond_a

    move-object/from16 v0, v37

    const/4 v5, 0x0

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, v35

    move/from16 v5, v36

    goto :goto_8

    :cond_b
    move-object/from16 v35, v0

    move/from16 v36, v5

    nop

    move-object v0, v13

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    nop

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, v32

    move/from16 v5, v33

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_c
    move-object/from16 v32, v0

    move/from16 v33, v5

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    nop

    nop

    move-object/from16 v23, v0

    sget-object v0, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    move-object/from16 v5, v22

    check-cast v5, Ljava/util/Collection;

    move-object/from16 v6, v23

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    const/4 v13, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v13, v7}, Lru/localscribe/analysis/AnalysisMath;->merge$default(Lru/localscribe/analysis/AnalysisMath;Ljava/util/List;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Iterable;

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v17

    check-cast v19, Lru/localscribe/engine/NeuralTurn;

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    nop

    move-object v7, v8

    check-cast v7, Ljava/util/List;

    nop

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object/from16 v7, v20

    check-cast v7, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object/from16 v16, v7

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v27, v13

    check-cast v27, Lru/localscribe/engine/NeuralTurn;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v8

    if-ne v8, v6, :cond_e

    const/4 v8, 0x1

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_f

    invoke-interface {v10, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v13, 0x2

    goto :goto_c

    :cond_10
    nop

    move-object v8, v10

    check-cast v8, Ljava/util/List;

    nop

    nop

    move-object/from16 v7, v20

    check-cast v7, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object v13, v7

    const/16 v16, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lru/localscribe/engine/NeuralTurn;

    const/16 v28, 0x0

    move-object/from16 v31, v7

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v7

    if-eq v7, v6, :cond_11

    const/4 v7, 0x1

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_f
    if-eqz v7, :cond_12

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v0, v19

    move-object/from16 v7, v31

    goto :goto_e

    :cond_13
    move-object/from16 v19, v0

    move-object/from16 v31, v7

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v7, 0x0

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    move-object v10, v0

    const/4 v13, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v27, v17

    check-cast v27, Lru/localscribe/engine/NeuralTurn;

    const/16 v28, 0x0

    new-instance v31, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v32

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v33

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v31 .. v36}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v0

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    goto :goto_10

    :cond_14
    move-object/from16 v27, v0

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-eqz v7, :cond_19

    nop

    array-length v9, v1

    move-object/from16 v16, v14

    move-wide/from16 v13, p4

    invoke-virtual {v7, v13, v14, v9}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_18

    check-cast v7, Ljava/lang/Iterable;

    nop

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object/from16 v17, v7

    const/16 v27, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_11
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_16

    move-object/from16 v31, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lru/localscribe/core/VoiceTurn;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/core/VoiceTurn;->getUncertain()Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v0, v31

    goto :goto_11

    :cond_16
    move-object/from16 v31, v0

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v7, 0x0

    new-instance v9, Ljava/util/ArrayList;

    move/from16 v17, v6

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v9

    check-cast v6, Ljava/util/Collection;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_12
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v32, v28

    check-cast v32, Lru/localscribe/core/VoiceTurn;

    const/16 v33, 0x0

    new-instance v34, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v35

    move/from16 v41, v7

    move-object/from16 v40, v8

    sub-long v7, v35, v13

    long-to-int v7, v7

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v35

    move/from16 v37, v7

    sub-long v7, v35, v13

    long-to-int v7, v7

    const/16 v38, 0x4

    const/16 v39, 0x0

    move/from16 v35, v37

    const/16 v37, 0x0

    move/from16 v36, v7

    invoke-direct/range {v34 .. v39}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, v34

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v40

    move/from16 v7, v41

    goto :goto_12

    :cond_17
    move/from16 v41, v7

    move-object/from16 v40, v8

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    nop

    goto :goto_14

    :cond_18
    move-object/from16 v31, v0

    move/from16 v17, v6

    move-object/from16 v40, v8

    goto :goto_13

    :cond_19
    move-object/from16 v31, v0

    move/from16 v17, v6

    move-object/from16 v40, v8

    move-object/from16 v16, v14

    move-wide/from16 v13, p4

    :goto_13
    const/4 v7, 0x0

    :goto_14
    if-nez v7, :cond_1a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_1a
    move-object v0, v7

    move-object/from16 v6, v40

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    move-object v9, v6

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v32, v28

    check-cast v32, Lru/localscribe/engine/NeuralTurn;

    const/16 v33, 0x0

    move-object/from16 v34, v0

    sget-object v0, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    new-instance v41, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v42

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v43

    const/16 v45, 0x4

    const/16 v46, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v41 .. v46}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v35, v6

    move-object/from16 v6, v41

    move/from16 v36, v7

    move-object v7, v15

    check-cast v7, Ljava/util/Collection;

    move-object/from16 v37, v9

    move-object/from16 v9, v31

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    move-object/from16 v9, v34

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lru/localscribe/analysis/AnalysisMath;->subtract(Lru/localscribe/analysis/SampleSpan;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    nop

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, v34

    move-object/from16 v6, v35

    move/from16 v7, v36

    move-object/from16 v9, v37

    goto :goto_15

    :cond_1b
    move-object/from16 v34, v0

    move-object/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v37, v9

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1e

    move-object/from16 v27, v0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lru/localscribe/analysis/SampleSpan;

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v35

    move/from16 v36, v6

    sub-int v6, v33, v35

    move-object/from16 v33, v8

    const/16 v8, 0x12c0

    if-lt v6, v8, :cond_1c

    const/4 v6, 0x1

    goto :goto_17

    :cond_1c
    const/4 v6, 0x0

    :goto_17
    if-eqz v6, :cond_1d

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v0, v27

    move-object/from16 v8, v33

    move/from16 v6, v36

    goto :goto_16

    :cond_1e
    move-object/from16 v27, v0

    move/from16 v36, v6

    move-object/from16 v33, v8

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v6, 0x0

    new-instance v7, Lru/localscribe/engine/BlockTranscriber$process$$inlined$sortedByDescending$1;

    invoke-direct {v7}, Lru/localscribe/engine/BlockTranscriber$process$$inlined$sortedByDescending$1;-><init>()V

    check-cast v7, Ljava/util/Comparator;

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/localscribe/analysis/SampleSpan;

    nop

    const/4 v9, 0x0

    invoke-virtual {v8}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v10

    invoke-virtual {v8}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v27

    sub-int v10, v10, v27

    add-int/2addr v7, v10

    goto :goto_18

    :cond_1f
    const v6, 0x17700

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [F

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/localscribe/analysis/SampleSpan;

    array-length v10, v6

    sub-int/2addr v10, v7

    invoke-virtual {v9}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v27

    invoke-virtual {v9}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v28

    move-object/from16 v30, v0

    sub-int v0, v27, v28

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v9}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v10

    invoke-virtual {v9}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v27

    move/from16 v28, v0

    add-int v0, v27, v28

    invoke-static {v1, v6, v7, v10, v0}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    add-int v7, v7, v28

    array-length v0, v6

    if-ne v7, v0, :cond_20

    move v0, v7

    goto :goto_1a

    :cond_20
    move-object/from16 v0, v30

    goto :goto_19

    :cond_21
    move-object/from16 v30, v0

    move v0, v7

    :goto_1a
    array-length v7, v6

    const/16 v8, 0x3e80

    if-lt v7, v8, :cond_22

    iget-object v7, v2, Lru/localscribe/engine/BlockTranscriber;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v8, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda4;

    invoke-direct {v8, v2, v6}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda4;-><init>(Lru/localscribe/engine/BlockTranscriber;[F)V

    const-string v9, "voice.prototype"

    invoke-virtual {v7, v9, v8}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    goto :goto_1b

    :cond_22
    const/4 v7, 0x0

    :goto_1b
    nop

    move-object/from16 v42, v7

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    move-object v10, v7

    const/16 v27, 0x0

    move-object/from16 v28, v10

    const/16 v32, 0x0

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_1c
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_24

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v36, v35

    const/16 v37, 0x0

    move-object/from16 v38, v36

    check-cast v38, Lkotlin/Pair;

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v38}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual/range {v41 .. v41}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_23

    move-object/from16 v39, v38

    const/16 v38, 0x0

    move/from16 v48, v0

    move-object/from16 v0, v39

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_23
    move/from16 v48, v0

    :goto_1d
    move/from16 v0, v48

    goto :goto_1c

    :cond_24
    move/from16 v48, v0

    nop

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v44

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-eqz v0, :cond_2c

    if-gez v17, :cond_25

    new-instance v0, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v7, v7, v8}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    move-object/from16 v24, v6

    move-object/from16 v8, v42

    goto/16 :goto_22

    :cond_25
    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->timelineSpeakerIds:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "speaker_"

    if-nez v0, :cond_26

    add-int/lit8 v0, v17, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    iget-object v9, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v9}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v24, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_28

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v32, v28

    check-cast v32, Lru/localscribe/core/Speaker;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_1f

    :cond_27
    nop

    add-int/lit8 v24, v24, 0x1

    goto :goto_1e

    :cond_28
    const/4 v7, -0x1

    move/from16 v24, v7

    :goto_1f
    move/from16 v7, v24

    iget-object v9, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v9}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/localscribe/core/Speaker;

    if-nez v9, :cond_29

    new-instance v49, Lru/localscribe/core/Speaker;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    const/16 v63, 0x1ffc

    const/16 v64, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v50, v0

    invoke-direct/range {v49 .. v64}, Lru/localscribe/core/Speaker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, v49

    :cond_29
    nop

    move-object/from16 v49, v9

    if-nez v42, :cond_2a

    move-object/from16 v8, v49

    goto :goto_20

    :cond_2a
    nop

    invoke-static/range {v42 .. v42}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v52

    invoke-virtual/range {v49 .. v49}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v8

    const/16 v25, 0x1

    add-int/lit8 v53, v8, 0x1

    nop

    invoke-virtual/range {v49 .. v49}, Lru/localscribe/core/Speaker;->getVoiceSamples()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-static/range {v42 .. v42}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v61

    const/16 v63, 0x17f3

    const/16 v64, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    invoke-static/range {v49 .. v64}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v8

    :goto_20
    nop

    nop

    if-gez v7, :cond_2b

    iget-object v9, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v9}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2b
    iget-object v9, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v9}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_21
    new-instance v9, Lru/localscribe/core/SpeakerCluster$Match;

    move-object/from16 v24, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    move-object v0, v9

    move-object/from16 v8, v42

    goto :goto_22

    :cond_2c
    move-object/from16 v24, v6

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    const/16 v46, 0xa

    const/16 v47, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v47}, Lru/localscribe/core/SpeakerCluster;->assign$default(Lru/localscribe/core/SpeakerCluster;[FZLjava/util/Set;ZILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2d

    move-object/from16 v8, v42

    goto :goto_22

    :cond_2d
    iget-object v6, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    const/16 v45, 0x2

    const/16 v46, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v6

    invoke-static/range {v41 .. v46}, Lru/localscribe/core/SpeakerCluster;->provisional$default(Lru/localscribe/core/SpeakerCluster;[FLjava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v6

    move-object/from16 v8, v42

    move-object v0, v6

    :goto_22
    nop

    nop

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v6

    if-nez v6, :cond_2f

    move-object/from16 v6, v44

    check-cast v6, Ljava/lang/Iterable;

    const/4 v9, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v7, v27

    check-cast v7, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v32, v6

    iget-object v6, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    move/from16 v33, v9

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lru/localscribe/core/SpeakerCluster;->keepDistinct(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v32

    move/from16 v9, v33

    goto :goto_23

    :cond_2e
    move-object/from16 v32, v6

    move/from16 v33, v9

    :cond_2f
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v16

    move-object/from16 v0, v19

    const/4 v13, 0x2

    goto/16 :goto_b

    :cond_30
    move-object/from16 v16, v14

    const v6, 0x17700

    move-wide/from16 v13, p4

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/engine/NeuralTurn;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_25
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/localscribe/engine/NeuralTurn;

    invoke-virtual {v7}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v10

    invoke-virtual {v9}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v6

    if-eq v10, v6, :cond_33

    invoke-virtual {v7}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v6

    invoke-virtual {v9}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v10

    if-ge v6, v10, :cond_33

    invoke-virtual {v9}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v6

    invoke-virtual {v7}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v10

    if-ge v6, v10, :cond_33

    iget-object v6, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v7}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    if-eqz v10, :cond_31

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/localscribe/core/SpeakerCluster$Match;

    if-eqz v10, :cond_31

    invoke-virtual {v10}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v10, v24

    goto :goto_26

    :cond_31
    const/4 v10, 0x0

    :goto_26
    invoke-virtual {v9}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v17

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/SpeakerCluster$Match;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    goto :goto_27

    :cond_32
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v6, v10, v0}, Lru/localscribe/core/SpeakerCluster;->keepDistinct(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    const v6, 0x17700

    goto :goto_25

    :cond_33
    move-object/from16 v19, v0

    const v6, 0x17700

    goto :goto_25

    :cond_34
    move-object/from16 v19, v0

    const v6, 0x17700

    goto/16 :goto_24

    :cond_35
    const/4 v0, 0x0

    move-object v0, v15

    iget-object v6, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-nez v6, :cond_36

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    const/16 v25, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_36
    const/4 v6, 0x0

    :goto_28
    move-object v7, v0

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v6, :cond_43

    move v8, v0

    const/4 v9, 0x0

    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    const/16 v17, 0x0

    move/from16 v19, v0

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v24, v5

    move/from16 v27, v6

    const/16 v5, 0xa

    invoke-static {v10, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    move-object v5, v10

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_2a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_42

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v31

    check-cast v32, Lru/localscribe/analysis/SampleSpan;

    const/16 v33, 0x0

    move-object/from16 v34, v20

    check-cast v34, Ljava/lang/Iterable;

    const/16 v36, 0x0

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    check-cast v37, Ljava/util/Collection;

    move-object/from16 v38, v34

    move-object/from16 v39, v37

    const/16 v37, 0x0

    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_2b
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_39

    move-object/from16 v41, v5

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v42, v5

    check-cast v42, Lru/localscribe/engine/NeuralTurn;

    const/16 v43, 0x0

    move/from16 v44, v6

    invoke-virtual/range {v42 .. v42}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v6

    move/from16 v45, v8

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v8

    if-ge v6, v8, :cond_37

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v6

    invoke-virtual/range {v42 .. v42}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v8

    if-ge v6, v8, :cond_37

    const/4 v6, 0x1

    goto :goto_2c

    :cond_37
    const/4 v6, 0x0

    :goto_2c
    if-eqz v6, :cond_38

    move-object/from16 v6, v39

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_38
    move-object/from16 v6, v39

    :goto_2d
    move-object/from16 v5, v41

    move/from16 v6, v44

    move/from16 v8, v45

    goto :goto_2b

    :cond_39
    move-object/from16 v41, v5

    move/from16 v44, v6

    move/from16 v45, v8

    move-object/from16 v6, v39

    move-object v5, v6

    check-cast v5, Ljava/util/List;

    nop

    nop

    nop

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v6

    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_3a

    move-object/from16 v36, v5

    const/4 v5, 0x0

    goto :goto_2f

    :cond_3a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lru/localscribe/engine/NeuralTurn;

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v34}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v34

    check-cast v34, Ljava/lang/Comparable;

    move-object/from16 v36, v5

    move-object/from16 v5, v34

    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lru/localscribe/engine/NeuralTurn;

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v34}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v37, v8

    move-object/from16 v8, v34

    check-cast v8, Ljava/lang/Comparable;

    invoke-interface {v5, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v34

    if-lez v34, :cond_3b

    move-object v5, v8

    :cond_3b
    move-object/from16 v8, v37

    goto :goto_2e

    :cond_3c
    :goto_2f
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_30

    :cond_3d
    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v5

    :goto_30
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v6

    move-object/from16 v8, v36

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_3e

    move/from16 v38, v9

    const/4 v8, 0x0

    goto :goto_32

    :cond_3e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lru/localscribe/engine/NeuralTurn;

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v34}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v34

    check-cast v34, Ljava/lang/Comparable;

    move-object/from16 v37, v8

    move-object/from16 v8, v34

    :goto_31
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_40

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lru/localscribe/engine/NeuralTurn;

    const/16 v38, 0x0

    invoke-virtual/range {v34 .. v34}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v34

    move/from16 v38, v9

    move-object/from16 v9, v34

    check-cast v9, Ljava/lang/Comparable;

    invoke-interface {v8, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v34

    if-gez v34, :cond_3f

    move-object v8, v9

    :cond_3f
    move/from16 v9, v38

    goto :goto_31

    :cond_40
    move/from16 v38, v9

    :goto_32
    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_41

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_33

    :cond_41
    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v8

    :goto_33
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v8

    new-instance v9, Lru/localscribe/analysis/SampleSpan;

    invoke-direct {v9, v5, v6, v8}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;)V

    nop

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v9, v38

    move-object/from16 v5, v41

    move/from16 v6, v44

    move/from16 v8, v45

    goto/16 :goto_2a

    :cond_42
    move-object/from16 v41, v5

    move/from16 v44, v6

    move/from16 v45, v8

    move/from16 v38, v9

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    sget-object v5, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-static {v5, v0, v6, v8, v10}, Lru/localscribe/analysis/AnalysisMath;->merge$default(Lru/localscribe/analysis/AnalysisMath;Ljava/util/List;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    nop

    add-int/lit8 v0, v19, 0x1

    move-object/from16 v5, v24

    move/from16 v6, v27

    goto/16 :goto_29

    :cond_43
    move-object/from16 v24, v5

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v5, v0

    move-wide/from16 v13, p6

    iput-wide v13, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v19

    check-cast v6, Ljava/util/Collection;

    move-object/from16 v19, v0

    const/16 v26, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_34
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_46

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v8, v28

    check-cast v8, Lru/localscribe/engine/NeuralTurn;

    const/16 v32, 0x0

    sget-object v10, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    new-instance v36, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {v8}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v37

    invoke-virtual {v8}, Lru/localscribe/engine/NeuralTurn;->getEnd()I

    move-result v38

    const/16 v40, 0x4

    const/16 v41, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v36 .. v41}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    move-object/from16 v0, v36

    invoke-virtual {v10, v0, v7}, Lru/localscribe/analysis/AnalysisMath;->subtract(Lru/localscribe/analysis/SampleSpan;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v10, 0x0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    check-cast v34, Ljava/util/Collection;

    move-object/from16 v36, v0

    move-object/from16 v37, v34

    const/16 v34, 0x0

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :goto_35
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_44

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    check-cast v0, Lru/localscribe/analysis/SampleSpan;

    const/16 v41, 0x0

    invoke-direct {v2, v0}, Lru/localscribe/engine/BlockTranscriber;->splitBounded(Lru/localscribe/analysis/SampleSpan;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    move-object/from16 v41, v5

    move-object/from16 v5, v37

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, v40

    move-object/from16 v5, v41

    goto :goto_35

    :cond_44
    move-object/from16 v40, v0

    move-object/from16 v41, v5

    move-object/from16 v5, v37

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v5, 0x0

    new-instance v10, Ljava/util/ArrayList;

    move/from16 v21, v5

    move/from16 v34, v9

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    check-cast v5, Ljava/util/Collection;

    move-object v10, v0

    const/16 v36, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_36
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_45

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v9, v38

    check-cast v9, Lru/localscribe/analysis/SampleSpan;

    const/16 v40, 0x0

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v9, 0xa

    goto :goto_36

    :cond_45
    nop

    check-cast v5, Ljava/util/List;

    nop

    check-cast v5, Ljava/lang/Iterable;

    nop

    nop

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, v33

    move/from16 v9, v34

    move-object/from16 v5, v41

    const/4 v8, 0x2

    const/4 v10, 0x0

    goto/16 :goto_34

    :cond_46
    move-object/from16 v33, v0

    move-object/from16 v41, v5

    move/from16 v34, v9

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    nop

    nop

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result v0

    const v26, 0x3f7851ec    # 0.97f

    if-eqz v0, :cond_47

    const v0, 0x3f47ae14    # 0.78f

    goto :goto_37

    :cond_47
    move/from16 v0, v26

    :goto_37
    move v6, v0

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v8, v0

    sget-object v0, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    move v9, v5

    sget-object v5, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    move v10, v9

    const/4 v9, 0x2

    move/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v27, v8

    const/4 v8, 0x0

    move/from16 v66, v6

    move/from16 v65, v19

    move-object/from16 v14, v24

    move-object/from16 v67, v27

    const/4 v13, 0x0

    const/16 v29, 0x0

    const v30, 0x17700

    const/16 v31, 0x2

    const/16 v39, 0xa

    move-object/from16 v24, v7

    move-wide/from16 v6, p4

    invoke-static/range {v5 .. v10}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v8

    const/16 v5, 0x2e

    invoke-virtual {v0, v8, v9, v5}, Lru/localscribe/core/Timecode;->subtitle(JC)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0420\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0432\u0430\u043d\u0438\u0435 \u0440\u0435\u0447\u0438 \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-interface {v11, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-eqz v0, :cond_69

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v0

    sget-object v7, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-eq v0, v7, :cond_69

    array-length v0, v1

    array-length v7, v3

    invoke-static {v0, v4, v7}, Lru/localscribe/engine/ContextAsrWindowKt;->contextAsrWindows(III)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v27, v7

    check-cast v27, Lru/localscribe/engine/ContextAsrWindow;

    invoke-interface/range {v16 .. v16}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/ContextAsrWindow;->getBegin()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/ContextAsrWindow;->getEnd()I

    move-result v9

    sub-int v7, v9, v8

    iget-object v10, v2, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/ContextAsrWindow;->getAudioBegin()I

    move-result v13

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/ContextAsrWindow;->getAudioEnd()I

    move-result v6

    invoke-static {v3, v13, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v6

    sget-object v42, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    invoke-virtual/range {v27 .. v27}, Lru/localscribe/engine/ContextAsrWindow;->getAudioBegin()I

    move-result v13

    int-to-long v11, v13

    add-long v11, p4, v11

    move-wide/from16 v32, v11

    int-to-long v11, v4

    sub-long v43, v32, v11

    const/16 v46, 0x2

    const/16 v47, 0x0

    const/16 v45, 0x0

    invoke-static/range {v42 .. v47}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v10, v6, v11, v12}, Lru/localscribe/engine/Engines;->recognize([FJ)Lkotlin/Pair;

    move-result-object v6

    move-object/from16 v28, v6

    sget-object v6, Lru/localscribe/core/TranscriptMerger;->INSTANCE:Lru/localscribe/core/TranscriptMerger;

    invoke-virtual/range {v28 .. v28}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v6, v10}, Lru/localscribe/core/TranscriptMerger;->words(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    move-object v12, v6

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_39
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_4b

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Lru/localscribe/core/WordStamp;

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v34}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v37

    move-object/from16 v19, v5

    const/16 v3, 0x10

    int-to-long v4, v3

    mul-long v37, v37, v4

    move-wide/from16 v42, v4

    int-to-long v3, v8

    add-long v3, p4, v3

    cmp-long v3, v37, v3

    if-ltz v3, :cond_49

    invoke-virtual/range {v34 .. v34}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v3

    mul-long v3, v3, v42

    move-wide/from16 v37, v3

    int-to-long v3, v9

    add-long v3, p4, v3

    cmp-long v3, v37, v3

    if-gez v3, :cond_49

    const/4 v3, 0x1

    goto :goto_3a

    :cond_49
    move/from16 v3, v29

    :goto_3a
    if-eqz v3, :cond_4a

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4a
    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, v19

    move-object/from16 v0, v33

    goto :goto_39

    :cond_4b
    move-object/from16 v33, v0

    move-object/from16 v19, v5

    move-object v0, v11

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    invoke-virtual/range {v28 .. v28}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual/range {v28 .. v28}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, v2, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-static {v1, v8, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v4

    sget-object v42, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v5, v8

    add-long v43, p4, v5

    const/16 v46, 0x2

    const/16 v47, 0x0

    const/16 v45, 0x0

    invoke-static/range {v42 .. v47}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lru/localscribe/engine/Engines;->recognize([FJ)Lkotlin/Pair;

    move-result-object v3

    nop

    sget-object v42, Lru/localscribe/core/WordSpeakers;->INSTANCE:Lru/localscribe/core/WordSpeakers;

    sget-object v43, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v4, v8

    add-long v44, p4, v4

    const/16 v47, 0x2

    const/16 v48, 0x0

    const/16 v46, 0x0

    invoke-static/range {v43 .. v48}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v43

    sget-object v45, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v4, v9

    add-long v46, p4, v4

    const/16 v49, 0x2

    const/16 v50, 0x0

    const/16 v48, 0x0

    invoke-static/range {v45 .. v50}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v45

    iget-object v4, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    int-to-long v5, v8

    add-long v5, p4, v5

    invoke-virtual {v4, v5, v6, v7}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v47

    invoke-virtual/range {v42 .. v47}, Lru/localscribe/core/WordSpeakers;->assign(JJLjava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v1, v8, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v10

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/localscribe/core/SpeakerCluster$Match;

    if-nez v5, :cond_4c

    goto :goto_3b

    :cond_4c
    const/4 v6, 0x1

    const/4 v13, 0x0

    goto :goto_3c

    :cond_4d
    :goto_3b
    new-instance v5, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v6, 0x1

    const/4 v13, 0x0

    invoke-direct {v5, v13, v13, v6}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    :goto_3c
    move-object v11, v5

    nop

    nop

    move v5, v7

    move-object v7, v15

    if-nez v4, :cond_4e

    move v15, v6

    goto :goto_3d

    :cond_4e
    move/from16 v15, v29

    :goto_3d
    nop

    move-object/from16 v12, v18

    const v18, 0x9800

    move-object/from16 v25, v19

    const/16 v19, 0x0

    move-object/from16 v28, v12

    const/4 v12, 0x0

    move-object/from16 v35, v13

    const/4 v13, 0x0

    move-object/from16 v32, v14

    const/4 v14, 0x0

    move-object/from16 v1, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    const/16 v17, 0x0

    move-object/from16 v31, v0

    move/from16 v29, v5

    move-object/from16 v70, v25

    move-object/from16 v25, v28

    move-object/from16 v69, v32

    move-object/from16 v6, v41

    const/16 v0, 0x10

    move-object/from16 v28, v4

    move-wide/from16 v4, p4

    invoke-static/range {v1 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V

    move v4, v8

    move v5, v9

    move/from16 v4, p3

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object v15, v7

    move-object/from16 v18, v25

    move-object/from16 v0, v33

    move-object/from16 v14, v69

    move-object/from16 v5, v70

    const/4 v13, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x2

    const/16 v39, 0xa

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    goto/16 :goto_38

    :cond_4f
    move-object/from16 v31, v0

    move/from16 v29, v7

    move v4, v8

    move v5, v9

    move-object/from16 v69, v14

    move-object v7, v15

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v25, v18

    move-object/from16 v70, v19

    move-object/from16 v6, v41

    const/16 v0, 0x10

    move-object/from16 v8, v31

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_59

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v18, v15, 0x1

    if-gez v15, :cond_50

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_50
    move-object/from16 v19, v17

    const/16 v32, 0x0

    move-object/from16 v0, v19

    check-cast v0, Lru/localscribe/core/WordStamp;

    move/from16 v34, v15

    const/16 v35, 0x0

    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v36

    move-object/from16 v38, v1

    move-object/from16 v41, v6

    move-object/from16 v39, v7

    const/16 v1, 0x10

    int-to-long v6, v1

    mul-long v36, v36, v6

    move-wide/from16 v42, v6

    sub-long v6, v36, p4

    long-to-int v1, v6

    invoke-static {v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    nop

    add-int/lit8 v6, v34, 0x1

    move-object/from16 v7, v31

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/localscribe/core/WordStamp;

    if-eqz v6, :cond_51

    invoke-virtual {v6}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v36

    move-object/from16 v31, v7

    move-wide/from16 v6, v36

    goto :goto_3f

    :cond_51
    sget-object v44, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    move-object/from16 v31, v7

    int-to-long v6, v5

    add-long v45, p4, v6

    const/16 v48, 0x2

    const/16 v49, 0x0

    const/16 v47, 0x0

    invoke-static/range {v44 .. v49}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v36

    move-wide/from16 v6, v36

    :goto_3f
    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v36

    move-object/from16 v44, v3

    const/16 v3, 0x258

    move-object/from16 v45, v8

    move/from16 v46, v9

    int-to-long v8, v3

    add-long v8, v36, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v8

    const-wide/16 v36, 0x1

    add-long v8, v8, v36

    invoke-static {v6, v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    move-wide/from16 v50, v6

    move-object/from16 v3, v24

    check-cast v3, Ljava/lang/Iterable;

    const/4 v6, 0x0

    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_52

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_52

    const/4 v3, 0x0

    goto :goto_42

    :cond_52
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/analysis/SampleSpan;

    const/16 v36, 0x0

    move-object/from16 v37, v3

    invoke-virtual {v9}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v3

    if-lt v1, v3, :cond_53

    invoke-virtual {v9}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v3

    if-ge v1, v3, :cond_53

    const/4 v3, 0x1

    goto :goto_41

    :cond_53
    const/4 v3, 0x0

    :goto_41
    if-eqz v3, :cond_54

    const/4 v3, 0x1

    goto :goto_42

    :cond_54
    move-object/from16 v3, v37

    goto :goto_40

    :cond_55
    move-object/from16 v37, v3

    const/4 v3, 0x0

    :goto_42
    if-eqz v3, :cond_56

    move-wide/from16 v7, v50

    const/4 v3, 0x0

    goto :goto_43

    :cond_56
    iget-object v3, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v6

    mul-long v6, v6, v42

    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v8

    sub-long v8, v50, v8

    mul-long v8, v8, v42

    long-to-int v8, v8

    invoke-virtual {v3, v6, v7, v8}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v52

    nop

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    move-wide/from16 v7, v50

    const/4 v3, 0x0

    goto :goto_43

    :cond_57
    new-instance v3, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    nop

    nop

    sget-object v47, Lru/localscribe/core/WordSpeakers;->INSTANCE:Lru/localscribe/core/WordSpeakers;

    invoke-virtual {v0}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v48

    invoke-virtual/range {v47 .. v52}, Lru/localscribe/core/WordSpeakers;->assign(JJLjava/util/List;)Ljava/lang/Integer;

    move-result-object v6

    move-wide/from16 v7, v50

    invoke-direct {v3, v0, v7, v8, v6}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;-><init>(Lru/localscribe/core/WordStamp;JLjava/lang/Integer;)V

    :goto_43
    nop

    if-eqz v3, :cond_58

    const/4 v0, 0x0

    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_58
    move/from16 v15, v18

    move-object/from16 v1, v38

    move-object/from16 v7, v39

    move-object/from16 v6, v41

    move-object/from16 v3, v44

    move-object/from16 v8, v45

    move/from16 v9, v46

    const/16 v0, 0x10

    goto/16 :goto_3e

    :cond_59
    move-object/from16 v38, v1

    move-object/from16 v44, v3

    move-object/from16 v41, v6

    move-object/from16 v39, v7

    move-object/from16 v45, v8

    move/from16 v46, v9

    nop

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v1

    check-cast v32, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    invoke-static/range {v32 .. v32}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_5a

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    goto :goto_45

    :cond_5a
    const/4 v6, 0x0

    :goto_45
    nop

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getSpeaker()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getSpeaker()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v3}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getWord()Lru/localscribe/core/WordStamp;

    move-result-object v7

    invoke-virtual {v7}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v7

    invoke-virtual {v6}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getEndMs()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x258

    cmp-long v7, v7, v9

    if-lez v7, :cond_5b

    goto :goto_46

    :cond_5b
    invoke-static/range {v32 .. v32}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_5c
    :goto_46
    move-object/from16 v7, v32

    check-cast v7, Ljava/util/Collection;

    const/4 v8, 0x1

    new-array v9, v8, [Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    const/16 v68, 0x0

    aput-object v3, v9, v68

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_5d
    const/4 v8, 0x1

    const/16 v68, 0x0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_47
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Ljava/util/List;

    invoke-static/range {v35 .. v35}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getWord()Lru/localscribe/core/WordStamp;

    move-result-object v1

    invoke-virtual {v1}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v6

    const/16 v1, 0x10

    int-to-long v9, v1

    mul-long/2addr v6, v9

    sub-long v6, v6, p4

    long-to-int v1, v6

    invoke-static {v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    nop

    invoke-static/range {v35 .. v35}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    invoke-virtual {v3}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getEndMs()J

    move-result-wide v6

    mul-long/2addr v6, v9

    sub-long v6, v6, p4

    long-to-int v3, v6

    invoke-static {v3, v1, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    nop

    if-le v9, v1, :cond_65

    invoke-virtual/range {v28 .. v28}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5e
    :goto_48
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_60

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lru/localscribe/core/TokenStamp;

    const/4 v15, 0x0

    invoke-virtual {v14}, Lru/localscribe/core/TokenStamp;->getEmissionMs()J

    move-result-wide v16

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getWord()Lru/localscribe/core/WordStamp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-ltz v16, :cond_5f

    invoke-virtual {v14}, Lru/localscribe/core/TokenStamp;->getEmissionMs()J

    move-result-wide v16

    invoke-static/range {v35 .. v35}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getEndMs()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gez v16, :cond_5f

    move v14, v8

    goto :goto_49

    :cond_5f
    move/from16 v14, v68

    :goto_49
    if-eqz v14, :cond_5e

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_60
    nop

    check-cast v7, Ljava/util/List;

    nop

    nop

    move-object v3, v7

    nop

    nop

    nop

    move-object/from16 v6, p1

    invoke-static {v6, v1, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v10

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getSpeaker()Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v11, v69

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    if-eqz v7, :cond_62

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/SpeakerCluster$Match;

    if-nez v7, :cond_61

    goto :goto_4a

    :cond_61
    const/4 v12, 0x0

    goto :goto_4b

    :cond_62
    :goto_4a
    new-instance v7, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v12, 0x0

    invoke-direct {v7, v12, v12, v8}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    :goto_4b
    nop

    nop

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getSpeaker()Ljava/lang/Integer;

    move-result-object v13

    if-nez v13, :cond_63

    move v15, v8

    goto :goto_4c

    :cond_63
    move/from16 v15, v68

    :goto_4c
    move-object/from16 v45, v35

    check-cast v45, Ljava/lang/Iterable;

    const-string v13, " "

    move-object/from16 v46, v13

    check-cast v46, Ljava/lang/CharSequence;

    new-instance v51, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda5;

    invoke-direct/range {v51 .. v51}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda5;-><init>()V

    const/16 v52, 0x1e

    const/16 v53, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-static/range {v45 .. v53}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    move-object/from16 v13, v35

    check-cast v13, Ljava/lang/Iterable;

    const/4 v14, 0x0

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const/16 v12, 0xa

    invoke-static {v13, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    move-object v8, v13

    const/16 v17, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_64

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v42, v19

    check-cast v42, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v42}, Lru/localscribe/engine/BlockTranscriber$process$AttributedWord;->getWord()Lru/localscribe/core/WordStamp;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v12, 0xa

    goto :goto_4d

    :cond_64
    nop

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    nop

    const/16 v18, 0x1800

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v8, v1

    move-object/from16 v75, v11

    move-object/from16 v1, v38

    move-object/from16 v6, v41

    const/4 v0, 0x0

    move/from16 v41, v4

    move-object v11, v7

    move-object/from16 v38, v31

    move-object/from16 v7, v39

    move-object/from16 v39, v3

    move/from16 v31, v5

    move-object/from16 v3, v44

    move-wide/from16 v4, p4

    invoke-static/range {v1 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V

    move-object/from16 v2, p0

    move-object/from16 v39, v7

    move/from16 v5, v31

    move-object/from16 v0, v37

    move-object/from16 v31, v38

    move/from16 v4, v41

    move-object/from16 v69, v75

    const/4 v8, 0x1

    const/16 v68, 0x0

    move-object/from16 v38, v1

    move-object/from16 v41, v6

    goto/16 :goto_47

    :cond_65
    move-object/from16 v37, v0

    move v8, v1

    move-object/from16 v1, v38

    move-object/from16 v7, v39

    move-object/from16 v6, v41

    move-object/from16 v3, v44

    move-object/from16 v75, v69

    const/4 v0, 0x0

    move/from16 v41, v4

    move-object/from16 v38, v31

    move/from16 v31, v5

    move-object/from16 v2, p0

    move-object/from16 v0, v37

    move-object/from16 v31, v38

    const/4 v8, 0x1

    const/16 v68, 0x0

    move-object/from16 v38, v1

    move-object/from16 v41, v6

    goto/16 :goto_47

    :cond_66
    move-object/from16 v37, v0

    move-object/from16 v1, v38

    move-object/from16 v7, v39

    move-object/from16 v6, v41

    move-object/from16 v3, v44

    move-object/from16 v75, v69

    const/4 v0, 0x0

    move/from16 v41, v4

    move-object/from16 v38, v31

    move/from16 v31, v5

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v41, v6

    move-object v15, v7

    move-object/from16 v18, v25

    move-object/from16 v0, v33

    move-object/from16 v5, v70

    move-object/from16 v14, v75

    const/16 v29, 0x0

    const/16 v31, 0x2

    const/16 v39, 0xa

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    goto/16 :goto_38

    :cond_67
    move-object/from16 v70, v5

    move-object v0, v13

    move-object/from16 v75, v14

    move-object v7, v15

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v25, v18

    move-object/from16 v6, v41

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x0

    :goto_4e
    if-ge v13, v2, :cond_68

    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v8, p9

    move/from16 v9, v65

    move/from16 v10, v66

    move-object/from16 v11, v67

    invoke-static {v11, v8, v10, v9}, Lru/localscribe/engine/BlockTranscriber;->process$speechDone(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;FI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4e

    :cond_68
    move-object/from16 v8, p9

    move/from16 v9, v65

    move/from16 v10, v66

    move-object/from16 v11, v67

    move-object/from16 v2, p0

    move-object v4, v8

    move v5, v9

    move v8, v10

    move-object v9, v11

    move-object/from16 v69, v75

    goto/16 :goto_50

    :cond_69
    move-object/from16 v70, v5

    move-object v8, v12

    move-object v0, v13

    move-object/from16 v75, v14

    move-object v7, v15

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v25, v18

    move-object/from16 v6, v41

    move/from16 v9, v65

    move/from16 v10, v66

    move-object/from16 v11, v67

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_4f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    check-cast v28, Lru/localscribe/engine/NeuralTurn;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v75

    invoke-static {v4, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [F

    nop

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v8

    move/from16 v65, v9

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v9

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v2

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v13

    move-object/from16 v14, p1

    invoke-static {v14, v2, v13}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v2

    nop

    nop

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/engine/NeuralTurn;->getSilhouette()Ljava/lang/Float;

    move-result-object v13

    const v18, 0xf000

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v69, v4

    move/from16 v79, v10

    move-object/from16 v80, v11

    move/from16 v78, v65

    move-object v10, v2

    move-object v11, v5

    move-object/from16 v2, p0

    move-wide/from16 v4, p4

    invoke-static/range {v1 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V

    move-object/from16 v4, p9

    move/from16 v5, v78

    move/from16 v8, v79

    move-object/from16 v9, v80

    invoke-static {v9, v4, v8, v5}, Lru/localscribe/engine/BlockTranscriber;->process$speechDone(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;FI)V

    move v10, v8

    move-object v11, v9

    move-object/from16 v75, v69

    move-object v8, v4

    move v9, v5

    goto/16 :goto_4f

    :cond_6a
    move-object/from16 v2, p0

    move-object v4, v8

    move v5, v9

    move v8, v10

    move-object v9, v11

    move-object/from16 v69, v75

    :goto_50
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_51
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_81

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v28, v10

    check-cast v28, Lru/localscribe/analysis/SampleSpan;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v10

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v11

    move-object/from16 v12, p1

    invoke-static {v12, v10, v11}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v10

    iget-object v11, v2, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v11}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v11

    invoke-virtual {v11}, Lru/localscribe/core/Settings;->getRunSeparation()Z

    move-result v11

    if-eqz v11, :cond_6b

    const-string v11, "\u0420\u0430\u0437\u0434\u0435\u043b\u0435\u043d\u0438\u0435 \u043d\u0430\u043b\u043e\u0436\u0435\u043d\u043d\u044b\u0445 \u0433\u043e\u043b\u043e\u0441\u043e\u0432"

    move-object/from16 v13, p8

    invoke-interface {v13, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v2, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v11}, Lru/localscribe/engine/Engines;->releaseOffline()V

    nop

    :try_start_0
    iget-object v11, v2, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v11, v10, v1}, Lru/localscribe/analysis/AdvancedModels;->separate([FLkotlin/jvm/functions/Function0;)Lru/localscribe/analysis/AdvancedModels$Separated;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v14, v2, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v14}, Lru/localscribe/analysis/AdvancedModels;->releaseHeavy()V

    nop

    goto :goto_52

    :catchall_0
    move-exception v0

    iget-object v11, v2, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-virtual {v11}, Lru/localscribe/analysis/AdvancedModels;->releaseHeavy()V

    throw v0

    :cond_6b
    move-object/from16 v13, p8

    new-instance v31, Lru/localscribe/analysis/AdvancedModels$Separated;

    const/16 v36, 0xc

    const/16 v37, 0x0

    const/16 v32, 0x0

    const-string v33, "disabled_fast_profile"

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v37}, Lru/localscribe/analysis/AdvancedModels$Separated;-><init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v11, v31

    :goto_52
    nop

    move-object/from16 v29, v11

    move-object/from16 v11, v70

    invoke-interface {v13, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/AdvancedModels$Separated;->getSources()[[F

    move-result-object v31

    if-nez v31, :cond_6d

    invoke-direct {v2, v10}, Lru/localscribe/engine/BlockTranscriber;->speech([F)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_53
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v33, v14

    check-cast v33, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v14

    invoke-virtual/range {v33 .. v33}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v15

    invoke-virtual/range {v33 .. v33}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {v33 .. v33}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v0

    move-object/from16 v16, v1

    invoke-virtual/range {v33 .. v33}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v1

    invoke-static {v10, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v0

    new-instance v41, Lru/localscribe/core/SpeakerCluster$Match;

    const/16 v45, 0x4

    const/16 v46, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v41 .. v46}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    nop

    nop

    nop

    const v18, 0xd800

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v79, v8

    move v8, v14

    const/4 v14, 0x0

    move-object/from16 v80, v9

    move v9, v15

    const/4 v15, 0x1

    move-object/from16 v1, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v81, v5

    move-object/from16 v84, v10

    move-object/from16 v70, v11

    move-object/from16 v11, v41

    move/from16 v82, v79

    move-object/from16 v83, v80

    move-wide/from16 v4, p4

    move-object v10, v0

    invoke-static/range {v1 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V

    move-object/from16 v12, p1

    move-object/from16 v13, p8

    move-object/from16 v4, p9

    move-object/from16 v11, v70

    move/from16 v5, v81

    move/from16 v8, v82

    move-object/from16 v9, v83

    move-object/from16 v10, v84

    const/4 v0, 0x0

    goto :goto_53

    :cond_6c
    move/from16 v81, v5

    move/from16 v82, v8

    move-object/from16 v83, v9

    move-object/from16 v84, v10

    move-object/from16 v70, v11

    move-object/from16 v4, p9

    invoke-static {v9, v4, v8, v5}, Lru/localscribe/engine/BlockTranscriber;->process$speechDone(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;FI)V

    const/4 v0, 0x0

    goto/16 :goto_51

    :cond_6d
    move-object/from16 v84, v10

    move-object/from16 v70, v11

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v10

    int-to-long v10, v10

    add-long v10, p4, v10

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v12

    int-to-long v12, v12

    add-long v12, p4, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ":overlap:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v32, v10

    check-cast v32, Ljava/util/Set;

    move-object/from16 v10, v31

    check-cast v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v10

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    move-object v13, v10

    const/4 v14, 0x0

    array-length v15, v13

    move-object/from16 v33, v0

    const/4 v0, 0x0

    :goto_54
    if-ge v0, v15, :cond_6e

    aget-object v16, v13, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, [F

    const/16 v18, 0x0

    invoke-direct {v2, v0}, Lru/localscribe/engine/BlockTranscriber;->speech([F)Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v17, 0x1

    goto :goto_54

    :cond_6e
    nop

    move-object v0, v12

    check-cast v0, Ljava/util/List;

    nop

    nop

    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    const/4 v11, 0x0

    instance-of v12, v10, Ljava/util/Collection;

    if-eqz v12, :cond_6f

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6f

    const/4 v13, 0x0

    goto :goto_55

    :cond_6f
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_70
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_71

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_70

    const/4 v13, 0x1

    goto :goto_55

    :cond_71
    const/4 v13, 0x0

    :goto_55
    if-eqz v13, :cond_73

    move-object/from16 v10, v84

    invoke-direct {v2, v10}, Lru/localscribe/engine/BlockTranscriber;->speech([F)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_56
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v36, v11

    check-cast v36, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v11

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v12

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v13

    invoke-virtual/range {v36 .. v36}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v14

    invoke-static {v10, v13, v14}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v13

    new-instance v14, Lru/localscribe/core/SpeakerCluster$Match;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    nop

    nop

    nop

    const v18, 0xd800

    move-object/from16 v80, v9

    move v9, v12

    const/4 v12, 0x0

    move-object/from16 v84, v10

    move-object v10, v13

    const/4 v13, 0x0

    move/from16 v79, v8

    move v8, v11

    move-object v11, v14

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move/from16 v85, v5

    move/from16 v86, v79

    move-object/from16 v87, v80

    move-wide/from16 v4, p4

    invoke-static/range {v1 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V

    move-object/from16 v4, p9

    move-object/from16 v10, v84

    move/from16 v5, v85

    move/from16 v8, v86

    move-object/from16 v9, v87

    goto :goto_56

    :cond_72
    move/from16 v85, v5

    move/from16 v86, v8

    move-object/from16 v87, v9

    move-object/from16 v84, v10

    move-object/from16 v4, p9

    invoke-static {v9, v4, v8, v5}, Lru/localscribe/engine/BlockTranscriber;->process$speechDone(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;FI)V

    const/4 v0, 0x0

    goto/16 :goto_51

    :cond_73
    const/4 v10, 0x0

    :goto_57
    const/4 v11, 0x2

    if-ge v10, v11, :cond_80

    aget-object v12, v31, v10

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v34, v13

    check-cast v34, Ljava/util/List;

    move-object/from16 v13, v34

    check-cast v13, Ljava/lang/Iterable;

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_74

    move-object/from16 v36, v0

    const/16 v16, 0x0

    goto :goto_59

    :cond_74
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_75

    move-object/from16 v36, v0

    goto :goto_59

    :cond_75
    move-object/from16 v17, v16

    check-cast v17, Lru/localscribe/analysis/SampleSpan;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v36

    sub-int v19, v19, v36

    move/from16 v11, v19

    :goto_58
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v17

    check-cast v18, Lru/localscribe/analysis/SampleSpan;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v36

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v37

    sub-int v36, v36, v37

    move/from16 v18, v36

    move-object/from16 v36, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_76

    move-object/from16 v16, v17

    move v11, v0

    :cond_76
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7f

    nop

    :goto_59
    move-object/from16 v0, v16

    check-cast v0, Lru/localscribe/analysis/SampleSpan;

    if-eqz v0, :cond_77

    move-object v11, v0

    const/4 v13, 0x0

    iget-object v14, v2, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v11}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v15

    move-object/from16 v37, v0

    invoke-virtual {v11}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v0

    invoke-virtual {v11}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v16

    move-object/from16 v38, v1

    add-int v1, v16, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v12, v15, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v0

    invoke-virtual {v14, v0}, Lru/localscribe/engine/Engines;->embedding([F)[F

    move-result-object v0

    nop

    goto :goto_5a

    :cond_77
    move-object/from16 v37, v0

    move-object/from16 v38, v1

    const/4 v0, 0x0

    :goto_5a
    nop

    iget-object v11, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    nop

    iget-object v1, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-nez v1, :cond_78

    const/4 v13, 0x1

    goto :goto_5b

    :cond_78
    const/4 v13, 0x0

    :goto_5b
    nop

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v14, v12

    move-object v12, v0

    move-object v0, v14

    move-object/from16 v14, v32

    const/16 v71, 0x2

    invoke-static/range {v11 .. v17}, Lru/localscribe/core/SpeakerCluster;->assign$default(Lru/localscribe/core/SpeakerCluster;[FZLjava/util/Set;ZILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v1

    move-object/from16 v32, v1

    invoke-virtual/range {v32 .. v32}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

    move-object/from16 v19, v12

    move-object/from16 v39, v14

    move-object/from16 v1, v32

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_5c

    :cond_79
    iget-object v1, v2, Lru/localscribe/engine/BlockTranscriber;->timeline:Lru/localscribe/core/SpeakerTimeline;

    if-nez v1, :cond_7a

    iget-object v11, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lru/localscribe/core/SpeakerCluster;->provisional$default(Lru/localscribe/core/SpeakerCluster;[FLjava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v1

    move-object/from16 v19, v12

    move-object/from16 v39, v14

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_5c

    :cond_7a
    move-object/from16 v19, v12

    move-object/from16 v39, v14

    new-instance v1, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v1, v11, v11, v12}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    :goto_5c
    nop

    nop

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v13

    if-nez v13, :cond_7c

    move-object/from16 v13, v39

    check-cast v13, Ljava/lang/Iterable;

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v12, v2, Lru/localscribe/engine/BlockTranscriber;->cluster:Lru/localscribe/core/SpeakerCluster;

    move-object/from16 v41, v1

    invoke-virtual/range {v41 .. v41}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v11, v1}, Lru/localscribe/core/SpeakerCluster;->keepDistinct(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v41

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_5d

    :cond_7b
    move-object/from16 v41, v1

    goto :goto_5e

    :cond_7c
    move-object/from16 v41, v1

    :goto_5e
    invoke-virtual/range {v41 .. v41}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7d

    const/4 v11, 0x0

    move-object/from16 v12, v39

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7d
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_5f
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v1

    invoke-virtual/range {v43 .. v43}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v11

    add-int/2addr v1, v11

    invoke-virtual/range {v28 .. v28}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v11

    invoke-virtual/range {v43 .. v43}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v12

    add-int v44, v11, v12

    invoke-virtual/range {v43 .. v43}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v11

    invoke-virtual/range {v43 .. v43}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v12

    invoke-static {v0, v11, v12}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v45

    nop

    nop

    nop

    new-instance v14, Lru/localscribe/core/SeparationInfo;

    nop

    nop

    nop

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/AdvancedModels$Separated;->getReconstructionSnrDb()Ljava/lang/Double;

    move-result-object v15

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/analysis/AdvancedModels$Separated;->getSourceCorrelation()Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0xc

    const/16 v18, 0x0

    const/4 v13, 0x0

    move v12, v10

    move-object v10, v14

    const/4 v14, 0x0

    move-object/from16 v11, v33

    const/16 v35, 0x0

    const/16 v74, 0x1

    invoke-direct/range {v10 .. v18}, Lru/localscribe/core/SeparationInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v46, v12

    const v18, 0xe800

    move-object/from16 v12, v19

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v88, v5

    move/from16 v89, v8

    move-object/from16 v90, v9

    move-object v14, v10

    move-object/from16 v11, v41

    move/from16 v9, v44

    move-object/from16 v10, v45

    move-wide/from16 v4, p4

    move v8, v1

    move-object/from16 v1, v38

    invoke-static/range {v1 .. v19}, Lru/localscribe/engine/BlockTranscriber;->process$emit$default(Lkotlin/jvm/functions/Function0;Lru/localscribe/engine/BlockTranscriber;Ljava/util/List;JLkotlin/jvm/internal/Ref$LongRef;Ljava/util/List;II[FLru/localscribe/core/SpeakerCluster$Match;[FLjava/lang/Float;Lru/localscribe/core/SeparationInfo;ZLkotlin/Pair;Ljava/util/List;ILjava/lang/Object;)V

    move-object/from16 v4, p9

    move-object/from16 v19, v12

    move/from16 v10, v46

    move/from16 v5, v88

    move/from16 v8, v89

    move-object/from16 v9, v90

    goto :goto_5f

    :cond_7e
    move/from16 v88, v5

    move/from16 v89, v8

    move-object/from16 v90, v9

    move/from16 v46, v10

    move-object/from16 v12, v19

    move-object/from16 v1, v38

    const/16 v35, 0x0

    const/16 v74, 0x1

    add-int/lit8 v10, v46, 0x1

    move-object/from16 v4, p9

    move-object/from16 v0, v36

    move-object/from16 v32, v39

    goto/16 :goto_57

    :cond_7f
    move/from16 v88, v5

    move/from16 v89, v8

    move-object/from16 v90, v9

    move/from16 v46, v10

    move-object v0, v12

    move-object/from16 v39, v32

    const/16 v35, 0x0

    const/16 v71, 0x2

    const/16 v74, 0x1

    move-object/from16 v4, p9

    move-object/from16 v0, v36

    goto/16 :goto_58

    :cond_80
    move-object/from16 v36, v0

    move/from16 v88, v5

    move/from16 v89, v8

    move-object/from16 v90, v9

    move/from16 v46, v10

    move/from16 v71, v11

    move-object/from16 v39, v32

    const/16 v35, 0x0

    const/16 v74, 0x1

    move-object/from16 v4, p9

    invoke-static {v9, v4, v8, v5}, Lru/localscribe/engine/BlockTranscriber;->process$speechDone(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;FI)V

    move-object/from16 v0, v35

    goto/16 :goto_51

    :cond_81
    move-object/from16 v35, v0

    const/16 v71, 0x2

    const/16 v74, 0x1

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, v2, Lru/localscribe/engine/BlockTranscriber;->engines:Lru/localscribe/engine/Engines;

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->releaseOffline()V

    const-string v0, "\u041e\u0446\u0435\u043d\u043a\u0430 \u044d\u043c\u043e\u0446\u0438\u043e\u043d\u0430\u043b\u044c\u043d\u043e\u0439 \u043e\u043a\u0440\u0430\u0441\u043a\u0438"

    move-object/from16 v11, p8

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    :goto_60
    if-ge v0, v10, :cond_85

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v77, v12

    check-cast v77, Lru/localscribe/core/Segment;

    nop

    invoke-virtual/range {v77 .. v77}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v12

    if-eqz v12, :cond_82

    const-string v12, "separation_artifacts"

    goto :goto_61

    :cond_82
    invoke-virtual/range {v77 .. v77}, Lru/localscribe/core/Segment;->getOverlap()Ljava/lang/String;

    move-result-object v12

    const-string v13, "not_detected"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_83

    const-string v12, "overlapping_speech"

    goto :goto_61

    :cond_83
    move-object/from16 v12, v35

    :goto_61
    nop

    nop

    invoke-virtual/range {v77 .. v77}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v13

    move/from16 v19, v5

    move-object/from16 v41, v6

    const/16 v15, 0x10

    int-to-long v5, v15

    mul-long/2addr v13, v5

    sub-long v13, v13, p4

    long-to-int v13, v13

    move-object/from16 v14, p1

    array-length v15, v14

    move-wide/from16 v16, v5

    const/4 v5, 0x0

    invoke-static {v13, v5, v15}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    invoke-virtual/range {v77 .. v77}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v27

    mul-long v27, v27, v16

    move/from16 v29, v5

    move v13, v6

    sub-long v5, v27, p4

    long-to-int v5, v5

    array-length v6, v14

    invoke-static {v5, v13, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    iget-object v6, v2, Lru/localscribe/engine/BlockTranscriber;->advanced:Lru/localscribe/analysis/AdvancedModels;

    invoke-static {v14, v13, v5}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v15

    invoke-virtual {v6, v15, v12, v1}, Lru/localscribe/analysis/AdvancedModels;->emotion([FLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lru/localscribe/core/EmotionAssessment;

    move-result-object v98

    nop

    nop

    invoke-virtual/range {v77 .. v77}, Lru/localscribe/core/Segment;->getTags()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    new-instance v15, Lru/localscribe/core/Tag;

    move-object/from16 v16, v1

    invoke-virtual/range {v98 .. v98}, Lru/localscribe/core/EmotionAssessment;->getLabel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, "emotion_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v98 .. v98}, Lru/localscribe/core/EmotionAssessment;->getConfidence()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual/range {v98 .. v98}, Lru/localscribe/core/EmotionAssessment;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v39, v7

    const-string v7, "unknown"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    goto :goto_62

    :cond_84
    const-string v7, "estimated"

    :goto_62
    invoke-virtual/range {v98 .. v98}, Lru/localscribe/core/EmotionAssessment;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v1, v2, v7, v5}, Lru/localscribe/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v15}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v93

    nop

    nop

    nop

    nop

    const v105, 0x1fbdfff

    const/16 v106, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    invoke-static/range {v77 .. v106}, Lru/localscribe/core/Segment;->copy$default(Lru/localscribe/core/Segment;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Segment;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sub-float v1, v26, v8

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float v6, v8, v1

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, v16

    move/from16 v5, v19

    move-object/from16 v7, v39

    move-object/from16 v6, v41

    goto/16 :goto_60

    :cond_85
    move-object/from16 v14, p1

    move-object/from16 v16, v1

    move/from16 v19, v5

    move-object/from16 v41, v6

    move-object/from16 v39, v7

    const/16 v29, 0x0

    goto :goto_63

    :cond_86
    move-object/from16 v14, p1

    move-object/from16 v11, p8

    move-object/from16 v16, v1

    move/from16 v19, v5

    move-object/from16 v41, v6

    move-object/from16 v39, v7

    const/16 v29, 0x0

    :goto_63
    const-wide/16 v0, 0x0

    move-wide/from16 v0, p6

    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/jvm/functions/Function1;

    new-instance v6, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda6;-><init>()V

    aput-object v6, v5, v29

    new-instance v6, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda7;-><init>()V

    aput-object v6, v5, v74

    new-instance v6, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda8;-><init>()V

    aput-object v6, v5, v71

    invoke-static {v5}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    move-object v7, v2

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_64
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_88

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v71, v13

    check-cast v71, Lru/localscribe/core/Segment;

    const/4 v15, 0x0

    invoke-virtual/range {v71 .. v71}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v17

    move-object/from16 v26, v2

    move-object/from16 v44, v3

    sub-long v2, v17, v0

    move/from16 v17, v5

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v54

    invoke-virtual/range {v71 .. v71}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual/range {v71 .. v71}, Lru/localscribe/core/Segment;->getAcoustics()Lru/localscribe/core/Acoustics;

    move-result-object v45

    if-eqz v45, :cond_87

    const/16 v59, 0x37f

    const/16 v60, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    invoke-static/range {v45 .. v60}, Lru/localscribe/core/Acoustics;->copy$default(Lru/localscribe/core/Acoustics;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Acoustics;

    move-result-object v5

    move-object/from16 v86, v5

    goto :goto_65

    :cond_87
    move-object/from16 v86, v35

    :goto_65
    const v99, 0x1ffefff

    const/16 v100, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    invoke-static/range {v71 .. v100}, Lru/localscribe/core/Segment;->copy$default(Lru/localscribe/core/Segment;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Segment;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p9

    move/from16 v5, v17

    move-object/from16 v2, v26

    move-object/from16 v3, v44

    goto/16 :goto_64

    :cond_88
    move-object/from16 v26, v2

    move-object v2, v6

    check-cast v2, Ljava/util/List;

    nop

    return-object v2
.end method
