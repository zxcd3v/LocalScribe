.class final Lru/localscribe/service/CaptureService$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CaptureService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/service/CaptureService;->onStartCommand(Landroid/content/Intent;II)I
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
    c = "ru.localscribe.service.CaptureService$onStartCommand$1"
    f = "CaptureService.kt"
    i = {}
    l = {
        0x38
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $app:Lru/localscribe/ScribeApp;

.field final synthetic $id:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Lru/localscribe/ScribeApp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ScribeApp;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/CaptureService$onStartCommand$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$app:Lru/localscribe/ScribeApp;

    iput-object p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$id:Ljava/lang/String;

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

    new-instance v0, Lru/localscribe/service/CaptureService$onStartCommand$1;

    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$app:Lru/localscribe/ScribeApp;

    iget-object v2, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lru/localscribe/service/CaptureService$onStartCommand$1;-><init>(Lru/localscribe/ScribeApp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/CaptureService$onStartCommand$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/CaptureService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->label:I

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

    .line 56
    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 55
    return-object v0

    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$1;->$id:Ljava/lang/String;

    .line 59
    nop

    .line 60
    nop

    .line 57
    const-string v2, "Android \u043d\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0438\u043b \u0437\u0430\u043f\u0443\u0441\u043a. \u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430."

    const-string v3, "error"

    invoke-virtual {v0, v1, v2, v3}, Lru/localscribe/data/Repository;->captureStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
