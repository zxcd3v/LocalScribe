.class public final Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$21$3$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ScribeUi(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 MainActivity.kt\nru/localscribe/MainActivityKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n521#2:181\n522#2:184\n295#3,2:182\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt\n*L\n521#1:182,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $items:Ljava/util/List;

.field final synthetic $preview$inlined:Lru/localscribe/engine/RangePreview;


# direct methods
.method public constructor <init>(Ljava/util/List;Lru/localscribe/engine/RangePreview;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$21$3$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$21$3$0$0$$inlined$items$default$4;->$preview$inlined:Lru/localscribe/engine/RangePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$21$3$0$0$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 35
    .param p1, "$this$items"    # Landroidx/compose/foundation/lazy/LazyItemScope;
    .param p2, "it"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "CN(it)178@8834L22:LazyDsl.kt#428nma"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    and-int/lit8 v4, p4, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p1

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    :goto_1
    and-int/lit8 v5, p4, 0x30

    if-nez v5, :cond_3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit16 v5, v3, 0x93

    const/16 v6, 0x92

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v7, 0x2fd4df92

    invoke-static {v7, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$21$3$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v6, v3, 0xe

    .local v6, "$changed\\1":I
    check-cast v5, Lru/localscribe/core/Segment;

    .local v5, "segment\\1":Lru/localscribe/core/Segment;
    move-object/from16 v7, p1

    .local v7, "$this$ScribeUi_u24lambda_u2459_u243_u240_u2421_u243_u240_u240_u242\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v8, p3

    .local v8, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v34, 0x0

    .line 181
    .local v34, "$i$a$-items$default-MainActivityKt$ScribeUi$4$4$1$22$4$1$1$3\\1\\179\\0":I
    const v9, -0x7399ec8f

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "CN(segment)*520@26715L109:MainActivity.kt#yrj27q"

    invoke-static {v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v9, v0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$21$3$0$0$$inlined$items$default$4;->$preview$inlined:Lru/localscribe/engine/RangePreview;

    invoke-virtual {v9}, Lru/localscribe/engine/RangePreview;->getSpeakers()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$firstOrNull\\2":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 182
    .local v10, "$i$f$firstOrNull\\2\\181":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element\\2":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lru/localscribe/core/Speaker;

    .local v13, "it\\3":Lru/localscribe/core/Speaker;
    const/4 v14, 0x0

    .line 181
    .local v14, "$i$a$-firstOrNull-MainActivityKt$ScribeUi$4$4$1$22$4$1$1$3$1\\3\\182\\1":I
    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 182
    .end local v13    # "it\\3":Lru/localscribe/core/Speaker;
    .end local v14    # "$i$a$-firstOrNull-MainActivityKt$ScribeUi$4$4$1$22$4$1$1$3$1\\3\\182\\1":I
    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    goto :goto_4

    .line 183
    .end local v12    # "element\\2":Ljava/lang/Object;
    :cond_7
    const/4 v12, 0x0

    .line 181
    .end local v9    # "$this$firstOrNull\\2":Ljava/lang/Iterable;
    .end local v10    # "$i$f$firstOrNull\\2\\181":I
    :goto_5
    check-cast v12, Lru/localscribe/core/Speaker;

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "\u041d\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0451\u043d"

    :cond_9
    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ": "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v32, 0x0

    const v33, 0x3fffe

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move-object/from16 v30, v8

    move-object v8, v0

    .end local v8    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v30, "$composer\\1":Landroidx/compose/runtime/Composer;
    invoke-static/range {v8 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 184
    nop

    .line 179
    .end local v5    # "segment\\1":Lru/localscribe/core/Segment;
    .end local v6    # "$changed\\1":I
    .end local v7    # "$this$ScribeUi_u24lambda_u2459_u243_u240_u2421_u243_u240_u240_u242\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v30    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v34    # "$i$a$-items$default-MainActivityKt$ScribeUi$4$4$1$22$4$1$1$3\\1\\179\\0":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 178
    :cond_a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_b
    :goto_6
    return-void
.end method
