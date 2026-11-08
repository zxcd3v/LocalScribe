.class final Lru/localscribe/service/ProcessingService$onStartCommand$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProcessingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/service/ProcessingService;->onStartCommand(Landroid/content/Intent;II)I
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProcessingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessingService.kt\nru/localscribe/service/ProcessingService$onStartCommand$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
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
    c = "ru.localscribe.service.ProcessingService$onStartCommand$2"
    f = "ProcessingService.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x33,
        0x35
    }
    m = "invokeSuspend"
    n = {
        "app",
        "wake",
        "app",
        "wake"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/service/ProcessingService;


# direct methods
.method constructor <init>(Lru/localscribe/service/ProcessingService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/service/ProcessingService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/ProcessingService$onStartCommand$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    iput-object p2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

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

    new-instance v0, Lru/localscribe/service/ProcessingService$onStartCommand$2;

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    iget-object v2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lru/localscribe/service/ProcessingService$onStartCommand$2;-><init>(Lru/localscribe/service/ProcessingService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/ProcessingService$onStartCommand$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/ProcessingService$onStartCommand$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/ProcessingService$onStartCommand$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/ProcessingService$onStartCommand$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->label:I

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, " \u041f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0430\u044f \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430."

    const-string v6, "\u041f\u043e\u0432\u0442\u043e\u0440\u043d\u0430\u044f \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0430 \u043d\u0435 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430."

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$0:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lru/localscribe/ScribeApp;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :pswitch_1
    iget-object v2, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lru/localscribe/ScribeApp;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v2

    move-object v14, v8

    goto :goto_0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    invoke-virtual {v2}, Lru/localscribe/service/ProcessingService;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v8, "null cannot be cast to non-null type ru.localscribe.ScribeApp"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, Lru/localscribe/ScribeApp;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    nop

    :try_start_2
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v9

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$1:Ljava/lang/Object;

    iput v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->label:I

    invoke-interface {v9, v10}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v9, v0, :cond_0

    return-object v0

    :cond_0
    move-object v12, v2

    move-object v14, v8

    :goto_0
    :try_start_3
    sget-object v2, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    invoke-virtual {v2}, Lru/localscribe/data/EngineGate;->getMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    new-instance v10, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;

    iget-object v11, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    iget-object v13, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/service/ProcessingService;Lru/localscribe/ScribeApp;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v14, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->L$1:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->label:I

    invoke-virtual {v2, v10, v8}, Lru/localscribe/data/EngineGate;->exclusive(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v2, v0, :cond_1

    return-object v0

    :cond_1
    move-object v2, v12

    move-object v8, v14

    :goto_1
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v9, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v9, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v0

    :cond_3
    :goto_2
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v9, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Lru/localscribe/data/Repository;->rollbackReprocessing(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    invoke-virtual {v0, v7}, Lru/localscribe/service/ProcessingService;->stopForeground(I)V

    :goto_3
    iget-object v0, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    invoke-virtual {v0}, Lru/localscribe/service/ProcessingService;->stopSelf()V

    goto/16 :goto_e

    :cond_7
    const/4 v0, 0x0

    :try_start_4
    const-string v2, "\u0414\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v12

    move-object v8, v14

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v2, v12

    move-object v8, v14

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v12

    move-object v8, v14

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v2, v12

    move-object v8, v14

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object v2, v12

    move-object v8, v14

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v9

    const-string v10, "offline"

    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;

    invoke-virtual {v9, v10, v11}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v9

    iget-object v10, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v9

    if-eqz v9, :cond_9

    move-object v10, v9

    const/4 v9, 0x0

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v11

    const-string v19, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    :cond_8
    move-object/from16 v23, v12

    const v31, 0x1fdbf

    const/16 v32, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v15, v13

    const-wide/16 v13, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const-wide/16 v17, 0x0

    move-object/from16 v21, v20

    const/16 v20, 0x0

    move-object/from16 v24, v21

    const-wide/16 v21, 0x0

    move-object/from16 v25, v24

    const/16 v24, 0x0

    move-object/from16 v26, v25

    const/16 v25, 0x0

    move-object/from16 v27, v26

    const/16 v26, 0x0

    move-object/from16 v28, v27

    const/16 v27, 0x0

    move-object/from16 v29, v28

    const/16 v28, 0x0

    move-object/from16 v30, v29

    const/16 v29, 0x0

    move-object/from16 v33, v30

    const/16 v30, 0x0

    move-object/from16 v7, v33

    invoke-static/range {v10 .. v32}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v11

    invoke-virtual {v7, v11}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    :cond_9
    nop

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v6, v0

    :cond_b
    :goto_5
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lru/localscribe/data/Repository;->rollbackReprocessing(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_d

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    goto/16 :goto_d

    :catch_5
    move-exception v0

    :goto_6
    :try_start_6
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v7

    const-string v9, "offline-native-load"

    move-object v10, v0

    check-cast v10, Ljava/lang/Throwable;

    invoke-virtual {v7, v9, v10}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    iget-object v9, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v7

    if-eqz v7, :cond_e

    move-object v9, v7

    const/4 v7, 0x0

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v10

    nop

    const-string v18, "error"

    nop

    const-string v22, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0434\u0432\u0438\u0436\u043e\u043a. \u041f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u043e\u0441\u0442\u044c ARM64-\u0441\u0431\u043e\u0440\u043a\u0438 \u0441 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u043c."

    const v30, 0x1fdbf

    const/16 v31, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v19, v16

    const-wide/16 v16, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v23, v20

    const-wide/16 v20, 0x0

    move-object/from16 v24, v23

    const/16 v23, 0x0

    move-object/from16 v25, v24

    const/16 v24, 0x0

    move-object/from16 v26, v25

    const/16 v25, 0x0

    move-object/from16 v27, v26

    const/16 v26, 0x0

    move-object/from16 v28, v27

    const/16 v27, 0x0

    move-object/from16 v29, v28

    const/16 v28, 0x0

    move-object/from16 v32, v29

    const/16 v29, 0x0

    move-object/from16 v3, v32

    invoke-static/range {v9 .. v31}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v10

    invoke-virtual {v3, v10}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    :cond_e
    nop

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    move-object v6, v0

    :cond_10
    :goto_7
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lru/localscribe/data/Repository;->rollbackReprocessing(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_11
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_12

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_12
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_c

    :catch_6
    move-exception v0

    :goto_8
    :try_start_7
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v3

    const-string v7, "offline-memory"

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v3, v7, v9}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object v9, v3

    const/4 v3, 0x0

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    nop

    const-string v18, "error"

    nop

    const-string v22, "\u041d\u0435\u0434\u043e\u0441\u0442\u0430\u0442\u043e\u0447\u043d\u043e \u043f\u0430\u043c\u044f\u0442\u0438. \u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0431\u044b\u0441\u0442\u0440\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0438 \u043d\u043e\u0432\u0443\u044e \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0443."

    const v30, 0x1fdbf

    const/16 v31, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v9 .. v31}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v10

    invoke-virtual {v7, v10}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    :cond_13
    nop

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    move-object v6, v0

    :cond_15
    :goto_9
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lru/localscribe/data/Repository;->rollbackReprocessing(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_16
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_17
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_c

    :catch_7
    move-exception v0

    :goto_a
    :try_start_8
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object v9, v3

    const/4 v3, 0x0

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    nop

    const-string v18, "cancelled"

    nop

    const-string v22, "\u041e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0430 \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430. \u041c\u043e\u0436\u043d\u043e \u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c \u0441 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0435\u0433\u043e \u0431\u043b\u043e\u043a\u0430."

    const v30, 0x1fdbf

    const/16 v31, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v9 .. v31}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v10

    invoke-virtual {v7, v10}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    nop

    :cond_18
    nop

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_b

    :cond_19
    move-object v6, v0

    :cond_1a
    :goto_b
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lru/localscribe/data/Repository;->rollbackReprocessing(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1b
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1c

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1c
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_c
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lru/localscribe/service/ProcessingService;->stopForeground(I)V

    goto/16 :goto_3

    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_f
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_10

    :cond_1e
    move-object v6, v3

    :cond_1f
    :goto_10
    invoke-virtual {v8}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lru/localscribe/data/Repository;->rollbackReprocessing(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_20
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_21

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_21
    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_22
    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lru/localscribe/service/ProcessingService;->stopForeground(I)V

    iget-object v3, v1, Lru/localscribe/service/ProcessingService$onStartCommand$2;->this$0:Lru/localscribe/service/ProcessingService;

    invoke-virtual {v3}, Lru/localscribe/service/ProcessingService;->stopSelf()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
