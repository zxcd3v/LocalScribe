.class public final Lru/localscribe/engine/OfflinePipeline;
.super Ljava/lang/Object;
.source "OfflinePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflinePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,345:1\n375#2:346\n*S KotlinDebug\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline\n*L\n298#1:346\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ@\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000b0\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b0\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0012JD\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b0\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001aJ>\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b0\u000f2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000b0\u000fH\u0082@\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lru/localscribe/engine/OfflinePipeline;",
        "",
        "repository",
        "Lru/localscribe/data/Repository;",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "timing",
        "Lru/localscribe/engine/ProcessingTimings;",
        "<init>",
        "(Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V",
        "run",
        "",
        "id",
        "",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "onStatus",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "previewRange",
        "Lru/localscribe/engine/RangePreview;",
        "startMs",
        "",
        "endMs",
        "rediarize",
        "",
        "(Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editText",
        "recording",
        "Lru/localscribe/core/Recording;",
        "report",
        "(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final models:Lru/localscribe/data/ModelStore;

.field private final repository:Lru/localscribe/data/Repository;

.field private final timing:Lru/localscribe/engine/ProcessingTimings;


# direct methods
.method public static synthetic $r8$lambda$M7iv0AutRkWO3ZujgJUAhKFuGhM(F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/OfflinePipeline;->run$lambda$0(F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Lru/localscribe/data/ModelStore;->$stable:I

    sget v1, Lru/localscribe/data/Repository;->$stable:I

    or-int/2addr v0, v1

    sput v0, Lru/localscribe/engine/OfflinePipeline;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "models"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timing"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline;->repository:Lru/localscribe/data/Repository;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline;->models:Lru/localscribe/data/ModelStore;

    iput-object p3, p0, Lru/localscribe/engine/OfflinePipeline;->timing:Lru/localscribe/engine/ProcessingTimings;

    return-void
.end method

.method public synthetic constructor <init>(Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lru/localscribe/engine/ProcessingTimings;

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-direct {p3, p5, p4, p5}, Lru/localscribe/engine/ProcessingTimings;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/localscribe/engine/OfflinePipeline;-><init>(Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V

    return-void
.end method

.method public static final synthetic access$editText(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lru/localscribe/engine/OfflinePipeline;->editText(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline;->models:Lru/localscribe/data/ModelStore;

    return-object v0
.end method

.method public static final synthetic access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline;->repository:Lru/localscribe/data/Repository;

    return-object v0
.end method

.method public static final synthetic access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline;->timing:Lru/localscribe/engine/ProcessingTimings;

    return-object v0
.end method

.method private final editText(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Recording;",
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v11, p4

    instance-of v0, v11, Lru/localscribe/engine/OfflinePipeline$editText$1;

    if-eqz v0, :cond_0

    move-object v0, v11

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$editText$1;

    iget v3, v0, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/OfflinePipeline$editText$1;

    invoke-direct {v0, v1, v11}, Lru/localscribe/engine/OfflinePipeline$editText$1;-><init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v12, v0

    iget-object v13, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    iget v0, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    const-string v15, "LocalScribe"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->I$1:I

    iget-wide v4, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->J$0:J

    iget v6, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->I$0:I

    iget-object v7, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lru/localscribe/engine/LocalTextEditor;

    iget-object v8, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/io/Closeable;

    iget-object v9, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    iget-object v10, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v14, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$1:Ljava/lang/Object;

    move-object v2, v14

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v14, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lru/localscribe/core/Recording;

    :try_start_0
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v9

    move-object v9, v10

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v15, v3

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v2

    move-wide v2, v4

    move-object v5, v9

    move-object v9, v10

    move-object/from16 v16, v13

    move-object v4, v14

    move-object/from16 v17, v15

    goto/16 :goto_3

    :pswitch_1
    iget v4, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->I$0:I

    iget-object v0, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v0, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v0, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lru/localscribe/core/Recording;

    :try_start_1
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v4

    move-object v9, v5

    move-object v4, v6

    move-object v7, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v7, v2

    move v8, v4

    move-object v9, v5

    move-object v4, v6

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v7, v2

    move v8, v4

    move-object v9, v5

    move-object v4, v6

    move-object/from16 v16, v13

    move-object v3, v15

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v7, v2

    move v8, v4

    move-object v9, v5

    move-object v4, v6

    move-object/from16 v16, v13

    goto/16 :goto_7

    :pswitch_2
    invoke-static {v13}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline;->repository:Lru/localscribe/data/Repository;

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lru/localscribe/data/Repository;->segmentCount(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1
    nop

    :try_start_2
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0440\u0435\u0434\u0430\u043a\u0442\u043e\u0440\u0430 Qwen3"
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_13

    :try_start_3
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline;->timing:Lru/localscribe/engine/ProcessingTimings;

    const-string v5, "editor.weights"

    new-instance v6, Lru/localscribe/engine/OfflinePipeline$editText$2;

    invoke-direct {v6, v1, v3}, Lru/localscribe/engine/OfflinePipeline$editText$2;-><init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_13

    move-object/from16 v7, p1

    :try_start_4
    iput-object v7, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$0:Ljava/lang/Object;

    iput-object v2, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$1:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_f

    move-object/from16 v8, p3

    :try_start_5
    iput-object v8, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$2:Ljava/lang/Object;

    iput v4, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->I$0:I

    const/4 v9, 0x1

    iput v9, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    invoke-virtual {v0, v5, v6, v12}, Lru/localscribe/engine/ProcessingTimings;->suspendMeasure(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_c

    if-ne v0, v14, :cond_2

    return-object v14

    :cond_2
    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    :goto_1
    const/4 v0, 0x0

    :try_start_6
    invoke-interface {v12}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    nop

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u0443\u043d\u043a\u0442\u0443\u0430\u0446\u0438\u0438 \u0438 \u0441\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u0439"

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    new-instance v18, Lru/localscribe/engine/LocalTextEditor;

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v0}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v0

    const-string v2, "qwen3-0.6b-q8_0.gguf"

    invoke-virtual {v0, v2}, Lru/localscribe/data/ExtraModels;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v0}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/data/ExtraModels;->editorInstructions()Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0xc

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v24}, Lru/localscribe/engine/LocalTextEditor;-><init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    check-cast v2, Ljava/io/Closeable;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_9

    :try_start_7
    move-object v6, v2

    check-cast v6, Lru/localscribe/engine/LocalTextEditor;

    const/4 v0, 0x0

    move v10, v0

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v18, v10

    const/4 v10, 0x0

    move-object v11, v2

    move-object/from16 v25, v15

    move-object v15, v3

    move-wide/from16 v2, v16

    move-object/from16 v16, v13

    move-object/from16 v17, v25

    move/from16 v13, v18

    :try_start_8
    invoke-direct/range {v0 .. v10}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;-><init>(Lru/localscribe/engine/OfflinePipeline;JLru/localscribe/core/Recording;Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/LocalTextEditor;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$1:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$3:Ljava/lang/Object;

    iput-object v11, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$4:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->L$5:Ljava/lang/Object;

    iput v8, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->I$0:I

    iput-wide v2, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->J$0:J

    iput v13, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->I$1:I

    const/4 v1, 0x2

    iput v1, v12, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    invoke-static {v6, v0, v12}, Lru/localscribe/engine/LocalTextEditorKt;->cancellable(Lru/localscribe/engine/LocalTextEditor;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ne v0, v14, :cond_3

    return-object v14

    :cond_3
    move-object v14, v4

    move-object v1, v5

    move v0, v13

    move-wide v4, v2

    move-object v2, v7

    move-object v7, v6

    move v6, v8

    move-object v8, v11

    :goto_2
    :try_start_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {v8, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object v7, v2

    move v8, v6

    move-object v4, v14

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v7, v2

    move v8, v6

    move-object v4, v14

    move-object/from16 v3, v17

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v7, v2

    move v8, v6

    move-object v4, v14

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v7, v2

    move-wide v2, v4

    move-object v4, v14

    move-object v5, v1

    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v0

    move v6, v8

    move-object v8, v11

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v11, v2

    move-wide/from16 v2, v16

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v1, v0

    move v6, v8

    move-object v8, v11

    :goto_3
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_6

    :catch_6
    move-exception v0

    move v8, v6

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move v8, v6

    move-object/from16 v3, v17

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move v8, v6

    goto/16 :goto_7

    :catch_9
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    goto/16 :goto_4

    :catch_a
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object/from16 v3, v17

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_7

    :catch_c
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto/16 :goto_4

    :catch_d
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v9, v8

    move-object/from16 v3, v17

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto/16 :goto_5

    :catch_e
    move-exception v0

    move-object/from16 v16, v13

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto/16 :goto_7

    :catch_f
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto :goto_4

    :catch_10
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v9, v8

    move-object/from16 v3, v17

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto/16 :goto_5

    :catch_11
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto/16 :goto_7

    :catch_12
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v9, v8

    move-object/from16 v3, v17

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    goto :goto_5

    :catch_13
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    :goto_4
    const-string v1, "Qwen native editor unavailable"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    move-object/from16 v3, v17

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v4

    move-object v2, v7

    move v6, v8

    goto :goto_6

    :catch_14
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object v3, v15

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    :goto_5
    const-string v1, "Qwen editor unavailable"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v4

    move-object v2, v7

    move v6, v8

    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_15
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v16, v13

    move-object v9, v8

    move v8, v4

    move-object v4, v7

    move-object v7, v2

    :goto_7
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic previewRange$default(Lru/localscribe/engine/OfflinePipeline;Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_0
    move/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lru/localscribe/engine/OfflinePipeline;->previewRange(Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic run$default(Lru/localscribe/engine/OfflinePipeline;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    new-instance p2, Lru/localscribe/engine/OfflinePipeline$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lru/localscribe/engine/OfflinePipeline$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/localscribe/engine/OfflinePipeline;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$0(F)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final previewRange(Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/RangePreview;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;-><init>(Lru/localscribe/engine/OfflinePipeline;Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final run(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lru/localscribe/engine/OfflinePipeline$run$3;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lru/localscribe/engine/OfflinePipeline$run$3;-><init>(Lru/localscribe/engine/OfflinePipeline;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
