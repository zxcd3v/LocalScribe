.class final Lru/localscribe/ScribeApp$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeApp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ScribeApp;->onCreate()V
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
    c = "ru.localscribe.ScribeApp$onCreate$2"
    f = "ScribeApp.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lru/localscribe/ScribeApp;


# direct methods
.method constructor <init>(Lru/localscribe/ScribeApp;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ScribeApp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ScribeApp$onCreate$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

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

    new-instance v0, Lru/localscribe/ScribeApp$onCreate$2;

    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-direct {v0, v1, p2}, Lru/localscribe/ScribeApp$onCreate$2;-><init>(Lru/localscribe/ScribeApp;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ScribeApp$onCreate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ScribeApp$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ScribeApp$onCreate$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ScribeApp$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    const-string v0, "automatic-memory-085"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 25
    iget v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    nop

    .line 27
    :try_start_0
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v1

    invoke-virtual {v1}, Lru/localscribe/data/Diagnostics;->previousExit()V

    .line 28
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v1

    invoke-virtual {v1}, Lru/localscribe/data/ModelStore;->recover()V

    .line 29
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v1

    invoke-virtual {v1}, Lru/localscribe/data/Repository;->recover()V

    .line 30
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    const-string v2, "voice-memory-migrations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lru/localscribe/ScribeApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    .local v1, "migration":Landroid/content/SharedPreferences;
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v2}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/Repository;->rememberNamedVoices()V

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    :cond_0
    iget-object v0, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getPreparation()Lru/localscribe/data/ModelPreparation;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v3, v4, v2}, Lru/localscribe/data/ModelPreparation;->prepare$default(Lru/localscribe/data/ModelPreparation;ZILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "migration":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v1

    const-string v2, "startup-storage"

    invoke-virtual {v1, v2, v0}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getPreparation()Lru/localscribe/data/ModelPreparation;

    move-result-object v1

    invoke-virtual {v1}, Lru/localscribe/data/ModelPreparation;->startupFailed()V

    .line 40
    iget-object v1, p0, Lru/localscribe/ScribeApp$onCreate$2;->this$0:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 42
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
