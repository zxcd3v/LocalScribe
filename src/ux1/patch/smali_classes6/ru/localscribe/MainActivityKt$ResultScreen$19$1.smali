.class final Lru/localscribe/MainActivityKt$ResultScreen$19$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ResultScreen(Lru/localscribe/core/Transcript;ZLru/localscribe/service/LiveState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lru/localscribe/data/TranscriptPage;Lru/localscribe/data/TranscriptQuery;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lru/localscribe/ui/PlaybackState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lru/localscribe/ui/SummaryState$Running;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIIIIII)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt$ResultScreen$19$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1414:1\n2746#2,3:1415\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt$ResultScreen$19$1\n*L\n973#1:1415,3\n*E\n"
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
    c = "ru.localscribe.MainActivityKt$ResultScreen$19$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x3cd
    }
    m = "invokeSuspend"
    n = {
        "prefix",
        "index"
    }
    s = {
        "I$0",
        "I$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $active:Z

.field final synthetic $activeTurn$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filter:Ljava/lang/String;

.field final synthetic $following$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $listState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $page:Lru/localscribe/data/TranscriptPage;

.field final synthetic $query:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLru/localscribe/data/TranscriptPage;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lru/localscribe/data/TranscriptPage;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/MainActivityKt$ResultScreen$19$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$query:Ljava/lang/String;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$filter:Ljava/lang/String;

    iput-boolean p3, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$active:Z

    iput-object p4, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$page:Lru/localscribe/data/TranscriptPage;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$activeTurn$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$query:Ljava/lang/String;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$filter:Ljava/lang/String;

    iget-boolean v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$active:Z

    iget-object v4, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$page:Lru/localscribe/data/TranscriptPage;

    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v6, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$activeTurn$delegate:Landroidx/compose/runtime/State;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lru/localscribe/MainActivityKt$ResultScreen$19$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLru/localscribe/data/TranscriptPage;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 969
    iget v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->I$1:I

    .local v0, "index":I
    iget v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->I$0:I

    .local v1, "prefix":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "index":I
    .end local v1    # "prefix":I
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 970
    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$65(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$activeTurn$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$68(Landroidx/compose/runtime/State;)I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$query:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$filter:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 971
    iget-boolean v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$active:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x3

    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$page:Lru/localscribe/data/TranscriptPage;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v1, v3

    .line 972
    .restart local v1    # "prefix":I
    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$activeTurn$delegate:Landroidx/compose/runtime/State;

    invoke-static {v3}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$68(Landroidx/compose/runtime/State;)I

    move-result v3

    add-int v6, v1, v3

    .line 973
    .local v6, "index":I
    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$none\\1":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1415
    .local v5, "$i$f$none\\1\\973":I
    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v2

    goto :goto_2

    .line 1416
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element\\1":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .local v9, "it\\2":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    const/4 v10, 0x0

    .line 973
    .local v10, "$i$a$-none-MainActivityKt$ResultScreen$19$1$1\\2\\1416\\0":I
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v11

    if-ne v11, v6, :cond_3

    move v9, v2

    goto :goto_1

    :cond_3
    move v9, v4

    .line 1416
    .end local v9    # "it\\2":Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .end local v10    # "$i$a$-none-MainActivityKt$ResultScreen$19$1$1\\2\\1416\\0":I
    :goto_1
    if-eqz v9, :cond_2

    goto :goto_2

    .line 1417
    .end local v8    # "element\\1":Ljava/lang/Object;
    :cond_4
    move v4, v2

    .line 973
    .end local v3    # "$this$none\\1":Ljava/lang/Iterable;
    .end local v5    # "$i$f$none\\1\\973":I
    :goto_2
    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;
    invoke-static {v5, v6}, Lru/localscribe/ux/UxFollow;->shouldScroll(Landroidx/compose/foundation/lazy/LazyListState;I)Z
    move-result v4
    if-eqz v4, :cond_6
    nop

    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->I$0:I

    iput v6, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->I$1:I

    iput v2, p0, Lru/localscribe/MainActivityKt$ResultScreen$19$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    .line 969
    return-object v0

    .line 973
    :cond_5
    move v0, v6

    .line 975
    .end local v6    # "index":I
    .restart local v0    # "index":I
    :goto_3
    nop

    .end local v0    # "index":I
    .end local v1    # "prefix":I
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
