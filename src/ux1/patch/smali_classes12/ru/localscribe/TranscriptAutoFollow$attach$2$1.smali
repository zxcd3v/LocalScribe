.class final Lru/localscribe/TranscriptAutoFollow$attach$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TranscriptAutoFollow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/TranscriptAutoFollow$attach$2;->invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranscriptAutoFollow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranscriptAutoFollow.kt\nru/localscribe/TranscriptAutoFollow$attach$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,59:1\n1761#2,2:60\n1763#2:65\n295#2,2:66\n69#3:62\n65#3:68\n69#3:71\n70#4:63\n60#4:69\n70#4:72\n22#5:64\n22#5:70\n22#5:73\n*S KotlinDebug\n*F\n+ 1 TranscriptAutoFollow.kt\nru/localscribe/TranscriptAutoFollow$attach$2$1\n*L\n30#1:60,2\n30#1:65\n32#1:66,2\n30#1:62\n35#1:68\n36#1:71\n30#1:63\n35#1:69\n36#1:72\n30#1:64\n35#1:70\n36#1:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "ru.localscribe.TranscriptAutoFollow$attach$2$1"
    f = "TranscriptAutoFollow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1d
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitPointerEventScope",
        "pointer",
        "dx",
        "dy",
        "paused"
    }
    s = {
        "L$0",
        "L$1",
        "F$0",
        "F$1",
        "I$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $onManualScroll:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field F$0:F

.field F$1:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/TranscriptAutoFollow$attach$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->$onManualScroll:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;

    iget-object v1, p0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->$onManualScroll:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, p2}, Lru/localscribe/TranscriptAutoFollow$attach$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v1, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 25
    iget v3, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local p0    # "this":Lru/localscribe/TranscriptAutoFollow$attach$2$1;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p0    # "this":Lru/localscribe/TranscriptAutoFollow$attach$2$1;
    :pswitch_0
    iget v3, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->I$0:I

    .local v3, "paused":Z
    iget v5, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->F$1:F

    .local v5, "dy":F
    iget v6, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->F$0:F

    .local v6, "dx":F
    iget-object v7, v0, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerId;

    .local v7, "pointer":Landroidx/compose/ui/input/pointer/PointerId;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    move-object v9, v0

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_1

    .end local v3    # "paused":Z
    .end local v5    # "dy":F
    .end local v6    # "dx":F
    .end local v7    # "pointer":Landroidx/compose/ui/input/pointer/PointerId;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, "pointer":Landroidx/compose/ui/input/pointer/PointerId;
    const/4 v5, 0x0

    .local v5, "dx":F
    const/4 v6, 0x0

    .local v6, "dy":F
    const/4 v7, 0x0

    move v8, v6

    move v6, v5

    move v5, v8

    move-object v9, v0

    move-object v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    .line 28
    .end local v3    # "pointer":Landroidx/compose/ui/input/pointer/PointerId;
    .end local p0    # "this":Lru/localscribe/TranscriptAutoFollow$attach$2$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v5, "dy":F
    .local v6, "dx":F
    .local v7, "paused":Z
    .local v8, "pointer":Landroidx/compose/ui/input/pointer/PointerId;
    .local v9, "this":Lru/localscribe/TranscriptAutoFollow$attach$2$1;
    :goto_0
    nop

    .line 29
    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v11, v9

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput-object v2, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->L$0:Ljava/lang/Object;

    iput-object v8, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->L$1:Ljava/lang/Object;

    iput v6, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->F$0:F

    iput v5, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->F$1:F

    iput v7, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->I$0:I

    iput v4, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->label:I

    invoke-interface {v2, v10, v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_0

    .line 25
    return-object v3

    .line 29
    :cond_0
    move/from16 v27, v5

    move-object v5, v3

    move v3, v7

    move v7, v6

    move/from16 v6, v27

    .line 25
    .end local v5    # "dy":F
    .local v3, "paused":Z
    .local v6, "dy":F
    .local v7, "dx":F
    :goto_1
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 30
    .local v10, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v11

    sget-object v12, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getScroll-7fucELk()I

    move-result v12

    invoke-static {v11, v12}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v11

    const/4 v14, 0x0

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$any\\1":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 60
    .local v15, "$i$f$any\\1\\30":I
    instance-of v4, v11, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v14

    const-wide v25, 0xffffffffL

    goto :goto_3

    .line 61
    :cond_1
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .local v16, "element\\1":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v17, "it\\2":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v18, 0x0

    .line 30
    .local v18, "$i$a$-any-TranscriptAutoFollow$attach$2$1$1\\2\\61\\0":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getScrollDelta-F1C5BW0()J

    move-result-wide v19

    .local v19, "arg0\\3":J
    const/16 v21, 0x0

    .line 62
    .local v21, "$i$f$getY-impl\\3\\30":I
    move-wide/from16 v22, v19

    .local v22, "value\\4":J
    const/16 v24, 0x0

    .line 63
    .local v24, "$i$f$unpackFloat2\\4\\62":I
    const-wide v25, 0xffffffffL

    and-long v12, v22, v25

    long-to-int v12, v12

    .local v12, "bits\\5":I
    const/4 v13, 0x0

    .line 64
    .local v13, "$i$f$floatFromBits\\5\\63":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 63
    .end local v12    # "bits\\5":I
    .end local v13    # "$i$f$floatFromBits\\5\\63":I
    nop

    .line 62
    .end local v22    # "value\\4":J
    .end local v24    # "$i$f$unpackFloat2\\4\\62":I
    nop

    .line 30
    .end local v19    # "arg0\\3":J
    .end local v21    # "$i$f$getY-impl\\3\\30":I
    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-nez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move v12, v14

    .line 61
    .end local v17    # "it\\2":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v18    # "$i$a$-any-TranscriptAutoFollow$attach$2$1$1\\2\\61\\0":I
    :goto_2
    if-nez v12, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    .line 65
    .end local v16    # "element\\1":Ljava/lang/Object;
    :cond_4
    const-wide v25, 0xffffffffL

    move v4, v14

    .line 30
    .end local v11    # "$this$any\\1":Ljava/lang/Iterable;
    .end local v15    # "$i$f$any\\1\\30":I
    :goto_3
    if-eqz v4, :cond_6

    .line 31
    iget-object v4, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->$onManualScroll:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    .line 30
    :cond_5
    const-wide v25, 0xffffffffL

    .line 32
    :cond_6
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$firstOrNull\\6":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 66
    .local v11, "$i$f$firstOrNull\\6\\32":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element\\6":Ljava/lang/Object;
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v15, "it\\7":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v16, 0x0

    .line 32
    .local v16, "$i$a$-firstOrNull-TranscriptAutoFollow$attach$2$1$change$1\\7\\66\\0":I
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v15

    .line 66
    .end local v15    # "it\\7":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v16    # "$i$a$-firstOrNull-TranscriptAutoFollow$attach$2$1$change$1\\7\\66\\0":I
    if-eqz v15, :cond_7

    goto :goto_5

    .line 67
    .end local v13    # "element\\6":Ljava/lang/Object;
    :cond_8
    const/4 v13, 0x0

    .line 32
    .end local v4    # "$this$firstOrNull\\6":Ljava/lang/Iterable;
    .end local v11    # "$i$f$firstOrNull\\6\\32":I
    :goto_5
    move-object v4, v13

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 33
    .local v4, "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v4, :cond_9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, v7

    move v7, v3

    move-object v3, v5

    move v5, v6

    move v6, v4

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 34
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v11

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerId;->unbox-impl()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v14

    :goto_6
    if-nez v14, :cond_b

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 35
    :cond_b
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v11

    .local v11, "arg0\\8":J
    const/4 v13, 0x0

    .line 68
    .local v13, "$i$f$getX-impl\\8\\35":I
    move-wide v14, v11

    .local v14, "value\\9":J
    const/16 v16, 0x0

    .line 69
    .local v16, "$i$f$unpackFloat1\\9\\68":I
    const/16 v17, 0x20

    move-object/from16 p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p0    # "this":Lru/localscribe/TranscriptAutoFollow$attach$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    shr-long v0, v14, v17

    long-to-int v0, v0

    .local v0, "bits\\10":I
    const/4 v1, 0x0

    .line 70
    .local v1, "$i$f$floatFromBits\\10\\69":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 69
    .end local v0    # "bits\\10":I
    .end local v1    # "$i$f$floatFromBits\\10\\69":I
    nop

    .line 68
    .end local v14    # "value\\9":J
    .end local v16    # "$i$f$unpackFloat1\\9\\68":I
    nop

    .line 35
    .end local v11    # "arg0\\8":J
    .end local v13    # "$i$f$getX-impl\\8\\35":I
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v11

    .local v11, "arg0\\11":J
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$f$getX-impl\\11\\35":I
    move-wide v13, v11

    .local v13, "value\\12":J
    const/4 v15, 0x0

    .line 69
    .local v15, "$i$f$unpackFloat1\\12\\68":I
    move/from16 v16, v0

    move/from16 v18, v1

    .end local v1    # "$i$f$getX-impl\\11\\35":I
    .local v18, "$i$f$getX-impl\\11\\35":I
    shr-long v0, v13, v17

    long-to-int v0, v0

    .local v0, "bits\\13":I
    const/4 v1, 0x0

    .line 70
    .local v1, "$i$f$floatFromBits\\13\\69":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 69
    .end local v0    # "bits\\13":I
    .end local v1    # "$i$f$floatFromBits\\13\\69":I
    nop

    .line 68
    .end local v13    # "value\\12":J
    .end local v15    # "$i$f$unpackFloat1\\12\\68":I
    nop

    .line 35
    .end local v11    # "arg0\\11":J
    .end local v18    # "$i$f$getX-impl\\11\\35":I
    sub-float v0, v16, v0

    add-float/2addr v0, v7

    .line 36
    .end local v7    # "dx":F
    .local v0, "dx":F
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v11

    .local v11, "arg0\\14":J
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$f$getY-impl\\14\\36":I
    move-wide v13, v11

    .local v13, "value\\15":J
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$f$unpackFloat2\\15\\71":I
    move v15, v0

    move/from16 v16, v1

    .end local v0    # "dx":F
    .end local v1    # "$i$f$getY-impl\\14\\36":I
    .local v15, "dx":F
    .local v16, "$i$f$getY-impl\\14\\36":I
    and-long v0, v13, v25

    long-to-int v0, v0

    .local v0, "bits\\16":I
    const/4 v1, 0x0

    .line 73
    .local v1, "$i$f$floatFromBits\\16\\72":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 72
    .end local v0    # "bits\\16":I
    .end local v1    # "$i$f$floatFromBits\\16\\72":I
    nop

    .line 71
    .end local v7    # "$i$f$unpackFloat2\\15\\71":I
    .end local v13    # "value\\15":J
    nop

    .line 36
    .end local v11    # "arg0\\14":J
    .end local v16    # "$i$f$getY-impl\\14\\36":I
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v11

    .local v11, "arg0\\17":J
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$f$getY-impl\\17\\36":I
    move-wide v13, v11

    .local v13, "value\\18":J
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$f$unpackFloat2\\18\\71":I
    move/from16 v16, v0

    move/from16 v17, v1

    .end local v1    # "$i$f$getY-impl\\17\\36":I
    .local v17, "$i$f$getY-impl\\17\\36":I
    and-long v0, v13, v25

    long-to-int v0, v0

    .local v0, "bits\\19":I
    const/4 v1, 0x0

    .line 73
    .local v1, "$i$f$floatFromBits\\19\\72":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 72
    .end local v0    # "bits\\19":I
    .end local v1    # "$i$f$floatFromBits\\19\\72":I
    nop

    .line 71
    .end local v7    # "$i$f$unpackFloat2\\18\\71":I
    .end local v13    # "value\\18":J
    nop

    .line 36
    .end local v11    # "arg0\\17":J
    .end local v17    # "$i$f$getY-impl\\17\\36":I
    sub-float v0, v16, v0

    add-float/2addr v0, v6

    .line 37
    .end local v6    # "dy":F
    .local v0, "dy":F
    if-nez v3, :cond_c

    .end local p0    # "this":Lru/localscribe/TranscriptAutoFollow$attach$2$1;
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_c

    .line 38
    iget-object v1, v9, Lru/localscribe/TranscriptAutoFollow$attach$2$1;->$onManualScroll:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v7, 0x1

    move-object/from16 v1, p1

    move-object v3, v5

    move v6, v15

    const/4 v4, 0x1

    move v5, v0

    move-object/from16 v0, p0

    .end local v3    # "paused":Z
    .end local v4    # "change":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v10    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .local v7, "paused":Z
    goto/16 :goto_0

    .line 28
    .end local v7    # "paused":Z
    .restart local v3    # "paused":Z
    :cond_c
    move-object/from16 v1, p1

    move v7, v3

    move-object v3, v5

    move v6, v15

    const/4 v4, 0x1

    move v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
