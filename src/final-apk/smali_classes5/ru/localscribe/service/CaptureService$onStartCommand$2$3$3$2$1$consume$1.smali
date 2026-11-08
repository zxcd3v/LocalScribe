.class final Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;
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
    value = "SMAP\nCaptureService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,441:1\n230#2,5:442\n230#2,5:447\n*S KotlinDebug\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1\n*L\n323#1:442,5\n337#1:447,5\n*E\n"
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
    c = "ru.localscribe.service.CaptureService$onStartCommand$2$3$3$2$1$consume$1"
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
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x15a,
        0x15e
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "input\\1",
        "cpuNs\\1",
        "inferenceSamples\\1",
        "boundary\\1",
        "$i$a$-use-CaptureService$onStartCommand$2$3$3$2$1$consume$1$1\\1\\303\\0",
        "position\\1",
        "degraded\\1",
        "available\\1",
        "lag\\1",
        "$this$launch",
        "input\\1",
        "cpuNs\\1",
        "inferenceSamples\\1",
        "boundary\\1",
        "$i$a$-use-CaptureService$onStartCommand$2$3$3$2$1$consume$1$1\\1\\303\\0",
        "position\\1",
        "degraded\\1",
        "available\\1",
        "lag\\1"
    }
    s = {
        "L$0",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "I$0",
        "J$1",
        "I$1",
        "J$2",
        "D$0",
        "L$0",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "I$0",
        "J$1",
        "I$1",
        "J$2",
        "D$0"
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

.field final synthetic $written:Ljava/util/concurrent/atomic/AtomicLong;

.field D$0:D

.field I$0:I

.field I$1:I

.field J$0:J

.field J$1:J

.field J$2:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$BB9lxWjR4B-UoYbUGDLxqEeAXTg(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->invokeSuspend$lambda$0$2(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/io/File;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lru/localscribe/engine/LiveProcessor;JLru/localscribe/ScribeApp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "J",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;",
            "Lru/localscribe/engine/LiveProcessor;",
            "J",
            "Lru/localscribe/ScribeApp;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$file:Ljava/io/File;

    iput-wide p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$resumeSamples:J

    iput-object p4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p7, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$processor:Lru/localscribe/engine/LiveProcessor;

    iput-wide p8, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$initialSamples:J

    iput-object p10, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$app:Lru/localscribe/ScribeApp;

    iput-object p11, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$id:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0$2(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;
    .locals 27

    nop

    move-object/from16 v0, p0

    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    long-to-double v1, v1

    nop

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    move-object/from16 v3, p1

    iget-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    long-to-double v4, v4

    nop

    const-wide v6, 0x40cf400000000000L    # 16000.0

    div-double/2addr v4, v6

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const v25, 0x1fbff

    const/16 v26, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v26}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
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

    new-instance v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;

    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$file:Ljava/io/File;

    iget-wide v2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$resumeSamples:J

    iget-object v4, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v7, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$processor:Lru/localscribe/engine/LiveProcessor;

    iget-wide v8, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$initialSamples:J

    iget-object v10, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$app:Lru/localscribe/ScribeApp;

    iget-object v11, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$id:Ljava/lang/String;

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;-><init>(Ljava/io/File;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lru/localscribe/engine/LiveProcessor;JLru/localscribe/ScribeApp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 53

    move-object/from16 v1, p0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->D$0:D

    iget-wide v7, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$2:J

    iget v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$1:I

    iget-wide v9, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$1:J

    iget v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$0:I

    iget-wide v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$0:J

    iget-object v14, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$11:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    iget-object v15, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$10:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$9:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 v17, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/ScribeApp;

    move-object/from16 v20, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/engine/LiveProcessor;

    move-object/from16 v21, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v23, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$1:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/io/Closeable;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v23

    move-wide/from16 v49, v9

    move-object v10, v1

    move-object v9, v4

    move-object v1, v15

    move-object v4, v2

    move v15, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v22

    move-object/from16 v2, v25

    const/16 v25, 0x0

    move-wide/from16 v22, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v20

    move v13, v11

    move-object/from16 v11, v19

    move-wide/from16 v19, v49

    move-object/from16 v0, p1

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v17, v0

    iget-wide v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->D$0:D

    iget-wide v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$2:J

    iget v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$1:I

    iget-wide v7, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$1:J

    iget v9, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$0:I

    iget-wide v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$0:J

    iget-object v12, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$11:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    iget-object v13, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$10:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v14, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$9:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v15, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$8:Ljava/lang/Object;

    check-cast v15, Ljava/io/RandomAccessFile;

    move/from16 v18, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/ScribeApp;

    move-object/from16 v20, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/engine/LiveProcessor;

    move-object/from16 v21, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v22, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v23, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$1:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/io/Closeable;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    move-object v9, v1

    move-object v1, v13

    move v13, v0

    move-wide/from16 v28, v5

    move-object/from16 v6, v22

    const/16 v16, 0x0

    move-object v5, v2

    move-object/from16 v2, v25

    move-wide/from16 v49, v7

    move-object v8, v14

    move/from16 v14, v18

    move-object/from16 v7, v21

    move-wide/from16 v51, v10

    move-object/from16 v11, v19

    move-wide/from16 v18, v49

    move-object/from16 v10, v20

    move-wide/from16 v20, v51

    move-object/from16 v0, p1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v14, v2

    move-object/from16 v3, v25

    move-object/from16 v1, p1

    move-object v2, v0

    goto/16 :goto_9

    :pswitch_2
    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$file:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v25, v0

    check-cast v25, Ljava/io/Closeable;

    iget-wide v3, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$resumeSamples:J

    iget-object v0, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$captured:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$written:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$boundaries:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v7, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$processor:Lru/localscribe/engine/LiveProcessor;

    iget-wide v8, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$initialSamples:J

    iget-object v10, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$app:Lru/localscribe/ScribeApp;

    iget-object v11, v1, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$id:Ljava/lang/String;

    :try_start_2
    move-object/from16 v12, v25

    check-cast v12, Ljava/io/RandomAccessFile;

    const/4 v13, 0x0

    nop

    const/4 v14, 0x0

    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v18, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct/range {v18 .. v18}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-wide/from16 v20, v8

    move-object v9, v1

    move-object/from16 v1, v18

    move-wide/from16 v18, v20

    move/from16 v20, v14

    move-object v8, v15

    const/16 v21, 0x0

    move-wide v14, v3

    move-object/from16 v3, v17

    move-object v4, v2

    move-object/from16 v2, v25

    :goto_0
    :try_start_3
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v16, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    cmp-long v16, v14, v16

    if-gez v16, :cond_0

    goto :goto_1

    :cond_0
    move-wide/from16 v49, v14

    move-object v14, v4

    move-wide/from16 v3, v49

    move-object/from16 v18, v10

    move-object v5, v12

    move/from16 v25, v13

    move-object v12, v11

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    move-object v3, v2

    move-object v14, v4

    move-object v2, v0

    goto/16 :goto_9

    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v22, v16

    nop

    if-eqz v22, :cond_2

    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v14, v16

    if-ltz v16, :cond_2

    invoke-virtual {v7}, Lru/localscribe/engine/LiveProcessor;->finish()V

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :cond_2
    :try_start_7
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    sub-long v11, v16, v14

    move-wide/from16 v16, v14

    move v15, v13

    long-to-double v13, v11

    const-wide v25, 0x40cf400000000000L    # 16000.0

    div-double v36, v13, v25

    sget-object v13, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v13}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    const/4 v14, 0x0

    :goto_2
    nop

    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    check-cast v27, Lru/localscribe/service/LiveState;

    const/16 v25, 0x0

    const/16 v39, 0x17f

    const/16 v40, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    invoke-static/range {v27 .. v40}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v28

    move-wide/from16 v41, v36

    move-object/from16 v25, v28

    move-object/from16 v27, v25

    move/from16 v25, v15

    move-object/from16 v15, v27

    move/from16 v27, v14

    move-object/from16 v14, v26

    invoke-interface {v13, v14, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    nop

    nop

    sget-object v13, Lru/localscribe/service/CaptureRecovery;->INSTANCE:Lru/localscribe/service/CaptureRecovery;

    nop

    move-wide/from16 v14, v16

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    nop

    move-object/from16 v26, v3

    move/from16 v3, v25

    invoke-virtual/range {v13 .. v19}, Lru/localscribe/service/CaptureRecovery;->isOverloaded(JJJ)Z

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v16, v13

    move-wide/from16 v49, v18

    move-wide/from16 v17, v14

    move-wide/from16 v13, v49

    if-eqz v16, :cond_4

    const/4 v15, 0x1

    :try_start_8
    sget-object v16, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/service/JobState;->getLive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v16

    move-object/from16 v19, v16

    const/16 v16, 0x0

    :goto_3
    nop

    invoke-interface/range {v19 .. v19}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    check-cast v20, Lru/localscribe/service/LiveState;

    move-object/from16 v27, v20

    const/16 v20, 0x0

    nop

    const-string v38, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0435 \u0443\u0441\u043f\u0435\u0432\u0430\u0435\u0442. \u0410\u0443\u0434\u0438\u043e \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442\u0441\u044f; \u043f\u043e\u0441\u043b\u0435 \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u043e\u0444\u043b\u0430\u0439\u043d-\u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0443."

    const/16 v39, 0xff

    const/16 v40, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    invoke-static/range {v27 .. v40}, Lru/localscribe/service/LiveState;->copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;

    move-result-object v28

    nop

    move-object/from16 v20, v28

    move-wide/from16 v28, v11

    move/from16 v27, v15

    move-object/from16 v15, v19

    move-object/from16 v12, v20

    move-object/from16 v11, v25

    invoke-interface {v15, v11, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move/from16 v11, v27

    goto :goto_4

    :cond_3
    move-object/from16 v19, v15

    move/from16 v15, v27

    move-wide/from16 v11, v28

    goto :goto_3

    :cond_4
    move-wide/from16 v28, v11

    move/from16 v11, v20

    :goto_4
    if-eqz v11, :cond_6

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    move-wide/from16 v17, v15

    iput-object v4, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$0:Ljava/lang/Object;

    iput-object v2, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$1:Ljava/lang/Object;

    iput-object v0, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$2:Ljava/lang/Object;

    iput-object v5, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$3:Ljava/lang/Object;

    iput-object v6, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$4:Ljava/lang/Object;

    iput-object v7, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$5:Ljava/lang/Object;

    iput-object v10, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$6:Ljava/lang/Object;

    move-object/from16 v12, v23

    iput-object v12, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$7:Ljava/lang/Object;

    move-object/from16 v15, v24

    iput-object v15, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$8:Ljava/lang/Object;

    iput-object v8, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$9:Ljava/lang/Object;

    iput-object v1, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$10:Ljava/lang/Object;

    move-object/from16 v16, v1

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$11:Ljava/lang/Object;

    iput-wide v13, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$0:J

    iput v3, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$0:I

    move-wide/from16 v23, v13

    move-wide/from16 v13, v17

    iput-wide v13, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$1:J

    iput v11, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$1:I

    move-wide/from16 v17, v13

    move-wide/from16 v13, v28

    iput-wide v13, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$2:J

    move-wide/from16 v28, v13

    move-wide/from16 v13, v41

    iput-wide v13, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->D$0:D

    const/4 v1, 0x1

    iput v1, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->label:I

    move-wide/from16 v36, v13

    const-wide/16 v13, 0x64

    invoke-static {v13, v14, v9}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v13, v26

    if-ne v1, v13, :cond_5

    return-object v13

    :cond_5
    move v14, v11

    move-object v11, v12

    move-object/from16 v1, v16

    move-wide/from16 v18, v17

    move-object/from16 v16, v21

    move-object/from16 v12, v22

    move-wide/from16 v20, v23

    move-object/from16 v24, v0

    move-object/from16 v23, v5

    move-object/from16 v17, v13

    move v13, v3

    move-object v5, v4

    move-wide/from16 v3, v36

    move-object/from16 v0, p1

    :goto_5
    move-object/from16 p1, v0

    move-object v4, v5

    move-object v12, v15

    move-object/from16 v3, v17

    move-object/from16 v5, v23

    move-object/from16 v0, v24

    move-wide/from16 v49, v20

    move/from16 v20, v14

    move-object/from16 v21, v16

    move-wide/from16 v14, v18

    move-wide/from16 v18, v49

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v12, v23

    move-object/from16 v15, v24

    move-wide/from16 v36, v41

    move-wide/from16 v23, v13

    move-object/from16 v13, v26

    const-wide/16 v19, 0x0

    cmp-long v1, v28, v19

    if-gtz v1, :cond_8

    :try_start_9
    iput-object v4, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$0:Ljava/lang/Object;

    iput-object v2, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$1:Ljava/lang/Object;

    iput-object v0, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$2:Ljava/lang/Object;

    iput-object v5, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$3:Ljava/lang/Object;

    iput-object v6, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$4:Ljava/lang/Object;

    iput-object v7, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$5:Ljava/lang/Object;

    iput-object v10, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$6:Ljava/lang/Object;

    iput-object v12, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$7:Ljava/lang/Object;

    iput-object v15, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$8:Ljava/lang/Object;

    iput-object v8, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$9:Ljava/lang/Object;

    move-object/from16 v1, v16

    iput-object v1, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$10:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->L$11:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v14, v4

    move-object/from16 v16, v5

    move-wide/from16 v4, v23

    :try_start_a
    iput-wide v4, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$0:J

    iput v3, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$0:I

    move/from16 v25, v3

    move-wide/from16 v23, v4

    move-wide/from16 v3, v17

    iput-wide v3, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$1:J

    iput v11, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->I$1:I

    move-object/from16 v17, v6

    move-wide/from16 v5, v28

    iput-wide v5, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->J$2:J

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-wide/from16 v10, v36

    iput-wide v10, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->D$0:D

    move-object/from16 v26, v0

    const/4 v0, 0x2

    iput v0, v9, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->label:I

    move-wide/from16 v36, v10

    const-wide/16 v10, 0x28

    invoke-static {v10, v11, v9}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_7

    return-object v13

    :cond_7
    move-object v10, v9

    move-object v11, v12

    move-object v12, v15

    move/from16 v15, v19

    move-wide/from16 v19, v3

    move-object v9, v8

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v14, v22

    move-wide/from16 v22, v23

    move/from16 v13, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v21

    move-object/from16 v21, v7

    move-wide v7, v5

    move-wide/from16 v5, v36

    move-object/from16 v0, p1

    :goto_6
    move-wide/from16 v5, v19

    move/from16 v20, v15

    move-wide v14, v5

    move-object/from16 p1, v0

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v10, v18

    move-object/from16 v7, v21

    move-wide/from16 v18, v22

    move-object/from16 v0, v24

    move-object/from16 v21, v25

    goto/16 :goto_0

    :cond_8
    move-object/from16 v26, v0

    move/from16 v25, v3

    move-object v14, v4

    move/from16 v19, v11

    move-object/from16 v1, v16

    move-wide/from16 v3, v17

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    move-wide/from16 v5, v28

    nop

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v10, v3

    goto :goto_7

    :cond_9
    const-wide v10, 0x7fffffffffffffffL

    :goto_7
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide/from16 v28, v5

    const-wide/16 v5, 0x640

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v0, v10

    nop

    sget-object v10, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    invoke-virtual {v10, v15, v3, v4, v0}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    invoke-virtual {v7, v10}, Lru/localscribe/engine/LiveProcessor;->accept([F)V

    move-wide/from16 v32, v5

    iget-wide v5, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v34

    sub-long v34, v34, v30

    add-long v5, v5, v34

    iput-wide v5, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    array-length v5, v10

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-wide v5, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    array-length v11, v10

    move-wide/from16 v34, v3

    int-to-long v3, v11

    add-long/2addr v5, v3

    iput-wide v5, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v3, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v5, 0x3e80

    rem-long/2addr v3, v5

    cmp-long v3, v3, v32

    if-gez v3, :cond_a

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    new-instance v4, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8, v1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-virtual {v3, v12, v4}, Lru/localscribe/data/Repository;->update(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_a
    move-object v11, v12

    move-object v3, v13

    move-object v4, v14

    move-object v12, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v10, v18

    move/from16 v20, v19

    move-wide/from16 v18, v23

    move/from16 v13, v25

    move-object/from16 v0, v26

    move-wide/from16 v14, v34

    goto/16 :goto_0

    :cond_b
    move-object/from16 v26, v0

    move-wide/from16 v28, v11

    move-object v0, v13

    move-object/from16 v12, v23

    move-wide/from16 v36, v41

    move-object v13, v3

    move-object/from16 v49, v14

    move-object v14, v4

    move-wide/from16 v3, v16

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v6, v49

    move-object/from16 v5, v24

    move-wide/from16 v23, v18

    move-object/from16 v18, v10

    move-object/from16 v6, v17

    move-wide/from16 v18, v23

    move/from16 v15, v25

    move-object/from16 v24, v5

    move-object/from16 v23, v12

    move-object/from16 v5, v16

    move-wide/from16 v11, v28

    move-wide/from16 v16, v3

    move-object v3, v13

    move-object v4, v14

    move/from16 v14, v27

    move-object v13, v0

    move-object/from16 v0, v26

    goto/16 :goto_2

    :cond_c
    move-wide/from16 v49, v14

    move-object v14, v4

    move-wide/from16 v3, v49

    move-object/from16 v18, v10

    move-object v5, v12

    move/from16 v25, v13

    move-object v12, v11

    :goto_8
    invoke-virtual {v7}, Lru/localscribe/engine/LiveProcessor;->finish()V

    invoke-virtual {v7}, Lru/localscribe/engine/LiveProcessor;->refine()V

    if-eqz v20, :cond_e

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    invoke-virtual {v0, v12}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object/from16 v26, v0

    const/4 v0, 0x0

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v6

    nop

    const-string v39, "\u041f\u043e\u0442\u043e\u043a\u043e\u0432\u0430\u044f \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0430 \u043d\u0435\u043f\u043e\u043b\u043d\u0430\u044f: \u043e\u0442\u0441\u0442\u0430\u0432\u0430\u043d\u0438\u0435 \u0441\u0432\u044b\u0448\u0435 120 \u0441. \u0412\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u0443\u044e \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0443 \u0430\u0443\u0434\u0438\u043e."

    const v47, 0x1fdff

    const/16 v48, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-static/range {v26 .. v48}, Lru/localscribe/core/Recording;->copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;

    move-result-object v7

    invoke-virtual {v6, v7}, Lru/localscribe/data/Repository;->save(Lru/localscribe/core/Recording;)V

    nop

    :cond_d
    nop

    :cond_e
    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v1, p1

    move-object v3, v2

    move-object v2, v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v14, v4

    move-object/from16 v1, p1

    move-object v3, v2

    move-object v2, v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move-object v14, v2

    move-object/from16 v3, v25

    move-object v2, v0

    :goto_9
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
