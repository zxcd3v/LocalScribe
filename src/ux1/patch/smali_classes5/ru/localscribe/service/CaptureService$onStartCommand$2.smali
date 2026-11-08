.class final Lru/localscribe/service/CaptureService$onStartCommand$2;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService$onStartCommand$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,441:1\n1#2:442\n*E\n"
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
    c = "ru.localscribe.service.CaptureService$onStartCommand$2"
    f = "CaptureService.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x49,
        0x53
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

.field final synthetic this$0:Lru/localscribe/service/CaptureService;


# direct methods
.method constructor <init>(Lru/localscribe/service/CaptureService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/service/CaptureService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/CaptureService$onStartCommand$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    iput-object p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

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

    new-instance v0, Lru/localscribe/service/CaptureService$onStartCommand$2;

    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    iget-object v2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2;-><init>(Lru/localscribe/service/CaptureService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/CaptureService$onStartCommand$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/CaptureService$onStartCommand$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->label:I

    const-string v3, "error"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v2, "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lru/localscribe/ScribeApp;

    .local v6, "app":Lru/localscribe/ScribeApp;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v2

    move-object/from16 v2, p1

    goto/16 :goto_2

    .end local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "app":Lru/localscribe/ScribeApp;
    :pswitch_1
    iget-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .restart local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v6, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lru/localscribe/ScribeApp;

    .restart local v6    # "app":Lru/localscribe/ScribeApp;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v2

    move-object v10, v6

    goto :goto_0

    .end local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "app":Lru/localscribe/ScribeApp;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v2}, Lru/localscribe/service/CaptureService;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type ru.localscribe.ScribeApp"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Lru/localscribe/ScribeApp;

    .line 71
    .restart local v6    # "app":Lru/localscribe/ScribeApp;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 72
    .restart local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 73
    :try_start_2
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getReady()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v7

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$1:Ljava/lang/Object;

    iput v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->label:I

    invoke-interface {v7, v8}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v7, v0, :cond_0

    .line 69
    return-object v0

    .line 73
    :cond_0
    move-object v12, v2

    move-object v10, v6

    .line 74
    .end local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "app":Lru/localscribe/ScribeApp;
    .local v10, "app":Lru/localscribe/ScribeApp;
    .local v12, "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_0
    :try_start_3
    sget-object v2, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    invoke-virtual {v2}, Lru/localscribe/data/EngineGate;->getMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v2

    if-nez v2, :cond_7

    .line 76
    nop

    .line 77
    iget-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    check-cast v2, Landroid/content/Context;

    .line 78
    const-string v6, "android.permission.RECORD_AUDIO"

    .line 76
    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 75
    :goto_1
    if-eqz v2, :cond_6

    .line 83
    sget-object v2, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    new-instance v8, Lru/localscribe/service/CaptureService$onStartCommand$2$3;

    iget-object v9, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    iget-object v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lru/localscribe/service/CaptureService$onStartCommand$2$3;-><init>(Ljava/lang/String;Lru/localscribe/ScribeApp;Lru/localscribe/service/CaptureService;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->label:I

    invoke-virtual {v2, v8, v6}, Lru/localscribe/data/EngineGate;->exclusive(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v0, :cond_2

    .line 69
    return-object v0

    .line 83
    :cond_2
    move-object v6, v10

    .line 69
    .end local v10    # "app":Lru/localscribe/ScribeApp;
    .restart local v6    # "app":Lru/localscribe/ScribeApp;
    :goto_2
    :try_start_4
    check-cast v2, Lkotlin/Unit;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 442
    .local v0, "it\\3":Lru/localscribe/core/Recording;
    const/4 v2, 0x0

    .line 423
    .local v2, "$i$a$-let-CaptureService$onStartCommand$2$4\\3\\423\\0":I
    sget-object v3, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lru/localscribe/audio/WavFile$Companion;->repair(Ljava/io/File;)V

    .line 424
    .end local v0    # "it\\3":Lru/localscribe/core/Recording;
    .end local v2    # "$i$a$-let-CaptureService$onStartCommand$2$4\\3\\423\\0":I
    :cond_3
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 442
    .local v0, "it\\4":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    .line 424
    .local v2, "$i$a$-let-CaptureService$onStartCommand$2$5\\4\\424\\0":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .end local v0    # "it\\4":Landroid/os/PowerManager$WakeLock;
    .end local v2    # "$i$a$-let-CaptureService$onStartCommand$2$5\\4\\424\\0":I
    :cond_4
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 426
    :cond_5
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v13, Lru/localscribe/service/LiveState;

    const/16 v25, 0x1ff

    const/16 v26, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v13 .. v26}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 427
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v0, v5}, Lru/localscribe/service/CaptureService;->stopForeground(I)V

    .line 428
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v0}, Lru/localscribe/service/CaptureService;->stopSelf()V

    .line 429
    goto/16 :goto_8

    .line 423
    :catchall_0
    move-exception v0

    move-object v2, v12

    goto/16 :goto_9

    .line 419
    :catch_0
    move-exception v0

    move-object v2, v12

    goto :goto_3

    .line 412
    :catch_1
    move-exception v0

    move-object v2, v12

    goto/16 :goto_4

    .line 409
    :catch_2
    move-exception v0

    move-object v2, v12

    goto/16 :goto_5

    .line 407
    :catch_3
    move-exception v0

    move-object v2, v12

    goto/16 :goto_6

    .line 75
    .end local v6    # "app":Lru/localscribe/ScribeApp;
    .restart local v10    # "app":Lru/localscribe/ScribeApp;
    :cond_6
    const/4 v0, 0x0

    .line 81
    .local v0, "$i$a$-require-CaptureService$onStartCommand$2$2\\2\\75\\0":I
    :try_start_5
    const-string v2, "\u041d\u0435\u0442 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430"

    .line 75
    .end local v0    # "$i$a$-require-CaptureService$onStartCommand$2$2\\2\\75\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "app":Lru/localscribe/ScribeApp;
    .end local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 442
    .restart local v10    # "app":Lru/localscribe/ScribeApp;
    .restart local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x0

    .line 74
    .local v0, "$i$a$-require-CaptureService$onStartCommand$2$1\\1\\74\\0":I
    const-string v2, "\u0414\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f"

    .end local v0    # "$i$a$-require-CaptureService$onStartCommand$2$1\\1\\74\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "app":Lru/localscribe/ScribeApp;
    .end local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 423
    .restart local v10    # "app":Lru/localscribe/ScribeApp;
    .restart local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v6, v10

    move-object v2, v12

    goto/16 :goto_9

    .line 419
    :catch_4
    move-exception v0

    move-object v6, v10

    move-object v2, v12

    goto :goto_3

    .line 412
    :catch_5
    move-exception v0

    move-object v6, v10

    move-object v2, v12

    goto/16 :goto_4

    .line 409
    :catch_6
    move-exception v0

    move-object v6, v10

    move-object v2, v12

    goto/16 :goto_5

    .line 407
    :catch_7
    move-exception v0

    move-object v6, v10

    move-object v2, v12

    goto/16 :goto_6

    .line 423
    .end local v10    # "app":Lru/localscribe/ScribeApp;
    .end local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "app":Lru/localscribe/ScribeApp;
    :catchall_2
    move-exception v0

    goto/16 :goto_9

    .line 419
    :catch_8
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v7

    const-string v8, "capture"

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    iget-object v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    :cond_8
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9, v3}, Lru/localscribe/data/Repository;->captureStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 442
    .local v0, "it\\11":Lru/localscribe/core/Recording;
    const/4 v3, 0x0

    .line 423
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$4\\11\\423\\0":I
    sget-object v7, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lru/localscribe/audio/WavFile$Companion;->repair(Ljava/io/File;)V

    .line 424
    .end local v0    # "it\\11":Lru/localscribe/core/Recording;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$4\\11\\423\\0":I
    :cond_9
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_a

    .line 442
    .local v0, "it\\12":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$5\\12\\424\\0":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .end local v0    # "it\\12":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$5\\12\\424\\0":I
    :cond_a
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 426
    :cond_b
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v7, Lru/localscribe/service/LiveState;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v20}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    .line 412
    :catch_9
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/LinkageError;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v7

    const-string v8, "capture-native-load"

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    .line 415
    iget-object v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    .line 416
    const-string v9, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0434\u0432\u0438\u0436\u043e\u043a. \u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u0435 \u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0443."

    .line 417
    nop

    .line 414
    invoke-virtual {v7, v8, v9, v3}, Lru/localscribe/data/Repository;->captureStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 423
    .end local v0    # "e":Ljava/lang/LinkageError;
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 442
    .local v0, "it\\9":Lru/localscribe/core/Recording;
    const/4 v3, 0x0

    .line 423
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$4\\9\\423\\0":I
    sget-object v7, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lru/localscribe/audio/WavFile$Companion;->repair(Ljava/io/File;)V

    .line 424
    .end local v0    # "it\\9":Lru/localscribe/core/Recording;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$4\\9\\423\\0":I
    :cond_c
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_d

    .line 442
    .local v0, "it\\10":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$5\\10\\424\\0":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .end local v0    # "it\\10":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$5\\10\\424\\0":I
    :cond_d
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 426
    :cond_e
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v7, Lru/localscribe/service/LiveState;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v20}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    .line 409
    :catch_a
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_8
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v7

    const-string v8, "capture-memory"

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    iget-object v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    const-string v9, "\u041d\u0435\u0434\u043e\u0441\u0442\u0430\u0442\u043e\u0447\u043d\u043e \u043f\u0430\u043c\u044f\u0442\u0438."

    invoke-virtual {v7, v8, v9, v3}, Lru/localscribe/data/Repository;->captureStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 423
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 442
    .local v0, "it\\7":Lru/localscribe/core/Recording;
    const/4 v3, 0x0

    .line 423
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$4\\7\\423\\0":I
    sget-object v7, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lru/localscribe/audio/WavFile$Companion;->repair(Ljava/io/File;)V

    .line 424
    .end local v0    # "it\\7":Lru/localscribe/core/Recording;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$4\\7\\423\\0":I
    :cond_f
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_10

    .line 442
    .local v0, "it\\8":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$5\\8\\424\\0":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .end local v0    # "it\\8":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$5\\8\\424\\0":I
    :cond_10
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 426
    :cond_11
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v7, Lru/localscribe/service/LiveState;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v20}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    .line 407
    :catch_b
    move-exception v0

    .line 408
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    :goto_6
    :try_start_9
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    iget-object v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    const-string v9, "\u0417\u0430\u043f\u0438\u0441\u044c \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u0430."

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lru/localscribe/data/Repository;->captureStopped$default(Lru/localscribe/data/Repository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 423
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 442
    .local v0, "it\\5":Lru/localscribe/core/Recording;
    const/4 v3, 0x0

    .line 423
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$4\\5\\423\\0":I
    sget-object v7, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lru/localscribe/audio/WavFile$Companion;->repair(Ljava/io/File;)V

    .line 424
    .end local v0    # "it\\5":Lru/localscribe/core/Recording;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$4\\5\\423\\0":I
    :cond_12
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 442
    .local v0, "it\\6":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$a$-let-CaptureService$onStartCommand$2$5\\6\\424\\0":I
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .end local v0    # "it\\6":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-let-CaptureService$onStartCommand$2$5\\6\\424\\0":I
    :cond_13
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 426
    :cond_14
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v7, Lru/localscribe/service/LiveState;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v20}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    invoke-interface {v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 427
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v0, v5}, Lru/localscribe/service/CaptureService;->stopForeground(I)V

    .line 428
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v0}, Lru/localscribe/service/CaptureService;->stopSelf()V

    .line 429
    move-object v12, v2

    .line 430
    .end local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 423
    .end local v12    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v2    # "wake":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_9
    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 442
    .local v3, "it\\13":Lru/localscribe/core/Recording;
    const/4 v7, 0x0

    .line 423
    .local v7, "$i$a$-let-CaptureService$onStartCommand$2$4\\13\\423\\0":I
    sget-object v8, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lru/localscribe/audio/WavFile$Companion;->repair(Ljava/io/File;)V

    .line 424
    .end local v3    # "it\\13":Lru/localscribe/core/Recording;
    .end local v7    # "$i$a$-let-CaptureService$onStartCommand$2$4\\13\\423\\0":I
    :cond_15
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_16

    .line 442
    .local v3, "it\\14":Landroid/os/PowerManager$WakeLock;
    const/4 v7, 0x0

    .line 424
    .local v7, "$i$a$-let-CaptureService$onStartCommand$2$5\\14\\424\\0":I
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .end local v3    # "it\\14":Landroid/os/PowerManager$WakeLock;
    .end local v7    # "$i$a$-let-CaptureService$onStartCommand$2$5\\14\\424\\0":I
    :cond_16
    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v7, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->$id:Ljava/lang/String;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 426
    :cond_17
    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    new-instance v7, Lru/localscribe/service/LiveState;

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v20}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 427
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v3, v5}, Lru/localscribe/service/CaptureService;->stopForeground(I)V

    .line 428
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2;->this$0:Lru/localscribe/service/CaptureService;

    invoke-virtual {v3}, Lru/localscribe/service/CaptureService;->stopSelf()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
