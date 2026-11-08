.class final Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecordingDiarization.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lru/localscribe/core/SpeakerTimeline;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "ru.localscribe.engine.RecordingDiarization$analyze$pair$1$secondary$1"
    f = "RecordingDiarization.kt"
    i = {}
    l = {
        0x1f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
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

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/RecordingDiarization;


# direct methods
.method constructor <init>(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
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
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iput-object p2, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$wav:Ljava/io/File;

    iput-wide p3, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$total:J

    iput-object p5, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$status:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$progressB:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v2, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$wav:Ljava/io/File;

    iget-wide v3, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$total:J

    iget-object v5, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$status:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$progressB:Lkotlin/jvm/functions/Function1;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lru/localscribe/core/SpeakerTimeline;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget v1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lru/localscribe/engine/RecordingDiarization$RescheduleSecondary; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_1

    .line 32
    :catch_1
    move-exception v0

    goto :goto_2

    .line 30
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    :try_start_1
    iget-object v3, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v4, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$wav:Ljava/io/File;

    iget-wide v5, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$total:J

    iget-object v7, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$status:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->$progressB:Lkotlin/jvm/functions/Function1;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x1

    iput v1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->label:I

    invoke-static/range {v3 .. v9}, Lru/localscribe/engine/RecordingDiarization;->access$secondary(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 30
    return-object v0

    .line 31
    :cond_0
    :goto_0
    check-cast v1, Lru/localscribe/core/SpeakerTimeline;
    :try_end_1
    .catch Lru/localscribe/engine/RecordingDiarization$RescheduleSecondary; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_2

    .line 33
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1$secondary$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-virtual {v1}, Lru/localscribe/engine/RecordingDiarization;->getResources()Lru/localscribe/engine/PipelineResources;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "secondary memory fallback"

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Lru/localscribe/engine/PipelineResources;->pause(Ljava/lang/String;I)V

    nop

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
