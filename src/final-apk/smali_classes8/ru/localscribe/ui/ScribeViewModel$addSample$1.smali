.class final Lru/localscribe/ui/ScribeViewModel$addSample$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel;->addSample(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "ru.localscribe.ui.ScribeViewModel$addSample$1"
    f = "ScribeViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x278
    }
    m = "invokeSuspend"
    n = {
        "id"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $profileId:Ljava/lang/String;

.field final synthetic $segmentId:Ljava/lang/String;

.field final synthetic $speakerId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$addSample$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$profileId:Ljava/lang/String;

    iput-object p3, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$speakerId:Ljava/lang/String;

    iput-object p4, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$segmentId:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$addSample$1;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$profileId:Ljava/lang/String;

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$speakerId:Ljava/lang/String;

    iget-object v4, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$segmentId:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lru/localscribe/ui/ScribeViewModel$addSample$1;-><init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$addSample$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$addSample$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$addSample$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$addSample$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getBusy()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getSelected()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v6, v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lru/localscribe/ui/ScribeViewModel$addSample$1$1;

    iget-object v4, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v5, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$profileId:Ljava/lang/String;

    iget-object v7, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$speakerId:Ljava/lang/String;

    iget-object v8, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->$segmentId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lru/localscribe/ui/ScribeViewModel$addSample$1$1;-><init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->label:I

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v0, v6

    :goto_1
    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$addSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const-string v2, "\u041e\u0431\u0440\u0430\u0437\u0435\u0446 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d \u043f\u043e \u0432\u0430\u0448\u0435\u043c\u0443 \u0432\u044b\u0431\u043e\u0440\u0443. \u041f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0443\u0437\u043d\u0430\u0432\u0430\u043d\u0438\u0435 \u043d\u0430 \u0434\u0440\u0443\u0433\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u0438."

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u0437\u0430\u043f\u0438\u0441\u044c"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
