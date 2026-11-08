.class final Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecordingDiarization.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/RecordingDiarization;->analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Pair<",
        "+",
        "Lru/localscribe/core/SpeakerTimeline;",
        "+",
        "Lru/localscribe/core/SpeakerTimeline;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Lru/localscribe/core/SpeakerTimeline;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "ru.localscribe.engine.RecordingDiarization$analyze$pair$1"
    f = "RecordingDiarization.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x23,
        0x24,
        0x26
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "secondary",
        "$this$coroutineScope",
        "secondary",
        "p",
        "$this$coroutineScope",
        "secondary",
        "p",
        "s"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $progressA:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $progressB:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $status:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $total:J

.field final synthetic $wav:Ljava/io/File;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/RecordingDiarization;


# direct methods
.method constructor <init>(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/RecordingDiarization;",
            "Ljava/io/File;",
            "J",
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
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iput-object p2, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$wav:Ljava/io/File;

    iput-wide p3, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$total:J

    iput-object p5, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$status:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressA:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressB:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v2, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$wav:Ljava/io/File;

    iget-wide v3, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$total:J

    iget-object v5, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$status:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressA:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressB:Lkotlin/jvm/functions/Function1;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Lru/localscribe/core/SpeakerTimeline;",
            "Lru/localscribe/core/SpeakerTimeline;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->label:I

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/core/SpeakerTimeline;

    iget-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lru/localscribe/core/SpeakerTimeline;

    .local v3, "s":Lru/localscribe/core/SpeakerTimeline;
    iget-object v4, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lru/localscribe/core/SpeakerTimeline;

    .local v4, "p":Lru/localscribe/core/SpeakerTimeline;
    iget-object v5, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    .local v5, "secondary":Lkotlinx/coroutines/Deferred;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p1

    goto/16 :goto_2

    .end local v3    # "s":Lru/localscribe/core/SpeakerTimeline;
    .end local v4    # "p":Lru/localscribe/core/SpeakerTimeline;
    .end local v5    # "secondary":Lkotlinx/coroutines/Deferred;
    :pswitch_1
    iget-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lru/localscribe/core/SpeakerTimeline;

    .local v3, "p":Lru/localscribe/core/SpeakerTimeline;
    iget-object v4, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/Deferred;

    .local v4, "secondary":Lkotlinx/coroutines/Deferred;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v5, p1

    goto/16 :goto_1

    .end local v3    # "p":Lru/localscribe/core/SpeakerTimeline;
    .end local v4    # "secondary":Lkotlinx/coroutines/Deferred;
    :pswitch_2
    iget-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Deferred;

    .local v3, "secondary":Lkotlinx/coroutines/Deferred;
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v4, p1

    goto :goto_0

    .line 39
    .end local v3    # "secondary":Lkotlinx/coroutines/Deferred;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 27
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-virtual {v3}, Lru/localscribe/engine/RecordingDiarization;->getResources()Lru/localscribe/engine/PipelineResources;

    move-result-object v3

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v9}, Lru/localscribe/engine/PipelineResources;->setDiarizersTogether(Z)V

    .line 29
    :cond_0
    nop

    .line 30
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;

    iget-object v11, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v12, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$wav:Ljava/io/File;

    iget-wide v13, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$total:J

    iget-object v15, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$status:Lkotlin/jvm/functions/Function1;

    iget-object v4, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressB:Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v10

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    .line 35
    .restart local v3    # "secondary":Lkotlinx/coroutines/Deferred;
    iget-object v10, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v11, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$wav:Ljava/io/File;

    iget-wide v12, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$total:J

    iget-object v14, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$status:Lkotlin/jvm/functions/Function1;

    iget-object v15, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressA:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$1:Ljava/lang/Object;

    iput v9, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->label:I

    invoke-static/range {v10 .. v16}, Lru/localscribe/engine/RecordingDiarization;->access$primary(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 27
    return-object v0

    :cond_1
    :goto_0
    check-cast v4, Lru/localscribe/core/SpeakerTimeline;

    .line 36
    .local v4, "p":Lru/localscribe/core/SpeakerTimeline;
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->label:I

    invoke-interface {v3, v5}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    .line 27
    return-object v0

    .line 36
    :cond_2
    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    .line 27
    .local v3, "p":Lru/localscribe/core/SpeakerTimeline;
    .local v4, "secondary":Lkotlinx/coroutines/Deferred;
    :goto_1
    check-cast v5, Lru/localscribe/core/SpeakerTimeline;

    .line 37
    .local v5, "s":Lru/localscribe/core/SpeakerTimeline;
    iget-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-virtual {v6}, Lru/localscribe/engine/RecordingDiarization;->getResources()Lru/localscribe/engine/PipelineResources;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6, v8}, Lru/localscribe/engine/PipelineResources;->setDiarizersTogether(Z)V

    .line 38
    :cond_3
    if-nez v5, :cond_5

    iget-object v9, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v10, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$wav:Ljava/io/File;

    iget-wide v11, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$total:J

    iget-object v13, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$status:Lkotlin/jvm/functions/Function1;

    iget-object v14, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->$progressB:Lkotlin/jvm/functions/Function1;

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->label:I

    invoke-static/range {v9 .. v15}, Lru/localscribe/engine/RecordingDiarization;->access$secondary(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    .line 27
    return-object v0

    .line 38
    :cond_4
    move-object v0, v3

    move-object v3, v5

    move-object v5, v4

    move-object v4, v0

    .local v3, "s":Lru/localscribe/core/SpeakerTimeline;
    .local v4, "p":Lru/localscribe/core/SpeakerTimeline;
    .local v5, "secondary":Lkotlinx/coroutines/Deferred;
    :goto_2
    check-cast v6, Lru/localscribe/core/SpeakerTimeline;

    move-object/from16 v18, v3

    move-object v3, v0

    move-object/from16 v0, v18

    goto :goto_3

    .local v3, "p":Lru/localscribe/core/SpeakerTimeline;
    .local v4, "secondary":Lkotlinx/coroutines/Deferred;
    .local v5, "s":Lru/localscribe/core/SpeakerTimeline;
    :cond_5
    move-object v0, v5

    move-object v6, v0

    move-object v5, v4

    move-object v4, v3

    .end local v3    # "p":Lru/localscribe/core/SpeakerTimeline;
    .local v0, "s":Lru/localscribe/core/SpeakerTimeline;
    .local v4, "p":Lru/localscribe/core/SpeakerTimeline;
    .local v5, "secondary":Lkotlinx/coroutines/Deferred;
    :goto_3
    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    .end local v0    # "s":Lru/localscribe/core/SpeakerTimeline;
    .end local v4    # "p":Lru/localscribe/core/SpeakerTimeline;
    .end local v5    # "secondary":Lkotlinx/coroutines/Deferred;
    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-virtual {v0}, Lru/localscribe/engine/RecordingDiarization;->getResources()Lru/localscribe/engine/PipelineResources;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v8}, Lru/localscribe/engine/PipelineResources;->setDiarizersTogether(Z)V

    :cond_6
    return-object v3

    :goto_4
    iget-object v3, v1, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-virtual {v3}, Lru/localscribe/engine/RecordingDiarization;->getResources()Lru/localscribe/engine/PipelineResources;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v8}, Lru/localscribe/engine/PipelineResources;->setDiarizersTogether(Z)V

    :cond_7
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
