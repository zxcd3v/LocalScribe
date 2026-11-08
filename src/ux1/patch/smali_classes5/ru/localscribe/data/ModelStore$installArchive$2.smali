.class final Lru/localscribe/data/ModelStore$installArchive$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModelStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/data/ModelStore;->installArchive$app_debug(Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "ru.localscribe.data.ModelStore$installArchive$2"
    f = "ModelStore.kt"
    i = {}
    l = {
        0x9c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $bundled:Lru/localscribe/data/BundledModelInfo;

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $openArchive:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lru/localscribe/data/ModelStore;


# direct methods
.method constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/data/ModelStore;",
            "Lru/localscribe/data/BundledModelInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/data/ModelStore$installArchive$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/data/ModelStore$installArchive$2;->this$0:Lru/localscribe/data/ModelStore;

    iput-object p2, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    iput-object p3, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$openArchive:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lru/localscribe/data/ModelStore$installArchive$2;

    iget-object v1, p0, Lru/localscribe/data/ModelStore$installArchive$2;->this$0:Lru/localscribe/data/ModelStore;

    iget-object v2, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    iget-object v3, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$openArchive:Lkotlin/jvm/functions/Function0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lru/localscribe/data/ModelStore$installArchive$2;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/data/ModelStore$installArchive$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/data/ModelStore$installArchive$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/ModelStore$installArchive$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/data/ModelStore$installArchive$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 152
    iget v1, p0, Lru/localscribe/data/ModelStore$installArchive$2;->label:I

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

    .line 153
    sget-object v1, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    invoke-virtual {v1}, Lru/localscribe/data/EngineGate;->getMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    sget-object v1, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    new-instance v2, Lru/localscribe/data/ModelStore$installArchive$2$2;

    iget-object v3, p0, Lru/localscribe/data/ModelStore$installArchive$2;->this$0:Lru/localscribe/data/ModelStore;

    iget-object v4, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    iget-object v5, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lru/localscribe/data/ModelStore$installArchive$2;->$openArchive:Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lru/localscribe/data/ModelStore$installArchive$2$2;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lru/localscribe/data/ModelStore$installArchive$2;->label:I

    invoke-virtual {v1, v2, v3}, Lru/localscribe/data/EngineGate;->exclusive(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 152
    return-object v0

    .line 274
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, "$i$a$-require-ModelStore$installArchive$2$1\\1\\153\\0":I
    nop

    .line 153
    .end local v0    # "$i$a$-require-ModelStore$installArchive$2$1\\1\\153\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u0437\u0430\u043f\u0438\u0441\u044c \u0438 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0443 \u043f\u0435\u0440\u0435\u0434 \u0437\u0430\u043c\u0435\u043d\u043e\u0439 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

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
