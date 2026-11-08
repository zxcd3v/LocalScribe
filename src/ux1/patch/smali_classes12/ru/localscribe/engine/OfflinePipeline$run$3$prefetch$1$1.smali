.class final Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OfflinePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/OfflinePipeline$run$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "ru.localscribe.engine.OfflinePipeline$run$3$prefetch$1$1"
    f = "OfflinePipeline.kt"
    i = {}
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $r:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $total:J

.field final synthetic $wav:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $worker:Lru/localscribe/engine/AsrLookahead;

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/OfflinePipeline;


# direct methods
.method constructor <init>(Lru/localscribe/engine/AsrLookahead;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;JLru/localscribe/engine/OfflinePipeline;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/AsrLookahead;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;J",
            "Lru/localscribe/engine/OfflinePipeline;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$worker:Lru/localscribe/engine/AsrLookahead;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$wav:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$total:J

    iput-object p6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iput-object p7, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$id:Ljava/lang/String;

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

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$worker:Lru/localscribe/engine/AsrLookahead;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$wav:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$total:J

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v7, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$id:Ljava/lang/String;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;-><init>(Lru/localscribe/engine/AsrLookahead;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;JLru/localscribe/engine/OfflinePipeline;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$worker:Lru/localscribe/engine/AsrLookahead;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$wav:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/localscribe/core/Recording;

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getCheckpointSamples()J

    move-result-wide v4

    iget-wide v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$total:J

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v1}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v1

    iget-object v8, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->$id:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lru/localscribe/data/Repository;->protectedReprocessingWindows(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x1

    iput v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$prefetch$1$1;->label:I

    invoke-virtual/range {v2 .. v9}, Lru/localscribe/engine/AsrLookahead;->run(Ljava/io/File;JJLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 91
    return-object v0

    .line 93
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
