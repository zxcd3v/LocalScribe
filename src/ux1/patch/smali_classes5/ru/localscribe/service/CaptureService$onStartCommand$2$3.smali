.class final Lru/localscribe/service/CaptureService$onStartCommand$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CaptureService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/service/CaptureService$onStartCommand$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService$onStartCommand$2$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,441:1\n1#2:442\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"
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
    c = "ru.localscribe.service.CaptureService$onStartCommand$2$3"
    f = "CaptureService.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x97
    }
    m = "invokeSuspend"
    n = {
        "r",
        "modelInfo",
        "oldVoiceModel",
        "file",
        "written",
        "boundaries",
        "captured",
        "writer\\4",
        "processor\\5",
        "initialSamples",
        "resumeSamples",
        "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0",
        "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$8",
        "L$10",
        "J$0",
        "J$1",
        "I$0",
        "I$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $app:Lru/localscribe/ScribeApp;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $wake:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/service/CaptureService;


# direct methods
.method public static synthetic $r8$lambda$MzZJvw-20ZVN-pnuLpB4gdj8Bn4(Lru/localscribe/ScribeApp;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->invokeSuspend$lambda$3$0(Lru/localscribe/ScribeApp;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lru/localscribe/ScribeApp;Lru/localscribe/service/CaptureService;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lru/localscribe/ScribeApp;",
            "Lru/localscribe/service/CaptureService;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/CaptureService$onStartCommand$2$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    iput-object p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    iput-object p3, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->this$0:Lru/localscribe/service/CaptureService;

    iput-object p4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$wake:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$0(Lru/localscribe/ScribeApp;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3
    .param p0, "$app"    # Lru/localscribe/ScribeApp;
    .param p1, "it"    # Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/localscribe/data/Diagnostics;->stage(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
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

    new-instance v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;

    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    iget-object v2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    iget-object v3, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->this$0:Lru/localscribe/service/CaptureService;

    iget-object v4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$wake:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lru/localscribe/service/CaptureService$onStartCommand$2$3;-><init>(Ljava/lang/String;Lru/localscribe/ScribeApp;Lru/localscribe/service/CaptureService;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 51
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->I$1:I

    .local v0, "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    iget v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->I$0:I

    .local v2, "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    iget-wide v6, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->J$1:J

    .local v6, "resumeSamples":J
    iget-wide v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->J$0:J

    .local v8, "initialSamples":J
    iget-object v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$10:Ljava/lang/Object;

    check-cast v10, Lru/localscribe/engine/LiveProcessor;

    .local v10, "processor\\5":Lru/localscribe/engine/LiveProcessor;
    iget-object v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$9:Ljava/lang/Object;

    check-cast v11, Ljava/io/Closeable;

    iget-object v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$8:Ljava/lang/Object;

    check-cast v12, Lru/localscribe/audio/WavFile;

    .local v12, "writer\\4":Lru/localscribe/audio/WavFile;
    iget-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$7:Ljava/lang/Object;

    check-cast v13, Ljava/io/Closeable;

    iget-object v14, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$6:Ljava/lang/Object;

    check-cast v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    .local v14, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v15, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$5:Ljava/lang/Object;

    check-cast v15, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .local v15, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    iget-object v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    .local v5, "written":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .local v3, "file":Ljava/io/File;
    iget-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v17, v0

    .end local v0    # "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    .local v4, "oldVoiceModel":Ljava/lang/String;
    .local v17, "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lru/localscribe/core/ModelInfo;

    .local v18, "modelInfo":Lru/localscribe/core/ModelInfo;
    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$0:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v19, "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v17

    goto/16 :goto_6

    .line 146
    .end local v10    # "processor\\5":Lru/localscribe/engine/LiveProcessor;
    .end local v17    # "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    .line 83
    .end local v2    # "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "oldVoiceModel":Ljava/lang/String;
    .end local v5    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v6    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v12    # "writer\\4":Lru/localscribe/audio/WavFile;
    .end local v14    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v15    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v18    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v19    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    sget-object v2, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v2}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 85
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lru/localscribe/data/Repository;->prepareCapture(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lru/localscribe/core/Recording;

    const v38, 0x1fdbf

    const/16 v39, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "capture_pending"

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v17 .. v39}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v4

    invoke-virtual {v3, v4}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V

    .line 87
    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .line 91
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getDurationMs()J

    move-result-wide v19

    .line 88
    new-instance v17, Lru/localscribe/service/LiveState;

    .line 89
    iget-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    .line 91
    nop

    .line 88
    nop

    .line 90
    nop

    .line 88
    nop

    .line 92
    nop

    .line 88
    const/16 v29, 0xbc

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-wide/16 v26, 0x0

    const-string v28, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u044b\u0445 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    move-object/from16 v18, v4

    invoke-direct/range {v17 .. v30}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    move-object/from16 v4, v17

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 94
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v3

    const-string v4, "capture: verify models"

    invoke-virtual {v3, v4}, Lru/localscribe/data/Diagnostics;->stage(Ljava/lang/String;)V

    .line 95
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v3

    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lru/localscribe/data/ModelStore;->verify(Lru/localscribe/core/Settings;Z)V

    .line 96
    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v3

    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lru/localscribe/data/ModelStore;->info(Lru/localscribe/core/Settings;Z)Lru/localscribe/core/ModelInfo;

    move-result-object v32

    .line 97
    .local v32, "modelInfo":Lru/localscribe/core/ModelInfo;
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v3

    const-string v4, "speaker.onnx"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 99
    .local v3, "oldVoiceModel":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 100
    invoke-virtual/range {v32 .. v32}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    .line 98
    :goto_2
    if-eqz v4, :cond_a

    .line 104
    iget-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->this$0:Lru/localscribe/service/CaptureService;

    invoke-static {v4}, Lru/localscribe/service/CaptureService;->access$getStopping$p(Lru/localscribe/service/CaptureService;)Z

    move-result v4

    const-string v7, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e \u0434\u043e \u0437\u0430\u043f\u0443\u0441\u043a\u0430 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430"

    if-nez v4, :cond_9

    .line 107
    new-instance v4, Ljava/io/File;

    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lru/localscribe/core/Recording;

    invoke-virtual {v8}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_3

    .line 108
    new-instance v4, Ljava/io/File;

    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lru/localscribe/core/Recording;

    invoke-virtual {v10}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    const/16 v4, 0x2c

    int-to-long v12, v4

    sub-long/2addr v10, v12

    const/4 v4, 0x2

    int-to-long v12, v4

    div-long/2addr v10, v12

    invoke-static {v10, v11, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v10

    goto :goto_3

    .line 109
    :cond_3
    move-wide v10, v8

    .line 107
    :goto_3
    nop

    .line 106
    nop

    .line 111
    .local v10, "initialSamples":J
    sget-object v4, Lru/localscribe/service/CaptureRecovery;->INSTANCE:Lru/localscribe/service/CaptureRecovery;

    iget-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lru/localscribe/core/Recording;

    invoke-virtual {v12}, Lru/localscribe/core/Recording;->getLiveCheckpointSamples()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12, v10, v11}, Lru/localscribe/service/CaptureRecovery;->resumeAt(Ljava/lang/Long;J)J

    move-result-wide v26

    .line 110
    move-wide/from16 v12, v26

    .line 112
    .local v12, "resumeSamples":J
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Lru/localscribe/core/Recording;

    const v38, 0x1f5bf    # 1.79993E-40f

    const/16 v39, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "capture_pending"

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v17 .. v39}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v4

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 113
    iget-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v4}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v4

    iget-object v14, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lru/localscribe/core/Recording;

    invoke-virtual {v4, v14}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V

    .line 114
    new-instance v4, Ljava/io/File;

    iget-object v14, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lru/localscribe/core/Recording;

    invoke-virtual {v14}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, "file":Ljava/io/File;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v14, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 117
    .local v14, "written":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v22, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object/from16 v15, v22

    .local v15, "$this$invokeSuspend_u24lambda_u241\\2":Ljava/util/concurrent/ConcurrentLinkedQueue;
    const/16 v17, 0x0

    .line 118
    .local v17, "$i$a$-apply-CaptureService$onStartCommand$2$3$boundaries$1\\2\\117\\0":I
    cmp-long v18, v12, v10

    if-gez v18, :cond_4

    move-wide/from16 v23, v8

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-wide/from16 v23, v8

    .line 119
    :goto_4
    nop

    .line 117
    .end local v15    # "$this$invokeSuspend_u24lambda_u241\\2":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v17    # "$i$a$-apply-CaptureService$onStartCommand$2$3$boundaries$1\\2\\117\\0":I
    nop

    .line 116
    move-object/from16 v8, v22

    .line 120
    .local v8, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 121
    .local v9, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v15, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$wake:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 122
    iget-object v6, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->this$0:Lru/localscribe/service/CaptureService;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v6, v5}, Lru/localscribe/service/CaptureService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 124
    nop

    .line 125
    nop

    .line 123
    const-string v6, "LocalScribe:microphone"

    move-object/from16 v34, v3

    const/4 v3, 0x1

    .end local v3    # "oldVoiceModel":Ljava/lang/String;
    .local v34, "oldVoiceModel":Ljava/lang/String;
    invoke-virtual {v5, v3, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 127
    nop

    .line 442
    move-object v3, v5

    .local v3, "$this$invokeSuspend_u24lambda_u242\\3":Landroid/os/PowerManager$WakeLock;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$a$-apply-CaptureService$onStartCommand$2$3$2\\3\\127\\0":I
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v8    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v9    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v26, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .local v27, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-wide/32 v8, 0x5265c00

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 121
    .end local v3    # "$this$invokeSuspend_u24lambda_u242\\3":Landroid/os/PowerManager$WakeLock;
    .end local v6    # "$i$a$-apply-CaptureService$onStartCommand$2$3$2\\3\\127\\0":I
    iput-object v5, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .line 131
    sget-object v17, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-wide/from16 v18, v10

    .end local v10    # "initialSamples":J
    .local v18, "initialSamples":J
    invoke-static/range {v17 .. v22}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v37

    .line 129
    move-wide/from16 v29, v18

    .end local v18    # "initialSamples":J
    .local v29, "initialSamples":J
    new-instance v35, Lru/localscribe/service/LiveState;

    .line 130
    iget-object v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    .line 131
    nop

    .line 129
    nop

    .line 133
    nop

    .line 129
    nop

    .line 132
    nop

    .line 129
    const/16 v47, 0xbc

    const/16 v48, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    const-wide/16 v44, 0x0

    const-string v46, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u044b\u0445 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    move-object/from16 v36, v5

    invoke-direct/range {v35 .. v48}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    move-object/from16 v5, v35

    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 137
    new-instance v3, Lru/localscribe/audio/WavFile;

    cmp-long v5, v29, v23

    if-lez v5, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    invoke-direct {v3, v4, v6}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;Z)V

    check-cast v3, Ljava/io/Closeable;

    iget-object v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    iget-object v6, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->this$0:Lru/localscribe/service/CaptureService;

    iget-object v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    :try_start_1
    move-object/from16 v21, v3

    check-cast v21, Lru/localscribe/audio/WavFile;

    move-object/from16 v9, v21

    .local v9, "writer\\4":Lru/localscribe/audio/WavFile;
    const/4 v10, 0x0

    .line 138
    .local v10, "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    invoke-virtual {v9}, Lru/localscribe/audio/WavFile;->checkpoint()V

    .line 139
    new-instance v17, Lru/localscribe/engine/LiveProcessor;

    .line 140
    iget-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v18, v11

    check-cast v18, Lru/localscribe/core/Recording;

    .line 141
    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v19

    .line 142
    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v20

    .line 143
    nop

    .line 146
    new-instance v11, Lru/localscribe/service/CaptureService$onStartCommand$2$3$$ExternalSyntheticLambda0;

    invoke-direct {v11, v5}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/ScribeApp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 139
    move-object/from16 v23, v11

    move-wide/from16 v21, v12

    .end local v12    # "resumeSamples":J
    .local v21, "resumeSamples":J
    :try_start_2
    invoke-direct/range {v17 .. v23}, Lru/localscribe/engine/LiveProcessor;-><init>(Lru/localscribe/core/Recording;Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;JLkotlin/jvm/functions/Function1;)V

    move-object/from16 v11, v17

    check-cast v11, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 146
    :try_start_3
    move-object/from16 v28, v11

    check-cast v28, Lru/localscribe/engine/LiveProcessor;

    .local v28, "processor\\5":Lru/localscribe/engine/LiveProcessor;
    const/4 v12, 0x0

    .line 147
    .local v12, "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    invoke-static {v6}, Lru/localscribe/service/CaptureService;->access$getStopping$p(Lru/localscribe/service/CaptureService;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 151
    new-instance v17, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v31, 0x0

    move-object/from16 v25, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v8

    move-object/from16 v23, v14

    move-object/from16 v24, v27

    move-wide/from16 v49, v21

    move-object/from16 v21, v9

    move-object/from16 v22, v26

    move-wide/from16 v26, v49

    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "writer\\4":Lru/localscribe/audio/WavFile;
    .end local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v21, "writer\\4":Lru/localscribe/audio/WavFile;
    .local v22, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .local v23, "written":Ljava/util/concurrent/atomic/AtomicLong;
    .local v24, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v25, "file":Ljava/io/File;
    .local v26, "resumeSamples":J
    :try_start_4
    invoke-direct/range {v17 .. v31}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;-><init>(Lru/localscribe/ScribeApp;Ljava/lang/String;Lru/localscribe/service/CaptureService;Lru/localscribe/audio/WavFile;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLru/localscribe/engine/LiveProcessor;JLkotlin/coroutines/Continuation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v5, v26

    move-wide/from16 v8, v29

    .end local v25    # "file":Ljava/io/File;
    .end local v26    # "resumeSamples":J
    .end local v29    # "initialSamples":J
    .restart local v4    # "file":Ljava/io/File;
    .local v5, "resumeSamples":J
    .local v8, "initialSamples":J
    :try_start_5
    move-object/from16 v7, v17

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$0:Ljava/lang/Object;

    invoke-static/range {v32 .. v32}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$1:Ljava/lang/Object;

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$3:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$4:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$5:Ljava/lang/Object;

    invoke-static/range {v24 .. v24}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$6:Ljava/lang/Object;

    iput-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$7:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$8:Ljava/lang/Object;

    iput-object v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$9:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->L$10:Ljava/lang/Object;

    iput-wide v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->J$0:J

    iput-wide v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->J$1:J

    iput v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->I$0:I

    iput v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->I$1:I

    const/4 v13, 0x1

    iput v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->label:I

    invoke-static {v7, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v7, v0, :cond_6

    .line 83
    return-object v0

    .line 151
    :cond_6
    move-object/from16 v19, v2

    move-object v13, v3

    move-object v3, v4

    move-wide v6, v5

    move v2, v10

    move v0, v12

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-object/from16 v5, v23

    move-object/from16 v14, v24

    move-object/from16 v10, v28

    move-object/from16 v18, v32

    move-object/from16 v4, v34

    .line 395
    .end local v21    # "writer\\4":Lru/localscribe/audio/WavFile;
    .end local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v28    # "processor\\5":Lru/localscribe/engine/LiveProcessor;
    .end local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v34    # "oldVoiceModel":Ljava/lang/String;
    .restart local v0    # "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    .local v2, "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .local v3, "file":Ljava/io/File;
    .local v4, "oldVoiceModel":Ljava/lang/String;
    .local v5, "written":Ljava/util/concurrent/atomic/AtomicLong;
    .local v6, "resumeSamples":J
    .local v10, "processor\\5":Lru/localscribe/engine/LiveProcessor;
    .local v12, "writer\\4":Lru/localscribe/audio/WavFile;
    .local v14, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v15, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .local v18, "modelInfo":Lru/localscribe/core/ModelInfo;
    .restart local v19    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_6
    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    .end local v0    # "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    .end local v10    # "processor\\5":Lru/localscribe/engine/LiveProcessor;
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 396
    nop

    .end local v2    # "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .end local v12    # "writer\\4":Lru/localscribe/audio/WavFile;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 137
    invoke-static {v13, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 397
    iget-object v2, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v2}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v2

    iget-object v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$id:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3;->$app:Lru/localscribe/ScribeApp;

    move-object/from16 v20, v2

    .local v20, "it\\6":Lru/localscribe/core/Recording;
    const/4 v2, 0x0

    .line 398
    .local v2, "$i$a$-let-CaptureService$onStartCommand$2$3$4\\6\\397\\0":I
    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    .line 401
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getAbsolutePath(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    sget-object v21, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v11

    move/from16 v16, v2

    const/16 v13, 0x2c

    .end local v2    # "$i$a$-let-CaptureService$onStartCommand$2$3$4\\6\\397\\0":I
    .local v16, "$i$a$-let-CaptureService$onStartCommand$2$3$4\\6\\397\\0":I
    int-to-long v1, v13

    sub-long/2addr v11, v1

    const/4 v1, 0x2

    int-to-long v1, v1

    div-long v22, v11, v1

    const/16 v25, 0x2

    const/16 v26, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v27

    .line 399
    nop

    .line 401
    nop

    .line 402
    nop

    .line 400
    nop

    .line 399
    const v41, 0x1ff8f

    const/16 v42, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-string v29, "recorded"

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v26, v10

    invoke-static/range {v20 .. v42}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V

    .line 405
    nop

    .line 397
    .end local v16    # "$i$a$-let-CaptureService$onStartCommand$2$3$4\\6\\397\\0":I
    .end local v20    # "it\\6":Lru/localscribe/core/Recording;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 405
    :cond_7
    return-object v0

    .line 137
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v34, v4

    move-wide v10, v8

    move-object v9, v14

    move-object v8, v15

    move-object/from16 v32, v18

    move-object/from16 v2, v19

    move-object v4, v3

    move-object v14, v5

    move-object v3, v13

    move-wide v12, v6

    goto/16 :goto_8

    .line 146
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "oldVoiceModel":Ljava/lang/String;
    .end local v5    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v6    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v14    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v15    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v18    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v19    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v10, "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .restart local v21    # "writer\\4":Lru/localscribe/audio/WavFile;
    .restart local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v25    # "file":Ljava/io/File;
    .restart local v26    # "resumeSamples":J
    .restart local v29    # "initialSamples":J
    .restart local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .restart local v34    # "oldVoiceModel":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v4, v25

    move-wide/from16 v5, v26

    move-wide/from16 v8, v29

    move-object v1, v0

    move-object/from16 v19, v2

    move-object v13, v3

    move-object v3, v4

    move-wide v6, v5

    move v2, v10

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-object/from16 v5, v23

    move-object/from16 v14, v24

    move-object/from16 v18, v32

    move-object/from16 v4, v34

    .end local v25    # "file":Ljava/io/File;
    .end local v26    # "resumeSamples":J
    .end local v29    # "initialSamples":J
    .local v4, "file":Ljava/io/File;
    .local v5, "resumeSamples":J
    .restart local v8    # "initialSamples":J
    goto :goto_7

    .line 148
    .end local v5    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v9    # "writer\\4":Lru/localscribe/audio/WavFile;
    .local v12, "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    .local v14, "written":Ljava/util/concurrent/atomic/AtomicLong;
    .local v21, "resumeSamples":J
    .local v26, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v28    # "processor\\5":Lru/localscribe/engine/LiveProcessor;
    .restart local v29    # "initialSamples":J
    :cond_8
    move-object/from16 v23, v14

    move-wide/from16 v5, v21

    move-object/from16 v22, v26

    move-object/from16 v24, v27

    move-object/from16 v21, v9

    move-wide/from16 v8, v29

    .end local v9    # "writer\\4":Lru/localscribe/audio/WavFile;
    .end local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v29    # "initialSamples":J
    .restart local v5    # "resumeSamples":J
    .restart local v8    # "initialSamples":J
    .local v21, "writer\\4":Lru/localscribe/audio/WavFile;
    .restart local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_8
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 149
    nop

    .line 148
    invoke-direct {v0, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .end local v2    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v10    # "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .end local v21    # "writer\\4":Lru/localscribe/audio/WavFile;
    .end local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v34    # "oldVoiceModel":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 146
    .end local v12    # "$i$a$-use-CaptureService$onStartCommand$2$3$3$2\\5\\146\\4":I
    .end local v28    # "processor\\5":Lru/localscribe/engine/LiveProcessor;
    .restart local v2    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "resumeSamples":J
    .restart local v8    # "initialSamples":J
    .restart local v10    # "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .restart local v21    # "writer\\4":Lru/localscribe/audio/WavFile;
    .restart local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .restart local v34    # "oldVoiceModel":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v2

    move-object v13, v3

    move-object v3, v4

    move-wide v6, v5

    move v2, v10

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-object/from16 v5, v23

    move-object/from16 v14, v24

    move-object/from16 v18, v32

    move-object/from16 v4, v34

    goto :goto_7

    .end local v5    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v9    # "writer\\4":Lru/localscribe/audio/WavFile;
    .restart local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .local v21, "resumeSamples":J
    .restart local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v29    # "initialSamples":J
    :catchall_4
    move-exception v0

    move-object/from16 v23, v14

    move-wide/from16 v5, v21

    move-object/from16 v22, v26

    move-object/from16 v24, v27

    move-object/from16 v21, v9

    move-wide/from16 v8, v29

    move-object v1, v0

    move-object/from16 v19, v2

    move-object v13, v3

    move-object v3, v4

    move-wide v6, v5

    move v2, v10

    move-object/from16 v12, v21

    move-object/from16 v15, v22

    move-object/from16 v5, v23

    move-object/from16 v14, v24

    move-object/from16 v18, v32

    move-object/from16 v4, v34

    .end local v2    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "writer\\4":Lru/localscribe/audio/WavFile;
    .end local v10    # "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .end local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v21    # "resumeSamples":J
    .end local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v29    # "initialSamples":J
    .end local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v34    # "oldVoiceModel":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_7
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .local v2, "$i$a$-use-CaptureService$onStartCommand$2$3$3\\4\\137\\0":I
    .restart local v3    # "file":Ljava/io/File;
    .local v4, "oldVoiceModel":Ljava/lang/String;
    .local v5, "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v6    # "resumeSamples":J
    .restart local v8    # "initialSamples":J
    .local v12, "writer\\4":Lru/localscribe/audio/WavFile;
    .local v14, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v15    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v18    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .restart local v19    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    :try_start_a
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "oldVoiceModel":Ljava/lang/String;
    .end local v5    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v6    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v14    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v15    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v18    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v19    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 137
    .end local v12    # "writer\\4":Lru/localscribe/audio/WavFile;
    .local v2, "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "file":Ljava/io/File;
    .local v14, "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v21    # "resumeSamples":J
    .restart local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v29    # "initialSamples":J
    .restart local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .restart local v34    # "oldVoiceModel":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object/from16 v23, v14

    move-wide/from16 v5, v21

    move-object/from16 v22, v26

    move-object/from16 v24, v27

    move-wide/from16 v8, v29

    move-object v1, v0

    move-wide v12, v5

    move-wide v10, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v24

    .end local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v21    # "resumeSamples":J
    .end local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v29    # "initialSamples":J
    .local v5, "resumeSamples":J
    .restart local v8    # "initialSamples":J
    .restart local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    goto :goto_8

    .end local v5    # "resumeSamples":J
    .end local v8    # "initialSamples":J
    .end local v22    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v23    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v24    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v12, "resumeSamples":J
    .restart local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .restart local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v29    # "initialSamples":J
    :catchall_7
    move-exception v0

    move-wide v5, v12

    move-object/from16 v23, v14

    move-object/from16 v22, v26

    move-object/from16 v24, v27

    move-wide/from16 v8, v29

    move-object v1, v0

    move-wide v10, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v24

    .end local v2    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "file":Ljava/io/File;
    .end local v12    # "resumeSamples":J
    .end local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v26    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v27    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v29    # "initialSamples":J
    .end local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .end local v34    # "oldVoiceModel":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_8
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .restart local v2    # "r":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "file":Ljava/io/File;
    .local v8, "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .local v9, "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v10, "initialSamples":J
    .restart local v12    # "resumeSamples":J
    .restart local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v32    # "modelInfo":Lru/localscribe/core/ModelInfo;
    .restart local v34    # "oldVoiceModel":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_8
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 105
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "boundaries":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v9    # "captured":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v10    # "initialSamples":J
    .end local v12    # "resumeSamples":J
    .end local v14    # "written":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v34    # "oldVoiceModel":Ljava/lang/String;
    .local v3, "oldVoiceModel":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_a
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$a$-require-CaptureService$onStartCommand$2$3$1\\1\\98\\0":I
    nop

    .line 98
    .end local v0    # "$i$a$-require-CaptureService$onStartCommand$2$3$1\\1\\98\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u041c\u043e\u0434\u0435\u043b\u044c \u0433\u043e\u043b\u043e\u0441\u0430 \u0438\u0437\u043c\u0435\u043d\u0438\u043b\u0430\u0441\u044c. \u0414\u043b\u044f \u043d\u043e\u0432\u044b\u0445 \u043c\u043e\u0434\u0435\u043b\u0435\u0439 \u043d\u0430\u0447\u043d\u0438\u0442\u0435 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u0443\u044e \u0441\u0435\u0441\u0441\u0438\u044e."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
