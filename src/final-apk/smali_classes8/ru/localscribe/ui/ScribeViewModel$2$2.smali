.class final Lru/localscribe/ui/ScribeViewModel$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "running",
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
    c = "ru.localscribe.ui.ScribeViewModel$2$2"
    f = "ScribeViewModel.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x55,
        0x58
    }
    m = "invokeSuspend"
    n = {
        "running",
        "running"
    }
    s = {
        "Z$0",
        "Z$0"
    }
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$2$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$2$2;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$2$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-direct {v0, v1, p2}, Lru/localscribe/ui/ScribeViewModel$2$2;-><init>(Lru/localscribe/ui/ScribeViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lru/localscribe/ui/ScribeViewModel$2$2;->Z$0:Z

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1}, Lru/localscribe/ui/ScribeViewModel$2$2;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lru/localscribe/ui/ScribeViewModel$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$2$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-boolean v0, p0, Lru/localscribe/ui/ScribeViewModel$2$2;->Z$0:Z

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lru/localscribe/ui/ScribeViewModel$2$2;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    goto/16 :goto_2

    :pswitch_1
    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$2$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    move-object v4, v2

    move-object v2, v1

    move v1, v0

    move-object v0, p1

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$2$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v2}, Lru/localscribe/ui/ScribeViewModel;->getPssMiB()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object v2, p0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, v2, Lru/localscribe/ui/ScribeViewModel$2$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v4}, Lru/localscribe/ui/ScribeViewModel;->getPssMiB()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lru/localscribe/ui/ScribeViewModel$2$2$1;

    invoke-direct {v6, v3}, Lru/localscribe/ui/ScribeViewModel$2$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lru/localscribe/ui/ScribeViewModel$2$2;->L$0:Ljava/lang/Object;

    iput-boolean v0, v2, Lru/localscribe/ui/ScribeViewModel$2$2;->Z$0:Z

    const/4 v8, 0x1

    iput v8, v2, Lru/localscribe/ui/ScribeViewModel$2$2;->label:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_0

    return-object v1

    :cond_0
    move v9, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v9

    :goto_1
    invoke-interface {v4, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object p1, v5

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v3, v5, Lru/localscribe/ui/ScribeViewModel$2$2;->L$0:Ljava/lang/Object;

    iput-boolean v1, v5, Lru/localscribe/ui/ScribeViewModel$2$2;->Z$0:Z

    const/4 v4, 0x2

    iput v4, v5, Lru/localscribe/ui/ScribeViewModel$2$2;->label:I

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object v2

    :cond_1
    move-object p1, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v5

    :goto_2
    goto :goto_0

    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
