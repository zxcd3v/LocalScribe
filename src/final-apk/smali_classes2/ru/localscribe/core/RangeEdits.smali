.class public final Lru/localscribe/core/RangeEdits;
.super Ljava/lang/Object;
.source "RangeEdits.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeEdits.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeEdits.kt\nru/localscribe/core/RangeEdits\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1#2:31\n774#3:32\n865#3,2:33\n1563#3:35\n1634#3,3:36\n774#3:39\n865#3,2:40\n*S KotlinDebug\n*F\n+ 1 RangeEdits.kt\nru/localscribe/core/RangeEdits\n*L\n16#1:32\n16#1:33,2\n18#1:35\n18#1:36,3\n21#1:39\n21#1:40,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ(\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eJ$\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00102\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/localscribe/core/RangeEdits;",
        "",
        "<init>",
        "()V",
        "intersects",
        "",
        "s",
        "Lru/localscribe/core/Segment;",
        "startMs",
        "",
        "endMs",
        "clip",
        "segment",
        "suffix",
        "",
        "outside",
        "",
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
.field public static final INSTANCE:Lru/localscribe/core/RangeEdits;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/RangeEdits;

    invoke-direct {v0}, Lru/localscribe/core/RangeEdits;-><init>()V

    sput-object v0, Lru/localscribe/core/RangeEdits;->INSTANCE:Lru/localscribe/core/RangeEdits;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clip(Lru/localscribe/core/Segment;JJLjava/lang/String;)Lru/localscribe/core/Segment;
    .locals 41

    move-object/from16 v1, p1

    move-object/from16 v0, p6

    const-string v2, "segment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "suffix"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v2

    move-wide/from16 v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v6

    move-wide/from16 v8, p4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long v10, v6, v2

    const/4 v11, 0x0

    if-gtz v10, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v12

    cmp-long v10, v2, v12

    if-nez v10, :cond_1

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v12

    cmp-long v10, v6, v12

    if-nez v10, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v10

    const/4 v13, 0x0

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v13

    :goto_0
    if-eqz v10, :cond_e

    new-instance v10, Lkotlin/text/Regex;

    const-string v14, "\\S+"

    invoke-direct {v10, v14}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x2

    invoke-static {v10, v14, v13, v15, v11}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v10

    invoke-static {v10}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    move v14, v13

    :goto_1
    if-eqz v14, :cond_d

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    const/4 v15, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/Collection;

    move-object/from16 v17, v14

    move-object/from16 v18, v16

    const/16 v16, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v20, v11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v21, v11

    check-cast v21, Ljava/lang/Number;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v21, 0x0

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/localscribe/core/WordStamp;

    invoke-virtual {v13}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v24

    cmp-long v13, v2, v24

    if-gtz v13, :cond_4

    cmp-long v13, v24, v6

    if-gez v13, :cond_4

    move/from16 v12, v22

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_5

    move-object/from16 v12, v18

    invoke-interface {v12, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v12, v18

    :goto_4
    move-object/from16 v11, v20

    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v20, v11

    move-object/from16 v12, v18

    const/16 v22, 0x1

    move-object v11, v12

    check-cast v11, Ljava/util/List;

    nop

    move-object/from16 v31, v11

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    return-object v20

    :cond_7
    move-object/from16 v11, v31

    check-cast v11, Ljava/lang/Iterable;

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v11, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    move-object v14, v11

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v17

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v18, 0x0

    move-wide/from16 v24, v2

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lru/localscribe/core/WordStamp;

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/localscribe/core/WordStamp;

    invoke-virtual {v2}, Lru/localscribe/core/WordStamp;->getEndMs()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v36, v2

    goto :goto_6

    :cond_8
    move-object/from16 v36, v20

    :goto_6
    const/16 v39, 0x1b

    const/16 v40, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v32 .. v40}, Lru/localscribe/core/WordStamp;->copy$default(Lru/localscribe/core/WordStamp;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)Lru/localscribe/core/WordStamp;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    goto :goto_5

    :cond_9
    move-wide/from16 v24, v2

    move-object v15, v13

    check-cast v15, Ljava/util/List;

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v31 .. v31}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/text/MatchResult;

    invoke-interface {v3}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v3

    invoke-static/range {v31 .. v31}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/text/MatchResult;

    invoke-interface {v11}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v11

    invoke-virtual {v11}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getTokens()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    move-object v13, v3

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lru/localscribe/core/TokenStamp;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/TokenStamp;->getEmissionMs()J

    move-result-wide v19

    cmp-long v21, v24, v19

    if-gtz v21, :cond_a

    cmp-long v19, v19, v6

    if-gez v19, :cond_a

    move/from16 v17, v22

    goto :goto_8

    :cond_a
    const/16 v17, 0x0

    :goto_8
    if-eqz v17, :cond_b

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p6

    goto :goto_7

    :cond_c
    nop

    move-object v14, v12

    check-cast v14, Ljava/util/List;

    nop

    nop

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    const v29, 0xffc3d2

    const/16 v30, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v4, v24

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v9, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v30}, Lru/localscribe/core/Segment;->copy$default(Lru/localscribe/core/Segment;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Segment;

    move-result-object v2

    return-object v2

    :cond_d
    move-wide v4, v2

    move-object v0, v10

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u0413\u0440\u0430\u043d\u0438\u0446\u0430 \u043f\u0435\u0440\u0435\u0441\u0435\u043a\u0430\u0435\u0442 \u0440\u0435\u043f\u043b\u0438\u043a\u0443 \u0431\u0435\u0437 \u0441\u043b\u043e\u0432\u043d\u044b\u0445 \u043c\u0435\u0442\u043e\u043a. \u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0435\u0451 \u0446\u0435\u043b\u0438\u043a\u043e\u043c: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2013"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0441."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0440\u0430\u0437\u0434\u0435\u043b\u0451\u043d\u043d\u0443\u044e \u0440\u0435\u043f\u043b\u0438\u043a\u0443 \u0446\u0435\u043b\u0438\u043a\u043e\u043c."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final intersects(Lru/localscribe/core/Segment;JJ)Z
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final outside(Lru/localscribe/core/Segment;JJ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Segment;",
            "JJ)",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    sget-object v3, Lru/localscribe/core/RangeEdits;->INSTANCE:Lru/localscribe/core/RangeEdits;

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v5

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":before:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lru/localscribe/core/RangeEdits;->clip(Lru/localscribe/core/Segment;JJLjava/lang/String;)Lru/localscribe/core/Segment;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v3, Lru/localscribe/core/RangeEdits;->INSTANCE:Lru/localscribe/core/RangeEdits;

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v5

    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":after:"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lru/localscribe/core/RangeEdits;->clip(Lru/localscribe/core/Segment;JJLjava/lang/String;)Lru/localscribe/core/Segment;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    nop

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
