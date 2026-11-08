.class public final Lru/localscribe/engine/AsrLookahead;
.super Ljava/lang/Object;
.source "AsrLookahead.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsrLookahead.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsrLookahead.kt\nru/localscribe/engine/AsrLookahead\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n375#2:62\n375#2:66\n295#3,2:63\n1#4:65\n*S KotlinDebug\n*F\n+ 1 AsrLookahead.kt\nru/localscribe/engine/AsrLookahead\n*L\n21#1:62\n38#1:66\n22#1:63,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ4\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0086@\u00a2\u0006\u0002\u0010 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lru/localscribe/engine/AsrLookahead;",
        "",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "resources",
        "Lru/localscribe/engine/PipelineResources;",
        "timing",
        "Lru/localscribe/engine/ProcessingTimings;",
        "<init>",
        "(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lru/localscribe/engine/PipelineResources;Lru/localscribe/engine/ProcessingTimings;)V",
        "cache",
        "Lru/localscribe/engine/ExactAsrCache;",
        "getCache",
        "()Lru/localscribe/engine/ExactAsrCache;",
        "stopping",
        "",
        "getStopping",
        "()Z",
        "setStopping",
        "(Z)V",
        "run",
        "",
        "wav",
        "Ljava/io/File;",
        "start",
        "",
        "total",
        "protected",
        "",
        "Lru/localscribe/core/ReprocessingProtection$Interval;",
        "(Ljava/io/File;JJLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final cache:Lru/localscribe/engine/ExactAsrCache;

.field private final models:Lru/localscribe/data/ModelStore;

.field private final resources:Lru/localscribe/engine/PipelineResources;

.field private final settings:Lru/localscribe/core/Settings;

.field private volatile stopping:Z

.field private final timing:Lru/localscribe/engine/ProcessingTimings;


# direct methods
.method public static synthetic $r8$lambda$JpSAFYq5wxW4PGHi3m2kz6DMSBY(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/AsrLookahead;->run$lambda$0$3$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cklN5hyKOX06G4wJDD5AvAUM8nE(Lru/localscribe/engine/AsrLookahead;)Lru/localscribe/engine/Engines;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/AsrLookahead;->run$lambda$0$3(Lru/localscribe/engine/AsrLookahead;)Lru/localscribe/engine/Engines;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/AsrLookahead;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lru/localscribe/engine/PipelineResources;Lru/localscribe/engine/ProcessingTimings;)V
    .locals 1

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timing"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/AsrLookahead;->models:Lru/localscribe/data/ModelStore;

    iput-object p2, p0, Lru/localscribe/engine/AsrLookahead;->settings:Lru/localscribe/core/Settings;

    iput-object p3, p0, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    iput-object p4, p0, Lru/localscribe/engine/AsrLookahead;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v0, Lru/localscribe/engine/ExactAsrCache;

    invoke-direct {v0}, Lru/localscribe/engine/ExactAsrCache;-><init>()V

    iput-object v0, p0, Lru/localscribe/engine/AsrLookahead;->cache:Lru/localscribe/engine/ExactAsrCache;

    return-void
.end method

.method private static final run$lambda$0$3(Lru/localscribe/engine/AsrLookahead;)Lru/localscribe/engine/Engines;
    .locals 6

    new-instance v0, Lru/localscribe/engine/Engines;

    iget-object v1, p0, Lru/localscribe/engine/AsrLookahead;->models:Lru/localscribe/data/ModelStore;

    iget-object v2, p0, Lru/localscribe/engine/AsrLookahead;->settings:Lru/localscribe/core/Settings;

    new-instance v3, Lru/localscribe/engine/AsrLookahead$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lru/localscribe/engine/AsrLookahead$$ExternalSyntheticLambda1;-><init>()V

    iget-object v4, p0, Lru/localscribe/engine/AsrLookahead;->timing:Lru/localscribe/engine/ProcessingTimings;

    iget-object v5, p0, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    invoke-virtual {v5}, Lru/localscribe/engine/PipelineResources;->getAsrThreads()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lru/localscribe/engine/Engines;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;I)V

    iget-object v1, p0, Lru/localscribe/engine/AsrLookahead;->cache:Lru/localscribe/engine/ExactAsrCache;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/Engines;->withRecognitionCache(Lru/localscribe/engine/ExactAsrCache;)Lru/localscribe/engine/Engines;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lru/localscribe/engine/Engines;->offline()Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    nop

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lru/localscribe/engine/Engines;->close()V

    throw v0
.end method

.method private static final run$lambda$0$3$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getCache()Lru/localscribe/engine/ExactAsrCache;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/AsrLookahead;->cache:Lru/localscribe/engine/ExactAsrCache;

    return-object v0
.end method

.method public final getStopping()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/engine/AsrLookahead;->stopping:Z

    return v0
.end method

.method public final run(Ljava/io/File;JJLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJ",
            "Ljava/util/List<",
            "Lru/localscribe/core/ReprocessingProtection$Interval;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p7

    instance-of v0, v1, Lru/localscribe/engine/AsrLookahead$run$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lru/localscribe/engine/AsrLookahead$run$1;

    iget v2, v0, Lru/localscribe/engine/AsrLookahead$run$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Lru/localscribe/engine/AsrLookahead$run$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Lru/localscribe/engine/AsrLookahead$run$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/AsrLookahead$run$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lru/localscribe/engine/AsrLookahead$run$1;-><init>(Lru/localscribe/engine/AsrLookahead;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    iget-object v4, v3, Lru/localscribe/engine/AsrLookahead$run$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v5, v3, Lru/localscribe/engine/AsrLookahead$run$1;->label:I

    packed-switch v5, :pswitch_data_0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v9, v3, Lru/localscribe/engine/AsrLookahead$run$1;->J$2:J

    iget v5, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$3:I

    iget v11, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$2:I

    iget v12, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$1:I

    iget v13, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$0:I

    iget-wide v14, v3, Lru/localscribe/engine/AsrLookahead$run$1;->J$1:J

    iget-wide v6, v3, Lru/localscribe/engine/AsrLookahead$run$1;->J$0:J

    iget-object v8, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$12:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v17, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$11:Ljava/lang/Object;

    check-cast v0, [F

    move-object/from16 p2, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$10:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/engine/ContextAsrWindow;

    move-object/from16 p3, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$9:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    move-object/from16 p4, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$8:Ljava/lang/Object;

    check-cast v0, [F

    move-object/from16 p5, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$7:Ljava/lang/Object;

    check-cast v0, [F

    move-object/from16 v18, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/core/ReprocessingProtection$Interval;

    move-object/from16 v19, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 v20, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$3:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/io/Closeable;

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$2:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/List;

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$0:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/io/File;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    move-object/from16 v26, v19

    move-object/from16 v27, v23

    move-object/from16 v28, v24

    move-object/from16 v29, v25

    const/16 v30, 0x0

    move-wide/from16 v23, v14

    move-object/from16 v25, v22

    move-wide v14, v6

    move-object/from16 v22, v21

    move-object/from16 v7, p3

    move-object v6, v3

    move/from16 v21, v12

    move-object/from16 v3, v20

    move-object v12, v8

    move-wide/from16 v19, v9

    move v9, v13

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move-object v13, v2

    move-object v2, v4

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v11, v1

    move-object/from16 v5, v22

    move-object/from16 v28, v23

    move-object/from16 v1, v24

    move-object/from16 v12, v25

    move-object/from16 v23, v2

    move-wide/from16 v24, v14

    move-object v2, v0

    move-wide v14, v6

    goto/16 :goto_13

    :pswitch_1
    move-object/from16 v17, v0

    iget-wide v5, v3, Lru/localscribe/engine/AsrLookahead$run$1;->J$2:J

    iget v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$3:I

    iget v7, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$2:I

    iget v8, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$1:I

    iget v9, v3, Lru/localscribe/engine/AsrLookahead$run$1;->I$0:I

    iget-wide v10, v3, Lru/localscribe/engine/AsrLookahead$run$1;->J$1:J

    iget-wide v12, v3, Lru/localscribe/engine/AsrLookahead$run$1;->J$0:J

    iget-object v14, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$11:Ljava/lang/Object;

    check-cast v14, [F

    iget-object v15, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$10:Ljava/lang/Object;

    check-cast v15, Lru/localscribe/engine/ContextAsrWindow;

    move/from16 v18, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$9:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    move-object/from16 p2, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$8:Ljava/lang/Object;

    check-cast v0, [F

    move-object/from16 p3, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$7:Ljava/lang/Object;

    check-cast v0, [F

    move-object/from16 p4, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/core/ReprocessingProtection$Interval;

    move-object/from16 p5, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 v19, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$3:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/io/Closeable;

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$2:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$1:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    iget-object v0, v3, Lru/localscribe/engine/AsrLookahead$run$1;->L$0:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/io/File;

    :try_start_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p4

    move-object/from16 v26, p5

    move-wide/from16 v28, v5

    const/16 v30, 0x0

    move-object v6, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v17

    move/from16 v37, v8

    move-object/from16 v8, p2

    move-wide/from16 v38, v10

    move-object/from16 v10, p3

    move-object/from16 v11, v22

    move/from16 v22, v7

    move-object v7, v15

    move-object v15, v4

    move-wide/from16 v4, v38

    move-wide/from16 v38, v12

    move-object v13, v2

    move-object/from16 v2, v20

    move-object/from16 v12, v23

    move/from16 v23, v37

    move/from16 v20, v18

    move-wide/from16 v17, v38

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-wide v14, v12

    move-object/from16 v5, v22

    move-object/from16 v28, v23

    move-object/from16 v12, v24

    move-object/from16 v23, v2

    move-wide/from16 v24, v10

    move-object v2, v0

    move-object v11, v1

    move-object/from16 v1, v21

    goto/16 :goto_13

    :pswitch_2
    move-object/from16 v17, v0

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v23, v0

    nop

    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "r"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_28

    move-object/from16 v6, p1

    :try_start_3
    invoke-direct {v0, v6, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v22, v0

    check-cast v22, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_27

    :try_start_4
    move-object/from16 v0, v22

    check-cast v0, Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_24

    move-wide/from16 v8, p2

    :try_start_5
    iput-wide v8, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_23

    move-object/from16 p1, p6

    move-object v10, v4

    move v11, v5

    move-object v12, v7

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/4 v13, 0x0

    move-object v5, v1

    move-object v1, v2

    move-object v7, v3

    move-wide/from16 v3, p4

    :goto_1
    move-object/from16 p3, v5

    move-object/from16 p2, v6

    :try_start_6
    iget-wide v5, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_14

    iget-boolean v5, v1, Lru/localscribe/engine/AsrLookahead;->stopping:Z

    if-nez v5, :cond_14

    iget-object v5, v1, Lru/localscribe/engine/AsrLookahead;->cache:Lru/localscribe/engine/ExactAsrCache;

    invoke-virtual {v5}, Lru/localscribe/engine/ExactAsrCache;->getFull()Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v7

    const/4 v6, 0x0

    invoke-interface {v7}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/Iterable;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_22

    if-eqz v19, :cond_3

    :try_start_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    check-cast v20, Lru/localscribe/core/ReprocessingProtection$Interval;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v21, 0x0

    move-wide/from16 p4, v3

    :try_start_8
    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {v20 .. v20}, Lru/localscribe/core/ReprocessingProtection$Interval;->getEndMs()J

    move-result-wide v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-wide/from16 v24, v2

    const/16 v4, 0x10

    int-to-long v2, v4

    mul-long v22, v22, v2

    cmp-long v2, v24, v22

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v3, v7

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v1, p1

    move-wide v14, v8

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-wide/from16 p4, v3

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v3, v7

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v1, p1

    move-wide v14, v8

    goto/16 :goto_13

    :cond_3
    move-wide/from16 p4, v3

    const/16 v19, 0x0

    :goto_4
    :try_start_9
    check-cast v19, Lru/localscribe/core/ReprocessingProtection$Interval;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1f

    if-eqz v19, :cond_4

    :try_start_a
    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/core/ReprocessingProtection$Interval;->getStartMs()J

    move-result-wide v4

    move-wide/from16 v20, v2

    const/16 v6, 0x10

    int-to-long v2, v6

    mul-long/2addr v4, v2

    cmp-long v4, v20, v4

    if-ltz v4, :cond_4

    invoke-virtual/range {v19 .. v19}, Lru/localscribe/core/ReprocessingProtection$Interval;->getEndMs()J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    mul-long/2addr v4, v2

    move-wide/from16 v2, p4

    :try_start_b
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    move-wide v3, v2

    move-object/from16 v2, p0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-object/from16 v23, v1

    move-wide/from16 v24, v2

    move-object v3, v7

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v1, p1

    move-object v2, v0

    move-wide v14, v8

    goto/16 :goto_13

    :catchall_5
    move-exception v0

    move-wide/from16 v2, p4

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-object/from16 v23, v1

    move-wide/from16 v24, v2

    move-object v3, v7

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v1, p1

    move-object v2, v0

    move-wide v14, v8

    goto/16 :goto_13

    :cond_4
    move-wide/from16 v2, p4

    :try_start_c
    iget-wide v4, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1e

    sub-long v4, v2, v4

    if-eqz v19, :cond_5

    move-object/from16 v6, v19

    const/16 v18, 0x0

    :try_start_d
    invoke-virtual {v6}, Lru/localscribe/core/ReprocessingProtection$Interval;->getStartMs()J

    move-result-wide v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-wide/from16 p4, v2

    const/16 v2, 0x10

    int-to-long v2, v2

    mul-long v20, v20, v2

    :try_start_e
    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    sub-long v20, v20, v2

    move-wide/from16 v2, v20

    goto :goto_5

    :catchall_6
    move-exception v0

    move-wide/from16 p4, v2

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v3, v7

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v1, p1

    move-wide v14, v8

    goto/16 :goto_13

    :cond_5
    move-wide/from16 p4, v2

    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v2, v20

    :goto_5
    :try_start_f
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x75300

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    sget-object v3, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    iget-wide v4, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v0, v4, v5, v2}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_13

    iget-wide v4, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    array-length v6, v3

    move-wide/from16 v20, v4

    int-to-long v4, v6

    add-long v4, v20, v4

    cmp-long v4, v4, p4

    if-gez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    invoke-static {v3, v4}, Lru/localscribe/engine/OfflineBlockBoundaryKt;->offlineBlockEnd([FZ)I

    move-result v4

    array-length v5, v3

    if-ne v4, v5, :cond_8

    move-object v5, v3

    goto :goto_8

    :cond_8
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    const-string v6, "copyOf(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    move v6, v2

    move-object/from16 p6, v3

    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1f

    move-wide/from16 v20, v2

    const v2, 0x13880

    move/from16 p7, v4

    int-to-long v3, v2

    sub-long v3, v20, v3

    move/from16 v20, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    :try_start_10
    invoke-static {v3, v4, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    sget-object v6, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    move v7, v2

    move-wide/from16 v21, v3

    iget-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v2, v2, v21

    long-to-int v2, v2

    array-length v3, v5

    add-int/2addr v2, v3

    add-int/2addr v2, v7

    move-wide/from16 v3, v21

    invoke-virtual {v6, v0, v3, v4, v2}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v2

    iget-wide v6, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v6, v3

    long-to-int v6, v6

    array-length v7, v5

    move-object/from16 v21, v0

    array-length v0, v2

    invoke-static {v7, v6, v0}, Lru/localscribe/engine/ContextAsrWindowKt;->contextAsrWindows(III)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_21

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v17

    move-object/from16 v26, v19

    move v13, v6

    move-wide v14, v8

    move-object/from16 v17, v10

    move/from16 v19, v11

    move-object/from16 v11, p3

    move-object/from16 v6, p6

    move/from16 v9, p7

    move-wide v7, v3

    move-object v10, v5

    move-wide/from16 v4, p4

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v0

    move-object v0, v12

    move-object/from16 v12, p2

    :goto_9
    :try_start_11
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1d

    if-eqz v27, :cond_12

    :try_start_12
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lru/localscribe/engine/ContextAsrWindow;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1b

    move-object/from16 p2, v3

    move-object v3, v0

    move-object/from16 v0, p2

    move/from16 p2, v13

    move-object v13, v2

    move-object/from16 v2, v21

    move/from16 v21, v20

    move/from16 v20, v9

    move/from16 v9, v19

    move/from16 v19, p2

    move-wide/from16 v28, v7

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    move-object/from16 v30, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v7, v27

    move-object/from16 v8, p1

    move-object/from16 p1, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v25

    :goto_a
    move/from16 v22, v9

    :try_start_13
    iget-boolean v9, v13, Lru/localscribe/engine/AsrLookahead;->stopping:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1a

    if-nez v9, :cond_b

    :try_start_14
    iget-object v9, v13, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    invoke-virtual {v9}, Lru/localscribe/engine/PipelineResources;->canPrefetch()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v13, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move-object/from16 v23, v13

    const/4 v13, 0x0

    :try_start_15
    invoke-virtual {v9, v13}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    iget-object v9, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Lru/localscribe/engine/Engines;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v9, :cond_9

    :try_start_16
    invoke-virtual {v9}, Lru/localscribe/engine/Engines;->close()V

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v2, v0

    move-wide/from16 v24, v4

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :cond_9
    :goto_b
    const/4 v9, 0x0

    :try_start_17
    iput-object v9, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$1:Ljava/lang/Object;

    iput-object v12, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$2:Ljava/lang/Object;

    iput-object v11, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$3:Ljava/lang/Object;

    iput-object v2, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$4:Ljava/lang/Object;

    iput-object v3, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$6:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$7:Ljava/lang/Object;

    iput-object v10, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$8:Ljava/lang/Object;

    iput-object v8, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$9:Ljava/lang/Object;

    iput-object v7, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$10:Ljava/lang/Object;

    iput-object v0, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$11:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$12:Ljava/lang/Object;

    iput-wide v14, v6, Lru/localscribe/engine/AsrLookahead$run$1;->J$0:J

    iput-wide v4, v6, Lru/localscribe/engine/AsrLookahead$run$1;->J$1:J

    move/from16 v13, v22

    iput v13, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$0:I

    move/from16 v9, v21

    iput v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$1:I

    move/from16 v21, v9

    move/from16 v9, v20

    iput v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$2:I

    move/from16 v20, v9

    move/from16 v9, v19

    iput v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$3:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move-wide/from16 v24, v4

    move-wide/from16 v4, v28

    :try_start_18
    iput-wide v4, v6, Lru/localscribe/engine/AsrLookahead$run$1;->J$2:J

    move-wide/from16 v27, v4

    const/4 v4, 0x1

    iput v4, v6, Lru/localscribe/engine/AsrLookahead$run$1;->label:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move-object/from16 v5, v18

    if-ne v4, v5, :cond_a

    return-object v5

    :cond_a
    move-wide/from16 v37, v14

    move-object/from16 v15, v17

    move-wide/from16 v17, v37

    move-object v14, v0

    move-object/from16 v19, v5

    move/from16 v22, v20

    move-wide/from16 v4, v24

    move-wide/from16 v28, v27

    move-object/from16 v0, p1

    move-object/from16 v24, p3

    move/from16 v20, v9

    move v9, v13

    move-object/from16 v13, v23

    move/from16 v23, v21

    move-object/from16 v21, v1

    move-object/from16 v1, p2

    :goto_c
    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object v0, v14

    move-object/from16 v1, v21

    move/from16 v21, v23

    move-object/from16 p3, v24

    move-wide/from16 v37, v17

    move-object/from16 v17, v15

    move-wide/from16 v14, v37

    move-object/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v22

    goto/16 :goto_a

    :catchall_8
    move-exception v0

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_9
    move-exception v0

    move-wide/from16 v24, v4

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_a
    move-exception v0

    move-wide/from16 v24, v4

    move-object/from16 v23, v13

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :cond_b
    move-wide/from16 v24, v4

    move-object/from16 v23, v13

    move-object/from16 v5, v18

    move/from16 v9, v19

    move/from16 v13, v22

    move-wide/from16 v27, v28

    move-object/from16 v18, v5

    move-object/from16 v4, v23

    :try_start_19
    iget-boolean v5, v4, Lru/localscribe/engine/AsrLookahead;->stopping:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    if-nez v5, :cond_10

    :try_start_1a
    iget-object v5, v4, Lru/localscribe/engine/AsrLookahead;->cache:Lru/localscribe/engine/ExactAsrCache;

    invoke-virtual {v5}, Lru/localscribe/engine/ExactAsrCache;->getFull()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-wide/from16 p4, v24

    move-object/from16 v24, v0

    move-object v4, v1

    move-wide/from16 v0, v27

    goto/16 :goto_11

    :cond_c
    move-object v5, v6

    const/16 v19, 0x0

    invoke-interface {v6}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    iget-object v5, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v5, :cond_e

    iget-object v5, v4, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    move-object/from16 v19, v5

    new-instance v5, Lru/localscribe/engine/AsrLookahead$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lru/localscribe/engine/AsrLookahead$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/engine/AsrLookahead;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    move-object/from16 v23, v4

    :try_start_1b
    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$1:Ljava/lang/Object;

    iput-object v12, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$2:Ljava/lang/Object;

    iput-object v11, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$3:Ljava/lang/Object;

    iput-object v2, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$4:Ljava/lang/Object;

    iput-object v3, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$6:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$7:Ljava/lang/Object;

    iput-object v10, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$8:Ljava/lang/Object;

    iput-object v8, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$9:Ljava/lang/Object;

    iput-object v7, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$10:Ljava/lang/Object;

    iput-object v0, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$11:Ljava/lang/Object;

    iput-object v12, v6, Lru/localscribe/engine/AsrLookahead$run$1;->L$12:Ljava/lang/Object;

    iput-wide v14, v6, Lru/localscribe/engine/AsrLookahead$run$1;->J$0:J
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    move-object v4, v1

    move-object/from16 v22, v2

    move-wide/from16 v1, v24

    :try_start_1c
    iput-wide v1, v6, Lru/localscribe/engine/AsrLookahead$run$1;->J$1:J

    iput v13, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$0:I

    move-object/from16 v24, v0

    move/from16 v0, v21

    iput v0, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$1:I

    move/from16 v21, v0

    move/from16 v0, v20

    iput v0, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$2:I

    iput v9, v6, Lru/localscribe/engine/AsrLookahead$run$1;->I$3:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    move/from16 v20, v0

    move-wide/from16 p4, v1

    move-wide/from16 v0, v27

    :try_start_1d
    iput-wide v0, v6, Lru/localscribe/engine/AsrLookahead$run$1;->J$2:J

    const/4 v2, 0x2

    iput v2, v6, Lru/localscribe/engine/AsrLookahead$run$1;->label:I

    move-object/from16 v2, v19

    invoke-virtual {v2, v5, v6}, Lru/localscribe/engine/PipelineResources;->load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    move-object/from16 v5, v18

    if-ne v2, v5, :cond_d

    return-object v5

    :cond_d
    move-object/from16 v18, p1

    move-object/from16 v29, p3

    move-object/from16 v28, v4

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    move/from16 v11, v20

    move-wide/from16 v19, v0

    move-object v4, v2

    move-object/from16 v2, v17

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v17, v5

    move v5, v9

    move v9, v13

    move-object/from16 v13, v23

    move-wide/from16 v23, p4

    :goto_d
    :try_start_1e
    iput-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    move-object/from16 p1, v18

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    move-object v4, v0

    move-object/from16 v0, v17

    move-object/from16 p1, v28

    move-object/from16 v12, v29

    move-object/from16 v17, v2

    move-object v2, v13

    move v13, v5

    move v5, v9

    move v9, v11

    move-object v11, v1

    move-object/from16 v1, v27

    goto/16 :goto_e

    :catchall_b
    move-exception v0

    move-object v11, v1

    move-object v4, v2

    move-object v3, v6

    move-object/from16 v5, v25

    move-object/from16 v1, v28

    move-object/from16 v12, v29

    move-object v2, v0

    move-wide/from16 v24, v23

    move-object/from16 v28, v27

    move-object/from16 v23, v13

    goto/16 :goto_13

    :catchall_c
    move-exception v0

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object v1, v4

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_d
    move-exception v0

    move-wide/from16 p4, v1

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object v1, v4

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_e
    move-exception v0

    move-object v4, v1

    move-wide/from16 p4, v24

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v5, v18

    move-wide/from16 p4, v24

    move-object/from16 v24, v0

    move-object v4, v1

    move-wide/from16 v0, v27

    move-wide/from16 v37, v0

    move-object v0, v5

    move v5, v13

    move v13, v9

    move/from16 v9, v20

    move-wide/from16 v19, v37

    move-object/from16 v18, v6

    move-object/from16 v25, v11

    move-object v1, v12

    move-object/from16 v2, v23

    move-object/from16 v6, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 p1, v4

    move-object/from16 v4, v24

    move-wide/from16 v23, p4

    :goto_e
    move-object/from16 p2, v0

    :try_start_1f
    iget-object v0, v2, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    move/from16 p3, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    nop

    :try_start_20
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lru/localscribe/engine/Engines;

    invoke-virtual {v7}, Lru/localscribe/engine/ContextAsrWindow;->getAudioBegin()I

    move-result v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    move-object/from16 p4, v6

    :try_start_21
    invoke-virtual {v7}, Lru/localscribe/engine/ContextAsrWindow;->getAudioEnd()I

    move-result v6

    invoke-static {v4, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v5

    sget-object v31, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    move-object/from16 p5, v7

    :try_start_22
    iget-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    move-object/from16 v27, v4

    :try_start_23
    invoke-virtual/range {p5 .. p5}, Lru/localscribe/engine/ContextAsrWindow;->getAudioBegin()I

    move-result v4

    move-wide/from16 v28, v6

    int-to-long v6, v4

    add-long v6, v28, v6

    move-wide/from16 p6, v6

    int-to-long v6, v13

    sub-long v32, p6, v6

    const/16 v35, 0x2

    const/16 v36, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lru/localscribe/engine/Engines;->recognize([FJ)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lru/localscribe/engine/Engines;

    invoke-virtual/range {p5 .. p5}, Lru/localscribe/engine/ContextAsrWindow;->getBegin()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Lru/localscribe/engine/ContextAsrWindow;->getEnd()I

    move-result v6

    invoke-static {v10, v5, v6}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v5

    sget-object v31, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    iget-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 p6, v0

    invoke-virtual/range {p5 .. p5}, Lru/localscribe/engine/ContextAsrWindow;->getBegin()I

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    move-object/from16 v28, v1

    int-to-long v0, v0

    add-long v32, v6, v0

    const/16 v35, 0x2

    const/16 v36, 0x0

    const/16 v34, 0x0

    :try_start_24
    invoke-static/range {v31 .. v36}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {v4, v5, v0, v1}, Lru/localscribe/engine/Engines;->recognize([FJ)Lkotlin/Pair;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    goto :goto_f

    :catchall_f
    move-exception v0

    goto :goto_10

    :cond_f
    move-object/from16 p6, v0

    move-object/from16 v28, v1

    :goto_f
    :try_start_25
    iget-object v0, v2, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    move-object v0, v3

    move-object/from16 p1, v8

    move-wide/from16 v7, v19

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-wide/from16 v4, v23

    move-object/from16 v23, v25

    move-object/from16 v3, v27

    move-object/from16 v24, v28

    move-object/from16 v22, v30

    move-object/from16 v25, p2

    move/from16 v19, p3

    goto/16 :goto_9

    :catchall_10
    move-exception v0

    move-object/from16 v28, v1

    goto :goto_10

    :catchall_11
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v27, v4

    goto :goto_10

    :catchall_12
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v27, v4

    move-object/from16 p5, v7

    goto :goto_10

    :catchall_13
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v27, v4

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    :goto_10
    iget-object v1, v2, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    :catchall_14
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v25

    move-wide/from16 v24, v23

    move-object/from16 v23, v2

    move-object v2, v0

    goto/16 :goto_13

    :catchall_15
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v25

    move-wide/from16 v24, v23

    move-object/from16 v23, v2

    move-object v2, v0

    goto/16 :goto_13

    :catchall_16
    move-exception v0

    move-object/from16 v23, v4

    move-wide/from16 p4, v24

    move-object v4, v1

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :cond_10
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-wide/from16 p4, v24

    move-object/from16 v24, v0

    move-object v4, v1

    move-wide/from16 v0, v27

    :goto_11
    :try_start_26
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_18

    move-object/from16 v0, v30

    :try_start_27
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_17

    move-object/from16 v13, v23

    iget-object v0, v13, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/engine/Engines;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_11
    return-object v2

    :catchall_17
    move-exception v0

    move-object/from16 v13, v23

    move-object/from16 v11, p2

    move-wide/from16 v24, p4

    move-object v1, v4

    move-object v3, v6

    move-wide v8, v14

    move-object/from16 v4, v17

    move-object/from16 v6, p3

    goto/16 :goto_15

    :catchall_18
    move-exception v0

    move-object/from16 v13, v23

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object v1, v4

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_19
    move-exception v0

    move-object v13, v4

    move-wide/from16 p4, v24

    move-object v4, v1

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v23, v13

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_1a
    move-exception v0

    move-wide/from16 p4, v4

    move-object v4, v1

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object v3, v6

    move-object v5, v11

    move-object/from16 v28, v12

    move-object/from16 v23, v13

    move-object/from16 v4, v17

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_13

    :catchall_1b
    move-exception v0

    move-object/from16 v3, v18

    move-object/from16 v28, v24

    move-wide/from16 v24, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v23

    move-object/from16 v23, v2

    move-object v2, v0

    goto/16 :goto_13

    :cond_12
    const/16 v16, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    :try_start_28
    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v27, v1

    array-length v1, v10

    int-to-long v1, v1

    add-long v1, v27, v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1c

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    move-wide v3, v4

    move-object v5, v11

    move-object v6, v12

    move-wide v8, v14

    move-object/from16 v10, v17

    move-object/from16 v7, v18

    move/from16 v11, v19

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v17, v25

    move-object v12, v0

    move-object/from16 v0, v21

    goto/16 :goto_1

    :catchall_1c
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v3, v18

    move-object/from16 v28, v24

    move-wide/from16 v24, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v23

    move-object/from16 v23, p2

    goto/16 :goto_13

    :catchall_1d
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v3, v18

    move-object/from16 v28, v24

    move-wide/from16 v24, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v23

    move-object/from16 v23, p2

    goto/16 :goto_13

    :cond_13
    move-object/from16 v21, v0

    move/from16 v20, v2

    move-object/from16 p6, v3

    move-object/from16 v18, v7

    const/4 v0, 0x0

    :try_start_29
    const-string v2, "\u041f\u0443\u0441\u0442\u043e\u0435 \u043e\u043a\u043d\u043e ASR"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1e
    move-exception v0

    move-wide/from16 p4, v2

    move-object/from16 v18, v7

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v18

    move-object/from16 v1, p1

    move-wide v14, v8

    goto/16 :goto_13

    :catchall_1f
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v18

    move-object/from16 v1, p1

    move-wide v14, v8

    goto/16 :goto_13

    :cond_14
    move-object/from16 v21, v0

    move-wide/from16 p4, v3

    move-object/from16 v18, v7

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_21

    :try_start_2a
    invoke-static {v14, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_20

    iget-object v0, v1, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/engine/Engines;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    move-wide/from16 v3, p4

    move-object/from16 v7, v18

    goto/16 :goto_16

    :catchall_20
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v13, v1

    move-object v4, v10

    move-object v12, v15

    move-object/from16 v3, v18

    move-object/from16 v1, p1

    goto/16 :goto_15

    :catchall_21
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v18

    move-object/from16 v1, p1

    move-wide v14, v8

    goto :goto_13

    :catchall_22
    move-exception v0

    move-wide/from16 p4, v3

    move-object/from16 v18, v7

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-wide/from16 v24, p4

    move-object v2, v0

    move-object/from16 v23, v1

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v18

    move-object/from16 v1, p1

    move-wide v14, v8

    goto :goto_13

    :catchall_23
    move-exception v0

    goto :goto_12

    :catchall_24
    move-exception v0

    move-wide/from16 v8, p2

    :goto_12
    move-wide/from16 v24, p4

    move-object v2, v0

    move-object v11, v1

    move-object v12, v6

    move-wide v14, v8

    move-object/from16 v5, v22

    move-object/from16 v28, v23

    move-object/from16 v23, p0

    move-object/from16 v1, p6

    :goto_13
    :try_start_2b
    throw v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_25

    :catchall_25
    move-exception v0

    :try_start_2c
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_26

    :catchall_26
    move-exception v0

    move-object v6, v12

    move-wide v8, v14

    move-object/from16 v13, v23

    move-object/from16 v12, v28

    goto :goto_15

    :catchall_27
    move-exception v0

    goto :goto_14

    :catchall_28
    move-exception v0

    move-object/from16 v6, p1

    :goto_14
    move-wide/from16 v8, p2

    move-object/from16 v13, p0

    move-wide/from16 v24, p4

    move-object v11, v1

    move-object/from16 v12, v23

    move-object/from16 v1, p6

    :goto_15
    :try_start_2d
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    iget-object v2, v13, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const-string v5, "ASR lookahead fallback"

    const/16 v7, 0x1e

    invoke-virtual {v2, v5, v7}, Lru/localscribe/engine/PipelineResources;->pause(Ljava/lang/String;I)V

    const-string v2, "LocalScribeLoad"

    const-string v5, "Prefetch stopped; normal recognizer remains available"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_29

    nop

    iget-object v0, v13, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/engine/Engines;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lru/localscribe/engine/Engines;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_16
    move-object v0, v1

    move-object v7, v3

    move-object v10, v4

    move-object v5, v11

    move-object v15, v12

    move-object v1, v13

    move-wide/from16 v3, v24

    :goto_16
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :cond_17
    :try_start_2e
    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_29

    :catchall_29
    move-exception v0

    iget-object v2, v13, Lru/localscribe/engine/AsrLookahead;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lru/localscribe/engine/PipelineResources;->setAsrRunning(Z)V

    iget-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/engine/Engines;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lru/localscribe/engine/Engines;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_18
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setStopping(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/localscribe/engine/AsrLookahead;->stopping:Z

    return-void
.end method
