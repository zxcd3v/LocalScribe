.class public final Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;
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
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 MainActivity.kt\nru/localscribe/MainActivityKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,180:1\n423#2,2:181\n425#2,2:189\n446#2:191\n1282#3,6:183\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt\n*L\n424#1:183,6\n*E\n"
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

.field final synthetic $vm$inlined:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lru/localscribe/ui/ScribeViewModel;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;->$vm$inlined:Lru/localscribe/ui/ScribeViewModel;

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

    invoke-virtual {p0, v0, v1, v2, v3}, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 22
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

    if-eqz v5, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v6, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v8, 0x2fd4df92

    invoke-static {v8, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v6, v3, 0xe

    .local v6, "$changed\\1":I
    check-cast v5, Lru/localscribe/core/Recording;

    .local v5, "r\\1":Lru/localscribe/core/Recording;
    move-object/from16 v8, p1

    .local v8, "$this$ScribeUi_u24lambda_u2459_u243_u240_u2416_u240_u2410\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v9, p3

    .local v9, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 181
    .local v21, "$i$a$-items$default-MainActivityKt$ScribeUi$4$4$1$17$1$11\\1\\179\\0":I
    const v10, -0x761e9211

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "CN(r)*423@20852L19,425@20971L1224,422@20804L1391:MainActivity.kt#yrj27q"

    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 182
    const v10, 0x46832538

    const-string v11, "CC(remember):MainActivity.kt#9igjgp"

    invoke-static {v9, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v10, v0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;->$vm$inlined:Lru/localscribe/ui/ScribeViewModel;

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    .local v10, "invalid\\2":Z
    move-object v11, v9

    .local v11, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 183
    .local v12, "$i$f$cache\\2\\182":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it\\2":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 184
    .local v14, "$i$a$-let-ComposerKt$cache$1\\3\\183\\2":I
    if-nez v10, :cond_7

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_6

    goto :goto_4

    .line 188
    :cond_6
    goto :goto_5

    .line 185
    :cond_7
    :goto_4
    const/4 v15, 0x0

    .line 182
    .local v15, "$i$a$-cache-MainActivityKt$ScribeUi$4$4$1$17$1$11$1\\4\\185\\1":I
    new-instance v7, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;

    iget-object v1, v0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$59$3$0$16$0$$inlined$items$default$4;->$vm$inlined:Lru/localscribe/ui/ScribeViewModel;

    invoke-direct {v7, v1, v5}, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;-><init>(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/core/Recording;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 185
    .end local v15    # "$i$a$-cache-MainActivityKt$ScribeUi$4$4$1$17$1$11$1\\4\\185\\1":I
    nop

    .line 186
    .local v7, "value\\3":Ljava/lang/Object;
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 187
    move-object v13, v7

    .line 183
    .end local v7    # "value\\3":Ljava/lang/Object;
    .end local v13    # "it\\2":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1\\3\\183\\2":I
    :goto_5
    nop

    .line 182
    .end local v10    # "invalid\\2":Z
    .end local v11    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache\\2\\182":I
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 189
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v1, v7, v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 190
    new-instance v1, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$2;

    invoke-direct {v1, v5}, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$2;-><init>(Lru/localscribe/core/Recording;)V

    const/16 v7, 0x36

    const v12, -0xb3d4e10

    invoke-static {v12, v11, v1, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function3;

    .line 181
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v18, v9

    move-object v9, v13

    .end local v9    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .local v18, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v19, 0x6000030

    const/16 v20, 0xfc

    invoke-static/range {v9 .. v20}, Landroidx/compose/material3/CardKt;->Card(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 191
    nop

    .line 179
    .end local v5    # "r\\1":Lru/localscribe/core/Recording;
    .end local v6    # "$changed\\1":I
    .end local v8    # "$this$ScribeUi_u24lambda_u2459_u243_u240_u2416_u240_u2410\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v18    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-items$default-MainActivityKt$ScribeUi$4$4$1$17$1$11\\1\\179\\0":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_6

    .line 178
    :cond_8
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_9
    :goto_6
    return-void
.end method
