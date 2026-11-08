.class public final Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;
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
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 MainActivity.kt\nru/localscribe/MainActivityKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 9 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n*L\n1#1,180:1\n754#2,2:181\n756#2:189\n758#2:227\n759#2:234\n760#2,10:273\n770#2:287\n771#2:292\n1282#3,6:183\n1282#3,6:228\n99#4:190\n96#4,9:191\n106#4:291\n80#5,6:200\n87#5,3:215\n90#5,2:224\n80#5,6:246\n87#5,3:261\n90#5,2:270\n94#5:285\n94#5:290\n391#6,9:206\n400#6:226\n391#6,9:252\n400#6:272\n401#6,2:283\n401#6,2:288\n4360#7,6:218\n4360#7,6:264\n113#8:235\n87#9:236\n84#9,9:237\n94#9:286\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt\n*L\n755#1:183,6\n758#1:228,6\n754#1:190\n754#1:191,9\n754#1:291\n754#1:200,6\n754#1:215,3\n754#1:224,2\n759#1:246,6\n759#1:261,3\n759#1:270,2\n759#1:285\n754#1:290\n754#1:206,9\n754#1:226\n759#1:252,9\n759#1:272\n759#1:283,2\n754#1:288,2\n754#1:218,6\n759#1:264,6\n759#1:235\n759#1:236\n759#1:237,9\n759#1:286\n*E\n"
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

.field final synthetic $onChange$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $s$inlined:Lru/localscribe/core/Settings;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$items:Ljava/util/List;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$s$inlined:Lru/localscribe/core/Settings;

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

    invoke-virtual {p0, v0, v1, v2, v3}, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 80
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

    const/16 v6, 0x20

    if-nez v5, :cond_3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit16 v5, v3, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    if-eq v5, v7, :cond_4

    move v5, v8

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v7, v3, 0x1

    invoke-interface {v2, v5, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const-string v7, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)"

    const v10, 0x2fd4df92

    invoke-static {v10, v3, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 179
    :cond_5
    iget-object v5, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v7, v3, 0xe

    .local v7, "$changed\\1":I
    check-cast v5, Lru/localscribe/core/Quality;

    .local v5, "q\\1":Lru/localscribe/core/Quality;
    move-object/from16 v10, p1

    .local v10, "$this$SettingsScreen_u24lambda_u247_u240_u249\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v11, p3

    .local v11, "$composer\\1":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 181
    .local v12, "$i$a$-items$default-MainActivityKt$SettingsScreen$2$1$10\\1\\179\\0":I
    const v13, -0x455d48c6

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v13, "CN(q)*754@38452L33,753@38397L808:MainActivity.kt#yrj27q"

    invoke-static {v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 182
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v13, Landroidx/compose/ui/Modifier;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const v13, 0x691e09c2

    const-string v14, "CC(remember):MainActivity.kt#9igjgp"

    invoke-static {v11, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v13, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    iget-object v15, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    and-int/lit8 v15, v7, 0x70

    xor-int/lit8 v15, v15, 0x30

    if-le v15, v6, :cond_6

    move-object v15, v5

    check-cast v15, Ljava/lang/Enum;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-nez v15, :cond_7

    :cond_6
    and-int/lit8 v15, v7, 0x30

    if-ne v15, v6, :cond_8

    :cond_7
    move v15, v8

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    or-int/2addr v13, v15

    .local v13, "invalid\\2":Z
    move-object v15, v11

    .local v15, "$this$cache\\2":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 183
    .local v17, "$i$f$cache\\2\\182":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it\\2":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 184
    .local v18, "$i$a$-let-ComposerKt$cache$1\\3\\183\\2":I
    if-nez v13, :cond_a

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v8, v6, :cond_9

    goto :goto_5

    .line 188
    :cond_9
    goto :goto_6

    .line 185
    :cond_a
    :goto_5
    const/4 v6, 0x0

    .line 182
    .local v6, "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$10$1\\4\\185\\1":I
    new-instance v9, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$10$1$1;

    iget-object v1, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-direct {v9, v1, v2, v5}, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$10$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 185
    .end local v6    # "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$10$1\\4\\185\\1":I
    nop

    .line 186
    .local v9, "value\\3":Ljava/lang/Object;
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 187
    move-object v8, v9

    .line 183
    .end local v8    # "it\\2":Ljava/lang/Object;
    .end local v9    # "value\\3":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1\\3\\183\\2":I
    :goto_6
    nop

    .line 182
    .end local v13    # "invalid\\2":Z
    .end local v15    # "$this$cache\\2":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache\\2\\182":I
    move-object/from16 v21, v8

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v22, 0xf

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/foundation/ClickableKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 189
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    .line 181
    const/16 v6, 0x180

    .local v2, "verticalAlignment\\5":Landroidx/compose/ui/Alignment$Vertical;
    .local v6, "$changed\\5":I
    move-object v8, v11

    .local v1, "modifier\\5":Landroidx/compose/ui/Modifier;
    .local v8, "$composer\\5":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 190
    .local v9, "$i$f$Row\\5\\181":I
    const v13, 0x3255a44b

    const-string v15, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo"

    invoke-static {v8, v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 191
    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v13}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v13

    .line 195
    .local v13, "horizontalArrangement\\5":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v15, v6, 0x3

    and-int/lit8 v15, v15, 0xe

    shr-int/lit8 v16, v6, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v15, v15, v16

    invoke-static {v13, v2, v8, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    .line 199
    .local v15, "measurePolicy\\5":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v6, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 196
    nop

    .local v16, "$changed\\6":I
    move-object/from16 v17, v1

    .local v17, "modifier\\6":Landroidx/compose/ui/Modifier;
    const/16 v18, 0x0

    .line 200
    .local v18, "$i$f$Layout\\6\\196":I
    move-object/from16 v19, v1

    .end local v1    # "modifier\\5":Landroidx/compose/ui/Modifier;
    .local v19, "modifier\\5":Landroidx/compose/ui/Modifier;
    const v1, -0x451e1427

    move-object/from16 v20, v2

    .end local v2    # "verticalAlignment\\5":Landroidx/compose/ui/Alignment$Vertical;
    .local v20, "verticalAlignment\\5":Landroidx/compose/ui/Alignment$Vertical;
    const-string v2, "CC(Layout)P(!1,2)80@3267L27,83@3433L360:Layout.kt#80mrfh"

    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    .line 202
    .local v1, "compositeKeyHash\\6":I
    move/from16 v22, v1

    .end local v1    # "compositeKeyHash\\6":I
    .local v22, "compositeKeyHash\\6":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 203
    .local v1, "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v23, v3

    move-object/from16 v3, v17

    .end local v17    # "modifier\\6":Landroidx/compose/ui/Modifier;
    .local v3, "modifier\\6":Landroidx/compose/ui/Modifier;
    .local v23, "$dirty":I
    invoke-static {v8, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 205
    .local v4, "materialized\\6":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    move-object/from16 v27, v3

    .end local v3    # "modifier\\6":Landroidx/compose/ui/Modifier;
    .local v27, "modifier\\6":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v3, v16, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/lit8 v3, v3, 0x6

    .line 204
    move-object/from16 v28, v17

    .local v3, "$changed\\7":I
    .local v28, "factory\\7":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 206
    .local v17, "$i$f$ReusableComposeNode\\7\\204":I
    move/from16 v29, v3

    .end local v3    # "$changed\\7":I
    .local v29, "$changed\\7":I
    const v3, -0x20f7d59c

    move/from16 v30, v6

    .end local v6    # "$changed\\5":I
    .local v30, "$changed\\5":I
    const-string v6, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    invoke-static {v8, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 207
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 208
    :cond_b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 209
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 210
    move-object/from16 v3, v28

    .end local v28    # "factory\\7":Lkotlin/jvm/functions/Function0;
    .local v3, "factory\\7":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    .line 212
    .end local v3    # "factory\\7":Lkotlin/jvm/functions/Function0;
    .restart local v28    # "factory\\7":Lkotlin/jvm/functions/Function0;
    :cond_c
    move-object/from16 v3, v28

    .end local v28    # "factory\\7":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory\\7":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 214
    :goto_7
    move-object/from16 v28, v3

    .end local v3    # "factory\\7":Lkotlin/jvm/functions/Function0;
    .restart local v28    # "factory\\7":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240\\8":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 215
    .local v32, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\8\\214\\6":I
    sget-object v33, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v34, v7

    .end local v7    # "$changed\\1":I
    .local v34, "$changed\\1":I
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v3, v15, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v3, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .local v7, "block\\9":Lkotlin/jvm/functions/Function2;
    const/16 v33, 0x0

    .line 218
    .local v33, "$i$f$set-impl\\9\\217":I
    move-object/from16 v35, v3

    .local v35, "$this$set_impl_u24lambda_u240\\9":Landroidx/compose/runtime/Composer;
    const/16 v36, 0x0

    .line 219
    .local v36, "$i$a$-with-Updater$set$1\\10\\218\\9":I
    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v37

    if-nez v37, :cond_e

    move-object/from16 v37, v1

    .end local v1    # "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    .local v37, "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v8

    .end local v8    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .local v38, "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v8, v35

    goto :goto_9

    .end local v37    # "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v38    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .restart local v1    # "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v8    # "$composer\\5":Landroidx/compose/runtime/Composer;
    :cond_e
    move-object/from16 v37, v1

    move-object/from16 v38, v8

    .line 220
    .end local v1    # "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v8    # "$composer\\5":Landroidx/compose/runtime/Composer;
    .restart local v37    # "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v38    # "$composer\\5":Landroidx/compose/runtime/Composer;
    :goto_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v8, v35

    .end local v35    # "$this$set_impl_u24lambda_u240\\9":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240\\9":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 221
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 223
    :goto_9
    nop

    .line 218
    .end local v8    # "$this$set_impl_u24lambda_u240\\9":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$a$-with-Updater$set$1\\10\\218\\9":I
    nop

    .line 223
    nop

    .line 224
    .end local v7    # "block\\9":Lkotlin/jvm/functions/Function2;
    .end local v33    # "$i$f$set-impl\\9\\217":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 225
    nop

    .line 214
    .end local v3    # "$this$Layout_u24lambda_u240\\8":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\8\\214\\6":I
    nop

    .line 226
    shr-int/lit8 v1, v29, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed\\11":I
    move-object/from16 v3, v38

    .local v3, "$composer\\11":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 197
    .local v7, "$i$a$-Layout-RowKt$Row$1\\11\\226\\5":I
    const v8, 0x56ccd6f5

    move/from16 v32, v1

    .end local v1    # "$changed\\11":I
    .local v32, "$changed\\11":I
    const-string v1, "C101@5233L9:Row.kt#2w3rfo"

    invoke-static {v3, v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v8, v30, 0x6

    and-int/lit8 v8, v8, 0x70

    or-int/lit8 v8, v8, 0x6

    .local v8, "$changed\\12":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$SettingsScreen_u24lambda_u247_u240_u249_u241\\12":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v39, v1

    .end local v1    # "$this$SettingsScreen_u24lambda_u247_u240_u249_u241\\12":Landroidx/compose/foundation/layout/RowScope;
    .local v39, "$this$SettingsScreen_u24lambda_u247_u240_u249_u241\\12":Landroidx/compose/foundation/layout/RowScope;
    move-object v1, v3

    .local v1, "$composer\\12":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 227
    .local v33, "$i$a$-Row-MainActivityKt$SettingsScreen$2$1$10$2\\12\\197\\1":I
    move-object/from16 v35, v3

    .end local v3    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .local v35, "$composer\\11":Landroidx/compose/runtime/Composer;
    const v3, 0x41757c86

    move-object/from16 v36, v4

    .end local v4    # "materialized\\6":Landroidx/compose/ui/Modifier;
    .local v36, "materialized\\6":Landroidx/compose/ui/Modifier;
    const-string v4, "C757@38611L33,757@38583L62,758@38662L529:MainActivity.kt#yrj27q"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v3, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-virtual {v3}, Lru/localscribe/core/Settings;->getQuality()Lru/localscribe/core/Quality;

    move-result-object v3

    if-ne v3, v5, :cond_f

    const/16 v40, 0x1

    goto :goto_a

    :cond_f
    const/16 v40, 0x0

    :goto_a
    const v3, 0x6d77685e

    invoke-static {v1, v3, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v3, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v4, v34, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v14, 0x20

    if-le v4, v14, :cond_10

    move-object v4, v5

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    and-int/lit8 v4, v34, 0x30

    const/16 v14, 0x20

    if-ne v4, v14, :cond_12

    :cond_11
    const/16 v24, 0x1

    goto :goto_b

    :cond_12
    const/16 v24, 0x0

    :goto_b
    or-int v3, v3, v24

    .local v3, "invalid\\13":Z
    move-object v4, v1

    .local v4, "$this$cache\\13":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 228
    .local v14, "$i$f$cache\\13\\227":I
    move-object/from16 v46, v1

    .end local v1    # "$composer\\12":Landroidx/compose/runtime/Composer;
    .local v46, "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it\\13":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 229
    .local v24, "$i$a$-let-ComposerKt$cache$1\\14\\228\\13":I
    if-nez v3, :cond_14

    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v41, v3

    .end local v3    # "invalid\\13":Z
    .local v41, "invalid\\13":Z
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_13

    goto :goto_c

    .line 233
    :cond_13
    move/from16 v49, v7

    goto :goto_d

    .line 229
    .end local v41    # "invalid\\13":Z
    .restart local v3    # "invalid\\13":Z
    :cond_14
    move/from16 v41, v3

    .line 230
    .end local v3    # "invalid\\13":Z
    .restart local v41    # "invalid\\13":Z
    :goto_c
    const/4 v3, 0x0

    .line 227
    .local v3, "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$10$2$1\\15\\230\\12":I
    move-object/from16 v25, v1

    .end local v1    # "it\\13":Ljava/lang/Object;
    .local v25, "it\\13":Ljava/lang/Object;
    new-instance v1, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$10$2$1$1;

    move/from16 v42, v3

    .end local v3    # "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$10$2$1\\15\\230\\12":I
    .local v42, "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$10$2$1\\15\\230\\12":I
    iget-object v3, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$onChange$inlined:Lkotlin/jvm/functions/Function1;

    move/from16 v49, v7

    .end local v7    # "$i$a$-Layout-RowKt$Row$1\\11\\226\\5":I
    .local v49, "$i$a$-Layout-RowKt$Row$1\\11\\226\\5":I
    iget-object v7, v0, Lru/localscribe/MainActivityKt$SettingsScreen$lambda$7$0$$inlined$items$default$8;->$s$inlined:Lru/localscribe/core/Settings;

    invoke-direct {v1, v3, v7, v5}, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$10$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 230
    .end local v42    # "$i$a$-cache-MainActivityKt$SettingsScreen$2$1$10$2$1\\15\\230\\12":I
    nop

    .line 231
    .local v1, "value\\14":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 232
    nop

    .line 228
    .end local v1    # "value\\14":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1\\14\\228\\13":I
    .end local v25    # "it\\13":Ljava/lang/Object;
    :goto_d
    nop

    .line 227
    .end local v4    # "$this$cache\\13":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache\\13\\227":I
    .end local v41    # "invalid\\13":Z
    move-object/from16 v41, v1

    check-cast v41, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v47, 0x0

    const/16 v48, 0x3c

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-static/range {v40 .. v48}, Landroidx/compose/material3/RadioButtonKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 234
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v40, v1

    check-cast v40, Landroidx/compose/ui/Modifier;

    const/16 v43, 0x2

    const/high16 v41, 0x3f800000    # 1.0f

    const/16 v42, 0x0

    invoke-static/range {v39 .. v44}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v50

    const/16 v1, 0x8

    .local v1, "$this$dp\\16":I
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$f$getDp\\16\\234":I
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v51

    .line 234
    .end local v1    # "$this$dp\\16":I
    .end local v3    # "$i$f$getDp\\16\\234":I
    const/16 v55, 0xe

    const/16 v56, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-static/range {v50 .. v56}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .local v1, "modifier\\17":Landroidx/compose/ui/Modifier;
    const/4 v3, 0x0

    .local v3, "$changed\\17":I
    move-object/from16 v4, v46

    .local v4, "$composer\\17":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 236
    .local v7, "$i$f$Column\\17\\234":I
    const v14, 0x4ff7456f

    const-string v0, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v4, v14, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 237
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    .line 238
    .local v0, "verticalArrangement\\17":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    .line 241
    .local v14, "horizontalAlignment\\17":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v24, v3, 0x3

    and-int/lit8 v24, v24, 0xe

    shr-int/lit8 v25, v3, 0x3

    and-int/lit8 v25, v25, 0x70

    move-object/from16 v40, v1

    .end local v1    # "modifier\\17":Landroidx/compose/ui/Modifier;
    .local v40, "modifier\\17":Landroidx/compose/ui/Modifier;
    or-int v1, v24, v25

    invoke-static {v0, v14, v4, v1}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 245
    .local v1, "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v24, v3, 0x3

    and-int/lit8 v24, v24, 0x70

    .line 242
    move-object/from16 v25, v40

    .local v24, "$changed\\18":I
    .local v25, "modifier\\18":Landroidx/compose/ui/Modifier;
    const/16 v41, 0x0

    .line 246
    .local v41, "$i$f$Layout\\18\\242":I
    move-object/from16 v42, v0

    const v0, -0x451e1427

    .end local v0    # "verticalArrangement\\17":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v42, "verticalArrangement\\17":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v43

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 248
    .local v0, "compositeKeyHash\\18":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 249
    .local v2, "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v21, v0

    move-object/from16 v0, v25

    move/from16 v25, v3

    .end local v3    # "$changed\\17":I
    .local v0, "modifier\\18":Landroidx/compose/ui/Modifier;
    .local v21, "compositeKeyHash\\18":I
    .local v25, "$changed\\17":I
    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 251
    .local v3, "materialized\\18":Landroidx/compose/ui/Modifier;
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v26

    move-object/from16 v43, v0

    .end local v0    # "modifier\\18":Landroidx/compose/ui/Modifier;
    .local v43, "modifier\\18":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v24, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 250
    move-object/from16 v44, v26

    .local v0, "$changed\\19":I
    .local v44, "factory\\19":Lkotlin/jvm/functions/Function0;
    const/16 v26, 0x0

    .line 252
    .local v26, "$i$f$ReusableComposeNode\\19\\250":I
    move/from16 v45, v0

    const v0, -0x20f7d59c

    .end local v0    # "$changed\\19":I
    .local v45, "$changed\\19":I
    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 253
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 254
    :cond_15
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 255
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 256
    move-object/from16 v0, v44

    .end local v44    # "factory\\19":Lkotlin/jvm/functions/Function0;
    .local v0, "factory\\19":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 258
    .end local v0    # "factory\\19":Lkotlin/jvm/functions/Function0;
    .restart local v44    # "factory\\19":Lkotlin/jvm/functions/Function0;
    :cond_16
    move-object/from16 v0, v44

    .end local v44    # "factory\\19":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory\\19":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 260
    :goto_e
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240\\20":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 261
    .local v31, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\20\\260\\18":I
    sget-object v44, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v47, v0

    .end local v0    # "factory\\19":Lkotlin/jvm/functions/Function0;
    .local v47, "factory\\19":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v6, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 262
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block\\21":Lkotlin/jvm/functions/Function2;
    const/16 v44, 0x0

    .line 264
    .local v44, "$i$f$set-impl\\21\\263":I
    move-object/from16 v48, v6

    .local v48, "$this$set_impl_u24lambda_u240\\21":Landroidx/compose/runtime/Composer;
    const/16 v50, 0x0

    .line 265
    .local v50, "$i$a$-with-Updater$set$1\\22\\264\\21":I
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v51

    if-nez v51, :cond_18

    move-object/from16 v51, v1

    .end local v1    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v51, "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v48 .. v48}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v2

    .end local v2    # "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    .local v52, "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v2, v48

    goto :goto_10

    .end local v51    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v52    # "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v1    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_18
    move-object/from16 v51, v1

    move-object/from16 v52, v2

    .line 266
    .end local v1    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v2    # "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v51    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v52    # "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v48

    .end local v48    # "$this$set_impl_u24lambda_u240\\21":Landroidx/compose/runtime/Composer;
    .local v2, "$this$set_impl_u24lambda_u240\\21":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 267
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    :goto_10
    nop

    .line 264
    .end local v2    # "$this$set_impl_u24lambda_u240\\21":Landroidx/compose/runtime/Composer;
    .end local v50    # "$i$a$-with-Updater$set$1\\22\\264\\21":I
    nop

    .line 269
    nop

    .line 270
    .end local v0    # "block\\21":Lkotlin/jvm/functions/Function2;
    .end local v44    # "$i$f$set-impl\\21\\263":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 271
    nop

    .line 260
    .end local v6    # "$this$Layout_u24lambda_u240\\20":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\20\\260\\18":I
    nop

    .line 272
    shr-int/lit8 v0, v45, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed\\23":I
    move-object v1, v4

    .local v1, "$composer\\23":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 243
    .local v2, "$i$a$-Layout-ColumnKt$Column$1\\23\\272\\17":I
    const v6, 0x7cc0ae6e

    move/from16 v31, v0

    .end local v0    # "$changed\\23":I
    .local v31, "$changed\\23":I
    const-string v0, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v1, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v6, v25, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed\\24":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$SettingsScreen_u24lambda_u247_u240_u249_u241_u241\\24":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v75, v1

    .local v75, "$composer\\24":Landroidx/compose/runtime/Composer;
    const/16 v44, 0x0

    .line 273
    .local v44, "$i$a$-Column-MainActivityKt$SettingsScreen$2$1$10$2$2\\24\\243\\12":I
    move-object/from16 v48, v0

    .end local v0    # "$this$SettingsScreen_u24lambda_u247_u240_u249_u241_u241\\24":Landroidx/compose/foundation/layout/ColumnScope;
    .local v48, "$this$SettingsScreen_u24lambda_u247_u240_u249_u241_u241\\24":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, 0x14c7c005

    move-object/from16 v50, v1

    .end local v1    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .local v50, "$composer\\23":Landroidx/compose/runtime/Composer;
    const-string v1, "C759@38734L16,766@39130L10,760@38771L402:MainActivity.kt#yrj27q"

    move/from16 v79, v2

    move-object/from16 v2, v75

    .end local v75    # "$composer\\24":Landroidx/compose/runtime/Composer;
    .local v2, "$composer\\24":Landroidx/compose/runtime/Composer;
    .local v79, "$i$a$-Layout-ColumnKt$Column$1\\23\\272\\17":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v5}, Lru/localscribe/MainActivityKt;->access$quality(Lru/localscribe/core/Quality;)Ljava/lang/String;

    move-result-object v53

    const/16 v77, 0x0

    const v78, 0x3fffe

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    .end local v2    # "$composer\\24":Landroidx/compose/runtime/Composer;
    .restart local v75    # "$composer\\24":Landroidx/compose/runtime/Composer;
    invoke-static/range {v53 .. v78}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 275
    .end local v75    # "$composer\\24":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer\\24":Landroidx/compose/runtime/Composer;
    sget-object v0, Lru/localscribe/MainActivityKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lru/localscribe/core/Quality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 278
    :pswitch_0
    const-string v0, "\u0411\u043e\u043b\u044c\u0448\u0435 \u043f\u0430\u043c\u044f\u0442\u0438 \u0438 \u0432\u0440\u0435\u043c\u0435\u043d\u0438 \u043d\u0430 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0443"

    move-object/from16 v53, v0

    goto :goto_11

    .line 277
    :pswitch_1
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u043e\u0439 \u0440\u0435\u0436\u0438\u043c \u0434\u043b\u044f \u0440\u0430\u0437\u0433\u043e\u0432\u043e\u0440\u043e\u0432"

    move-object/from16 v53, v0

    goto :goto_11

    .line 276
    :pswitch_2
    const-string v0, "\u041c\u0435\u043d\u044c\u0448\u0435 \u043f\u0430\u043c\u044f\u0442\u0438 \u0438 \u0440\u0430\u0441\u0445\u043e\u0434\u0430 \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    move-object/from16 v53, v0

    .line 275
    :goto_11
    nop

    .line 280
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v74

    .line 274
    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const v78, 0x1fffe

    move-object/from16 v75, v2

    .end local v2    # "$composer\\24":Landroidx/compose/runtime/Composer;
    .restart local v75    # "$composer\\24":Landroidx/compose/runtime/Composer;
    invoke-static/range {v53 .. v78}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 273
    invoke-static/range {v75 .. v75}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 282
    nop

    .line 243
    .end local v6    # "$changed\\24":I
    .end local v44    # "$i$a$-Column-MainActivityKt$SettingsScreen$2$1$10$2$2\\24\\243\\12":I
    .end local v48    # "$this$SettingsScreen_u24lambda_u247_u240_u249_u241_u241\\24":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v75    # "$composer\\24":Landroidx/compose/runtime/Composer;
    invoke-static/range {v50 .. v50}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 272
    .end local v31    # "$changed\\23":I
    .end local v50    # "$composer\\23":Landroidx/compose/runtime/Composer;
    .end local v79    # "$i$a$-Layout-ColumnKt$Column$1\\23\\272\\17":I
    nop

    .line 283
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 252
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 284
    nop

    .line 246
    .end local v26    # "$i$f$ReusableComposeNode\\19\\250":I
    .end local v45    # "$changed\\19":I
    .end local v47    # "factory\\19":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 285
    nop

    .line 236
    .end local v3    # "materialized\\18":Landroidx/compose/ui/Modifier;
    .end local v21    # "compositeKeyHash\\18":I
    .end local v24    # "$changed\\18":I
    .end local v41    # "$i$f$Layout\\18\\242":I
    .end local v43    # "modifier\\18":Landroidx/compose/ui/Modifier;
    .end local v52    # "localMap\\18":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 286
    nop

    .line 227
    .end local v4    # "$composer\\17":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$Column\\17\\234":I
    .end local v14    # "horizontalAlignment\\17":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v25    # "$changed\\17":I
    .end local v40    # "modifier\\17":Landroidx/compose/ui/Modifier;
    .end local v42    # "verticalArrangement\\17":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v51    # "measurePolicy\\17":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 287
    nop

    .line 197
    .end local v8    # "$changed\\12":I
    .end local v33    # "$i$a$-Row-MainActivityKt$SettingsScreen$2$1$10$2\\12\\197\\1":I
    .end local v39    # "$this$SettingsScreen_u24lambda_u247_u240_u249_u241\\12":Landroidx/compose/foundation/layout/RowScope;
    .end local v46    # "$composer\\12":Landroidx/compose/runtime/Composer;
    invoke-static/range {v35 .. v35}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 226
    .end local v32    # "$changed\\11":I
    .end local v35    # "$composer\\11":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-Layout-RowKt$Row$1\\11\\226\\5":I
    nop

    .line 288
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 206
    invoke-static/range {v38 .. v38}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 289
    nop

    .line 200
    .end local v17    # "$i$f$ReusableComposeNode\\7\\204":I
    .end local v28    # "factory\\7":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$changed\\7":I
    invoke-static/range {v38 .. v38}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 290
    nop

    .line 190
    .end local v16    # "$changed\\6":I
    .end local v18    # "$i$f$Layout\\6\\196":I
    .end local v22    # "compositeKeyHash\\6":I
    .end local v27    # "modifier\\6":Landroidx/compose/ui/Modifier;
    .end local v36    # "materialized\\6":Landroidx/compose/ui/Modifier;
    .end local v37    # "localMap\\6":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v38 .. v38}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 291
    nop

    .end local v9    # "$i$f$Row\\5\\181":I
    .end local v13    # "horizontalArrangement\\5":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v15    # "measurePolicy\\5":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v19    # "modifier\\5":Landroidx/compose/ui/Modifier;
    .end local v20    # "verticalAlignment\\5":Landroidx/compose/ui/Alignment$Vertical;
    .end local v30    # "$changed\\5":I
    .end local v38    # "$composer\\5":Landroidx/compose/runtime/Composer;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 292
    nop

    .line 179
    .end local v5    # "q\\1":Lru/localscribe/core/Quality;
    .end local v10    # "$this$SettingsScreen_u24lambda_u247_u240_u249\\1":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v11    # "$composer\\1":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$a$-items$default-MainActivityKt$SettingsScreen$2$1$10\\1\\179\\0":I
    .end local v34    # "$changed\\1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_12

    .line 178
    .end local v23    # "$dirty":I
    .local v3, "$dirty":I
    :cond_19
    move/from16 v23, v3

    .end local v3    # "$dirty":I
    .restart local v23    # "$dirty":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    :cond_1a
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
