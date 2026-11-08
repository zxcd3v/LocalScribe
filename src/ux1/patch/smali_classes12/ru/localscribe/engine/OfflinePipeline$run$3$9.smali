.class final Lru/localscribe/engine/OfflinePipeline$run$3$9;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OfflinePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "ru.localscribe.engine.OfflinePipeline$run$3$9"
    f = "OfflinePipeline.kt"
    i = {}
    l = {
        0xb6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $displayed:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onStatus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $r:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/OfflinePipeline;


# direct methods
.method constructor <init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/OfflinePipeline;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$run$3$9;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$onStatus:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$onProgress:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$run$3$9;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$onStatus:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$onProgress:Lkotlin/jvm/functions/Function1;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lru/localscribe/engine/OfflinePipeline$run$3$9;-><init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3$9;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3$9;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$run$3$9;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/OfflinePipeline$run$3$9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 182
    iget v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->label:I

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

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/Recording;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$onStatus:Lkotlin/jvm/functions/Function1;

    new-instance v4, Lru/localscribe/engine/OfflinePipeline$run$3$9$1;

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->$onProgress:Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v5, v6}, Lru/localscribe/engine/OfflinePipeline$run$3$9$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$9;->label:I

    invoke-static {v1, v2, v3, v4, v5}, Lru/localscribe/engine/OfflinePipeline;->access$editText(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

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
