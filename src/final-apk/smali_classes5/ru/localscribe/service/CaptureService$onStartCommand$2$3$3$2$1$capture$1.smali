.class final Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CaptureService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nCaptureService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,441:1\n230#2,5:442\n230#2,5:447\n230#2,5:452\n1#3:457\n*S KotlinDebug\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1\n*L\n200#1:442,5\n232#1:447,5\n268#1:452,5\n*E\n"
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
    c = "ru.localscribe.service.CaptureService$onStartCommand$2$3$3$2$1$capture$1"
    f = "CaptureService.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xeb,
        0x105
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "ar",
        "buffer",
        "min",
        "wasPaused",
        "saved",
        "$this$launch",
        "ar",
        "buffer",
        "min",
        "wasPaused",
        "saved",
        "n"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "J$0",
        "I$2"
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

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $writer:Lru/localscribe/audio/WavFile;

.field final synthetic $written:Ljava/util/concurrent/atomic/AtomicLong;

.field I$0:I

.field I$1:I

.field I$2:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/service/CaptureService;


# direct methods
.method public static synthetic $r8$lambda$5NAXkRWb5hnqmE5QXElo4x4pej4(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 0

    invoke-static {p0}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->invokeSuspend$lambda$6(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6DhRY4dZ_qUDRFTX-GYxFHgSkYw(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 0

    invoke-static {p0}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->invokeSuspend$lambda$4(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bSdrC4Ictu7RJDHFVSfrN9ufHm8(Lru/localscribe/audio/WavFile;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->invokeSuspend$lambda$8(Lru/localscribe/audio/WavFile;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wXvrT1J-8Eaw_iLFBXm3AzGt_6E(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 0

    invoke-static {p0}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->invokeSuspend$lambda$2(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/ScribeApp;Lru/localscribe/service/CaptureService;Ljava/lang/String;Lru/localscribe/audio/WavFile;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ScribeApp;",
            "Lru/localscribe/service/CaptureService;",
            "Ljava/lang/String;",
            "Lru/localscribe/audio/WavFile;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    iput-object p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    iput-object p3, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$id:Ljava/lang/String;

    iput-object p4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    iput-object p5, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p6, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p7, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 24

    const v22, 0x1ffbf

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "recording"

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

.method private static final invokeSuspend$lambda$4(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 24

    const v22, 0x1ffbf

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "paused"

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

.method private static final invokeSuspend$lambda$6(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 24

    const v22, 0x1ffbf

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "recording"

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

.method private static final invokeSuspend$lambda$8(Lru/localscribe/audio/WavFile;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 29

    nop

    sget-object v0, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WavFile;->getSamples()J

    move-result-wide v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v13

    const v27, 0x1ffdf

    const/16 v28, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v28}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;

    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    iget-object v2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    iget-object v3, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$id:Ljava/lang/String;

    iget-object v4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    iget-object v5, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v7, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;-><init>(Lru/localscribe/ScribeApp;Lru/localscribe/service/CaptureService;Ljava/lang/String;Lru/localscribe/audio/WavFile;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v1, p0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->label:I

    const-string v4, "\u0420\u0430\u0437\u0433\u043e\u0432\u043e\u0440 \u0437\u0430\u043f\u0438\u0441\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u043e"

    const/4 v6, 0x2

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$2:I

    iget-wide v9, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->J$0:J

    iget v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$1:I

    iget v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$0:I

    iget-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$2:Ljava/lang/Object;

    check-cast v13, [S

    iget-object v14, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroid/media/AudioRecord;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v9

    move v9, v11

    move-wide v10, v5

    move-object v15, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object/from16 v2, p1

    goto/16 :goto_a

    :pswitch_1
    iget-wide v9, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->J$0:J

    iget v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$1:I

    iget v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$0:I

    iget-object v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$2:Ljava/lang/Object;

    check-cast v11, [S

    iget-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$1:Ljava/lang/Object;

    move-object v14, v13

    check-cast v14, Landroid/media/AudioRecord;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v1

    move-object v13, v11

    move-wide v10, v9

    move v9, v3

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v15, v1

    move-object v3, v2

    move-object/from16 v2, p1

    move-object v1, v0

    goto/16 :goto_f

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    nop

    nop

    nop

    const/16 v3, 0x3e80

    const/16 v9, 0x10

    invoke-static {v3, v9, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v10

    move v12, v10

    if-lez v12, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_15

    iget-object v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v10}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v10

    nop

    const-string v11, "capture: opening AudioRecord"

    invoke-virtual {v10, v11}, Lru/localscribe/data/Diagnostics;->stage(Ljava/lang/String;)V

    new-instance v10, Landroid/media/AudioRecord$Builder;

    invoke-direct {v10}, Landroid/media/AudioRecord$Builder;-><init>()V

    nop

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v10

    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v11, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    nop

    invoke-virtual {v3, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    nop

    invoke-virtual {v3, v9}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v3

    mul-int/lit8 v9, v12, 0x4

    const/16 v10, 0x7d00

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v3

    move-object v14, v3

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    invoke-static {v3, v14}, Lru/localscribe/service/CaptureService;->access$setRecorder$p(Lru/localscribe/service/CaptureService;Landroid/media/AudioRecord;)V

    nop

    :try_start_2
    invoke-virtual {v14}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-ne v3, v8, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_14

    invoke-virtual {v14}, Landroid/media/AudioRecord;->startRecording()V

    nop

    invoke-virtual {v14}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    nop

    const/4 v9, 0x3

    if-ne v3, v9, :cond_2

    move v3, v8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_13

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v9, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$id:Ljava/lang/String;

    new-instance v10, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v9, v10}, Lru/localscribe/data/Repository;->update(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v3}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    const/4 v9, 0x0

    :goto_3
    nop

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/service/LiveState;

    move-object v15, v11

    const/4 v11, 0x0

    nop

    nop

    nop

    const-string v26, "\u0420\u0430\u0437\u0433\u043e\u0432\u043e\u0440 \u0437\u0430\u043f\u0438\u0441\u044b\u0432\u0430\u0435\u0442\u0441\u044f"

    const/16 v27, 0xbf

    const/16 v28, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    invoke-static/range {v15 .. v28}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v13

    nop

    nop

    invoke-interface {v3, v10, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    nop

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v3

    const-string v9, "capture: AudioRecord + streaming inference"

    invoke-virtual {v3, v9}, Lru/localscribe/data/Diagnostics;->stage(Ljava/lang/String;)V

    const/16 v3, 0x640

    new-array v3, v3, [S

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    iget-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    check-cast v13, Landroid/app/Service;

    nop

    nop

    invoke-static {v13, v8, v4}, Lru/localscribe/service/ServiceSupportKt;->foreground(Landroid/app/Service;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v15, v1

    move-object v13, v3

    move-object v3, v2

    move-object/from16 v2, p1

    :goto_4
    :try_start_3
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v16

    if-eqz v16, :cond_11

    iget-object v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    invoke-static {v5}, Lru/localscribe/service/CaptureService;->access$getStopping$p(Lru/localscribe/service/CaptureService;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    invoke-static {v5}, Lru/localscribe/service/CaptureService;->access$getPaused$p(Lru/localscribe/service/CaptureService;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v5, :cond_8

    if-nez v9, :cond_5

    :try_start_4
    invoke-virtual {v14}, Landroid/media/AudioRecord;->stop()V

    iget-object v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v5}, Lru/localscribe/audio/WavFile;->checkpoint()V

    iget-object v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v6}, Lru/localscribe/audio/WavFile;->getSamples()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    const/16 v6, 0x80

    if-gt v5, v6, :cond_3

    move v5, v8

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    const/4 v5, 0x1

    iget-object v6, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v6

    iget-object v9, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$id:Ljava/lang/String;

    new-instance v7, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v6, v9, v7}, Lru/localscribe/data/Repository;->update(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v6, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    check-cast v6, Landroid/app/Service;

    nop

    const-string v7, "\u041f\u0430\u0443\u0437\u0430 \u2014 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-static {v6, v8, v7}, Lru/localscribe/service/ServiceSupportKt;->foreground(Landroid/app/Service;ZLjava/lang/String;)V

    goto :goto_6

    :cond_4
    const-string v0, "Failed requirement."

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    move v5, v9

    :goto_6
    sget-object v6, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v6}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    const/4 v7, 0x0

    :goto_7
    nop

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lru/localscribe/service/LiveState;

    move-object/from16 v20, v19

    const/16 v19, 0x0

    const/16 v32, 0x1db

    const/16 v33, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    invoke-static/range {v20 .. v33}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v21

    move-object/from16 p1, v21

    move-object/from16 v8, p1

    invoke-interface {v6, v9, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    nop

    move-object v6, v15

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$0:Ljava/lang/Object;

    iput-object v14, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$1:Ljava/lang/Object;

    iput-object v13, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$2:Ljava/lang/Object;

    iput v12, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$0:I

    iput v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$1:I

    iput-wide v10, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->J$0:J

    const/4 v7, 0x1

    iput v7, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->label:I

    const-wide/16 v7, 0x64

    invoke-static {v7, v8, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6

    return-object v0

    :cond_6
    move v9, v5

    :goto_8
    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_7
    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v14}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v5, 0x0

    iget-object v6, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v6}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v6

    iget-object v7, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$id:Ljava/lang/String;

    new-instance v8, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v6, v7, v8}, Lru/localscribe/data/Repository;->update(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v6, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    check-cast v6, Landroid/app/Service;

    nop

    nop

    const/4 v7, 0x1

    invoke-static {v6, v7, v4}, Lru/localscribe/service/ServiceSupportKt;->foreground(Landroid/app/Service;ZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v9, v5

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    :cond_9
    :goto_9
    nop

    nop

    nop

    :try_start_5
    array-length v5, v13

    nop

    const/4 v6, 0x0

    invoke-virtual {v14, v13, v6, v5, v6}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    nop

    if-ltz v5, :cond_10

    if-nez v5, :cond_b

    :try_start_6
    move-object v7, v15

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v3, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$0:Ljava/lang/Object;

    iput-object v14, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$1:Ljava/lang/Object;

    iput-object v13, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->L$2:Ljava/lang/Object;

    iput v12, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$0:I

    iput v9, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$1:I

    iput-wide v10, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->J$0:J

    iput v5, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->I$2:I

    const/4 v8, 0x2

    iput v8, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->label:I

    move/from16 v17, v9

    const-wide/16 v8, 0xa

    invoke-static {v8, v9, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v7, v0, :cond_a

    return-object v0

    :cond_a
    move v9, v5

    move-object v5, v3

    move v3, v9

    move/from16 v9, v17

    :goto_a
    move-object v3, v5

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_b
    move/from16 v17, v9

    :try_start_7
    new-array v7, v5, [F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move v8, v6

    :goto_b
    if-ge v8, v5, :cond_c

    :try_start_8
    aget-short v9, v13, v8

    int-to-float v9, v9

    const/high16 v20, 0x47000000    # 32768.0f

    div-float v9, v9, v20

    aput v9, v7, v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_c
    nop

    :try_start_9
    iget-object v8, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v8, v7}, Lru/localscribe/audio/WavFile;->write([F)V

    iget-object v8, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v9, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    move-object/from16 p1, v7

    invoke-virtual {v9}, Lru/localscribe/audio/WavFile;->getSamples()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v6, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v6}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iget-object v7, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    const/4 v8, 0x0

    :goto_c
    nop

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Lru/localscribe/service/LiveState;

    move-object/from16 v22, v21

    const/16 v21, 0x0

    nop

    sget-object v23, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    invoke-virtual {v7}, Lru/localscribe/audio/WavFile;->getSamples()J

    move-result-wide v24

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v24

    nop

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    array-length v1, v0

    const-wide/16 v26, 0x0

    move-object/from16 p1, v0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_d

    aget v23, p1, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move/from16 v28, v23

    const/16 v23, 0x0

    move/from16 v29, v0

    move-object/from16 v37, v2

    move/from16 v0, v28

    move/from16 v28, v1

    float-to-double v1, v0

    move-wide/from16 v30, v1

    float-to-double v1, v0

    mul-double v1, v1, v30

    add-double v26, v26, v1

    add-int/lit8 v0, v29, 0x1

    move/from16 v1, v28

    move-object/from16 v2, v37

    goto :goto_d

    :cond_d
    move-object/from16 v37, v2

    int-to-double v0, v5

    div-double v26, v26, v0

    :try_start_a
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    nop

    nop

    const/16 v34, 0x1d9

    const/16 v35, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v26, v0

    invoke-static/range {v22 .. v35}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v0

    nop

    nop

    invoke-interface {v6, v9, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    nop

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v0}, Lru/localscribe/audio/WavFile;->getSamples()J

    move-result-wide v0

    sub-long/2addr v0, v10

    const-wide/16 v6, 0x3e80

    cmp-long v0, v0, v6

    if-ltz v0, :cond_e

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v0}, Lru/localscribe/audio/WavFile;->checkpoint()V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v0}, Lru/localscribe/audio/WavFile;->getSamples()J

    move-result-wide v0

    move-wide v10, v0

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v1, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$id:Ljava/lang/String;

    iget-object v2, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    new-instance v6, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda3;

    invoke-direct {v6, v2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/audio/WavFile;)V

    invoke-virtual {v0, v1, v6}, Lru/localscribe/data/Repository;->update(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, p0

    move/from16 v9, v17

    move-object/from16 v0, v36

    move-object/from16 v2, v37

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_e
    move-object/from16 v1, p0

    move/from16 v9, v17

    move-object/from16 v0, v36

    move-object/from16 v2, v37

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v0, v36

    move-object/from16 v2, v37

    goto/16 :goto_c

    :cond_10
    move-object/from16 v37, v2

    move/from16 v17, v9

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430 AudioRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". \u041f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0438 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0441\u0442\u044c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v37

    goto :goto_f

    :cond_11
    move-object/from16 v37, v2

    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v3

    const/4 v1, 0x0

    invoke-virtual {v14}, Landroid/media/AudioRecord;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    invoke-virtual {v14}, Landroid/media/AudioRecord;->release()V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/localscribe/service/CaptureService;->access$setRecorder$p(Lru/localscribe/service/CaptureService;Landroid/media/AudioRecord;)V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v0}, Lru/localscribe/audio/WavFile;->checkpoint()V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_4
    move-exception v0

    move-object/from16 v37, v2

    move-object v1, v0

    goto :goto_f

    :cond_12
    const/4 v6, 0x2

    move-object/from16 v1, p0

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_13
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v0, 0x0

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    move-object v1, v0

    move-object v3, v2

    move-object/from16 v2, p1

    :goto_f
    :try_start_d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v3

    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/media/AudioRecord;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_10

    :catchall_6
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    invoke-virtual {v14}, Landroid/media/AudioRecord;->release()V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->this$0:Lru/localscribe/service/CaptureService;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lru/localscribe/service/CaptureService;->access$setRecorder$p(Lru/localscribe/service/CaptureService;Landroid/media/AudioRecord;)V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$writer:Lru/localscribe/audio/WavFile;

    invoke-virtual {v0}, Lru/localscribe/audio/WavFile;->checkpoint()V

    iget-object v0, v15, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    :cond_15
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442 16 \u043a\u0413\u0446 PCM"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
