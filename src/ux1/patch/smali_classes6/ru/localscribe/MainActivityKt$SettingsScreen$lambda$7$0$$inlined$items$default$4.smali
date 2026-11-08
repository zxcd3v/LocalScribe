.class public final Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->SettingsScreen(Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lru/localscribe/data/PreparationState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
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
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 MainActivity.kt\nru/localscribe/MainActivityKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,180:1\n702#2,3:181\n705#2:222\n706#2,2:229\n708#2:235\n99#3:184\n95#3,10:185\n106#3:234\n80#4,6:195\n87#4,3:210\n90#4,2:219\n94#4:233\n391#5,9:201\n400#5:221\n401#5,2:231\n4360#6,6:213\n1282#7,6:223\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt\n*L\n704#1:184\n704#1:185,10\n704#1:234\n704#1:195,6\n704#1:210,3\n704#1:219,2\n704#1:233\n704#1:201,9\n704#1:221\n704#1:231,2\n704#1:213,6\n705#1:223,6\n*E\n"
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
.field final synthetic $busy$inlined:Z

.field final synthetic $items:Ljava/util/List;

.field final synthetic $onChange$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $s$inlined:Lru/localscribe/core/Settings;


# direct methods
.method public constructor <init>(Ljava/util/List;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$s$inlined:Lru/localscribe/core/Settings;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$busy$inlined:Z

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

    invoke-virtual {p0, v0, v1, v2, v3}, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 58
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

    const/16 v7, 0x92

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v7, v3, 0x1

    invoke-interface {v2, v5, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v7, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v10, 0x2fd4df92

    invoke-static {v10, v3, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v7, v3, 0xe

    .local v7, "$changed\\1":I
    check-cast v5, Lru/localscribe/core/FileAsr;

    .local v5, "engine\\1":Lru/localscribe/core/FileAsr;
    move-object/from16 v10, p1

    .local v10, "$this$SettingsScreen_u24lambda_u247_u240_u242\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v11, p3

    .local v11, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 181
    .local v12, "$i$a$-items$default-MainActivityKt$SettingsScreen$2$1$3\\1\\179\\0":I
    const v13, -0x61423a70

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v13, "CN(engine)*703@35545L213:MainActivity.kt#yrj27q"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v13, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne v5, v13, :cond_6

    const-string v13, "\u0410\u043d\u0433\u043b\u0438\u0439\u0441\u043a\u0438\u0439 \u00b7 Whisper Tiny INT8"

    goto :goto_4

    .line 182
    :cond_6
    const-string v13, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u00b7 GigaAM v3 E2E RNN\u2011T INT8"

    .line 181
    :goto_4
    move-object v14, v13

    .line 183
    .local v14, "label\\1":Ljava/lang/String;
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v13

    .local v13, "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v40, 0x180

    .local v40, "$changed\\2":I
    move-object v15, v11

    .local v15, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 184
    .local v41, "$i$f$Row\\2\\183":I
    const/16 v16, 0x1

    const v9, 0x3255a44b

    const-string v6, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v15, v9, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 185
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 186
    .local v6, "modifier\\2":Landroidx/compose/ui/Modifier;
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v9

    .line 190
    .local v9, "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v18, v40, 0x3

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v19, v40, 0x3

    and-int/lit8 v19, v19, 0x70

    or-int v8, v18, v19

    invoke-static {v9, v13, v15, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .line 194
    .local v8, "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v18, v40, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 191
    move-object/from16 v42, v6

    .local v42, "modifier\\3":Landroidx/compose/ui/Modifier;
    move/from16 v43, v18

    .local v43, "$changed\\3":I
    const/16 v44, 0x0

    .line 195
    .local v44, "$i$f$Layout\\3\\191":I
    const v1, -0x451e1427

    const-string v2, "CC(Layout)P(!1,2)80@3267L27,83@3433L360:Layout.kt#80mrfh"

    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    .line 197
    .local v2, "compositeKeyHash\\3":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 198
    .local v1, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v45, v2

    move-object/from16 v2, v42

    move/from16 v42, v3

    .end local v3    # "$dirty":I
    .local v2, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v42, "$dirty":I
    .local v45, "compositeKeyHash\\3":I
    invoke-static {v15, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 200
    .local v3, "materialized\\3":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    move-object/from16 v46, v2

    .end local v2    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v46, "modifier\\3":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v2, v43, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 199
    move-object/from16 v47, v18

    .local v2, "$changed\\4":I
    .local v47, "factory\\4":Lkotlin/jvm/functions/Function0;
    const/16 v48, 0x0

    .line 201
    .local v48, "$i$f$ReusableComposeNode\\4\\199":I
    move/from16 v49, v2

    .end local v2    # "$changed\\4":I
    .local v49, "$changed\\4":I
    const v2, -0x20f7d59c

    const-string v4, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    invoke-static {v15, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 202
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 203
    :cond_7
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 204
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    move-object/from16 v2, v47

    .end local v47    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .local v2, "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 207
    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory\\4":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v2, v47

    .end local v47    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 209
    :goto_5
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 210
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\209\\3":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v47, v2

    .end local v2    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory\\4":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v4, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 212
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block\\6":Lkotlin/jvm/functions/Function2;
    const/16 v19, 0x0

    .line 213
    .local v19, "$i$f$set-impl\\6\\212":I
    move-object/from16 v21, v4

    .local v21, "$this$set_impl_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 214
    .local v22, "$i$a$-with-Updater$set$1\\7\\213\\6":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v50, v1

    .end local v1    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .local v50, "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v6

    .end local v6    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .local v51, "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v6, v21

    goto :goto_7

    .end local v50    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v51    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .restart local v1    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v6    # "modifier\\2":Landroidx/compose/ui/Modifier;
    :cond_a
    move-object/from16 v50, v1

    move-object/from16 v51, v6

    .line 215
    .end local v1    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v6    # "modifier\\2":Landroidx/compose/ui/Modifier;
    .restart local v50    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v51    # "modifier\\2":Landroidx/compose/ui/Modifier;
    :goto_6
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, v21

    .end local v21    # "$this$set_impl_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 218
    :goto_7
    nop

    .line 213
    .end local v6    # "$this$set_impl_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1\\7\\213\\6":I
    nop

    .line 218
    nop

    .line 219
    .end local v2    # "block\\6":Lkotlin/jvm/functions/Function2;
    .end local v19    # "$i$f$set-impl\\6\\212":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 220
    nop

    .line 209
    .end local v4    # "$this$Layout_u24lambda_u240\\5":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\5\\209\\3":I
    nop

    .line 221
    shr-int/lit8 v1, v49, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\8":I
    move-object v2, v15

    .local v2, "$composer\\8":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 192
    .local v4, "$i$a$-Layout-RowKt$Row$1\\8\\221\\2":I
    const v6, 0x56ccd6f5

    move/from16 v52, v1

    .end local v1    # "$changed\\8":I
    .local v52, "$changed\\8":I
    const-string v1, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v6, v40, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed\\9":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$SettingsScreen_u24lambda_u247_u240_u242_u240\\9":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v27, v2

    .local v27, "$composer\\9":Landroidx/compose/runtime/Composer;
    const/16 v53, 0x0

    .line 222
    .local v53, "$i$a$-Row-MainActivityKt$SettingsScreen$2$1$3$1\\9\\192\\1":I
    move-object/from16 v54, v1

    .end local v1    # "$this$SettingsScreen_u24lambda_u247_u240_u242_u240\\9":Landroidx/compose/foundation/layout/RowScope;
    .local v54, "$this$SettingsScreen_u24lambda_u247_u240_u242_u240\\9":Landroidx/compose/foundation/layout/RowScope;
    const v1, 0x7181048d

    move-object/from16 v55, v2

    .end local v2    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .local v55, "$composer\\8":Landroidx/compose/runtime/Composer;
    const-string v2, "C704@35652L38,704@35619L89,705@35729L11:MainActivity.kt#yrj27q"

    move-object/from16 v56, v3

    move-object/from16 v3, v27

    .end local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\9":Landroidx/compose/runtime/Composer;
    .local v56, "materialized\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v1, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-virtual {v1}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v1

    if-ne v1, v5, :cond_b

    move/from16 v21, v16

    goto :goto_8

    :cond_b
    const/16 v21, 0x0

    :goto_8
    const v1, -0x498b9fd

    const-string v2, "CC(remember):MainActivity.kt#9igjgp"

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v1, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    and-int/lit8 v2, v7, 0x70

    xor-int/lit8 v2, v2, 0x30

    move/from16 v18, v1

    const/16 v1, 0x20

    if-le v2, v1, :cond_c

    move-object v1, v5

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    and-int/lit8 v1, v7, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    :cond_d
    move/from16 v20, v16

    goto :goto_9

    :cond_e
    const/16 v20, 0x0

    :goto_9
    or-int v1, v18, v20

    .local v1, "invalid\\10":Z
    move-object v2, v3

    .local v2, "$this$cache\\10":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 223
    .local v17, "$i$f$cache\\10\\222":I
    move/from16 v18, v1

    .end local v1    # "invalid\\10":Z
    .local v18, "invalid\\10":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\10":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 224
    .local v19, "$i$a$-let-ComposerKt$cache$1\\11\\223\\10":I
    if-nez v18, :cond_10

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v27, v3

    .end local v3    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .restart local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_f

    goto :goto_a

    .line 228
    :cond_f
    move/from16 v57, v4

    goto :goto_b

    .line 224
    .end local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$composer\\9":Landroidx/compose/runtime/Composer;
    :cond_10
    move-object/from16 v27, v3

    .line 225
    .end local v3    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .restart local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    :goto_a
    const/4 v3, 0x0

    .line 222
    .local v3, "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$3$1$1\\12\\225\\9":I
    move-object/from16 v20, v1

    .end local v1    # "it\\10":Ljava/lang/Object;
    .local v20, "it\\10":Ljava/lang/Object;
    new-instance v1, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;

    move/from16 v22, v3

    .end local v3    # "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$3$1$1\\12\\225\\9":I
    .local v22, "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$3$1$1\\12\\225\\9":I
    iget-object v3, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    move/from16 v57, v4

    .end local v4    # "$i$a$-Layout-RowKt$Row$1\\8\\221\\2":I
    .local v57, "$i$a$-Layout-RowKt$Row$1\\8\\221\\2":I
    iget-object v4, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-direct {v1, v3, v4, v5}, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;Lru/localscribe/core/FileAsr;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 225
    .end local v22    # "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$3$1$1\\12\\225\\9":I
    nop

    .line 226
    .local v1, "value\\11":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 227
    nop

    .line 223
    .end local v1    # "value\\11":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1\\11\\223\\10":I
    .end local v20    # "it\\10":Ljava/lang/Object;
    :goto_b
    nop

    .line 222
    .end local v2    # "$this$cache\\10":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache\\10\\222":I
    .end local v18    # "invalid\\10":Z
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    iget-boolean v1, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$4;->$busy$inlined:Z

    xor-int/lit8 v24, v1, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x34

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v21 .. v29}, Landroidx/compose/material3/RadioButtonKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 229
    const/16 v38, 0x0

    const v39, 0x3fffe

    move-object v1, v15

    .end local v15    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .local v1, "$composer\\2":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v3, v27

    .end local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .local v3, "$composer\\9":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v36, v3

    .end local v3    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .local v36, "$composer\\9":Landroidx/compose/runtime/Composer;
    invoke-static/range {v14 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 222
    move-object/from16 v27, v36

    .end local v36    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .restart local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 230
    nop

    .line 192
    .end local v6    # "$changed\\9":I
    .end local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .end local v53    # "$i$a$-Row-MainActivityKt$SettingsScreen$2$1$3$1\\9\\192\\1":I
    .end local v54    # "$this$SettingsScreen_u24lambda_u247_u240_u242_u240\\9":Landroidx/compose/foundation/layout/RowScope;
    invoke-static/range {v55 .. v55}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 221
    .end local v52    # "$changed\\8":I
    .end local v55    # "$composer\\8":Landroidx/compose/runtime/Composer;
    .end local v57    # "$i$a$-Layout-RowKt$Row$1\\8\\221\\2":I
    nop

    .line 231
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 201
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 232
    nop

    .line 195
    .end local v47    # "factory\\4":Lkotlin/jvm/functions/Function0;
    .end local v48    # "$i$f$ReusableComposeNode\\4\\199":I
    .end local v49    # "$changed\\4":I
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 233
    nop

    .line 184
    .end local v43    # "$changed\\3":I
    .end local v44    # "$i$f$Layout\\3\\191":I
    .end local v45    # "compositeKeyHash\\3":I
    .end local v46    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v50    # "localMap\\3":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v56    # "materialized\\3":Landroidx/compose/ui/Modifier;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 234
    nop

    .end local v1    # "$composer\\2":Landroidx/compose/runtime/Composer;
    .end local v8    # "measurePolicy\\2":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v9    # "horizontalArrangement\\2":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v13    # "verticalAlignment\\2":Landroidx/compose/ui/Alignment$Vertical;
    .end local v40    # "$changed\\2":I
    .end local v41    # "$i$f$Row\\2\\183":I
    .end local v51    # "modifier\\2":Landroidx/compose/ui/Modifier;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 235
    .end local v14    # "label\\1":Ljava/lang/String;
    nop

    .line 179
    .end local v5    # "engine\\1":Lru/localscribe/core/FileAsr;
    .end local v7    # "$changed\\1":I
    .end local v10    # "$this$SettingsScreen_u24lambda_u247_u240_u242\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v11    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$a$-items$default-MainActivityKt$SettingsScreen$2$1$3\\1\\179\\0":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_c

    .line 178
    .end local v42    # "$dirty":I
    .local v3, "$dirty":I
    :cond_11
    move/from16 v42, v3

    .end local v3    # "$dirty":I
    .restart local v42    # "$dirty":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_12
    :goto_c
    return-void
.end method
