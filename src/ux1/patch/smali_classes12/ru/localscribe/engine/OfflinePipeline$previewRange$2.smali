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
    .param p0, "it"    # F

    .line 272
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$5(F)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # F

    .line 242
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
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 223
    iget v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->label:I

    const-string v3, "Check failed."

    const-string v4, "r"

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p0    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    :pswitch_0
    iget-wide v4, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$3:J

    .local v4, "contextStart\\31":J
    iget v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$3:I

    .local v2, "cut\\31":I
    iget-wide v13, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$2:J

    const-wide/16 v15, 0x0

    .local v13, "previous\\31":J
    iget-wide v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$1:J

    move-wide/from16 v17, v15

    .local v6, "offset\\31":J
    iget v15, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$2:I

    .local v15, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    iget v10, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$1:I

    .local v10, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    iget v9, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$0:I

    move/from16 v21, v9

    .local v21, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    iget-wide v8, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$0:J

    iget-object v11, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$19:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$18:Ljava/lang/Object;

    check-cast v12, [F

    move/from16 v22, v2

    .end local v2    # "cut\\31":I
    .local v12, "context\\31":[F
    .local v22, "cut\\31":I
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$17:Ljava/lang/Object;

    check-cast v2, [F

    move-object/from16 v23, v2

    .local v23, "block\\31":[F
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$16:Ljava/lang/Object;

    check-cast v2, [F

    move-object/from16 v24, v2

    .local v24, "candidate\\31":[F
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$15:Ljava/lang/Object;

    check-cast v2, Ljava/io/RandomAccessFile;

    move-object/from16 v25, v2

    .local v25, "input\\31":Ljava/io/RandomAccessFile;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$14:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    move-object/from16 v26, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$13:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/engine/BlockTranscriber;

    move-object/from16 v27, v2

    .local v27, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$12:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    move-object/from16 v28, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$11:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/engine/Engines;

    move-object/from16 v29, v2

    .local v29, "engines\\29":Lru/localscribe/engine/Engines;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$10:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v30, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    move-object/from16 v31, v2

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v32, v2

    .local v32, "prefix":Ljava/lang/String;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v33, v2

    .local v33, "result":Ljava/util/List;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/SpeakerCluster;

    move-object/from16 v34, v2

    .local v34, "cluster":Lru/localscribe/core/SpeakerCluster;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    move-object/from16 v35, v2

    .local v35, "aliases":Ljava/util/Map;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/SpeakerTimeline;

    move-object/from16 v36, v2

    .local v36, "timeline":Lru/localscribe/core/SpeakerTimeline;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v37, v2

    .local v37, "before":Ljava/util/List;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v38, v2

    .local v38, "original":Ljava/util/List;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    move-object/from16 v39, v2

    .local v39, "wav":Ljava/io/File;
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/core/Recording;

    .local v2, "r":Lru/localscribe/core/Recording;
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

    .line 261
    .end local v4    # "contextStart\\31":J
    .end local v6    # "offset\\31":J
    .end local v12    # "context\\31":[F
    .end local v13    # "previous\\31":J
    .end local v15    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .end local v22    # "cut\\31":I
    .end local v23    # "block\\31":[F
    .end local v24    # "candidate\\31":[F
    .end local v25    # "input\\31":Ljava/io/RandomAccessFile;
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

    .line 223
    .end local v2    # "r":Lru/localscribe/core/Recording;
    .end local v10    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v27    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v29    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v32    # "prefix":Ljava/lang/String;
    .end local v33    # "result":Ljava/util/List;
    .end local v34    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v35    # "aliases":Ljava/util/Map;
    .end local v36    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v37    # "before":Ljava/util/List;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "wav":Ljava/io/File;
    :pswitch_1
    const-wide/16 v17, 0x0

    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .local v2, "crop":Ljava/io/File;
    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "before":Ljava/util/List;
    iget-object v7, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .local v7, "original":Ljava/util/List;
    iget-object v8, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    .local v8, "wav":Ljava/io/File;
    iget-object v9, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lru/localscribe/core/Recording;

    .local v9, "r":Lru/localscribe/core/Recording;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_4

    .line 244
    :catchall_1
    move-exception v0

    goto/16 :goto_9

    .line 223
    .end local v2    # "crop":Ljava/io/File;
    .end local v6    # "before":Ljava/util/List;
    .end local v7    # "original":Ljava/util/List;
    .end local v8    # "wav":Ljava/io/File;
    .end local v9    # "r":Lru/localscribe/core/Recording;
    :pswitch_2
    const-wide/16 v17, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v2}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v2

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v2

    if-eqz v2, :cond_23

    move-object v9, v2

    .line 225
    .restart local v9    # "r":Lru/localscribe/core/Recording;
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

    .line 226
    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getPcmPath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$a$-ifBlank-OfflinePipeline$previewRange$2$wav$1\\2\\226\\0":I
    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-ifBlank-OfflinePipeline$previewRange$2$wav$1\\2\\226\\0":I
    :cond_1
    check-cast v2, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v6

    .line 227
    .restart local v8    # "wav":Ljava/io/File;
    sget-object v2, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v8, v7, v6, v10}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 228
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v2}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v10

    iget-object v11, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    iget-wide v12, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v14, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    invoke-virtual/range {v10 .. v15}, Lru/localscribe/data/Repository;->rangeSegments(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v7

    .line 229
    .restart local v7    # "original":Ljava/util/List;
    move-object v2, v7

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach\\4":Ljava/lang/Iterable;
    iget-wide v12, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    iget-wide v14, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$endMs:J

    const/4 v6, 0x0

    .line 347
    .local v6, "$i$f$forEach\\4\\229":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "element\\4":Ljava/lang/Object;
    move-object/from16 v11, v22

    check-cast v11, Lru/localscribe/core/Segment;

    .local v11, "it\\5":Lru/localscribe/core/Segment;
    const/16 v23, 0x0

    .line 229
    .local v23, "$i$a$-forEach-OfflinePipeline$previewRange$2$3\\5\\347\\0":I
    sget-object v10, Lru/localscribe/core/RangeEdits;->INSTANCE:Lru/localscribe/core/RangeEdits;

    invoke-virtual/range {v10 .. v15}, Lru/localscribe/core/RangeEdits;->outside(Lru/localscribe/core/Segment;JJ)Ljava/util/List;

    .line 347
    .end local v11    # "it\\5":Lru/localscribe/core/Segment;
    .end local v22    # "element\\4":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-OfflinePipeline$previewRange$2$3\\5\\347\\0":I
    goto :goto_1

    .line 348
    :cond_2
    nop

    .line 230
    .end local v2    # "$this$forEach\\4":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach\\4\\229":I
    iget-object v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v2}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v2

    iget-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lru/localscribe/data/Repository;->speakers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 231
    .local v6, "before":Ljava/util/List;
    iget-boolean v2, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$rediarize:Z

    if-eqz v2, :cond_8

    .line 232
    const-string v2, ".wav"

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    const-string v11, "localscribe-range-"

    invoke-static {v11, v2, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 233
    .local v2, "crop":Ljava/io/File;
    nop

    .line 234
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

    .line 346
    .local v15, "input\\6":Ljava/io/RandomAccessFile;
    const/16 v21, 0x0

    .line 234
    .local v21, "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
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

    .local v11, "output\\7":Lru/localscribe/audio/WavFile;
    const/4 v12, 0x0

    .line 235
    .local v12, "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1$1\\7\\234\\6":I
    move-object/from16 v29, v6

    move-object v14, v7

    const/16 v13, 0x10

    .end local v6    # "before":Ljava/util/List;
    .end local v7    # "original":Ljava/util/List;
    .local v14, "original":Ljava/util/List;
    .local v29, "before":Ljava/util/List;
    int-to-long v6, v13

    mul-long v22, v22, v6

    move-wide/from16 v26, v6

    move-wide/from16 v6, v22

    .line 236
    .local v6, "offset\\7":J
    :goto_2
    mul-long v22, v24, v26

    cmp-long v13, v6, v22

    if-gez v13, :cond_5

    .line 237
    move-object/from16 v13, p0

    .local v13, "$completion\\8":Lkotlin/coroutines/Continuation;
    const/16 v30, 0x0

    .line 349
    .local v30, "$i$f$currentCoroutineContext\\8\\237":I
    :try_start_5
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v31

    .line 237
    .end local v13    # "$completion\\8":Lkotlin/coroutines/Continuation;
    .end local v30    # "$i$f$currentCoroutineContext\\8\\237":I
    invoke-static/range {v31 .. v31}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 238
    sget-object v13, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    .end local v8    # "wav":Ljava/io/File;
    .end local v9    # "r":Lru/localscribe/core/Recording;
    .local v30, "r":Lru/localscribe/core/Recording;
    .local v31, "wav":Ljava/io/File;
    const-wide/32 v8, 0x27100

    move-object/from16 v32, v0

    sub-long v0, v22, v6

    :try_start_6
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v13, v15, v6, v7, v0}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v0

    .line 239
    .local v0, "x\\7":[F
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

    .end local v0    # "x\\7":[F
    goto :goto_2

    .restart local v0    # "x\\7":[F
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "crop":Ljava/io/File;
    .end local v14    # "original":Ljava/util/List;
    .end local v15    # "input\\6":Ljava/io/RandomAccessFile;
    .end local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    .end local v29    # "before":Ljava/util/List;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "wav":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 234
    .end local v0    # "x\\7":[F
    .end local v6    # "offset\\7":J
    .end local v11    # "output\\7":Lru/localscribe/audio/WavFile;
    .end local v12    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1$1\\7\\234\\6":I
    .restart local v2    # "crop":Ljava/io/File;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v15    # "input\\6":Ljava/io/RandomAccessFile;
    .restart local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    .restart local v29    # "before":Ljava/util/List;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "wav":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    goto/16 :goto_7

    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "wav":Ljava/io/File;
    .restart local v8    # "wav":Ljava/io/File;
    .restart local v9    # "r":Lru/localscribe/core/Recording;
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

    .end local v8    # "wav":Ljava/io/File;
    .end local v9    # "r":Lru/localscribe/core/Recording;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "wav":Ljava/io/File;
    goto/16 :goto_7

    .line 241
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "wav":Ljava/io/File;
    .restart local v6    # "offset\\7":J
    .restart local v8    # "wav":Ljava/io/File;
    .restart local v9    # "r":Lru/localscribe/core/Recording;
    .restart local v11    # "output\\7":Lru/localscribe/audio/WavFile;
    .restart local v12    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1$1\\7\\234\\6":I
    :cond_5
    move-object/from16 v32, v0

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    .end local v6    # "offset\\7":J
    .end local v8    # "wav":Ljava/io/File;
    .end local v9    # "r":Lru/localscribe/core/Recording;
    .end local v11    # "output\\7":Lru/localscribe/audio/WavFile;
    .end local v12    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1$1\\7\\234\\6":I
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "wav":Ljava/io/File;
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 234
    const/4 v13, 0x0

    :try_start_8
    invoke-static {v5, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 241
    nop

    .end local v15    # "input\\6":Ljava/io/RandomAccessFile;
    .end local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 234
    :try_start_9
    invoke-static {v10, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 242
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

    .end local v30    # "r":Lru/localscribe/core/Recording;
    .local v6, "r":Lru/localscribe/core/Recording;
    :try_start_b
    iput-object v6, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$0:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v7, v31

    .end local v31    # "wav":Ljava/io/File;
    .local v7, "wav":Ljava/io/File;
    :try_start_c
    iput-object v7, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->L$2:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v8, v29

    .end local v29    # "before":Ljava/util/List;
    .local v8, "before":Ljava/util/List;
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

    .end local v2    # "crop":Ljava/io/File;
    .local v23, "crop":Ljava/io/File;
    :try_start_e
    invoke-virtual/range {v22 .. v27}, Lru/localscribe/engine/RecordingDiarization;->analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    move-object/from16 v2, v32

    if-ne v0, v2, :cond_6

    .line 223
    return-object v2

    .line 242
    :cond_6
    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    .line 223
    .end local v14    # "original":Ljava/util/List;
    .local v6, "before":Ljava/util/List;
    .local v7, "original":Ljava/util/List;
    .local v8, "wav":Ljava/io/File;
    .restart local v9    # "r":Lru/localscribe/core/Recording;
    :goto_4
    :try_start_f
    check-cast v0, Lru/localscribe/core/SpeakerTimeline;

    .line 243
    .local v0, "local":Lru/localscribe/core/SpeakerTimeline;
    invoke-virtual {v0}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    iget-wide v10, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$startMs:J

    .local v5, "$this$map\\9":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 350
    .local v12, "$i$f$map\\9\\243":I
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination\\10":Ljava/util/Collection;
    move-object v14, v5

    .local v14, "$this$mapTo\\10":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 351
    .local v15, "$i$f$mapTo\\10\\350":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .line 352
    .local v22, "item\\10":Ljava/lang/Object;
    move-object/from16 v24, v22

    check-cast v24, Lru/localscribe/core/VoiceTurn;

    move-object/from16 v29, v24

    .local v29, "it\\11":Lru/localscribe/core/VoiceTurn;
    const/16 v24, 0x0

    .line 243
    .local v24, "$i$a$-map-OfflinePipeline$previewRange$2$timeline$2\\11\\352\\0":I
    invoke-virtual/range {v29 .. v29}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v27, v0

    move-object/from16 v39, v5

    move-object/from16 v38, v6

    const/16 v0, 0x10

    .end local v0    # "local":Lru/localscribe/core/SpeakerTimeline;
    .end local v5    # "$this$map\\9":Ljava/lang/Iterable;
    .end local v6    # "before":Ljava/util/List;
    .local v27, "local":Lru/localscribe/core/SpeakerTimeline;
    .local v38, "before":Ljava/util/List;
    .local v39, "$this$map\\9":Ljava/lang/Iterable;
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

    .line 352
    .end local v24    # "$i$a$-map-OfflinePipeline$previewRange$2$timeline$2\\11\\352\\0":I
    .end local v29    # "it\\11":Lru/localscribe/core/VoiceTurn;
    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    move-object/from16 v6, v38

    move-object/from16 v5, v39

    goto :goto_5

    .line 353
    .end local v22    # "item\\10":Ljava/lang/Object;
    .end local v27    # "local":Lru/localscribe/core/SpeakerTimeline;
    .end local v38    # "before":Ljava/util/List;
    .end local v39    # "$this$map\\9":Ljava/lang/Iterable;
    .restart local v0    # "local":Lru/localscribe/core/SpeakerTimeline;
    .restart local v5    # "$this$map\\9":Ljava/lang/Iterable;
    .restart local v6    # "before":Ljava/util/List;
    :cond_7
    move-object/from16 v27, v0

    move-object/from16 v39, v5

    move-object/from16 v38, v6

    .end local v0    # "local":Lru/localscribe/core/SpeakerTimeline;
    .end local v5    # "$this$map\\9":Ljava/lang/Iterable;
    .end local v6    # "before":Ljava/util/List;
    .end local v13    # "destination\\10":Ljava/util/Collection;
    .end local v14    # "$this$mapTo\\10":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapTo\\10\\350":I
    .restart local v27    # "local":Lru/localscribe/core/SpeakerTimeline;
    .restart local v38    # "before":Ljava/util/List;
    .restart local v39    # "$this$map\\9":Ljava/lang/Iterable;
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 350
    nop

    .line 243
    .end local v12    # "$i$f$map\\9\\243":I
    .end local v39    # "$this$map\\9":Ljava/lang/Iterable;
    new-instance v5, Lru/localscribe/core/SpeakerTimeline;

    invoke-direct {v5, v0}, Lru/localscribe/core/SpeakerTimeline;-><init>(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 244
    .end local v27    # "local":Lru/localscribe/core/SpeakerTimeline;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-object v14, v7

    move-object v7, v8

    move-object/from16 v30, v9

    move-object/from16 v8, v38

    const/16 v16, 0x1

    .end local v23    # "crop":Ljava/io/File;
    goto/16 :goto_f

    .restart local v23    # "crop":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v2, v23

    move-object/from16 v6, v38

    goto/16 :goto_9

    .end local v38    # "before":Ljava/util/List;
    .restart local v6    # "before":Ljava/util/List;
    :catchall_5
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v2, v23

    .end local v6    # "before":Ljava/util/List;
    .restart local v38    # "before":Ljava/util/List;
    goto/16 :goto_9

    .end local v9    # "r":Lru/localscribe/core/Recording;
    .end local v23    # "crop":Ljava/io/File;
    .end local v38    # "before":Ljava/util/List;
    .restart local v2    # "crop":Ljava/io/File;
    .local v6, "r":Lru/localscribe/core/Recording;
    .local v7, "wav":Ljava/io/File;
    .local v8, "before":Ljava/util/List;
    .local v14, "original":Ljava/util/List;
    :catchall_6
    move-exception v0

    move-object/from16 v23, v2

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    .end local v2    # "crop":Ljava/io/File;
    .restart local v23    # "crop":Ljava/io/File;
    goto/16 :goto_9

    .end local v8    # "before":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .local v29, "before":Ljava/util/List;
    :catchall_7
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    .end local v2    # "crop":Ljava/io/File;
    .end local v29    # "before":Ljava/util/List;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    goto/16 :goto_9

    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .restart local v29    # "before":Ljava/util/List;
    .restart local v31    # "wav":Ljava/io/File;
    :catchall_8
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v7, v31

    move-object v9, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v14

    .end local v2    # "crop":Ljava/io/File;
    .end local v29    # "before":Ljava/util/List;
    .end local v31    # "wav":Ljava/io/File;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    goto/16 :goto_9

    .end local v6    # "r":Lru/localscribe/core/Recording;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .restart local v29    # "before":Ljava/util/List;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "wav":Ljava/io/File;
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

    .end local v2    # "crop":Ljava/io/File;
    .end local v29    # "before":Ljava/util/List;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "wav":Ljava/io/File;
    .restart local v6    # "r":Lru/localscribe/core/Recording;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    goto/16 :goto_9

    .line 234
    .end local v6    # "r":Lru/localscribe/core/Recording;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .restart local v29    # "before":Ljava/util/List;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "wav":Ljava/io/File;
    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    .end local v2    # "crop":Ljava/io/File;
    .end local v29    # "before":Ljava/util/List;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "wav":Ljava/io/File;
    .restart local v6    # "r":Lru/localscribe/core/Recording;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    goto :goto_8

    .end local v6    # "r":Lru/localscribe/core/Recording;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .local v15, "input\\6":Ljava/io/RandomAccessFile;
    .restart local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    .restart local v29    # "before":Ljava/util/List;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "wav":Ljava/io/File;
    :catchall_c
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v2, v0

    .end local v2    # "crop":Ljava/io/File;
    .end local v29    # "before":Ljava/util/List;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "wav":Ljava/io/File;
    .restart local v6    # "r":Lru/localscribe/core/Recording;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    goto :goto_7

    .end local v14    # "original":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .local v6, "before":Ljava/util/List;
    .local v7, "original":Ljava/util/List;
    .local v8, "wav":Ljava/io/File;
    .restart local v9    # "r":Lru/localscribe/core/Recording;
    :catchall_d
    move-exception v0

    move-object/from16 v23, v2

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v2, v0

    .end local v2    # "crop":Ljava/io/File;
    .end local v6    # "before":Ljava/util/List;
    .end local v7    # "original":Ljava/util/List;
    .end local v8    # "wav":Ljava/io/File;
    .end local v9    # "r":Lru/localscribe/core/Recording;
    .end local v15    # "input\\6":Ljava/io/RandomAccessFile;
    .end local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_7
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    .local v6, "r":Lru/localscribe/core/Recording;
    .local v7, "wav":Ljava/io/File;
    .local v8, "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v15    # "input\\6":Ljava/io/RandomAccessFile;
    .restart local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    .restart local v23    # "crop":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_e
    move-exception v0

    :try_start_12
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v6    # "r":Lru/localscribe/core/Recording;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .end local v15    # "input\\6":Ljava/io/RandomAccessFile;
    .end local v21    # "$i$a$-use-OfflinePipeline$previewRange$2$timeline$1\\6\\234\\0":I
    .restart local v6    # "r":Lru/localscribe/core/Recording;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_f
    move-exception v0

    move-object v2, v0

    goto :goto_8

    .end local v14    # "original":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .local v6, "before":Ljava/util/List;
    .local v7, "original":Ljava/util/List;
    .local v8, "wav":Ljava/io/File;
    .restart local v9    # "r":Lru/localscribe/core/Recording;
    :catchall_10
    move-exception v0

    move-object/from16 v23, v2

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v2, v0

    .end local v2    # "crop":Ljava/io/File;
    .end local v6    # "before":Ljava/util/List;
    .end local v7    # "original":Ljava/util/List;
    .end local v8    # "wav":Ljava/io/File;
    .end local v9    # "r":Lru/localscribe/core/Recording;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_8
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    .local v6, "r":Lru/localscribe/core/Recording;
    .local v7, "wav":Ljava/io/File;
    .local v8, "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_11
    move-exception v0

    :try_start_14
    invoke-static {v10, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v6    # "r":Lru/localscribe/core/Recording;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    .line 244
    .restart local v6    # "r":Lru/localscribe/core/Recording;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v23    # "crop":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_12
    move-exception v0

    move-object v9, v6

    move-object v6, v8

    move-object/from16 v2, v23

    move-object v8, v7

    move-object v7, v14

    goto :goto_9

    .end local v14    # "original":Ljava/util/List;
    .end local v23    # "crop":Ljava/io/File;
    .restart local v2    # "crop":Ljava/io/File;
    .local v6, "before":Ljava/util/List;
    .local v7, "original":Ljava/util/List;
    .local v8, "wav":Ljava/io/File;
    .restart local v9    # "r":Lru/localscribe/core/Recording;
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

    .line 245
    .end local v2    # "crop":Ljava/io/File;
    :cond_8
    move-object v2, v0

    move-object v14, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    .end local v9    # "r":Lru/localscribe/core/Recording;
    .local v6, "r":Lru/localscribe/core/Recording;
    .local v7, "wav":Ljava/io/File;
    .local v8, "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    move-object v0, v14

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull\\12":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 354
    .local v5, "$i$f$mapNotNull\\12\\245":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination\\13":Ljava/util/Collection;
    move-object v10, v0

    .local v10, "$this$mapNotNullTo\\13":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 362
    .local v11, "$i$f$mapNotNullTo\\13\\354":I
    move-object v12, v10

    .local v12, "$this$forEach\\14":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 363
    .local v13, "$i$f$forEach\\14\\362":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "element\\14":Ljava/lang/Object;
    move-object/from16 v22, v21

    .local v22, "element\\15":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 362
    .local v23, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\15\\363\\13":I
    move-object/from16 v24, v22

    check-cast v24, Lru/localscribe/core/Segment;

    .local v24, "s\\17":Lru/localscribe/core/Segment;
    const/16 v25, 0x0

    .line 246
    .local v25, "$i$a$-mapNotNull-OfflinePipeline$previewRange$2$timeline$3\\17\\362\\0":I
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

    .end local v0    # "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNull\\12\\245":I
    .end local v6    # "r":Lru/localscribe/core/Recording;
    .local v29, "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .local v31, "$i$f$mapNotNull\\12\\245":I
    int-to-long v5, v0

    mul-long v33, v26, v5

    invoke-virtual/range {v24 .. v24}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v26

    mul-long v35, v26, v5

    .line 247
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

    .line 346
    nop

    .local v5, "it\\18":I
    const/4 v6, 0x0

    .line 247
    .local v6, "$i$a$-takeIf-OfflinePipeline$previewRange$2$timeline$3$1\\18\\247\\17":I
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

    .end local v5    # "it\\18":I
    .end local v6    # "$i$a$-takeIf-OfflinePipeline$previewRange$2$timeline$3$1\\18\\247\\17":I
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

    .line 246
    new-instance v32, Lru/localscribe/core/VoiceTurn;

    invoke-direct/range {v32 .. v38}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZ)V

    .line 247
    :goto_e
    nop

    .line 362
    .end local v24    # "s\\17":Lru/localscribe/core/Segment;
    .end local v25    # "$i$a$-mapNotNull-OfflinePipeline$previewRange$2$timeline$3\\17\\362\\0":I
    if-eqz v32, :cond_f

    move-object/from16 v0, v32

    .line 364
    .local v0, "it\\15":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 362
    .local v5, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\16\\364\\15":I
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "it\\15":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\16\\364\\15":I
    .end local v22    # "element\\15":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\15\\363\\13":I
    :cond_f
    move-object/from16 v0, v29

    move-object/from16 v6, v30

    move/from16 v5, v31

    .end local v21    # "element\\14":Ljava/lang/Object;
    goto/16 :goto_a

    .line 365
    .end local v29    # "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "$i$f$mapNotNull\\12\\245":I
    .local v0, "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .local v5, "$i$f$mapNotNull\\12\\245":I
    .local v6, "r":Lru/localscribe/core/Recording;
    :cond_10
    move-object/from16 v29, v0

    move/from16 v31, v5

    move-object/from16 v30, v6

    const/16 v16, 0x1

    .line 366
    .end local v0    # "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNull\\12\\245":I
    .end local v6    # "r":Lru/localscribe/core/Recording;
    .end local v12    # "$this$forEach\\14":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach\\14\\362":I
    .restart local v29    # "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "$i$f$mapNotNull\\12\\245":I
    nop

    .end local v9    # "destination\\13":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo\\13":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo\\13\\354":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 354
    nop

    .line 245
    .end local v29    # "$this$mapNotNull\\12":Ljava/lang/Iterable;
    .end local v31    # "$i$f$mapNotNull\\12\\245":I
    new-instance v5, Lru/localscribe/core/SpeakerTimeline;

    invoke-direct {v5, v0}, Lru/localscribe/core/SpeakerTimeline;-><init>(Ljava/util/List;)V

    .line 231
    :goto_f
    nop

    .line 251
    .local v5, "timeline":Lru/localscribe/core/SpeakerTimeline;
    iget-boolean v0, v1, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->$rediarize:Z

    if-eqz v0, :cond_15

    sget-object v0, Lru/localscribe/core/TimelineIdentityMap;->INSTANCE:Lru/localscribe/core/TimelineIdentityMap;

    move-object v6, v14

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$mapNotNull\\19":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 367
    .local v9, "$i$f$mapNotNull\\19\\251":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination\\20":Ljava/util/Collection;
    move-object v11, v6

    .local v11, "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 375
    .local v12, "$i$f$mapNotNullTo\\20\\367":I
    move-object v13, v11

    .local v13, "$this$forEach\\21":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 376
    .local v15, "$i$f$forEach\\21\\375":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_10
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "element\\21":Ljava/lang/Object;
    move-object/from16 v23, v22

    .local v23, "element\\22":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 375
    .local v24, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\22\\376\\20":I
    move-object/from16 v25, v23

    check-cast v25, Lru/localscribe/core/Segment;

    .local v25, "s\\24":Lru/localscribe/core/Segment;
    const/16 v26, 0x0

    .line 252
    .local v26, "$i$a$-mapNotNull-OfflinePipeline$previewRange$2$aliases$1\\24\\375\\0":I
    invoke-virtual/range {v25 .. v25}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_11

    move-object/from16 v36, v27

    .line 346
    .local v36, "it\\25":Ljava/lang/String;
    const/16 v27, 0x0

    .line 252
    .local v27, "$i$a$-let-OfflinePipeline$previewRange$2$aliases$1$1\\25\\252\\24":I
    new-instance v31, Lru/localscribe/core/TimelineIdentityMap$Previous;

    invoke-virtual/range {v25 .. v25}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v32

    move-object/from16 v38, v2

    move-object/from16 v29, v11

    move/from16 v37, v12

    const/16 v2, 0x10

    .end local v11    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapNotNullTo\\20\\367":I
    .local v29, "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .local v37, "$i$f$mapNotNullTo\\20\\367":I
    int-to-long v11, v2

    mul-long v32, v32, v11

    invoke-virtual/range {v25 .. v25}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v34

    mul-long v34, v34, v11

    invoke-direct/range {v31 .. v36}, Lru/localscribe/core/TimelineIdentityMap$Previous;-><init>(JJLjava/lang/String;)V

    .end local v27    # "$i$a$-let-OfflinePipeline$previewRange$2$aliases$1$1\\25\\252\\24":I
    .end local v36    # "it\\25":Ljava/lang/String;
    goto :goto_11

    .end local v29    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .end local v37    # "$i$f$mapNotNullTo\\20\\367":I
    .restart local v11    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .restart local v12    # "$i$f$mapNotNullTo\\20\\367":I
    :cond_11
    move-object/from16 v38, v2

    move-object/from16 v29, v11

    move/from16 v37, v12

    .end local v11    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapNotNullTo\\20\\367":I
    .restart local v29    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .restart local v37    # "$i$f$mapNotNullTo\\20\\367":I
    const/16 v31, 0x0

    .line 375
    .end local v25    # "s\\24":Lru/localscribe/core/Segment;
    .end local v26    # "$i$a$-mapNotNull-OfflinePipeline$previewRange$2$aliases$1\\24\\375\\0":I
    :goto_11
    if-eqz v31, :cond_12

    move-object/from16 v2, v31

    .line 377
    .local v2, "it\\22":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 375
    .local v11, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\23\\377\\22":I
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v2    # "it\\22":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\23\\377\\22":I
    .end local v23    # "element\\22":Ljava/lang/Object;
    .end local v24    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\22\\376\\20":I
    :cond_12
    move-object/from16 v11, v29

    move/from16 v12, v37

    move-object/from16 v2, v38

    .end local v22    # "element\\21":Ljava/lang/Object;
    goto :goto_10

    .line 378
    .end local v29    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .end local v37    # "$i$f$mapNotNullTo\\20\\367":I
    .local v11, "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .restart local v12    # "$i$f$mapNotNullTo\\20\\367":I
    :cond_13
    move-object/from16 v38, v2

    move-object/from16 v29, v11

    move/from16 v37, v12

    .line 379
    .end local v11    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapNotNullTo\\20\\367":I
    .end local v13    # "$this$forEach\\21":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach\\21\\375":I
    .restart local v29    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .restart local v37    # "$i$f$mapNotNullTo\\20\\367":I
    nop

    .end local v10    # "destination\\20":Ljava/util/Collection;
    .end local v29    # "$this$mapNotNullTo\\20":Ljava/lang/Iterable;
    .end local v37    # "$i$f$mapNotNullTo\\20\\367":I
    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 367
    nop

    .line 253
    .end local v6    # "$this$mapNotNull\\19":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapNotNull\\19\\251":I
    move-object v6, v8

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$map\\26":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 380
    .local v9, "$i$f$map\\26\\253":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination\\27":Ljava/util/Collection;
    move-object v11, v6

    .local v11, "$this$mapTo\\27":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 381
    .local v12, "$i$f$mapTo\\27\\380":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 382
    .local v15, "item\\27":Ljava/lang/Object;
    move-object/from16 v21, v15

    check-cast v21, Lru/localscribe/core/Speaker;

    .local v21, "it\\28":Lru/localscribe/core/Speaker;
    const/16 v22, 0x0

    .line 253
    .local v22, "$i$a$-map-OfflinePipeline$previewRange$2$aliases$2\\28\\382\\0":I
    move-object/from16 v23, v6

    .end local v6    # "$this$map\\26":Ljava/lang/Iterable;
    .local v23, "$this$map\\26":Ljava/lang/Iterable;
    invoke-virtual/range {v21 .. v21}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v6

    .line 382
    .end local v21    # "it\\28":Lru/localscribe/core/Speaker;
    .end local v22    # "$i$a$-map-OfflinePipeline$previewRange$2$aliases$2\\28\\382\\0":I
    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v23

    goto :goto_12

    .line 383
    .end local v15    # "item\\27":Ljava/lang/Object;
    .end local v23    # "$this$map\\26":Ljava/lang/Iterable;
    .restart local v6    # "$this$map\\26":Ljava/lang/Iterable;
    :cond_14
    move-object/from16 v23, v6

    .end local v6    # "$this$map\\26":Ljava/lang/Iterable;
    .end local v10    # "destination\\27":Ljava/util/Collection;
    .end local v11    # "$this$mapTo\\27":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo\\27\\380":I
    .restart local v23    # "$this$map\\26":Ljava/lang/Iterable;
    move-object v6, v10

    check-cast v6, Ljava/util/List;

    .line 380
    nop

    .end local v9    # "$i$f$map\\26\\253":I
    .end local v23    # "$this$map\\26":Ljava/lang/Iterable;
    check-cast v6, Ljava/lang/Iterable;

    .line 253
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 251
    invoke-virtual {v0, v5, v2, v6}, Lru/localscribe/core/TimelineIdentityMap;->match(Lru/localscribe/core/SpeakerTimeline;Ljava/util/List;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_13

    .line 253
    :cond_15
    move-object/from16 v38, v2

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v37, v0

    .line 251
    :goto_13
    nop

    .line 254
    .local v37, "aliases":Ljava/util/Map;
    new-instance v0, Lru/localscribe/core/SpeakerCluster;

    invoke-virtual/range {v30 .. v30}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v2

    invoke-direct {v0, v2, v8}, Lru/localscribe/core/SpeakerCluster;-><init>(Lru/localscribe/core/Settings;Ljava/util/List;)V

    move-object/from16 v32, v0

    .line 255
    .local v32, "cluster":Lru/localscribe/core/SpeakerCluster;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 256
    .local v2, "result":Ljava/util/List;
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

    .line 257
    .local v36, "prefix":Ljava/lang/String;
    nop

    .line 258
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

    .line 259
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

    .local v31, "engines\\29":Lru/localscribe/engine/Engines;
    const/4 v15, 0x0

    .line 260
    .local v15, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    new-instance v29, Lru/localscribe/engine/BlockTranscriber;

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;

    move-result-object v33

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v35
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_29

    move-object/from16 v34, v5

    .end local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .local v34, "timeline":Lru/localscribe/core/SpeakerTimeline;
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

    .local v21, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    const/16 v22, 0x0

    .line 261
    .local v22, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
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

    .local v0, "input\\31":Ljava/io/RandomAccessFile;
    const/16 v23, 0x0

    .line 262
    .local v23, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    move-object/from16 v24, v0

    move-object/from16 v19, v2

    const/16 v0, 0x10

    .end local v0    # "input\\31":Ljava/io/RandomAccessFile;
    .end local v2    # "result":Ljava/util/List;
    .local v19, "result":Ljava/util/List;
    .local v24, "input\\31":Ljava/io/RandomAccessFile;
    int-to-long v1, v0

    mul-long/2addr v1, v9

    .line 263
    .local v1, "offset\\31":J
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

    .line 264
    .end local v1    # "offset\\31":J
    .end local v23    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .end local v24    # "input\\31":Ljava/io/RandomAccessFile;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v36    # "prefix":Ljava/lang/String;
    .end local v37    # "aliases":Ljava/util/Map;
    .end local p0    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v7, "original":Ljava/util/List;
    .local v8, "offset\\31":J
    .local v10, "result":Ljava/util/List;
    .local v11, "cluster":Lru/localscribe/core/SpeakerCluster;
    .local v12, "wav":Ljava/io/File;
    .local v13, "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v15, "input\\31":Ljava/io/RandomAccessFile;
    .local v19, "before":Ljava/util/List;
    .local v21, "timeline":Lru/localscribe/core/SpeakerTimeline;
    .local v22, "aliases":Ljava/util/Map;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v27, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v45, "previous\\31":J
    .local v50, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    :goto_14
    move-wide/from16 v28, v1

    int-to-long v1, v0

    mul-long v1, v1, v28

    cmp-long v32, v8, v1

    if-gez v32, :cond_1c

    .line 265
    move-object/from16 v32, v27

    .local v32, "$completion\\32":Lkotlin/coroutines/Continuation;
    const/16 v33, 0x0

    .line 384
    .local v33, "$i$f$currentCoroutineContext\\32\\265":I
    :try_start_1a
    invoke-interface/range {v27 .. v27}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v34

    .line 265
    .end local v32    # "$completion\\32":Lkotlin/coroutines/Continuation;
    .end local v33    # "$i$f$currentCoroutineContext\\32\\265":I
    invoke-static/range {v34 .. v34}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 266
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

    .line 267
    .local v2, "candidate\\31":[F
    array-length v0, v2

    if-nez v0, :cond_16

    move/from16 v0, v16

    goto :goto_15

    :cond_16
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1b

    .line 268
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

    .line 269
    .local v0, "cut\\31":I
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

    .line 270
    .local v5, "block\\31":[F
    :goto_17
    const v1, 0x13880

    move-wide/from16 v34, v8

    .end local v8    # "offset\\31":J
    .local v34, "offset\\31":J
    int-to-long v8, v1

    sub-long v8, v34, v8

    move v4, v1

    move-object/from16 v37, v2

    move-wide/from16 v1, v17

    .end local v2    # "candidate\\31":[F
    .local v37, "candidate\\31":[F
    invoke-static {v8, v9, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    .line 271
    .local v8, "contextStart\\31":J
    sget-object v1, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    move-object/from16 v38, v3

    sub-long v2, v34, v8

    long-to-int v2, v2

    array-length v3, v5

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-virtual {v1, v15, v8, v9, v2}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v1

    .line 272
    .local v1, "context\\31":[F
    move-object v2, v10

    check-cast v2, Ljava/util/Collection;

    sub-long v3, v34, v8

    long-to-int v3, v3

    new-instance v4, Lru/localscribe/engine/OfflinePipeline$previewRange$2$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lru/localscribe/engine/OfflinePipeline$previewRange$2$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v39, v1

    .end local v1    # "context\\31":[F
    .local v39, "context\\31":[F
    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1c

    move/from16 v40, v3

    move-object/from16 v3, v27

    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v3, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
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

    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v1, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    :try_start_20
    iput v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$0:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    move/from16 v2, v25

    .end local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v2, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    :try_start_21
    iput v2, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$1:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    move/from16 v25, v1

    move/from16 v1, v50

    .end local v50    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .local v1, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    :try_start_22
    iput v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$2:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    move/from16 v41, v1

    move/from16 v26, v2

    move-wide/from16 v1, v34

    .end local v2    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v34    # "offset\\31":J
    .local v1, "offset\\31":J
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v41, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    :try_start_23
    iput-wide v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$1:J

    move-wide/from16 v34, v1

    move-wide/from16 v1, v45

    .end local v45    # "previous\\31":J
    .local v1, "previous\\31":J
    .restart local v34    # "offset\\31":J
    iput-wide v1, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$2:J

    iput v0, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->I$3:I

    iput-wide v8, v3, Lru/localscribe/engine/OfflinePipeline$previewRange$2;->J$3:J

    move-wide/from16 v42, v1

    const/4 v1, 0x2

    .end local v1    # "previous\\31":J
    .local v42, "previous\\31":J
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

    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v7    # "original":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v42    # "previous\\31":J
    .local v4, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v6, "context\\31":[F
    .local v8, "offset\\31":J
    .local v10, "previous\\31":J
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v34, "contextStart\\31":J
    .local v38, "original":Ljava/util/List;
    .local v39, "result":Ljava/util/List;
    .local v45, "cluster":Lru/localscribe/core/SpeakerCluster;
    .local v46, "wav":Ljava/io/File;
    .local v50, "prefix":Ljava/lang/String;
    :try_start_24
    invoke-virtual/range {v4 .. v14}, Lru/localscribe/engine/BlockTranscriber;->process([F[FIJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_21

    move-object/from16 v13, v23

    if-ne v7, v13, :cond_19

    .line 223
    return-object v13

    .line 272
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

    .end local v5    # "block\\31":[F
    .end local v6    # "context\\31":[F
    .end local v14    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v39    # "result":Ljava/util/List;
    .end local v41    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "block\\31":[F
    .local v4, "contextStart\\31":J
    .local v10, "result":Ljava/util/List;
    .local v12, "context\\31":[F
    .local v13, "previous\\31":J
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v27, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v30, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v32, "prefix":Ljava/lang/String;
    .local v34, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v35, "r":Lru/localscribe/core/Recording;
    .local v36, "engines\\29":Lru/localscribe/engine/Engines;
    .local v50, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    :goto_18
    :try_start_25
    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 273
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Segment;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v39

    goto :goto_19

    :cond_1a
    move-wide/from16 v39, v13

    .line 274
    .end local v13    # "previous\\31":J
    .local v39, "previous\\31":J
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

    .end local v0    # "cut\\31":I
    .end local v2    # "block\\31":[F
    .end local v4    # "contextStart\\31":J
    .end local v12    # "context\\31":[F
    .end local v37    # "candidate\\31":[F
    goto/16 :goto_14

    .line 261
    .end local v8    # "offset\\31":J
    .end local v15    # "input\\31":Ljava/io/RandomAccessFile;
    .end local v39    # "previous\\31":J
    .end local v50    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
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

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v27    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v32    # "prefix":Ljava/lang/String;
    .end local v34    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v35    # "r":Lru/localscribe/core/Recording;
    .end local v36    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v38    # "original":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v7    # "original":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .local v12, "wav":Ljava/io/File;
    .local v13, "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v30, "r":Lru/localscribe/core/Recording;
    .restart local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .restart local p1    # "$result":Ljava/lang/Object;
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

    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v7    # "original":Ljava/util/List;
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .local v4, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v38    # "original":Ljava/util/List;
    .local v39, "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .local v50, "prefix":Ljava/lang/String;
    goto/16 :goto_1d

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .local v2, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v7    # "original":Ljava/util/List;
    .restart local v10    # "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
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

    .end local v2    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v7    # "original":Ljava/util/List;
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
    goto/16 :goto_1d

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .local v1, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v2    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v7    # "original":Ljava/util/List;
    .restart local v10    # "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
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

    .end local v1    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v2    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v7    # "original":Ljava/util/List;
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
    goto/16 :goto_1d

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .restart local v1    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v7    # "original":Ljava/util/List;
    .restart local v10    # "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
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

    .end local v1    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v7    # "original":Ljava/util/List;
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
    goto/16 :goto_1d

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v7    # "original":Ljava/util/List;
    .restart local v10    # "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
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

    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v7    # "original":Ljava/util/List;
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
    goto/16 :goto_1d

    .line 267
    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v46    # "wav":Ljava/io/File;
    .local v2, "candidate\\31":[F
    .restart local v7    # "original":Ljava/util/List;
    .restart local v8    # "offset\\31":J
    .restart local v10    # "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .restart local v15    # "input\\31":Ljava/io/RandomAccessFile;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v27, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v45, "previous\\31":J
    .local v50, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
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

    .end local v2    # "candidate\\31":[F
    .end local v7    # "original":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v10, "previous\\31":J
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v37    # "candidate\\31":[F
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v41    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .local v45, "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .local v50, "prefix":Ljava/lang/String;
    :try_start_26
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v5, v24

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v14    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v19    # "before":Ljava/util/List;
    .end local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v22    # "aliases":Ljava/util/Map;
    .end local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 261
    .end local v8    # "offset\\31":J
    .end local v15    # "input\\31":Ljava/io/RandomAccessFile;
    .end local v37    # "candidate\\31":[F
    .end local v41    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
    .restart local v7    # "original":Ljava/util/List;
    .local v10, "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .restart local v19    # "before":Ljava/util/List;
    .restart local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v22    # "aliases":Ljava/util/Map;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .restart local p1    # "$result":Ljava/lang/Object;
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

    .end local v7    # "original":Ljava/util/List;
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
    goto/16 :goto_1d

    .line 276
    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v46    # "wav":Ljava/io/File;
    .restart local v7    # "original":Ljava/util/List;
    .restart local v8    # "offset\\31":J
    .restart local v10    # "result":Ljava/util/List;
    .restart local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v12    # "wav":Ljava/io/File;
    .restart local v13    # "prefix":Ljava/lang/String;
    .local v14, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .restart local v15    # "input\\31":Ljava/io/RandomAccessFile;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v45, "previous\\31":J
    .local v50, "$i$a$-use-OfflinePipeline$previewRange$2$4$1$1\\31\\261\\30":I
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

    .end local v7    # "original":Ljava/util/List;
    .end local v8    # "offset\\31":J
    .end local v10    # "result":Ljava/util/List;
    .end local v11    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v12    # "wav":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v15    # "input\\31":Ljava/io/RandomAccessFile;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v25, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v26, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .local v45, "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .local v50, "prefix":Ljava/lang/String;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_21

    .line 261
    move-object/from16 v0, v47

    :try_start_27
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 277
    nop

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_20

    .line 260
    move-object/from16 v0, v48

    :try_start_28
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 278
    nop

    .end local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1f

    .line 259
    move-object/from16 v0, v49

    :try_start_29
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 279
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

    .line 283
    return-object v32

    .line 280
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

    .line 259
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

    .line 260
    .restart local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v31    # "engines\\29":Lru/localscribe/engine/Engines;
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

    .line 261
    .restart local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .restart local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
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

    .end local v4    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v19    # "before":Ljava/util/List;
    .end local v25    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v26    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .local v2, "result":Ljava/util/List;
    .local v7, "wav":Ljava/io/File;
    .local v8, "before":Ljava/util/List;
    .local v14, "original":Ljava/util/List;
    .local v15, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v21, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .local v22, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v32, "cluster":Lru/localscribe/core/SpeakerCluster;
    .local v34, "timeline":Lru/localscribe/core/SpeakerTimeline;
    .local v36, "prefix":Ljava/lang/String;
    .local v37, "aliases":Ljava/util/Map;
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

    .end local v2    # "result":Ljava/util/List;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v15    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v21    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .end local v22    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v36    # "prefix":Ljava/lang/String;
    .end local v37    # "aliases":Ljava/util/Map;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_1d
    :try_start_2a
    throw v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_23

    .local v1, "$result":Ljava/lang/Object;
    .local v9, "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v10, "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .local v14, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v19    # "before":Ljava/util/List;
    .local v21, "timeline":Lru/localscribe/core/SpeakerTimeline;
    .local v22, "aliases":Ljava/util/Map;
    .local v27, "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
    :catchall_23
    move-exception v0

    :try_start_2b
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v14    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v19    # "before":Ljava/util/List;
    .end local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v22    # "aliases":Ljava/util/Map;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_24

    .line 260
    .end local v10    # "$i$a$-use-OfflinePipeline$previewRange$2$4$1\\30\\260\\29":I
    .end local v27    # "analyzer\\30":Lru/localscribe/engine/BlockTranscriber;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v14    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v19    # "before":Ljava/util/List;
    .restart local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v22    # "aliases":Ljava/util/Map;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .restart local v38    # "original":Ljava/util/List;
    .restart local v39    # "result":Ljava/util/List;
    .restart local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v46    # "wav":Ljava/io/File;
    .restart local v50    # "prefix":Ljava/lang/String;
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

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v19    # "before":Ljava/util/List;
    .end local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v22    # "aliases":Ljava/util/Map;
    .end local v38    # "original":Ljava/util/List;
    .end local v39    # "result":Ljava/util/List;
    .end local v45    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v46    # "wav":Ljava/io/File;
    .end local v50    # "prefix":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/List;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .local v14, "original":Ljava/util/List;
    .restart local v15    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .restart local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v36    # "prefix":Ljava/lang/String;
    .restart local v37    # "aliases":Ljava/util/Map;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_25
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v27, p0

    move-object/from16 v1, p1

    move-object v2, v0

    .end local v2    # "result":Ljava/util/List;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v15    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v36    # "prefix":Ljava/lang/String;
    .end local v37    # "aliases":Ljava/util/Map;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_1e
    :try_start_2c
    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_26

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v15    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .local v19, "result":Ljava/util/List;
    .local v27, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .restart local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v36    # "prefix":Ljava/lang/String;
    .restart local v37    # "aliases":Ljava/util/Map;
    :catchall_26
    move-exception v0

    :try_start_2d
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v19    # "result":Ljava/util/List;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v36    # "prefix":Ljava/lang/String;
    .end local v37    # "aliases":Ljava/util/Map;
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_27

    .line 259
    .end local v15    # "$i$a$-use-OfflinePipeline$previewRange$2$4\\29\\259\\0":I
    .end local v31    # "engines\\29":Lru/localscribe/engine/Engines;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v19    # "result":Ljava/util/List;
    .restart local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v36    # "prefix":Ljava/lang/String;
    .restart local v37    # "aliases":Ljava/util/Map;
    :catchall_27
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v34

    goto :goto_1f

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v19    # "result":Ljava/util/List;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v2    # "result":Ljava/util/List;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_28
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v27, p0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v5, v34

    .end local v2    # "result":Ljava/util/List;
    .restart local v19    # "result":Ljava/util/List;
    goto :goto_1f

    .end local v19    # "result":Ljava/util/List;
    .end local v34    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v2    # "result":Ljava/util/List;
    .local v5, "timeline":Lru/localscribe/core/SpeakerTimeline;
    :catchall_29
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v34, v5

    move-object/from16 v27, p0

    move-object/from16 v1, p1

    move-object v2, v0

    .end local v2    # "result":Ljava/util/List;
    .end local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v36    # "prefix":Ljava/lang/String;
    .end local v37    # "aliases":Ljava/util/Map;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_1f
    :try_start_2e
    throw v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2a

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v19    # "result":Ljava/util/List;
    .restart local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v36    # "prefix":Ljava/lang/String;
    .restart local v37    # "aliases":Ljava/util/Map;
    :catchall_2a
    move-exception v0

    :try_start_2f
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v7    # "wav":Ljava/io/File;
    .end local v8    # "before":Ljava/util/List;
    .end local v14    # "original":Ljava/util/List;
    .end local v19    # "result":Ljava/util/List;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v36    # "prefix":Ljava/lang/String;
    .end local v37    # "aliases":Ljava/util/Map;
    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2b

    .line 280
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v7    # "wav":Ljava/io/File;
    .restart local v8    # "before":Ljava/util/List;
    .restart local v14    # "original":Ljava/util/List;
    .restart local v19    # "result":Ljava/util/List;
    .restart local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v30    # "r":Lru/localscribe/core/Recording;
    .restart local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .restart local v36    # "prefix":Ljava/lang/String;
    .restart local v37    # "aliases":Ljava/util/Map;
    :catchall_2b
    move-exception v0

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    move-object/from16 v4, v36

    goto :goto_20

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v19    # "result":Ljava/util/List;
    .end local v27    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v2    # "result":Ljava/util/List;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2c
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v34, v5

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-object/from16 v4, v36

    .line 281
    .end local v36    # "prefix":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v4, "prefix":Ljava/lang/String;
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

    .local v6, "$this$filter\\33":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 385
    .local v9, "$i$f$filter\\33\\281":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination\\34":Ljava/util/Collection;
    move-object v11, v6

    .local v11, "$this$filterTo\\34":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 386
    .local v12, "$i$f$filterTo\\34\\385":I
    array-length v13, v11

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v13, :cond_1e

    move-object/from16 p1, v0

    .end local v0    # "t":Ljava/lang/Throwable;
    .local p1, "t":Ljava/lang/Throwable;
    aget-object v0, v11, v15

    .local v0, "element\\34":Ljava/lang/Object;
    move-object/from16 v16, v0

    check-cast v16, Ljava/io/File;

    .local v16, "it\\35":Ljava/io/File;
    const/16 v17, 0x0

    .line 281
    .local v17, "$i$a$-filter-OfflinePipeline$previewRange$2$5\\35\\386\\0":I
    move-object/from16 v18, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local v18, "$result":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v2

    .end local v2    # "result":Ljava/util/List;
    .restart local v19    # "result":Ljava/util/List;
    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .local v20, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    invoke-static {v1, v4, v3, v2, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    .line 386
    .end local v16    # "it\\35":Ljava/io/File;
    .end local v17    # "$i$a$-filter-OfflinePipeline$previewRange$2$5\\35\\386\\0":I
    if-eqz v1, :cond_1d

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "element\\34":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    goto :goto_21

    .line 387
    .end local v18    # "$result":Ljava/lang/Object;
    .end local v19    # "result":Ljava/util/List;
    .end local v20    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local p1    # "t":Ljava/lang/Throwable;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "result":Ljava/util/List;
    .restart local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    :cond_1e
    move-object/from16 p1, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "result":Ljava/util/List;
    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v10    # "destination\\34":Ljava/util/Collection;
    .end local v11    # "$this$filterTo\\34":[Ljava/lang/Object;
    .end local v12    # "$i$f$filterTo\\34\\385":I
    .restart local v18    # "$result":Ljava/lang/Object;
    .restart local v19    # "result":Ljava/util/List;
    .restart local v20    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local p1    # "t":Ljava/lang/Throwable;
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 385
    nop

    .line 281
    .end local v6    # "$this$filter\\33":[Ljava/lang/Object;
    .end local v9    # "$i$f$filter\\33\\281":I
    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach\\36":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 388
    .local v1, "$i$f$forEach\\36\\281":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element\\36":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/io/File;

    .local v5, "it\\37":Ljava/io/File;
    const/4 v6, 0x0

    .line 281
    .local v6, "$i$a$-forEach-OfflinePipeline$previewRange$2$6\\37\\388\\0":I
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 388
    .end local v3    # "element\\36":Ljava/lang/Object;
    .end local v5    # "it\\37":Ljava/io/File;
    .end local v6    # "$i$a$-forEach-OfflinePipeline$previewRange$2$6\\37\\388\\0":I
    goto :goto_22

    .line 389
    :cond_1f
    nop

    .end local v0    # "$this$forEach\\36":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach\\36\\281":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_23

    .line 281
    .end local v18    # "$result":Ljava/lang/Object;
    .end local v19    # "result":Ljava/util/List;
    .end local v20    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local p1    # "t":Ljava/lang/Throwable;
    .local v0, "t":Ljava/lang/Throwable;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v2    # "result":Ljava/util/List;
    .local v3, "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .local v5, "timeline":Lru/localscribe/core/SpeakerTimeline;
    :cond_20
    move-object/from16 p1, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 282
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "result":Ljava/util/List;
    .end local v3    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v5    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local v18    # "$result":Ljava/lang/Object;
    .restart local v19    # "result":Ljava/util/List;
    .restart local v20    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .restart local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .restart local p1    # "t":Ljava/lang/Throwable;
    :goto_23
    throw p1

    .line 346
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "wav":Ljava/io/File;
    .end local v14    # "original":Ljava/util/List;
    .end local v18    # "$result":Ljava/lang/Object;
    .end local v19    # "result":Ljava/util/List;
    .end local v20    # "this":Lru/localscribe/engine/OfflinePipeline$previewRange$2;
    .end local v21    # "timeline":Lru/localscribe/core/SpeakerTimeline;
    .end local v30    # "r":Lru/localscribe/core/Recording;
    .end local v32    # "cluster":Lru/localscribe/core/SpeakerCluster;
    .end local v37    # "aliases":Ljava/util/Map;
    .local v8, "wav":Ljava/io/File;
    .local v9, "r":Lru/localscribe/core/Recording;
    .local p1, "$result":Ljava/lang/Object;
    :cond_21
    const/4 v0, 0x0

    .line 227
    .local v0, "$i$a$-require-OfflinePipeline$previewRange$2$2\\3\\227\\0":I
    nop

    .end local v0    # "$i$a$-require-OfflinePipeline$previewRange$2$2\\3\\227\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0432\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0443 \u0430\u0443\u0434\u0438\u043e."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    .end local v8    # "wav":Ljava/io/File;
    :cond_22
    const/4 v0, 0x0

    .line 225
    .local v0, "$i$a$-require-OfflinePipeline$previewRange$2$1\\1\\225\\0":I
    nop

    .end local v0    # "$i$a$-require-OfflinePipeline$previewRange$2$1\\1\\225\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0423\u043a\u0430\u0436\u0438\u0442\u0435 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b \u0432 \u043f\u0440\u0435\u0434\u0435\u043b\u0430\u0445 \u0437\u0430\u043f\u0438\u0441\u0438, \u0432 \u043c\u0438\u043b\u043b\u0438\u0441\u0435\u043a\u0443\u043d\u0434\u0430\u0445."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    .end local v9    # "r":Lru/localscribe/core/Recording;
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
