.class final Lru/localscribe/engine/OfflinePipeline$previewRange$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OfflinePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/OfflinePipeline;->previewRange(Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lru/localscribe/engine/RangePreview;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflinePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline$previewRange$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,345:1\n1#2:346\n1#2:364\n1#2:377\n1869#3,2:347\n1563#3:350\n1634#3,3:351\n1617#3,9:354\n1869#3:363\n1870#3:365\n1626#3:366\n1617#3,9:367\n1869#3:376\n1870#3:378\n1626#3:379\n1563#3:380\n1634#3,3:381\n1869#3,2:388\n375#4:349\n375#4:384\n3919#5:385\n4434#5,2:386\n*S KotlinDebug\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline$previewRange$2\n*L\n245#1:364\n251#1:377\n229#1:347,2\n243#1:350\n243#1:351,3\n245#1:354,9\n245#1:363\n245#1:365\n245#1:366\n251#1:367,9\n251#1:376\n251#1:378\n251#1:379\n253#1:380\n253#1:381,3\n281#1:388,2\n237#1:349\n265#1:384\n281#1:385\n281#1:386,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lru/localscribe/engine/RangePreview;",
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
    c = "ru.localscribe.engine.OfflinePipeline$previewRange$2"
    f = "OfflinePipeline.kt"
    i = {
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
        0x1,
        0x1,
        0x1,
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
        0xf2,
        0x110
    }
    m = "invokeSuspend"
    n = {
        "r",
        "wav",
        "original",
        "before",
        "crop",
        "r",
        "wav",
        "original",
        "before",
        "timeline",
        "aliases",
        "cluster",
        "result",
        "prefix",
        "engines\\29",
        "analyzer\\30",
        "input\\31",
        "candidate\\31",
        "block\\31",
        "context\\31",
        "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0",
        "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29",
        "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30",
        "offset\\31",
        "previous\\31",
        "cut\\31",
        "contextStart\\31"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$11",
        "L$13",
        "L$15",
        "L$16",
        "L$17",
        "L$18",
        "I$0",
        "I$1",
        "I$2",
        "J$1",
        "J$2",
        "I$3",
        "J$3"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $endMs:J

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $onStatus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rediarize:Z

.field final synthetic $startMs:J

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field J$0:J

.field J$1:J

.field J$2:J

.field J$3:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

.field L$15:Ljava/lang/Object;

.field L$16:Ljava/lang/Object;

.field L$17:Ljava/lang/Object;

.field L$18:Ljava/lang/Object;

.field L$19:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/OfflinePipeline;


# direct methods
.method public static synthetic $r8$lambda$PNJNkA4YcBoxP-4V0Wa_N3ZNw9s(F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->invokeSuspend$lambda$10$0$0$0(F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qrJ80MZbzejx1TdbdSGS6t4CYwA(F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->invokeSuspend$lambda$5(F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/engine/OfflinePipeline;Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/OfflinePipeline;",
            "Ljava/lang/String;",
            "JJZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$previewRange$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    iput-wide p3, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iput-wide p5, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    iput-boolean p7, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$rediarize:Z

    iput-object p8, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$onStatus:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$10$0$0$0(F)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$5(F)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    iget-wide v3, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v5, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    iget-boolean v7, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$rediarize:Z

    iget-object v8, p0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$onStatus:Lkotlin/jvm/functions/Function1;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;-><init>(Lru/localscribe/engine/OfflinePipeline;Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lru/localscribe/engine/RangePreview;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$previewRange$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 53

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->label:I

    const-string v3, "Check failed."

    const-string v4, "r"

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v4, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$3:J

    iget v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$3:I

    iget-wide v13, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$2:J

    const-wide/16 v15, 0x0

    iget-wide v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$1:J

    move-wide/from16 v17, v15

    iget v15, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$2:I

    iget v10, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$1:I

    iget v9, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$0:I

    move/from16 v21, v9

    iget-wide v8, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$0:J

    iget-object v11, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$19:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$18:Ljava/lang/Object;

    check-cast v12, [F

    move/from16 v22, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$17:Ljava/lang/Object;

    check-cast v2, [F

    move-object/from16 v23, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$16:Ljava/lang/Object;

    check-cast v2, [F

    move-object/from16 v24, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$15:Ljava/lang/Object;

    check-cast v2, Ljava/io/RandomAccessFile;

    move-object/from16 v25, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$14:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    move-object/from16 v26, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$13:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/engine/BlockTranscriber;

    move-object/from16 v27, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$12:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    move-object/from16 v28, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$11:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/engine/Engines;

    move-object/from16 v29, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$10:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v30, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    move-object/from16 v31, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v32, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v33, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/SpeakerCluster;

    move-object/from16 v34, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    move-object/from16 v35, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/SpeakerTimeline;

    move-object/from16 v36, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v37, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v38, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    move-object/from16 v39, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/Recording;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v23

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v22, v35

    move-object/from16 v35, v2

    move-object/from16 v2, v16

    move/from16 v50, v15

    move-object/from16 v15, v25

    move-object/from16 v45, v34

    move-object/from16 v19, v37

    move-object/from16 v46, v39

    const/16 v16, 0x1

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v34, v1

    move/from16 v25, v10

    move-object/from16 v37, v24

    move-object/from16 v10, v33

    move-object/from16 v1, p1

    move-object/from16 v24, v3

    move-object/from16 v3, v30

    move/from16 v30, v21

    move-object/from16 v21, v36

    move-object/from16 v36, v29

    move-wide/from16 v51, v6

    move-object v7, v1

    move-object/from16 v6, v28

    move-wide/from16 v28, v8

    move-wide/from16 v8, v51

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    move-object v14, v1

    move-object/from16 v30, v2

    move/from16 v9, v21

    move-object/from16 v4, v26

    move-object/from16 v6, v28

    move-object/from16 v3, v31

    move-object/from16 v50, v32

    move-object/from16 v45, v34

    move-object/from16 v22, v35

    move-object/from16 v21, v36

    move-object/from16 v19, v37

    move-object/from16 v46, v39

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v31, v29

    move-object/from16 v39, v33

    goto/16 :goto_1d

    :pswitch_1
    const-wide/16 v17, 0x0

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    iget-object v9, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lru/localscribe/core/Recording;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :pswitch_2
    const-wide/16 v17, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v2}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v2

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v2

    if-eqz v2, :cond_23

    move-object v9, v2

    iget-wide v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    cmp-long v2, v6, v17

    if-ltz v2, :cond_0

    iget-wide v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    iget-wide v10, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_0

    iget-wide v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getDurationMs()J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_22

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getPcmPath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v6

    sget-object v2, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v8, v7, v6, v10}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v2}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v10

    iget-object v11, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    iget-wide v12, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v14, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    invoke-virtual/range {v10 .. v15}, Lru/localscribe/data/Repository;->rangeSegments(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Ljava/lang/Iterable;

    iget-wide v12, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v14, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v11, v22

    check-cast v11, Lru/localscribe/core/Segment;

    const/16 v23, 0x0

    sget-object v10, Lru/localscribe/core/RangeEdits;->INSTANCE:Lru/localscribe/core/RangeEdits;

    invoke-virtual/range {v10 .. v15}, Lru/localscribe/core/RangeEdits;->outside(Lru/localscribe/core/Segment;JJ)Ljava/util/List;

    goto :goto_1

    :cond_2
    nop

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v2}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v2

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lru/localscribe/data/Repository;->speakers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-boolean v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$rediarize:Z

    if-eqz v2, :cond_8

    const-string v2, ".wav"

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    const-string v11, "localscribe-range-"

    invoke-static {v11, v2, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    nop

    :try_start_2
    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-direct {v10, v8, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v10, Ljava/io/Closeable;

    iget-wide v11, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v13, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    :try_start_3
    move-object v15, v10

    check-cast v15, Ljava/io/RandomAccessFile;

    const/16 v21, 0x0

    new-instance v5, Lru/localscribe/audio/WavFile;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v2, v12, v11, v13}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    :try_start_4
    move-object v11, v5

    check-cast v11, Lru/localscribe/audio/WavFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    const/4 v12, 0x0

    move-object/from16 v29, v6

    move-object v14, v7

    const/16 v13, 0x10

    int-to-long v6, v13

    mul-long v22, v22, v6

    move-wide/from16 v26, v6

    move-wide/from16 v6, v22

    :goto_2
    mul-long v22, v24, v26

    cmp-long v13, v6, v22

    if-gez v13, :cond_5

    move-object/from16 v13, p0

    const/16 v30, 0x0

    :try_start_5
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    sget-object v13, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    const-wide/32 v8, 0x27100

    move-object/from16 v32, v0

    sub-long v0, v22, v6

    :try_start_6
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v13, v15, v6, v7, v0}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_4

    invoke-virtual {v11, v0}, Lru/localscribe/audio/WavFile;->write([F)V

    array-length v1, v0

    int-to-long v8, v1

    add-long/2addr v6, v8

    move-object/from16 v1, p0

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    move-object/from16 v0, v32

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    goto/16 :goto_7

    :cond_5
    move-object/from16 v32, v0

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    const/4 v13, 0x0

    :try_start_8
    invoke-static {v5, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :try_start_9
    invoke-static {v10, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v0, Lru/localscribe/engine/RecordingDiarization;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    move-object/from16 v1, p0

    :try_start_a
    iget-object v5, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v5}, Lru/localscribe/engine/OfflinePipeline;->access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;

    move-result-object v5

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v6}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lru/localscribe/engine/RecordingDiarization;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V

    invoke-virtual/range {v30 .. v30}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v24

    iget-object v5, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$onStatus:Lkotlin/jvm/functions/Function1;

    new-instance v26, Lru/localscribe/engine/OfflinePipeline$previewRange$2$$ExternalSyntheticLambda0;

    invoke-direct/range {v26 .. v26}, Lru/localscribe/engine/OfflinePipeline$previewRange$2$$ExternalSyntheticLambda0;-><init>()V

    move-object/from16 v27, v1

    check-cast v27, Lkotlin/coroutines/Continuation;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object/from16 v6, v30

    :try_start_b
    iput-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v7, v31

    :try_start_c
    iput-object v7, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v8, v29

    :try_start_d
    iput-object v8, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$4:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->label:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v25, v5

    :try_start_e
    invoke-virtual/range {v22 .. v27}, Lru/localscribe/engine/RecordingDiarization;->analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    move-object/from16 v2, v32

    if-ne v0, v2, :cond_6

    return-object v2

    :cond_6
    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    :goto_4
    :try_start_f
    check-cast v0, Lru/localscribe/core/SpeakerTimeline;

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    iget-wide v10, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    move-object v14, v5

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v24, v22

    check-cast v24, Lru/localscribe/core/VoiceTurn;

    move-object/from16 v29, v24

    const/16 v24, 0x0

    invoke-virtual/range {v29 .. v29}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v27, v0

    move-object/from16 v39, v5

    move-object/from16 v38, v6

    const/16 v0, 0x10

    int-to-long v5, v0

    mul-long/2addr v5, v10

    add-long v30, v25, v5

    :try_start_10
    invoke-virtual/range {v29 .. v29}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v25

    add-long v32, v25, v5

    const/16 v36, 0xc

    const/16 v37, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v29 .. v37}, Lru/localscribe/core/VoiceTurn;->copy$default(Lru/localscribe/core/VoiceTurn;JJIZILjava/lang/Object;)Lru/localscribe/core/VoiceTurn;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    move-object/from16 v6, v38

    move-object/from16 v5, v39

    goto :goto_5

    :cond_7
    move-object/from16 v27, v0

    move-object/from16 v39, v5

    move-object/from16 v38, v6

    move-object v0, v13

    check-cast v0, Ljava/util/List;

    nop

    new-instance v5, Lru/localscribe/core/SpeakerTimeline;

    invoke-direct {v5, v0}, Lru/localscribe/core/SpeakerTimeline;-><init>(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-object v14, v7

    move-object v7, v8

    move-object/from16 v30, v9

    move-object/from16 v8, v38

    const/16 v16, 0x1

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    move-object/from16 v2, v23

    move-object/from16 v6, v38

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v2, v23

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v23, v2

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    goto/16 :goto_9

    :catchall_8
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v7, v31

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    goto/16 :goto_9

    :catchall_9
    move-exception v0

    goto :goto_6

    :catchall_a
    move-exception v0

    move-object/from16 v1, p0

    :goto_6
    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    goto/16 :goto_9

    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    goto :goto_8

    :catchall_c
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    goto :goto_7

    :catchall_d
    move-exception v0

    move-object/from16 v23, v2

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v2, v0

    :goto_7
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    :catchall_e
    move-exception v0

    :try_start_12
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    :catchall_f
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :catchall_10
    move-exception v0

    move-object/from16 v23, v2

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v2, v0

    :goto_8
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    :catchall_11
    move-exception v0

    :try_start_14
    invoke-static {v10, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    :catchall_12
    move-exception v0

    move-object v9, v6

    move-object v6, v8

    move-object/from16 v2, v23

    move-object v8, v7

    move-object v7, v14

    goto :goto_9

    :catchall_13
    move-exception v0

    move-object/from16 v23, v2

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    :goto_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0

    :cond_8
    move-object v2, v0

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v0, v14

    check-cast v0, Ljava/lang/Iterable;

    const/4 v5, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v10

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v21

    const/16 v23, 0x0

    move-object/from16 v24, v22

    check-cast v24, Lru/localscribe/core/Segment;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v29

    cmp-long v26, v26, v29

    if-gtz v26, :cond_9

    move-object/from16 v29, v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    const/16 v16, 0x1

    const/16 v32, 0x0

    goto :goto_e

    :cond_9
    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v26

    move-object/from16 v29, v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    const/16 v0, 0x10

    int-to-long v5, v0

    mul-long v33, v26, v5

    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v26

    mul-long v35, v26, v5

    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v5, "speaker_"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    nop

    const/4 v6, 0x0

    if-ltz v5, :cond_a

    move-object/from16 v26, v0

    const/16 v0, 0x40

    if-ge v5, v0, :cond_b

    move/from16 v0, v16

    goto :goto_b

    :cond_a
    move-object/from16 v26, v0

    :cond_b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    const/16 v26, 0x0

    :goto_c
    if-eqz v26, :cond_e

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d

    :cond_d
    const/16 v16, 0x1

    :cond_e
    const/4 v0, -0x1

    :goto_d
    move/from16 v37, v0

    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getSpeakerProvisional()Z

    move-result v38

    new-instance v32, Lru/localscribe/core/VoiceTurn;

    invoke-direct/range {v32 .. v38}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZ)V

    :goto_e
    nop

    if-eqz v32, :cond_f

    move-object/from16 v0, v32

    const/4 v5, 0x0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v0, v29

    move-object/from16 v6, v30

    move/from16 v5, v31

    goto/16 :goto_a

    :cond_10
    move-object/from16 v29, v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    const/16 v16, 0x1

    nop

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    nop

    new-instance v5, Lru/localscribe/core/SpeakerTimeline;

    invoke-direct {v5, v0}, Lru/localscribe/core/SpeakerTimeline;-><init>(Ljava/util/List;)V

    :goto_f
    nop

    iget-boolean v0, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$rediarize:Z

    if-eqz v0, :cond_15

    sget-object v0, Lru/localscribe/core/TimelineIdentityMap;->INSTANCE:Lru/localscribe/core/TimelineIdentityMap;

    move-object v6, v14

    check-cast v6, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v11

    const/4 v15, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_10
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v22

    const/16 v24, 0x0

    move-object/from16 v25, v23

    check-cast v25, Lru/localscribe/core/Segment;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v25}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_11

    move-object/from16 v36, v27

    const/16 v27, 0x0

    new-instance v31, Lru/localscribe/core/TimelineIdentityMap$Previous;

    invoke-virtual/range {v25 .. v25}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v32

    move-object/from16 v38, v2

    move-object/from16 v29, v11

    move/from16 v37, v12

    const/16 v2, 0x10

    int-to-long v11, v2

    mul-long v32, v32, v11

    invoke-virtual/range {v25 .. v25}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v34

    mul-long v34, v34, v11

    invoke-direct/range {v31 .. v36}, Lru/localscribe/core/TimelineIdentityMap$Previous;-><init>(JJLjava/lang/String;)V

    goto :goto_11

    :cond_11
    move-object/from16 v38, v2

    move-object/from16 v29, v11

    move/from16 v37, v12

    const/16 v31, 0x0

    :goto_11
    if-eqz v31, :cond_12

    move-object/from16 v2, v31

    const/4 v11, 0x0

    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v11, v29

    move/from16 v12, v37

    move-object/from16 v2, v38

    goto :goto_10

    :cond_13
    move-object/from16 v38, v2

    move-object/from16 v29, v11

    move/from16 v37, v12

    nop

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    nop

    move-object v6, v8

    check-cast v6, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    move-object v11, v6

    const/4 v12, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    check-cast v21, Lru/localscribe/core/Speaker;

    const/16 v22, 0x0

    move-object/from16 v23, v6

    invoke-virtual/range {v21 .. v21}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v23

    goto :goto_12

    :cond_14
    move-object/from16 v23, v6

    move-object v6, v10

    check-cast v6, Ljava/util/List;

    nop

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v6}, Lru/localscribe/core/TimelineIdentityMap;->match(Lru/localscribe/core/SpeakerTimeline;Ljava/util/List;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_13

    :cond_15
    move-object/from16 v38, v2

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v37, v0

    :goto_13
    nop

    new-instance v0, Lru/localscribe/core/SpeakerCluster;

    invoke-virtual/range {v30 .. v30}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v2

    invoke-direct {v0, v2, v8}, Lru/localscribe/core/SpeakerCluster;-><init>(Lru/localscribe/core/Settings;Ljava/util/List;)V

    move-object/from16 v32, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preview-"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    nop

    :try_start_15
    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;

    move-result-object v0

    invoke-virtual/range {v30 .. v30}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v6

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v0, v6, v12, v11, v13}, Lru/localscribe/data/ModelStore;->verify$default(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;ZILjava/lang/Object;)V

    new-instance v22, Lru/localscribe/engine/Engines;

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;

    move-result-object v23

    invoke-virtual/range {v30 .. v30}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v24

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$onStatus:Lkotlin/jvm/functions/Function1;

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v6}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v26

    const/16 v28, 0x10

    const/16 v29, 0x0

    const/16 v27, 0x0

    move-object/from16 v25, v0

    invoke-direct/range {v22 .. v29}, Lru/localscribe/engine/Engines;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/ProcessingTimings;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v22

    check-cast v6, Ljava/io/Closeable;

    iget-object v0, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-wide v9, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v11, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    iget-object v13, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$onStatus:Lkotlin/jvm/functions/Function1;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2c

    :try_start_16
    move-object/from16 v31, v6

    check-cast v31, Lru/localscribe/engine/Engines;

    const/4 v15, 0x0

    new-instance v29, Lru/localscribe/engine/BlockTranscriber;

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;

    move-result-object v33

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v35
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_29

    move-object/from16 v34, v5

    :try_start_17
    invoke-direct/range {v29 .. v37}, Lru/localscribe/engine/BlockTranscriber;-><init>(Lru/localscribe/core/Recording;Lru/localscribe/engine/Engines;Lru/localscribe/core/SpeakerCluster;Lru/localscribe/data/ModelStore;Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/engine/ProcessingTimings;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v5, v29

    check-cast v5, Ljava/io/Closeable;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_28

    :try_start_18
    move-object v0, v5

    check-cast v0, Lru/localscribe/engine/BlockTranscriber;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v7, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_25

    :try_start_19
    move-object v0, v4

    check-cast v0, Ljava/io/RandomAccessFile;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_22

    const/16 v23, 0x0

    move-object/from16 v24, v0

    move-object/from16 v19, v2

    const/16 v0, 0x10

    int-to-long v1, v0

    mul-long/2addr v1, v9

    move-object/from16 v27, p0

    move-wide/from16 v45, v9

    move/from16 v26, v15

    move-object/from16 v10, v19

    move/from16 v25, v22

    move/from16 v50, v23

    move-object/from16 v15, v24

    move-object/from16 v22, v37

    move-object/from16 v23, v38

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v24, v3

    move-object/from16 v19, v8

    move-object v3, v13

    move-object/from16 v13, v36

    move-wide v8, v1

    move-wide v1, v11

    move-object/from16 v11, v32

    move-object v12, v7

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v34

    :goto_14
    move-wide/from16 v28, v1

    int-to-long v1, v0

    mul-long v1, v1, v28

    cmp-long v32, v8, v1

    if-gez v32, :cond_1c

    move-object/from16 v32, v27

    const/16 v33, 0x0

    :try_start_1a
    invoke-interface/range {v27 .. v27}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    sget-object v0, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1d

    move-wide/from16 v34, v1

    const-wide/32 v1, 0x75300

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    sub-long v4, v34, v8

    :try_start_1b
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v15, v8, v9, v1}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v0

    move-object v2, v0

    array-length v0, v2

    if-nez v0, :cond_16

    move/from16 v0, v16

    goto :goto_15

    :cond_16
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1b

    array-length v0, v2

    int-to-long v0, v0

    add-long/2addr v0, v8

    cmp-long v0, v0, v34

    if-gez v0, :cond_17

    move/from16 v0, v16

    goto :goto_16

    :cond_17
    const/4 v0, 0x0

    :goto_16
    invoke-static {v2, v0}, Lru/localscribe/engine/OfflineBlockBoundaryKt;->offlineBlockEnd([FZ)I

    move-result v0

    array-length v1, v2

    if-ne v0, v1, :cond_18

    move-object v5, v2

    goto :goto_17

    :cond_18
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const-string v4, "copyOf(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    :goto_17
    const v1, 0x13880

    move-wide/from16 v34, v8

    int-to-long v8, v1

    sub-long v8, v34, v8

    move v4, v1

    move-object/from16 v37, v2

    move-wide/from16 v1, v17

    invoke-static {v8, v9, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    sget-object v1, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    move-object/from16 v38, v3

    sub-long v2, v34, v8

    long-to-int v2, v2

    array-length v3, v5

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-virtual {v1, v15, v8, v9, v2}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v1

    move-object v2, v10

    check-cast v2, Ljava/util/Collection;

    sub-long v3, v34, v8

    long-to-int v3, v3

    new-instance v4, Lru/localscribe/engine/OfflinePipeline$previewRange$2$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lru/localscribe/engine/OfflinePipeline$previewRange$2$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v39, v1

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1c

    move/from16 v40, v3

    move-object/from16 v3, v27

    :try_start_1c
    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;

    iput-object v12, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$3:Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$4:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$5:Ljava/lang/Object;

    iput-object v11, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$6:Ljava/lang/Object;

    iput-object v10, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$7:Ljava/lang/Object;

    iput-object v13, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$8:Ljava/lang/Object;

    iput-object v6, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$9:Ljava/lang/Object;

    move-object/from16 v1, v38

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$10:Ljava/lang/Object;

    move-object/from16 v38, v1

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$11:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1b

    move-object/from16 v1, v36

    :try_start_1d
    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$12:Ljava/lang/Object;

    iput-object v14, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$13:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1a

    move-object/from16 v36, v1

    move-object/from16 v1, v32

    :try_start_1e
    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$14:Ljava/lang/Object;

    iput-object v15, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$15:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_19

    move-object/from16 v32, v1

    :try_start_1f
    invoke-static/range {v37 .. v37}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$16:Ljava/lang/Object;

    iput-object v5, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$17:Ljava/lang/Object;

    invoke-static/range {v39 .. v39}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$18:Ljava/lang/Object;

    iput-object v2, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$19:Ljava/lang/Object;

    move-object/from16 v27, v2

    move-wide/from16 v1, v28

    iput-wide v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$0:J
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1b

    move-wide/from16 v28, v1

    move/from16 v1, v26

    :try_start_20
    iput v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$0:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    move/from16 v2, v25

    :try_start_21
    iput v2, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$1:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    move/from16 v25, v1

    move/from16 v1, v50

    :try_start_22
    iput v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$2:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    move/from16 v41, v1

    move/from16 v26, v2

    move-wide/from16 v1, v34

    :try_start_23
    iput-wide v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$1:J

    move-wide/from16 v34, v1

    move-wide/from16 v1, v45

    iput-wide v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$2:J

    iput v0, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$3:I

    iput-wide v8, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$3:J

    move-wide/from16 v42, v1

    const/4 v1, 0x2

    iput v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->label:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    move-wide/from16 v1, v34

    move-wide/from16 v34, v8

    move-wide v8, v1

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    move-object/from16 v12, v38

    move-object v13, v4

    move-object/from16 v38, v7

    move-object v4, v14

    move/from16 v7, v40

    move-object v14, v3

    move-object v3, v6

    move-object/from16 v6, v39

    move-object/from16 v39, v10

    move-wide/from16 v10, v42

    :try_start_24
    invoke-virtual/range {v4 .. v14}, Lru/localscribe/engine/BlockTranscriber;->process([F[FIJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_21

    move-object/from16 v13, v23

    if-ne v7, v13, :cond_19

    return-object v13

    :cond_19
    move-object/from16 v23, v13

    move-object/from16 v36, v31

    move-object/from16 v32, v50

    move-object/from16 v31, v3

    move-object v3, v12

    move/from16 v50, v41

    move-object v12, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v51, v1

    move-object/from16 v1, p1

    move/from16 v52, v26

    move-object/from16 v26, v51

    move-object/from16 v51, v27

    move-object/from16 v27, v4

    move-wide/from16 v4, v34

    move-object/from16 v34, v14

    move-object/from16 v35, v30

    move-wide v13, v10

    move/from16 v30, v25

    move/from16 v25, v52

    move-object/from16 v11, v51

    move-object/from16 v10, v39

    :goto_18
    :try_start_25
    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Segment;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v39

    goto :goto_19

    :cond_1a
    move-wide/from16 v39, v13

    :goto_19
    array-length v7, v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    int-to-long v13, v7

    add-long/2addr v8, v13

    move-object/from16 p1, v1

    move-object v5, v6

    move-object/from16 v4, v26

    move-object/from16 v14, v27

    move-wide/from16 v1, v28

    move/from16 v26, v30

    move-object/from16 v6, v31

    move-object/from16 v13, v32

    move-object/from16 v27, v34

    move-object/from16 v30, v35

    move-object/from16 v31, v36

    move-object/from16 v7, v38

    move-object/from16 v11, v45

    move-object/from16 v12, v46

    const/16 v0, 0x10

    const-wide/16 v17, 0x0

    move-wide/from16 v45, v39

    goto/16 :goto_14

    :catchall_14
    move-exception v0

    move-object v2, v0

    move-object/from16 v39, v10

    move/from16 v10, v25

    move-object/from16 v4, v26

    move/from16 v9, v30

    move-object/from16 v3, v31

    move-object/from16 v50, v32

    move-object/from16 v14, v34

    move-object/from16 v30, v35

    move-object/from16 v31, v36

    goto/16 :goto_1d

    :catchall_15
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    move-object v14, v3

    move-object v3, v6

    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :catchall_16
    move-exception v0

    move/from16 v26, v2

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    move-object v14, v3

    move-object v3, v6

    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :catchall_17
    move-exception v0

    move/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    move-object v14, v3

    move-object v3, v6

    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :catchall_18
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move/from16 v26, v25

    move-object/from16 v2, v36

    move/from16 v25, v1

    move-object v14, v3

    move-object v3, v6

    move-object/from16 v1, v32

    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :catchall_19
    move-exception v0

    move/from16 v2, v26

    move/from16 v26, v25

    move/from16 v25, v2

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    goto :goto_1a

    :catchall_1a
    move-exception v0

    move/from16 v2, v26

    move/from16 v26, v25

    move/from16 v25, v2

    move-object v2, v1

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v1, v32

    goto :goto_1b

    :catchall_1b
    move-exception v0

    move/from16 v1, v26

    move/from16 v26, v25

    move/from16 v25, v1

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v1, v32

    :goto_1a
    move-object/from16 v2, v36

    :goto_1b
    move-object v14, v3

    move-object v3, v6

    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :cond_1b
    move/from16 v1, v26

    move/from16 v26, v25

    move/from16 v25, v1

    move-object/from16 v37, v2

    move-object v3, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object v4, v14

    move-object/from16 v14, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    move/from16 v41, v50

    move-object/from16 v50, v13

    move-wide/from16 v51, v45

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-wide/from16 v10, v51

    :try_start_26
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v5, v24

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1c
    move-exception v0

    move/from16 v1, v26

    move/from16 v26, v25

    move/from16 v25, v1

    move-object v3, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v14, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    goto :goto_1c

    :catchall_1d
    move-exception v0

    move/from16 v1, v26

    move/from16 v26, v25

    move/from16 v25, v1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v50, v13

    move-object v4, v14

    move-object/from16 v14, v27

    :goto_1c
    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :cond_1c
    move/from16 v1, v26

    move/from16 v26, v25

    move/from16 v25, v1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    move-object v4, v14

    move-object/from16 v14, v27

    move/from16 v41, v50

    move-object/from16 v50, v13

    move-wide/from16 v51, v45

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-wide/from16 v10, v51

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_21

    move-object/from16 v0, v47

    :try_start_27
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_20

    move-object/from16 v0, v48

    :try_start_28
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1f

    move-object/from16 v0, v49

    :try_start_29
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v32, Lru/localscribe/engine/RangePreview;

    iget-object v0, v14, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    iget-wide v1, v14, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v3, v14, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    invoke-virtual/range {v45 .. v45}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v40

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->length()J

    move-result-wide v41

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->lastModified()J

    move-result-wide v43

    move-object/from16 v33, v0

    move-wide/from16 v34, v1

    move-wide/from16 v36, v3

    invoke-direct/range {v32 .. v44}, Lru/localscribe/engine/RangePreview;-><init>(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJ)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1e

    return-object v32

    :catchall_1e
    move-exception v0

    move-object/from16 v1, p1

    move-object v3, v14

    move-object/from16 v8, v19

    move-object/from16 v5, v21

    move-object/from16 v37, v22

    move-object/from16 v14, v38

    move-object/from16 v2, v39

    move-object/from16 v32, v45

    move-object/from16 v7, v46

    move-object/from16 v4, v50

    goto/16 :goto_20

    :catchall_1f
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object v6, v3

    move-object/from16 v27, v14

    move-object/from16 v8, v19

    move-object/from16 v5, v21

    move-object/from16 v37, v22

    move-object/from16 v14, v38

    move-object/from16 v19, v39

    move-object/from16 v32, v45

    move-object/from16 v7, v46

    move-object/from16 v36, v50

    goto/16 :goto_1f

    :catchall_20
    move-exception v0

    move-object/from16 v1, p1

    move-object v5, v2

    move-object v6, v3

    move-object/from16 v27, v14

    move-object/from16 v8, v19

    move-object/from16 v34, v21

    move-object/from16 v37, v22

    move/from16 v15, v25

    move-object/from16 v14, v38

    move-object/from16 v19, v39

    move-object/from16 v32, v45

    move-object/from16 v7, v46

    move-object/from16 v36, v50

    move-object v2, v0

    goto/16 :goto_1e

    :catchall_21
    move-exception v0

    move-object v6, v2

    move-object/from16 v27, v4

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v1, p1

    goto :goto_1d

    :catchall_22
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v1, p1

    move-object v2, v0

    move-object v3, v6

    move-object/from16 v46, v7

    move-object/from16 v38, v14

    move v9, v15

    move-object/from16 v39, v19

    move-object/from16 v27, v21

    move/from16 v10, v22

    move-object/from16 v45, v32

    move-object/from16 v21, v34

    move-object/from16 v50, v36

    move-object/from16 v22, v37

    move-object/from16 v14, p0

    move-object v6, v5

    move-object/from16 v19, v8

    :goto_1d
    :try_start_2a
    throw v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_23

    :catchall_23
    move-exception v0

    :try_start_2b
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_24

    :catchall_24
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    move v15, v9

    move-object/from16 v27, v14

    move-object/from16 v8, v19

    move-object/from16 v34, v21

    move-object/from16 v37, v22

    move-object/from16 v14, v38

    move-object/from16 v19, v39

    move-object/from16 v32, v45

    move-object/from16 v7, v46

    move-object/from16 v36, v50

    move-object v6, v3

    goto :goto_1e

    :catchall_25
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v27, p0

    move-object/from16 v1, p1

    move-object v2, v0

    :goto_1e
    :try_start_2c
    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_26

    :catchall_26
    move-exception v0

    :try_start_2d
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_27

    :catchall_27
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v34

    goto :goto_1f

    :catchall_28
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v27, p0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v5, v34

    goto :goto_1f

    :catchall_29
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v34, v5

    move-object/from16 v27, p0

    move-object/from16 v1, p1

    move-object v2, v0

    :goto_1f
    :try_start_2e
    throw v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2a

    :catchall_2a
    move-exception v0

    :try_start_2f
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2b

    :catchall_2b
    move-exception v0

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    move-object/from16 v4, v36

    goto :goto_20

    :catchall_2c
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v34, v5

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-object/from16 v4, v36

    :goto_20
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    iget-object v10, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "separated-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_20

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object v11, v6

    const/4 v12, 0x0

    array-length v13, v11

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v13, :cond_1e

    move-object/from16 p1, v0

    aget-object v0, v11, v15

    move-object/from16 v16, v0

    check-cast v16, Ljava/io/File;

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v2

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v2, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    goto :goto_21

    :cond_1e
    move-object/from16 p1, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_22

    :cond_1f
    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_23

    :cond_20
    move-object/from16 p1, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    :goto_23
    throw p1

    :cond_21
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0443 \u0430\u0443\u0434\u0438\u043e."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0423\u043a\u0430\u0436\u0438\u0442\u0435 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b \u0432 \u043f\u0440\u0435\u0434\u0435\u043b\u0430\u0445 \u0437\u0430\u043f\u0438\u0441\u0438, \u0432 \u043c\u0438\u043b\u043b\u0438\u0441\u0435\u043a\u0443\u043d\u0434\u0430\u0445."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u0417\u0430\u043f\u0438\u0441\u044c \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u0430"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
