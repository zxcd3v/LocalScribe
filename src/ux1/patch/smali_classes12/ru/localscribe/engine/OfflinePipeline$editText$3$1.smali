.class final Lru/localscribe/engine/OfflinePipeline$editText$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OfflinePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/OfflinePipeline;->editText(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nOfflinePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline$editText$3$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n774#2:346\n865#2,2:347\n*S KotlinDebug\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline$editText$3$1\n*L\n317#1:346\n317#1:347,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
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
    c = "ru.localscribe.engine.OfflinePipeline$editText$3$1"
    f = "OfflinePipeline.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $editor:Lru/localscribe/engine/LocalTextEditor;

.field final synthetic $editorStarted:J

.field final synthetic $job:Lkotlin/coroutines/CoroutineContext;

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

.field final synthetic $recording:Lru/localscribe/core/Recording;

.field final synthetic $report:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $total:I

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/OfflinePipeline;


# direct methods
.method public static synthetic $r8$lambda$K-PQiJhpQVwNpOZ3oPqSaCOru74(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/TranscriptEditingWindow;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->invokeSuspend$lambda$2(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/TranscriptEditingWindow;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L0eFgDU4KsSN1UUi47cW6uas9bc(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->invokeSuspend$lambda$1(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QsC--iwMiaJPQLNsoavDldQiqMY(Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->invokeSuspend$lambda$0$0(Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WNxdCIdUr6q99PrdYdg-81zPuv8(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->invokeSuspend$lambda$0(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/engine/OfflinePipeline;JLru/localscribe/core/Recording;Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/LocalTextEditor;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/OfflinePipeline;",
            "J",
            "Lru/localscribe/core/Recording;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lru/localscribe/engine/LocalTextEditor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$editText$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iput-wide p2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$editorStarted:J

    iput-object p4, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$recording:Lru/localscribe/core/Recording;

    iput-object p5, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$job:Lkotlin/coroutines/CoroutineContext;

    iput-object p6, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$editor:Lru/localscribe/engine/LocalTextEditor;

    iput-object p7, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$onStatus:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$total:I

    iput-object p9, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$report:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "this$0"    # Lru/localscribe/engine/OfflinePipeline;
    .param p1, "$editor"    # Lru/localscribe/engine/LocalTextEditor;
    .param p2, "texts"    # Ljava/util/List;
    .param p3, "previous"    # Ljava/util/List;

    .line 311
    invoke-static {p0}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v0

    new-instance v1, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)V

    const-string v2, "editor.request"

    invoke-virtual {v0, v2, v1}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 313
    return-object v0
.end method

.method private static final invokeSuspend$lambda$0$0(Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "$editor"    # Lru/localscribe/engine/LocalTextEditor;
    .param p1, "$texts"    # Ljava/util/List;
    .param p2, "$previous"    # Ljava/util/List;

    .line 312
    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/LocalTextEditor;->editBatch(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final invokeSuspend$lambda$1(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;
    .locals 13
    .param p0, "$job"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "this$0"    # Lru/localscribe/engine/OfflinePipeline;
    .param p2, "$recording"    # Lru/localscribe/core/Recording;
    .param p3, "$processed"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p4, "$onStatus"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$total"    # I
    .param p6, "$report"    # Lkotlin/jvm/functions/Function1;
    .param p7, "completed"    # Ljava/util/List;

    .line 315
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 317
    move-object/from16 v2, p7

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 346
    .local v3, "$i$f$filter\\1\\317":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\2":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 347
    .local v6, "$i$f$filterTo\\2\\346":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lru/localscribe/core/Segment;

    .local v9, "it\\3":Lru/localscribe/core/Segment;
    const/4 v10, 0x0

    .line 318
    .local v10, "$i$a$-filter-OfflinePipeline$editText$3$1$window$2$changed$1\\3\\347\\0":I
    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getOriginalAsrText()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v11

    const-string v12, "corrected"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 347
    .end local v9    # "it\\3":Lru/localscribe/core/Segment;
    .end local v10    # "$i$a$-filter-OfflinePipeline$editText$3$1$window$2$changed$1\\3\\347\\0":I
    :goto_1
    if-eqz v11, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v8    # "element\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo\\2\\346":I
    check-cast v4, Ljava/util/List;

    .line 346
    nop

    .line 317
    .end local v2    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter\\1\\317":I
    nop

    .line 316
    nop

    .line 320
    .local v4, "changed":Ljava/util/List;
    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    invoke-static {p1}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p2, v4, v3}, Lru/localscribe/data/Repository;->commit(Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;)V

    .line 322
    :cond_3
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 323
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 \u0434\u0438\u0430\u043b\u043e\u0433\u0430 \u00b7 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0438\u0437 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0440\u0435\u043f\u043b\u0438\u043a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float v2, v2

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v5

    int-to-float v5, v1

    div-float/2addr v2, v5

    const v5, 0x3f6e147b    # 0.93f

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v5, p6

    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method private static final invokeSuspend$lambda$2(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/TranscriptEditingWindow;Ljava/util/List;)Lkotlin/Unit;
    .locals 2
    .param p0, "$job"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "$window"    # Lru/localscribe/engine/TranscriptEditingWindow;
    .param p2, "batch"    # Ljava/util/List;

    .line 327
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/localscribe/core/Segment;

    .line 328
    .local v1, "segment":Lru/localscribe/core/Segment;
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 329
    invoke-virtual {p1, v1}, Lru/localscribe/engine/TranscriptEditingWindow;->push(Lru/localscribe/core/Segment;)V

    .end local v1    # "segment":Lru/localscribe/core/Segment;
    goto :goto_0

    .line 331
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-wide v2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$editorStarted:J

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$recording:Lru/localscribe/core/Recording;

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$job:Lkotlin/coroutines/CoroutineContext;

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$editor:Lru/localscribe/engine/LocalTextEditor;

    iget-object v7, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$onStatus:Lkotlin/jvm/functions/Function1;

    iget v8, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$total:I

    iget-object v9, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$report:Lkotlin/jvm/functions/Function1;

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;-><init>(Lru/localscribe/engine/OfflinePipeline;JLru/localscribe/core/Recording;Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/LocalTextEditor;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 306
    iget v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v0}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v0

    const-string v1, "editor.load"

    iget-wide v2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$editorStarted:J

    invoke-virtual {v0, v1, v2, v3}, Lru/localscribe/engine/ProcessingTimings;->elapsed(Ljava/lang/String;J)V

    .line 308
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v5, v0

    .line 310
    .local v5, "processed":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v0, Lru/localscribe/engine/TranscriptEditingWindow;

    .line 309
    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$editor:Lru/localscribe/engine/LocalTextEditor;

    new-instance v9, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v2}, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/engine/LocalTextEditor;)V

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$job:Lkotlin/coroutines/CoroutineContext;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$recording:Lru/localscribe/core/Recording;

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$onStatus:Lkotlin/jvm/functions/Function1;

    iget v7, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$total:I

    iget-object v8, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$report:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;

    invoke-direct/range {v1 .. v8}, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;)V

    .line 310
    invoke-direct {v0, v9, v1}, Lru/localscribe/engine/TranscriptEditingWindow;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 309
    nop

    .line 326
    .local v0, "window":Lru/localscribe/engine/TranscriptEditingWindow;
    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v1}, Lru/localscribe/engine/OfflinePipeline;->access$getRepository$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/Repository;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$recording:Lru/localscribe/core/Recording;

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$job:Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v0}, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;-><init>(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/TranscriptEditingWindow;)V

    invoke-virtual {v1, v2, v4}, Lru/localscribe/data/Repository;->visitSegments(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 332
    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$job:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 333
    invoke-virtual {v0}, Lru/localscribe/engine/TranscriptEditingWindow;->finish()V

    .line 334
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
