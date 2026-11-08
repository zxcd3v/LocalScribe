.class public final Lru/localscribe/core/SpeechLabels;
.super Ljava/lang/Object;
.source "SpeechLabels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeechLabels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeechLabels.kt\nru/localscribe/core/SpeechLabels\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lru/localscribe/core/SpeechLabels;",
        "",
        "<init>",
        "()V",
        "forSegment",
        "",
        "Lru/localscribe/core/SpeechLabel;",
        "s",
        "Lru/localscribe/core/Segment;",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lru/localscribe/core/SpeechLabels;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/SpeechLabels;

    invoke-direct {v0}, Lru/localscribe/core/SpeechLabels;-><init>()V

    sput-object v0, Lru/localscribe/core/SpeechLabels;->INSTANCE:Lru/localscribe/core/SpeechLabels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forSegment(Lru/localscribe/core/Segment;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Segment;",
            ")",
            "Ljava/util/List<",
            "Lru/localscribe/core/SpeechLabel;",
            ">;"
        }
    .end annotation

    const-string v0, "s"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getAcoustics()Lru/localscribe/core/Acoustics;

    move-result-object v4

    const-string v5, "format(...)"

    const/4 v6, 0x1

    if-eqz v4, :cond_10

    const/4 v7, 0x0

    nop

    nop

    invoke-virtual {v4}, Lru/localscribe/core/Acoustics;->getFinalRiseSemitones()Ljava/lang/Double;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v14, 0x0

    if-eqz v8, :cond_5

    nop

    move-object v15, v8

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const/16 v17, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    cmpg-double v18, v18, v12

    if-gtz v18, :cond_0

    move/from16 v18, v6

    goto :goto_0

    :cond_0
    move/from16 v18, v14

    :goto_0
    if-eqz v18, :cond_1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_1

    move v15, v6

    goto :goto_1

    :cond_1
    move v15, v14

    :goto_1
    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    nop

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const/4 v8, 0x0

    nop

    new-instance v17, Lru/localscribe/core/SpeechLabel;

    cmpl-double v18, v15, v9

    if-lez v18, :cond_3

    const-string v18, "\u0422\u043e\u043d \u043f\u043e\u0432\u044b\u0448\u0430\u0435\u0442\u0441\u044f"

    goto :goto_3

    :cond_3
    const-string v18, "\u0422\u043e\u043d \u043f\u043e\u043d\u0438\u0436\u0430\u0435\u0442\u0441\u044f"

    :goto_3
    nop

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-wide/from16 v24, v9

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "\u0418\u0437\u043c\u0435\u0440\u0435\u043d\u0438\u0435 F0: \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435 \u0432 \u043a\u043e\u043d\u0446\u0435 \u0440\u0435\u043f\u043b\u0438\u043a\u0438 %+.1f \u043f\u043e\u043b\u0443\u0442\u043e\u043d\u0430. \u042d\u0442\u043e \u043d\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u0438\u0435 \u0432\u043e\u043f\u0440\u043e\u0441\u0430, \u0443\u0434\u0438\u0432\u043b\u0435\u043d\u0438\u044f \u0438\u043b\u0438 \u044d\u043c\u043e\u0446\u0438\u0438; \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u044b \u043e\u0448\u0438\u0431\u043a\u0438 \u043e\u0446\u0435\u043d\u043a\u0438 F0. \u041a\u0430\u043b\u0438\u0431\u0440\u043e\u0432\u0430\u043d\u043d\u0430\u044f \u0443\u0432\u0435\u0440\u0435\u043d\u043d\u043e\u0441\u0442\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430."

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v20

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v22

    move-object/from16 v19, v9

    invoke-direct/range {v17 .. v23}, Lru/localscribe/core/SpeechLabel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v9, v17

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_5

    :cond_4
    move-wide/from16 v24, v9

    goto :goto_4

    :cond_5
    move-wide/from16 v24, v9

    :goto_4
    nop

    :goto_5
    nop

    nop

    invoke-virtual {v4}, Lru/localscribe/core/Acoustics;->getRelativeDb()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_b

    nop

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v16, v16, v12

    if-gtz v16, :cond_6

    move/from16 v16, v6

    goto :goto_6

    :cond_6
    move/from16 v16, v14

    :goto_6
    if-eqz v16, :cond_7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_7

    move v9, v6

    goto :goto_7

    :cond_7
    move v9, v14

    :goto_7
    if-eqz v9, :cond_8

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_a

    nop

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    nop

    new-instance v15, Lru/localscribe/core/SpeechLabel;

    cmpl-double v16, v8, v24

    if-lez v16, :cond_9

    const-string v16, "\u0413\u0440\u043e\u043c\u0447\u0435 \u043e\u0431\u044b\u0447\u043d\u043e\u0433\u043e"

    goto :goto_9

    :cond_9
    const-string v16, "\u0422\u0438\u0448\u0435 \u043e\u0431\u044b\u0447\u043d\u043e\u0433\u043e"

    :goto_9
    nop

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    move-wide/from16 v23, v12

    const-string v12, "\u0421\u0440\u0435\u0434\u043d\u044f\u044f \u0433\u0440\u043e\u043c\u043a\u043e\u0441\u0442\u044c %+.1f \u0434\u0411 \u043e\u0442\u043d\u043e\u0441\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u043d\u0430\u043a\u043e\u043f\u043b\u0435\u043d\u043d\u043e\u0439 \u043d\u043e\u0440\u043c\u044b \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u0430. \u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435 \u0440\u0430\u0441\u0441\u0442\u043e\u044f\u043d\u0438\u044f \u0434\u043e \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430 \u0442\u043e\u0436\u0435 \u043c\u0435\u043d\u044f\u0435\u0442 \u0433\u0440\u043e\u043c\u043a\u043e\u0441\u0442\u044c; \u043a\u0440\u0438\u043a \u0438 \u0448\u0451\u043f\u043e\u0442 \u044d\u0442\u0438\u043c \u043d\u0435 \u043a\u043b\u0430\u0441\u0441\u0438\u0444\u0438\u0446\u0438\u0440\u0443\u044e\u0442\u0441\u044f."

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v18

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v20

    move-object/from16 v17, v11

    invoke-direct/range {v15 .. v21}, Lru/localscribe/core/SpeechLabel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_b

    :cond_a
    move-wide/from16 v23, v12

    goto :goto_a

    :cond_b
    move-wide/from16 v23, v12

    :goto_a
    nop

    :goto_b
    nop

    nop

    invoke-virtual {v4}, Lru/localscribe/core/Acoustics;->getWordsPerMinute()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_e

    nop

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v12, v12, v23

    if-gtz v12, :cond_c

    move v14, v6

    :cond_c
    if-eqz v14, :cond_d

    move-object v11, v8

    goto :goto_c

    :cond_d
    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_e

    nop

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    nop

    new-instance v11, Lru/localscribe/core/SpeechLabel;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const-string v13, "\u0422\u0435\u043c\u043f %.0f \u0441\u043b\u043e\u0432/\u043c\u0438\u043d"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v14

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v16

    const-string v13, "\u0427\u0438\u0441\u043b\u043e \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d\u043d\u044b\u0445 \u0441\u043b\u043e\u0432 / \u0434\u043b\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c \u0440\u0435\u043f\u043b\u0438\u043a\u0438. \u041e\u0448\u0438\u0431\u043a\u0438 ASR \u0438 \u043f\u0430\u0443\u0437\u044b \u0432\u043b\u0438\u044f\u044e\u0442 \u043d\u0430 \u043e\u0446\u0435\u043d\u043a\u0443; \u0431\u0435\u0437 \u0438\u043d\u0434\u0438\u0432\u0438\u0434\u0443\u0430\u043b\u044c\u043d\u043e\u0439 \u043d\u043e\u0440\u043c\u044b \u043d\u0435 \u043f\u0440\u0438\u0441\u0432\u0430\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u00ab\u043d\u0435\u043e\u0431\u044b\u0447\u043d\u043e \u0431\u044b\u0441\u0442\u0440\u044b\u0439/\u043c\u0435\u0434\u043b\u0435\u043d\u043d\u044b\u0439\u00bb."

    invoke-direct/range {v11 .. v17}, Lru/localscribe/core/SpeechLabel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_d

    :cond_e
    nop

    :goto_d
    invoke-virtual {v4}, Lru/localscribe/core/Acoustics;->getPauseBeforeMs()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-ltz v8, :cond_f

    nop

    new-instance v9, Lru/localscribe/core/SpeechLabel;

    nop

    nop

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v10

    invoke-virtual {v4}, Lru/localscribe/core/Acoustics;->getPauseBeforeMs()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v12

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v14

    const-string v10, "\u2026"

    const-string v11, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b \u0434\u043e \u043d\u0430\u0447\u0430\u043b\u0430 \u044d\u0442\u043e\u0439 \u0440\u0435\u043f\u043b\u0438\u043a\u0438, \u0440\u0430\u0441\u0441\u0447\u0438\u0442\u0430\u043d\u043d\u044b\u0439 \u043f\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0430\u043c \u043f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0435\u0439 \u0440\u0435\u0447\u0438. \u042d\u0442\u043e \u043d\u0435 \u0432\u044b\u0432\u043e\u0434 \u043e\u0431 \u044d\u043c\u043e\u0446\u0438\u044f\u0445."

    invoke-direct/range {v9 .. v15}, Lru/localscribe/core/SpeechLabel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    nop

    nop

    :cond_10
    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEmotion()Lru/localscribe/core/EmotionAssessment;

    move-result-object v4

    if-eqz v4, :cond_19

    const/4 v7, 0x0

    invoke-virtual {v4}, Lru/localscribe/core/EmotionAssessment;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_e
    goto :goto_f

    :sswitch_0
    const-string v9, "neutral"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_e

    :cond_11
    const-string v8, "\u041d\u0435\u0439\u0442\u0440\u0430\u043b\u044c\u043d\u0430\u044f \u043e\u043a\u0440\u0430\u0441\u043a\u0430"

    goto :goto_10

    :sswitch_1
    const-string v9, "positive"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_e

    :cond_12
    const-string v8, "\u041f\u043e\u043b\u043e\u0436\u0438\u0442\u0435\u043b\u044c\u043d\u0430\u044f \u043e\u043a\u0440\u0430\u0441\u043a\u0430"

    goto :goto_10

    :sswitch_2
    const-string v9, "angry"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_e

    :cond_13
    const-string v8, "\u0420\u0430\u0437\u0434\u0440\u0430\u0436\u0451\u043d\u043d\u0430\u044f \u043e\u043a\u0440\u0430\u0441\u043a\u0430"

    goto :goto_10

    :sswitch_3
    const-string v9, "sad"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_e

    :cond_14
    const-string v8, "\u0413\u0440\u0443\u0441\u0442\u043d\u0430\u044f \u043e\u043a\u0440\u0430\u0441\u043a\u0430"

    goto :goto_10

    :goto_f
    const-string v8, "\u042d\u043c\u043e\u0446\u0438\u044f \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u0430"

    :goto_10
    nop

    move-object v10, v8

    nop

    nop

    nop

    invoke-virtual {v4}, Lru/localscribe/core/EmotionAssessment;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lru/localscribe/core/EmotionAssessment;->getConfidence()Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_15

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    nop

    const/4 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v13, "\u041e\u0446\u0435\u043d\u043a\u0430 \u043c\u043e\u0434\u0435\u043b\u0438 %.2f, \u043d\u0435 \u043e\u0442\u043a\u0430\u043b\u0438\u0431\u0440\u043e\u0432\u0430\u043d\u0430. "

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_16

    :cond_15
    const-string v6, "\u0423\u0432\u0435\u0440\u0435\u043d\u043d\u043e\u0441\u0442\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430. "

    :cond_16
    invoke-virtual {v4}, Lru/localscribe/core/EmotionAssessment;->getReason()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    nop

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u041f\u0440\u0438\u0447\u0438\u043d\u0430 \u043e\u0442\u043a\u0430\u0437\u0430/\u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0435: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_18

    :cond_17
    const-string v5, ""

    :cond_18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u0412\u0435\u0440\u043e\u044f\u0442\u043d\u043e\u0441\u0442\u043d\u0430\u044f \u0438\u043d\u0442\u0435\u0440\u043f\u0440\u0435\u0442\u0430\u0446\u0438\u044f \u0430\u0443\u0434\u0438\u043e: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u042d\u0442\u043e \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u043e\u0435 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u0447\u0435\u043b\u043e\u0432\u0435\u043a\u0430. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v12

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v14

    new-instance v9, Lru/localscribe/core/SpeechLabel;

    invoke-direct/range {v9 .. v15}, Lru/localscribe/core/SpeechLabel;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    nop

    :cond_19
    nop

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1bbd6 -> :sswitch_3
        0x58a79a1 -> :sswitch_2
        0x2c9299f9 -> :sswitch_1
        0x6dee1dc7 -> :sswitch_0
    .end sparse-switch
.end method
