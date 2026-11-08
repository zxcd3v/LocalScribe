.class final Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CaptureService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/service/CaptureService$onStartCommand$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "ru.localscribe.service.CaptureService$onStartCommand$2$3$3$2$1"
    f = "CaptureService.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x187,
        0x189
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "capture",
        "consume",
        "$this$coroutineScope",
        "capture",
        "consume"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $app:Lru/localscribe/ScribeApp;

.field final synthetic $boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $captured:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $initialSamples:J

.field final synthetic $processor:Lru/localscribe/engine/LiveProcessor;

.field final synthetic $resumeSamples:J

.field final synthetic $writer:Lru/localscribe/audio/WavFile;

.field final synthetic $written:Ljava/util/concurrent/atomic/AtomicLong;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/service/CaptureService;


# direct methods
.method public static synthetic $r8$lambda$fSYBka70XRiW8r3gNAOqWPCLLkg(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 0

    invoke-static {p0}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->invokeSuspend$lambda$0(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/ScribeApp;Ljava/lang/String;Lru/localscribe/service/CaptureService;Lru/localscribe/audio/WavFile;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLru/localscribe/engine/LiveProcessor;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ScribeApp;",
            "Ljava/lang/String;",
            "Lru/localscribe/service/CaptureService;",
            "Lru/localscribe/audio/WavFile;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/io/File;",
            "J",
            "Lru/localscribe/engine/LiveProcessor;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$app:Lru/localscribe/ScribeApp;

    iput-object p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$id:Ljava/lang/String;

    iput-object p3, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->this$0:Lru/localscribe/service/CaptureService;

    iput-object p4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$writer:Lru/localscribe/audio/WavFile;

    iput-object p5, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p6, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p7, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p8, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$file:Ljava/io/File;

    iput-wide p9, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$resumeSamples:J

    iput-object p11, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$processor:Lru/localscribe/engine/LiveProcessor;

    iput-wide p12, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$initialSamples:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p14}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 24
    .param p0, "it"    # Lru/localscribe/core/Recording;

    .line 392
    const v22, 0x1ffbf

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "finishing"

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v23}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 16
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

    move-object/from16 v0, p0

    new-instance v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;

    iget-object v2, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$app:Lru/localscribe/ScribeApp;

    iget-object v3, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$id:Ljava/lang/String;

    iget-object v4, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->this$0:Lru/localscribe/service/CaptureService;

    iget-object v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$writer:Lru/localscribe/audio/WavFile;

    iget-object v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v7, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v8, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$file:Ljava/io/File;

    iget-wide v10, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$resumeSamples:J

    iget-object v12, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$processor:Lru/localscribe/engine/LiveProcessor;

    iget-wide v13, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$initialSamples:J

    move-object/from16 v15, p2

    invoke-direct/range {v1 .. v15}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;-><init>(Lru/localscribe/ScribeApp;Ljava/lang/String;Lru/localscribe/service/CaptureService;Lru/localscribe/audio/WavFile;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLru/localscribe/engine/LiveProcessor;JLkotlin/coroutines/Continuation;)V

    move-object v2, v1

    move-object/from16 v1, p1

    iput-object v1, v2, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/coroutines/Continuation;

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v3, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Job;

    .local v1, "consume":Lkotlinx/coroutines/Job;
    iget-object v3, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Job;

    .local v3, "capture":Lkotlinx/coroutines/Job;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "consume":Lkotlinx/coroutines/Job;
    .end local v3    # "capture":Lkotlinx/coroutines/Job;
    :pswitch_1
    iget-object v3, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Job;

    .local v3, "consume":Lkotlinx/coroutines/Job;
    iget-object v4, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/Job;

    .local v4, "capture":Lkotlinx/coroutines/Job;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v3    # "consume":Lkotlinx/coroutines/Job;
    .end local v4    # "capture":Lkotlinx/coroutines/Job;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;

    iget-object v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$app:Lru/localscribe/ScribeApp;

    iget-object v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->this$0:Lru/localscribe/service/CaptureService;

    iget-object v7, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$id:Ljava/lang/String;

    iget-object v8, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$writer:Lru/localscribe/audio/WavFile;

    iget-object v9, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v10, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v11, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;-><init>(Lru/localscribe/ScribeApp;Lru/localscribe/service/CaptureService;Ljava/lang/String;Lru/localscribe/audio/WavFile;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/coroutines/Continuation;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v3

    .line 152
    move-object v8, v3

    .line 302
    .local v8, "capture":Lkotlinx/coroutines/Job;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;

    iget-object v10, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$file:Ljava/io/File;

    iget-wide v11, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$resumeSamples:J

    iget-object v13, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v14, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v15, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$processor:Lru/localscribe/engine/LiveProcessor;

    iget-wide v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$initialSamples:J

    iget-object v7, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$app:Lru/localscribe/ScribeApp;

    move-object/from16 v22, v2

    .end local v2    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v22, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$id:Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v20, v2

    move-object/from16 v16, v4

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    invoke-direct/range {v9 .. v21}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;-><init>(Ljava/io/File;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lru/localscribe/engine/LiveProcessor;JLru/localscribe/ScribeApp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v9

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, v22

    .end local v22    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v2    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v3

    .line 301
    nop

    .line 391
    .restart local v3    # "consume":Lkotlinx/coroutines/Job;
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->label:I

    invoke-interface {v8, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 151
    return-object v1

    .line 391
    :cond_0
    move-object v4, v8

    .line 392
    .end local v8    # "capture":Lkotlinx/coroutines/Job;
    .restart local v4    # "capture":Lkotlinx/coroutines/Job;
    :goto_0
    iget-object v5, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v5

    iget-object v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->$id:Ljava/lang/String;

    new-instance v7, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6, v7}, Lru/localscribe/data/Repository;->update(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 393
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->label:I

    invoke-interface {v3, v5}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 151
    return-object v1

    .line 393
    :cond_1
    move-object v1, v3

    move-object v3, v4

    .line 394
    .end local v4    # "capture":Lkotlinx/coroutines/Job;
    .restart local v1    # "consume":Lkotlinx/coroutines/Job;
    .local v3, "capture":Lkotlinx/coroutines/Job;
    :goto_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
