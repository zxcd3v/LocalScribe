.class final Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalTextEditor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/LocalTextEditorKt;->cancellable(Lru/localscribe/engine/LocalTextEditor;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
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
    c = "ru.localscribe.engine.LocalTextEditorKt$cancellable$2"
    f = "LocalTextEditor.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x8d,
        0x8f,
        0x8f
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "watcher",
        "$this$coroutineScope",
        "watcher",
        "$this$coroutineScope",
        "watcher"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_cancellable:Lru/localscribe/engine/LocalTextEditor;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/LocalTextEditor;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lru/localscribe/engine/LocalTextEditor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->$this_cancellable:Lru/localscribe/engine/LocalTextEditor;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;

    iget-object v1, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->$block:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->$this_cancellable:Lru/localscribe/engine/LocalTextEditor;

    invoke-direct {v0, v1, v2, p2}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;-><init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/LocalTextEditor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    iget v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->label:I

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$2:Ljava/lang/Object;

    iget-object v2, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Job;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2$watcher$1;

    iget-object v2, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->$this_cancellable:Lru/localscribe/engine/LocalTextEditor;

    invoke-direct {v0, v2, v8}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2$watcher$1;-><init>(Lru/localscribe/engine/LocalTextEditor;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    move-object v2, v0

    nop

    :try_start_1
    iget-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->$block:Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->label:I

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v7, :cond_0

    return-object v7

    :cond_0
    :goto_0
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2$1;

    invoke-direct {v4, v2, v8}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$1:Ljava/lang/Object;

    iput-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_1

    return-object v7

    :cond_1
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2$1;

    invoke-direct {v4, v2, v8}, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$1:Ljava/lang/Object;

    iput-object v0, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->L$2:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, p0, Lru/localscribe/engine/LocalTextEditorKt$cancellable$2;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_2

    return-object v7

    :cond_2
    :goto_2
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
