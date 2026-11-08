.class public final Lru/localscribe/ui/WaveformKt;
.super Ljava/lang/Object;
.source "Waveform.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaveform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Waveform.kt\nru/localscribe/ui/WaveformKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 10 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 11 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 12 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 13 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 14 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,95:1\n1282#2,6:96\n1282#2,6:102\n1282#2,6:148\n1282#2,6:154\n1282#2,6:160\n1282#2,6:166\n113#3:108\n113#3:146\n113#3:147\n113#3:209\n113#3:225\n87#4:109\n84#4,9:110\n94#4:175\n80#5,6:119\n87#5,3:134\n90#5,2:143\n94#5:174\n391#6,9:125\n400#6:145\n401#6,2:172\n4360#7,6:137\n85#8:176\n85#8:177\n85#8:178\n117#8,2:179\n57#9:181\n61#9:184\n57#9:187\n57#9:190\n61#9:193\n57#9:196\n57#9:199\n57#9:212\n61#9:219\n60#10:182\n70#10:185\n60#10:188\n60#10:191\n70#10:194\n60#10:197\n60#10:200\n60#10:213\n53#10,3:216\n70#10:220\n53#10,3:222\n22#11:183\n22#11:186\n22#11:189\n22#11:192\n22#11:195\n22#11:198\n22#11:201\n22#11:214\n22#11:221\n382#12,7:202\n216#13,2:210\n30#14:215\n*S KotlinDebug\n*F\n+ 1 Waveform.kt\nru/localscribe/ui/WaveformKt\n*L\n21#1:96,6\n31#1:102,6\n37#1:148,6\n42#1:154,6\n45#1:160,6\n52#1:166,6\n33#1:108\n35#1:146\n36#1:147\n79#1:209\n88#1:225\n33#1:109\n33#1:110,9\n33#1:175\n33#1:119,6\n33#1:134,3\n33#1:143,2\n33#1:174\n33#1:125,9\n33#1:145\n33#1:172,2\n33#1:137,6\n29#1:176\n30#1:177\n31#1:178\n31#1:179,2\n56#1:181\n63#1:184\n64#1:187\n65#1:190\n66#1:193\n75#1:196\n76#1:199\n87#1:212\n88#1:219\n56#1:182\n63#1:185\n64#1:188\n65#1:191\n66#1:194\n75#1:197\n76#1:200\n87#1:213\n88#1:216,3\n88#1:220\n88#1:222,3\n56#1:183\n63#1:186\n64#1:189\n65#1:192\n66#1:195\n75#1:198\n76#1:201\n87#1:214\n88#1:221\n78#1:202,7\n85#1:210,2\n88#1:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aE\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u000c\u001aK\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u000bH\u0007\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f\u00b2\u0006\u0016\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u000bX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u008a\u008e\u0002"
    }
    d2 = {
        "Waveform",
        "",
        "data",
        "Lru/localscribe/audio/WaveformPeaks;",
        "positionMs",
        "",
        "colors",
        "",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "seek",
        "Lkotlin/Function1;",
        "(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "Lkotlin/Function0;",
        "(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "app_debug",
        "latestSeek",
        "latestClock",
        "scrubbing"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$82O0XB0pCI7T4pWFeM7iIqJfj0U(Lru/localscribe/audio/WaveformPeaks;JJLjava/util/Map;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    invoke-static/range {p0 .. p12}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$7$3$0(Lru/localscribe/audio/WaveformPeaks;JJLjava/util/Map;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NYS_Ky7ETOCCkS8KoadkuKzzE7A(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$8(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PiQKWHh6yvZt_miAY1DoEkqFksg(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$1(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_Yxl5-SEvlIX-jE-AAfDQoWDBJw(Landroidx/compose/ui/graphics/Path;JLjava/util/HashMap;Landroidx/compose/ui/graphics/Path;JJJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p13}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$7$3$0$1(Landroidx/compose/ui/graphics/Path;JLjava/util/HashMap;Landroidx/compose/ui/graphics/Path;JJJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gENlILEYTeupEBkQ3qkhijrsf0A(JLandroidx/compose/runtime/State;F)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$7$0$0$0(JLandroidx/compose/runtime/State;F)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xYSyVzMM8LSW6IR__LJ1RH72P6A(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$7$0$0(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xzGvEU-JuyCtQ7jjjJmvjnLG0lc(J)J
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$0$0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final Waveform(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/audio/WaveformPeaks;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v0, p6

    const-string v1, "data"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "colors"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "seek"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1f1ed92e

    move-object/from16 v6, p5

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    const-string v6, "C(Waveform)N(data,positionMs,colors,seek)20@817L14,20@803L41:Waveform.kt#q8fim0"

    invoke-static {v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, p6

    and-int/lit8 v7, v0, 0x6

    if-nez v7, :cond_1

    invoke-interface {v8, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v6, v7

    :cond_1
    and-int/lit8 v7, v0, 0x30

    const/16 v9, 0x20

    if-nez v7, :cond_3

    invoke-interface {v8, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_5

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_2

    :cond_4
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v0, 0xc00

    if-nez v7, :cond_7

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_3

    :cond_6
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v6, v7

    :cond_7
    move v10, v6

    and-int/lit16 v6, v10, 0x493

    const/16 v7, 0x492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v7, :cond_8

    move v6, v12

    goto :goto_4

    :cond_8
    move v6, v11

    :goto_4
    and-int/lit8 v7, v10, 0x1

    invoke-interface {v8, v6, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, -0x1

    const-string v7, "ru.localscribe.ui.Waveform (Waveform.kt:20)"

    invoke-static {v1, v10, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    const v1, -0x2d32ab64

    const-string v6, "CC(remember):Waveform.kt#9igjgp"

    invoke-static {v8, v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, v10, 0x70

    if-ne v1, v9, :cond_a

    move v11, v12

    :cond_a
    move-object v1, v8

    const/4 v6, 0x0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x0

    if-nez v11, :cond_c

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v7, v12, :cond_b

    goto :goto_5

    :cond_b
    goto :goto_6

    :cond_c
    :goto_5
    const/4 v12, 0x0

    new-instance v13, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda0;

    invoke-direct {v13, v2, v3}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda0;-><init>(J)V

    nop

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v7, v13

    :goto_6
    nop

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v1, v10, 0xe

    and-int/lit16 v6, v10, 0x380

    or-int/2addr v1, v6

    and-int/lit16 v6, v10, 0x1c00

    or-int v9, v1, v6

    move-object v6, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lru/localscribe/ui/WaveformKt;->Waveform(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_7

    :cond_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_e
    :goto_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method public static final Waveform(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 72
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/audio/WaveformPeaks;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    const-string v0, "data"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionMs"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seek"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4c75a9a

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v4, "C(Waveform)N(data,positionMs,colors,seek)25@1085L11,26@1134L11,27@1186L11,28@1230L26,29@1280L32,30@1334L57,32@1446L3687:Waveform.kt#q8fim0"

    invoke-static {v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p5

    and-int/lit8 v5, v15, 0x6

    if-nez v5, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    :cond_1
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    :cond_3
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_5

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_2

    :cond_4
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    and-int/lit16 v5, v15, 0xc00

    if-nez v5, :cond_7

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_3

    :cond_6
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v4, v5

    :cond_7
    and-int/lit16 v5, v4, 0x493

    const/16 v7, 0x492

    if-eq v5, v7, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    and-int/lit8 v7, v4, 0x1

    invoke-interface {v2, v5, v7}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const-string v7, "ru.localscribe.ui.Waveform (Waveform.kt:24)"

    invoke-static {v0, v4, v5, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v10

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v8

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v7, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getSecondary-0d7_KjU()J

    move-result-wide v5

    shr-int/lit8 v0, v4, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    shr-int/lit8 v16, v4, 0x3

    and-int/lit8 v7, v16, 0xe

    invoke-static {v13, v2, v7}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-virtual {v1}, Lru/localscribe/audio/WaveformPeaks;->getDurationMs()J

    move-result-wide v12

    move/from16 v18, v4

    const v4, 0xfa5145f

    const-string v14, "CC(remember):Waveform.kt#9igjgp"

    invoke-static {v2, v4, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    move-object v12, v2

    const/4 v13, 0x0

    move/from16 v19, v4

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    const/16 v20, 0x0

    move/from16 v21, v13

    if-nez v19, :cond_b

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v4, v13, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_6

    :cond_b
    :goto_5
    const/4 v13, 0x0

    move-object/from16 v22, v4

    move/from16 v17, v13

    const/4 v4, 0x2

    const/4 v13, 0x0

    invoke-static {v13, v13, v4, v13}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    nop

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    nop

    :goto_6
    nop

    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v1}, Lru/localscribe/audio/WaveformPeaks;->getDurationMs()J

    move-result-wide v12

    move-wide/from16 v19, v8

    const-wide/16 v8, 0x1

    invoke-static {v12, v13, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    const/4 v13, 0x0

    move-wide/from16 v16, v10

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v12, v13, v15, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/16 v10, 0x14

    const/4 v15, 0x0

    int-to-float v12, v10

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    const/16 v12, 0x8

    const/4 v15, 0x0

    int-to-float v13, v12

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    invoke-static {v11, v10, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/4 v10, 0x6

    move v15, v10

    move-object v10, v2

    const/16 v24, 0x0

    const v11, 0x4ff7456f

    const-string v12, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo"

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v12

    shr-int/lit8 v25, v15, 0x3

    and-int/lit8 v25, v25, 0xe

    shr-int/lit8 v26, v15, 0x3

    and-int/lit8 v26, v26, 0x70

    move-object/from16 v27, v13

    or-int v13, v25, v26

    invoke-static {v11, v12, v10, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    shl-int/lit8 v25, v15, 0x3

    and-int/lit8 v25, v25, 0x70

    move-object/from16 v26, v27

    const/16 v28, 0x0

    move-object/from16 v29, v11

    const v11, -0x451e1427

    move-object/from16 v30, v12

    const-string v12, "CC(Layout)P(!1,2)80@3267L27,83@3433L360:Layout.kt#80mrfh"

    invoke-static {v10, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->hashCode(J)I

    move-result v31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    move-object/from16 v12, v26

    move/from16 v26, v15

    invoke-static {v10, v12}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v32, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v32

    move-object/from16 v33, v12

    shl-int/lit8 v12, v25, 0x6

    and-int/lit16 v12, v12, 0x380

    move/from16 v34, v12

    const/4 v12, 0x6

    or-int/lit8 v34, v34, 0x6

    move-object/from16 v35, v32

    const/16 v32, 0x0

    move/from16 v36, v12

    const v12, -0x20f7d59c

    const-string v3, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    invoke-static {v10, v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, v35

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_d
    move-object/from16 v3, v35

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_7
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const/16 v35, 0x0

    sget-object v37, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v38, v3

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    const/16 v37, 0x0

    move-object/from16 v39, v12

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v39}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v41

    if-nez v41, :cond_f

    move-object/from16 v41, v10

    invoke-interface/range {v39 .. v39}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v42, v11

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 v11, v39

    goto :goto_9

    :cond_f
    move-object/from16 v41, v10

    move-object/from16 v42, v11

    :goto_8
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v39

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :goto_9
    nop

    nop

    nop

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v15, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    nop

    nop

    shr-int/lit8 v3, v34, 0x6

    and-int/lit8 v35, v3, 0xe

    move-object/from16 v3, v41

    const/16 v37, 0x0

    const v10, 0x7cc0ae6e

    const-string v11, "C89@4557L9:Column.kt#2w3rfo"

    invoke-static {v3, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v11, v26, 0x6

    and-int/lit8 v11, v11, 0x70

    or-int/lit8 v39, v11, 0x6

    check-cast v10, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v11, v3

    move-object/from16 v40, v10

    const/16 v69, 0x0

    const v10, -0x1a26d91c

    const-string v12, "C33@1528L36,34@1573L29,36@1676L316,41@2029L134,44@2200L444,51@2659L2294,35@1611L3343,90@5043L10,91@5098L11,90@4963L164:Waveform.kt#q8fim0"

    invoke-static {v11, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v47, 0x36

    const/16 v48, 0x4

    const-string v43, "AUDIO"

    const-string v44, "\u041e\u0411\u0429\u0410\u042f \u0414\u041e\u0420\u041e\u0416\u041a\u0410"

    const/16 v45, 0x0

    move-object/from16 v46, v11

    invoke-static/range {v43 .. v48}, Lru/localscribe/ui/HexThemeKt;->HexSection(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v46

    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v11, Landroidx/compose/ui/Modifier;

    const/16 v12, 0x8

    const/16 v43, 0x0

    move-object/from16 v44, v3

    int-to-float v3, v12

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move/from16 v11, v36

    invoke-static {v3, v10, v11}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v13

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v3, v11, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v11, 0x4c

    const/4 v13, 0x0

    int-to-float v12, v11

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v11, -0x91a0154

    invoke-static {v10, v11, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    move-object v12, v10

    const/4 v13, 0x0

    move/from16 v36, v11

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    const/16 v43, 0x0

    if-nez v36, :cond_11

    sget-object v45, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v46, v13

    invoke-virtual/range {v45 .. v45}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_10

    goto :goto_a

    :cond_10
    goto :goto_b

    :cond_11
    move/from16 v46, v13

    :goto_a
    const/4 v13, 0x0

    move-object/from16 v45, v11

    new-instance v11, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;

    invoke-direct {v11, v8, v9, v7, v0}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;-><init>(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    nop

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    nop

    :goto_b
    nop

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object/from16 p4, v15

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-static {v3, v12, v11, v13, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const v13, -0x919d5ea

    invoke-static {v10, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    or-int/2addr v13, v15

    move-object v15, v10

    const/16 v22, 0x0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    const/16 v36, 0x0

    if-nez v13, :cond_13

    sget-object v43, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v45, v13

    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_12

    goto :goto_c

    :cond_12
    goto :goto_d

    :cond_13
    move/from16 v45, v13

    :goto_c
    const/4 v13, 0x0

    move-object/from16 v43, v12

    new-instance v12, Lru/localscribe/ui/WaveformKt$Waveform$3$2$1;

    invoke-direct {v12, v8, v9, v0}, Lru/localscribe/ui/WaveformKt$Waveform$3$2$1;-><init>(JLandroidx/compose/runtime/State;)V

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    nop

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    nop

    :goto_d
    nop

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v3, v11, v12}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const v12, -0x919bf54

    invoke-static {v10, v12, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    move-object v13, v10

    const/4 v15, 0x0

    move/from16 v22, v12

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    const/16 v36, 0x0

    if-nez v22, :cond_15

    sget-object v43, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v45, v15

    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v12, v15, :cond_14

    goto :goto_e

    :cond_14
    goto :goto_f

    :cond_15
    move/from16 v45, v15

    :goto_e
    const/4 v15, 0x0

    move-object/from16 v43, v12

    new-instance v12, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;

    invoke-direct {v12, v8, v9, v4, v0}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;-><init>(JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    nop

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    nop

    :goto_f
    nop

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v3, v11, v12}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v3, -0x9197eba

    invoke-static {v10, v3, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    or-int/2addr v3, v11

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    or-int/2addr v3, v11

    move-object/from16 v11, p2

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    move-wide/from16 v14, v16

    invoke-interface {v2, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    move-object v12, v0

    move-wide/from16 v0, v19

    invoke-interface {v2, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    or-int v16, v3, v16

    move-object v3, v10

    const/16 v17, 0x0

    move-wide/from16 v19, v14

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v16, :cond_17

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-wide/from16 v45, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_16

    goto :goto_10

    :cond_16
    move-object v11, v4

    move-wide v4, v5

    move-object v6, v14

    move-object/from16 v23, v44

    move-wide/from16 v0, v45

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v46, v10

    move-object/from16 v70, v41

    move-object/from16 v41, v2

    move-wide v2, v8

    move-object/from16 v71, v12

    move-object v12, v7

    move-wide/from16 v7, v19

    move-object/from16 v20, v70

    move-object/from16 v19, v71

    goto :goto_11

    :cond_17
    move-wide/from16 v45, v0

    :goto_10
    const/16 v22, 0x0

    new-instance v0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;

    move-object v1, v11

    move-object v11, v4

    move-wide v4, v5

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v36, v14

    move/from16 v43, v15

    move-object/from16 v23, v44

    const/4 v15, 0x0

    move-object v14, v3

    move-object/from16 v70, v41

    move-object/from16 v41, v2

    move-wide v2, v8

    move-object/from16 v71, v12

    move-object v12, v7

    move-wide/from16 v7, v19

    move-object/from16 v20, v70

    move-object/from16 v19, v71

    move-wide/from16 v70, v45

    move-object/from16 v46, v10

    move-wide/from16 v9, v70

    invoke-direct/range {v0 .. v12}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;-><init>(Lru/localscribe/audio/WaveformPeaks;JJLjava/util/Map;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    move-object v6, v0

    move-wide v0, v9

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    nop

    :goto_11
    nop

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v13, v6}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v10, v46

    invoke-static {v6, v10, v15}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v9, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v10, v9}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/Typography;->getLabelSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v64

    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v9, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v6, v10, v9}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material3/ColorScheme;->getOnSurfaceVariant-0d7_KjU()J

    move-result-wide v45

    nop

    nop

    const/16 v67, 0x0

    const v68, 0x1fffa

    const-string v43, "\u0421\u0435\u0440\u044b\u0439: \u0442\u0438\u0448\u0438\u043d\u0430 / \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u044b\u0439 \u00b7 \u0432\u0435\u0440\u0445\u043d\u044f\u044f \u043c\u0435\u0442\u043a\u0430: \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0435 \u043d\u0430\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0433\u043e\u043b\u043e\u0441\u043e\u0432"

    const/16 v44, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v66, 0x6

    move-object/from16 v65, v10

    invoke-static/range {v43 .. v68}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    nop

    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    nop

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    nop

    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    nop

    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    nop

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_12

    :cond_18
    move-object/from16 v41, v2

    move/from16 v18, v4

    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_19
    :goto_12
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_1a

    new-instance v0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;-><init>(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method private static final Waveform$lambda$0$0(J)J
    .locals 0

    return-wide p0
.end method

.method private static final Waveform$lambda$1(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    or-int/lit8 v0, p5, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-static/range {v1 .. v7}, Lru/localscribe/ui/WaveformKt;->Waveform(Lru/localscribe/audio/WaveformPeaks;JLjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Waveform$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    const/4 v3, 0x0

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final Waveform$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    const/4 v3, 0x0

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private static final Waveform$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private static final Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    const/4 v4, 0x0

    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    nop

    return-void
.end method

.method private static final Waveform$lambda$7$0$0(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 9

    const-string v0, "$this$semantics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u041e\u0431\u0449\u0430\u044f \u0430\u0443\u0434\u0438\u043e\u0432\u043e\u043b\u043d\u0430. \u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0438\u043b\u0438 \u043f\u0440\u043e\u0432\u0435\u0434\u0438\u0442\u0435 \u0434\u043b\u044f \u043f\u0435\u0440\u0435\u043c\u043e\u0442\u043a\u0438"

    invoke-static {p4, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance v1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    invoke-static {p2}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p0

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    move-wide v7, v6

    long-to-float v2, p0

    const/4 p0, 0x0

    long-to-float p1, v7

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p4, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V

    new-instance p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;

    invoke-direct {p0, v7, v8, p3}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;-><init>(JLandroidx/compose/runtime/State;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p4, v0, p0, p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgress$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Waveform$lambda$7$0$0$0(JLandroidx/compose/runtime/State;F)Z
    .locals 7

    invoke-static {p2}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    float-to-long v1, p3

    const-wide/16 v3, 0x0

    move-wide v5, p0

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private static final Waveform$lambda$7$3$0(Lru/localscribe/audio/WaveformPeaks;JJLjava/util/Map;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 38

    move-wide/from16 v8, p1

    move-object/from16 v14, p12

    const-string v0, "$this$drawWithCache"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v5

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    const/4 v0, 0x0

    move-wide v6, v2

    const/4 v10, 0x0

    const/16 v11, 0x20

    shr-long v12, v6, v11

    long-to-int v12, v12

    const/4 v13, 0x0

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    nop

    nop

    float-to-int v0, v12

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getPeaks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    move/from16 v16, v0

    :goto_0
    if-ge v2, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getPeaks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v2

    div-int/2addr v0, v15

    add-int/lit8 v3, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getPeaks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v3, v6

    div-int/2addr v3, v15

    add-int/lit8 v6, v0, 0x1

    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    const/4 v6, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getPeaks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    const/4 v7, 0x0

    move-wide/from16 v17, v12

    const/4 v10, 0x0

    const-wide v19, 0xffffffffL

    move/from16 v21, v11

    move-wide/from16 v22, v12

    and-long v11, v17, v19

    long-to-int v11, v11

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    nop

    nop

    mul-float/2addr v11, v6

    const v7, 0x3edc28f6    # 0.43f

    mul-float/2addr v11, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    int-to-float v10, v2

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    const/4 v13, 0x0

    move-wide/from16 v17, v11

    const/16 v22, 0x0

    move/from16 v24, v3

    move-object/from16 v23, v4

    shr-long v3, v17, v21

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    nop

    nop

    mul-float/2addr v10, v3

    int-to-float v3, v15

    div-float/2addr v10, v3

    int-to-float v3, v2

    const v4, 0x3f4ccccd    # 0.8f

    add-float/2addr v3, v4

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    const/4 v4, 0x0

    move-wide/from16 v17, v11

    const/4 v13, 0x0

    move/from16 v22, v3

    move/from16 v25, v4

    shr-long v3, v17, v21

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    nop

    nop

    mul-float v3, v3, v22

    int-to-float v4, v15

    div-float/2addr v3, v4

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    const/4 v4, 0x0

    move-wide/from16 v17, v11

    const/4 v13, 0x0

    move/from16 v22, v6

    move/from16 v25, v7

    and-long v6, v17, v19

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    nop

    nop

    const/4 v4, 0x2

    int-to-float v7, v4

    div-float/2addr v6, v7

    sub-float v6, v6, v25

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    const/4 v13, 0x0

    move-wide/from16 v17, v11

    const/16 v26, 0x0

    move-object/from16 v27, v5

    and-long v4, v17, v19

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    nop

    nop

    div-float/2addr v4, v7

    add-float v4, v4, v25

    new-instance v5, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v5, v10, v6, v3, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const/4 v7, 0x0

    const/4 v11, 0x2

    invoke-static {v1, v5, v7, v11, v7}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    int-to-double v11, v2

    move v13, v0

    move-object v5, v1

    long-to-double v0, v8

    mul-double/2addr v11, v0

    int-to-double v0, v15

    div-double/2addr v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-double v0, v0

    move-wide/from16 v17, v0

    long-to-double v0, v8

    mul-double v0, v0, v17

    int-to-double v7, v15

    div-double/2addr v0, v7

    move/from16 v7, v16

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getIntervals()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getIntervals()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/localscribe/audio/WaveformInterval;

    move/from16 v17, v10

    invoke-virtual {v8}, Lru/localscribe/audio/WaveformInterval;->getEndMs()J

    move-result-wide v9

    long-to-double v8, v9

    cmpg-double v8, v8, v11

    if-gtz v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    move/from16 v10, v17

    goto :goto_2

    :cond_1
    move/from16 v17, v10

    :cond_2
    move v8, v7

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getIntervals()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getIntervals()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/localscribe/audio/WaveformInterval;

    invoke-virtual {v9}, Lru/localscribe/audio/WaveformInterval;->getStartMs()J

    move-result-wide v9

    long-to-double v9, v9

    cmpg-double v9, v9, v0

    if-gez v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/audio/WaveformPeaks;->getIntervals()Ljava/util/List;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/localscribe/audio/WaveformInterval;

    invoke-virtual {v8}, Lru/localscribe/audio/WaveformInterval;->getOverlap()Z

    const/4 v9, 0x0

    if-eqz v9, :cond_3

    move-wide/from16 v28, p3

    move/from16 v19, v15

    move-object/from16 v15, p5

    goto :goto_4

    :cond_3
    invoke-virtual {v8}, Lru/localscribe/audio/WaveformInterval;->getSpeakerId()Ljava/lang/String;

    move-result-object v9

    move/from16 v19, v15

    move-object/from16 v15, p5

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v28

    goto :goto_4

    :cond_4
    move-wide/from16 v28, p6

    :goto_4
    move-wide/from16 v30, v0

    invoke-virtual {v8}, Lru/localscribe/audio/WaveformInterval;->getStartMs()J

    move-result-wide v0

    long-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v16, v7

    move-object/from16 v20, v8

    move-wide/from16 v0, p1

    long-to-double v7, v0

    div-double v7, v32, v7

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v32

    const/4 v9, 0x0

    move-wide/from16 v34, v32

    const/16 v26, 0x0

    move-wide/from16 v36, v7

    shr-long v7, v34, v21

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    nop

    nop

    float-to-double v7, v7

    mul-double v7, v7, v36

    double-to-float v7, v7

    move/from16 v8, v17

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    invoke-virtual/range {v20 .. v20}, Lru/localscribe/audio/WaveformInterval;->getEndMs()J

    move-result-wide v8

    long-to-double v8, v8

    move-wide/from16 v32, v8

    long-to-double v8, v0

    div-double v8, v32, v8

    invoke-virtual {v14}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v32

    const/16 v26, 0x0

    move-wide/from16 v34, v32

    const/16 v36, 0x0

    shr-long v0, v34, v21

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    nop

    float-to-double v0, v0

    mul-double/2addr v8, v0

    double-to-float v0, v8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v7

    if-lez v1, :cond_7

    move-object/from16 v1, v23

    check-cast v1, Ljava/util/Map;

    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_5

    const/16 v32, 0x0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v32

    move-object/from16 v33, v32

    move/from16 v32, v2

    move-object/from16 v2, v33

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_5

    :cond_5
    move/from16 v32, v2

    move-object/from16 v33, v26

    :goto_5
    nop

    move-object/from16 v1, v33

    check-cast v1, Landroidx/compose/ui/graphics/Path;

    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v2, v7, v6, v0, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v1, v2, v9, v8, v9}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Lru/localscribe/audio/WaveformInterval;->getOverlap()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    const/4 v2, 0x3

    const/4 v8, 0x0

    int-to-float v9, v2

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    invoke-virtual {v14, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->toPx-0680j_4(F)F

    move-result v2

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8, v0, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    move-object/from16 v2, v27

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v2, v1, v8, v9, v8}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move-object/from16 v2, v27

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto :goto_6

    :cond_7
    move/from16 v32, v2

    move-object/from16 v2, v27

    const/4 v8, 0x0

    const/4 v9, 0x2

    :goto_6
    move-object/from16 v27, v2

    move v8, v10

    move/from16 v7, v16

    move/from16 v15, v19

    move-wide/from16 v0, v30

    move/from16 v2, v32

    goto/16 :goto_3

    :cond_8
    move-wide/from16 v30, v0

    move/from16 v32, v2

    move/from16 v16, v7

    move/from16 v19, v15

    move-object/from16 v2, v27

    move-object/from16 v15, p5

    add-int/lit8 v0, v32, 0x1

    move-wide/from16 v8, p1

    move-object v1, v5

    move/from16 v15, v19

    move/from16 v11, v21

    move-object/from16 v4, v23

    move-object v5, v2

    move v2, v0

    goto/16 :goto_0

    :cond_9
    move/from16 v32, v2

    move-object v2, v5

    new-instance v0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda2;

    move-wide/from16 v8, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object v5, v2

    move-wide/from16 v2, p6

    invoke-direct/range {v0 .. v13}, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/graphics/Path;JLjava/util/HashMap;Landroidx/compose/ui/graphics/Path;JJJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    move-object/from16 v27, v5

    move-object v5, v1

    invoke-virtual {v14, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawBehind(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method

.method private static final Waveform$lambda$7$3$0$1(Landroidx/compose/ui/graphics/Path;JLjava/util/HashMap;Landroidx/compose/ui/graphics/Path;JJJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 20

    move-object/from16 v0, p13

    const-string v1, "$this$onDrawBehind"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    move-object/from16 v10, p3

    check-cast v10, Ljava/util/Map;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v2

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/graphics/Path;

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p13

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    nop

    goto :goto_0

    :cond_0
    nop

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p4

    move-wide/from16 v2, p5

    move-object/from16 v0, p13

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    invoke-static/range {p11 .. p11}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    invoke-static/range {p12 .. p12}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_1
    move-wide v3, v1

    const-wide/16 v5, 0x0

    move-wide/from16 v7, p7

    invoke-static/range {v3 .. v8}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v1

    long-to-float v1, v1

    move-wide/from16 v2, p7

    long-to-float v4, v2

    div-float/2addr v1, v4

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide v7, v4

    const/4 v9, 0x0

    const/16 v10, 0x20

    shr-long v11, v7, v10

    long-to-int v11, v11

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    nop

    nop

    mul-float v15, v1, v11

    const/4 v1, 0x0

    move v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v11, v9

    shl-long v13, v7, v10

    const-wide v16, 0xffffffffL

    and-long v18, v11, v16

    or-long v6, v13, v18

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v4

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    const/4 v1, 0x0

    move-wide v8, v6

    const/4 v11, 0x0

    and-long v12, v8, v16

    long-to-int v12, v12

    const/4 v13, 0x0

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    nop

    nop

    move v1, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v13, v11

    shl-long v10, v8, v10

    and-long v16, v13, v16

    or-long v7, v10, v16

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    const/4 v1, 0x2

    const/4 v8, 0x0

    int-to-float v9, v1

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v1

    const/16 v13, 0x1f0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v3, v4

    move-wide v5, v6

    move v7, v1

    move-wide/from16 v1, p9

    invoke-static/range {v0 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final Waveform$lambda$8(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    or-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lru/localscribe/ui/WaveformKt;->Waveform(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$Waveform$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {p0}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$Waveform$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/WaveformKt;->Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V

    return-void
.end method
