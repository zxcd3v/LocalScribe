.class public final Lru/localscribe/analysis/AnalysisMath;
.super Ljava/lang/Object;
.source "AnalysisMath.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalysisMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalysisMath.kt\nru/localscribe/analysis/AnalysisMath\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,134:1\n1056#2:135\n543#2,6:136\n1740#2,2:148\n1742#2:152\n1563#2:153\n1634#2,3:154\n1068#2:157\n1788#2,3:158\n1969#2,14:161\n1791#2:175\n1193#2,2:176\n1267#2,4:178\n12767#3,2:142\n12767#3:144\n12837#3,2:145\n12768#3:147\n12837#3,2:150\n*S KotlinDebug\n*F\n+ 1 AnalysisMath.kt\nru/localscribe/analysis/AnalysisMath\n*L\n18#1:135\n50#1:136,6\n115#1:148,2\n115#1:152\n119#1:153\n119#1:154,3\n120#1:157\n123#1:158,3\n123#1:161,14\n123#1:175\n129#1:176,2\n129#1:178,4\n83#1:142,2\n108#1:144\n108#1:145,2\n108#1:147\n116#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\"\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J&\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J4\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\tJ!\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001d\u00a2\u0006\u0002\u0010\u001eJ\u0014\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a8\u0006\""
    }
    d2 = {
        "Lru/localscribe/analysis/AnalysisMath;",
        "",
        "<init>",
        "()V",
        "merge",
        "",
        "Lru/localscribe/analysis/SampleSpan;",
        "spans",
        "gap",
        "",
        "subtract",
        "span",
        "cuts",
        "recentCleanVoiceWindow",
        "begin",
        "end",
        "overlaps",
        "correlation",
        "",
        "a",
        "",
        "b",
        "aOffset",
        "bOffset",
        "count",
        "fitMixture",
        "",
        "mix",
        "sources",
        "",
        "([F[[F)Z",
        "emotion",
        "Lru/localscribe/core/EmotionAssessment;",
        "probabilities",
        "analysis"
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
.field public static final INSTANCE:Lru/localscribe/analysis/AnalysisMath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/analysis/AnalysisMath;

    invoke-direct {v0}, Lru/localscribe/analysis/AnalysisMath;-><init>()V

    sput-object v0, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic correlation$default(Lru/localscribe/analysis/AnalysisMath;[F[FIIIILjava/lang/Object;)D
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    array-length p5, p1

    sub-int/2addr p5, p3

    array-length p6, p2

    sub-int/2addr p6, p4

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p5

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lru/localscribe/analysis/AnalysisMath;->correlation([F[FIII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic merge$default(Lru/localscribe/analysis/AnalysisMath;Ljava/util/List;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/analysis/AnalysisMath;->merge(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final correlation([F[FIII)D
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    const-string v3, "a"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const-wide/16 v3, 0x0

    return-wide v3

    :cond_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v2, :cond_1

    add-int v14, p3, v13

    aget v14, v0, v14

    float-to-double v14, v14

    add-int v16, p4, v13

    aget v0, v1, v16

    float-to-double v0, v0

    mul-double v16, v14, v14

    add-double v3, v3, v16

    mul-double v16, v0, v0

    add-double v5, v5, v16

    mul-double v16, v14, v0

    add-double v7, v7, v16

    add-double/2addr v9, v14

    add-double/2addr v11, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_0

    :cond_1
    mul-double v0, v9, v11

    int-to-double v13, v2

    div-double/2addr v0, v13

    sub-double v0, v7, v0

    mul-double v13, v9, v9

    move-wide v15, v0

    int-to-double v0, v2

    div-double/2addr v13, v0

    sub-double v0, v3, v13

    mul-double v13, v11, v11

    move-wide/from16 v17, v0

    int-to-double v0, v2

    div-double/2addr v13, v0

    sub-double v0, v5, v13

    mul-double v0, v0, v17

    const-wide v13, 0x3bc79ca10c924223L    # 1.0E-20

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v17, v15, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v17 .. v22}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final emotion(Ljava/util/List;)Lru/localscribe/core/EmotionAssessment;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Lru/localscribe/core/EmotionAssessment;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "probabilities"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lru/localscribe/core/EmotionAssessment;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "insufficient_audio"

    invoke-direct/range {v2 .. v10}, Lru/localscribe/core/EmotionAssessment;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "angry"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "sad"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, "neutral"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "positive"

    aput-object v6, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const/4 v6, 0x0

    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    goto/16 :goto_6

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, [F

    const/4 v10, 0x0

    array-length v11, v9

    if-ne v11, v1, :cond_8

    move-object v11, v9

    const/4 v12, 0x0

    array-length v13, v11

    move v14, v4

    :goto_0
    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v14, v13, :cond_7

    aget v16, v11, v14

    move/from16 v17, v16

    const/16 v18, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_3

    move/from16 v19, v5

    goto :goto_1

    :cond_3
    move/from16 v19, v4

    :goto_1
    if-eqz v19, :cond_5

    const/16 v19, 0x0

    cmpg-float v19, v19, v17

    if-gtz v19, :cond_4

    cmpg-float v19, v17, v15

    if-gtz v19, :cond_4

    move/from16 v19, v5

    goto :goto_2

    :cond_4
    move/from16 v19, v4

    :goto_2
    if-eqz v19, :cond_5

    move/from16 v17, v5

    goto :goto_3

    :cond_5
    move/from16 v17, v4

    :goto_3
    if-nez v17, :cond_6

    move v11, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_7
    move v11, v5

    :goto_4
    if-eqz v11, :cond_8

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->sum([F)F

    move-result v11

    sub-float/2addr v11, v15

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v11, v11, v13

    if-gez v11, :cond_8

    move v9, v5

    goto :goto_5

    :cond_8
    move v9, v4

    :goto_5
    if-nez v9, :cond_2

    move v3, v4

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    if-eqz v3, :cond_19

    new-array v3, v1, [D

    move v6, v4

    :goto_7
    const/16 v7, 0xa

    if-ge v6, v1, :cond_b

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v10

    check-cast v7, Ljava/util/Collection;

    move-object v10, v8

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, [F

    const/4 v15, 0x0

    aget v1, v14, v6

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    goto :goto_8

    :cond_a
    nop

    move-object v1, v7

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfDouble(Ljava/lang/Iterable;)D

    move-result-wide v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x4

    goto :goto_7

    :cond_b
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getIndices([D)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    new-instance v8, Lru/localscribe/analysis/AnalysisMath$emotion$$inlined$sortedByDescending$1;

    invoke-direct {v8, v3}, Lru/localscribe/analysis/AnalysisMath$emotion$$inlined$sortedByDescending$1;-><init>([D)V

    check-cast v8, Ljava/util/Comparator;

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    nop

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    instance-of v10, v8, Ljava/util/Collection;

    if-eqz v10, :cond_c

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v4

    goto/16 :goto_d

    :cond_c
    const/4 v10, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, [F

    const/4 v14, 0x0

    invoke-static {v13}, Lkotlin/collections/ArraysKt;->getIndices([F)Lkotlin/ranges/IntRange;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    const/16 v16, 0x0

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v18, v17

    check-cast v18, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v18 .. v18}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_d

    move/from16 v4, v18

    goto :goto_b

    :cond_d
    move/from16 v19, v18

    const/16 v20, 0x0

    aget v19, v13, v19

    move/from16 v4, v19

    :goto_a
    move-object/from16 v20, v17

    check-cast v20, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v20 .. v20}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v20

    move/from16 v21, v20

    const/16 v22, 0x0

    aget v21, v13, v21

    move/from16 v22, v21

    move/from16 v7, v22

    invoke-static {v4, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v22

    if-gez v22, :cond_e

    move/from16 v18, v20

    move v4, v7

    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_12

    move/from16 v4, v18

    :goto_b
    if-ne v4, v6, :cond_f

    move v4, v5

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_11

    add-int/lit8 v10, v10, 0x1

    if-gez v10, :cond_10

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    :cond_10
    const/4 v4, 0x0

    const/16 v7, 0xa

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    const/16 v7, 0xa

    goto :goto_9

    :cond_12
    const/16 v7, 0xa

    goto :goto_a

    :cond_13
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4

    :cond_14
    nop

    :goto_d
    int-to-double v7, v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v9, v4

    div-double/2addr v7, v9

    nop

    aget-wide v9, v3, v6

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v9, v11

    if-ltz v4, :cond_15

    aget-wide v9, v3, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-wide v11, v3, v4

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    cmpl-double v4, v9, v11

    if-ltz v4, :cond_15

    const-wide v9, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_15

    move v4, v5

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    :goto_e
    nop

    if-eqz v4, :cond_16

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_f

    :cond_16
    const-string v5, "unknown"

    :goto_f
    move-object v10, v5

    aget-wide v11, v3, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/16 v12, 0xa

    invoke-static {v5, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v13, Ljava/util/Map;

    move-object v14, v5

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v17, v16

    check-cast v17, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v17

    move/from16 v18, v17

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v18, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aget-wide v20, v3, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    goto :goto_10

    :cond_17
    move-object/from16 v18, v1

    nop

    nop

    if-eqz v4, :cond_18

    const/4 v0, 0x0

    goto :goto_11

    :cond_18
    const-string v0, "uncertain_or_changing"

    :goto_11
    move-object v15, v0

    new-instance v9, Lru/localscribe/core/EmotionAssessment;

    move-object v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x18

    const/16 v17, 0x0

    invoke-direct/range {v9 .. v17}, Lru/localscribe/core/EmotionAssessment;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fitMixture([F[[F)Z
    .locals 34

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "mix"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v6, v2

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    move-object v9, v8

    check-cast v9, [F

    const/4 v10, 0x0

    array-length v11, v9

    array-length v12, v0

    if-ne v11, v12, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v5

    :goto_1
    if-nez v9, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    if-eqz v2, :cond_12

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    array-length v15, v0

    :goto_4
    if-ge v14, v15, :cond_4

    aget-object v16, v1, v5

    const/16 v17, 0x1

    aget v4, v16, v14

    move/from16 v16, v5

    move-wide/from16 v18, v6

    float-to-double v5, v4

    aget-object v4, v1, v17

    aget v4, v4, v14

    move-wide/from16 v20, v2

    float-to-double v1, v4

    aget v3, v0, v14

    float-to-double v3, v3

    mul-double v22, v5, v5

    add-double v20, v20, v22

    mul-double v22, v1, v1

    add-double v18, v18, v22

    mul-double v22, v5, v1

    add-double v8, v8, v22

    mul-double v22, v5, v3

    add-double v10, v10, v22

    mul-double v22, v1, v3

    add-double v12, v12, v22

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    move/from16 v5, v16

    move-wide/from16 v6, v18

    move-wide/from16 v2, v20

    goto :goto_4

    :cond_4
    move-wide/from16 v20, v2

    move/from16 v16, v5

    move-wide/from16 v18, v6

    const/16 v17, 0x1

    mul-double v2, v20, v18

    mul-double v4, v8, v8

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_5

    move/from16 v1, v17

    goto :goto_5

    :cond_5
    move/from16 v1, v16

    :goto_5
    if-eqz v1, :cond_11

    mul-double v4, v20, v18

    const-wide v14, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v4, v14

    const-wide v14, 0x3bc79ca10c924223L    # 1.0E-20

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_6

    goto/16 :goto_f

    :cond_6
    mul-double v4, v10, v18

    mul-double v14, v12, v8

    sub-double/2addr v4, v14

    div-double/2addr v4, v2

    mul-double v14, v12, v20

    mul-double v22, v10, v8

    sub-double v14, v14, v22

    div-double/2addr v14, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpg-double v1, v22, v6

    if-gtz v1, :cond_7

    move/from16 v1, v17

    goto :goto_6

    :cond_7
    move/from16 v1, v16

    :goto_6
    if-eqz v1, :cond_10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpg-double v1, v22, v6

    if-gtz v1, :cond_8

    move/from16 v1, v17

    goto :goto_7

    :cond_8
    move/from16 v1, v16

    :goto_7
    if-nez v1, :cond_9

    goto/16 :goto_e

    :cond_9
    const/4 v1, 0x0

    array-length v6, v0

    :goto_8
    if-ge v1, v6, :cond_a

    aget-object v7, p2, v16

    aget-object v22, p2, v16

    aget v0, v22, v1

    move/from16 v22, v1

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    aput v0, v7, v22

    aget-object v0, p2, v17

    aget-object v1, p2, v17

    aget v1, v1, v22

    move-object v7, v0

    float-to-double v0, v1

    mul-double/2addr v0, v14

    double-to-float v0, v0

    aput v0, v7, v22

    add-int/lit8 v1, v22, 0x1

    move-object/from16 v0, p1

    goto :goto_8

    :cond_a
    move/from16 v22, v1

    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v6, v0

    move/from16 v7, v16

    :goto_9
    if-ge v7, v6, :cond_f

    aget-object v22, v0, v7

    move-object/from16 v23, v22

    check-cast v23, [F

    const/16 v24, 0x0

    move-object/from16 v25, v23

    const/16 v26, 0x0

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v25, v1

    array-length v1, v0

    move-object/from16 v28, v0

    move/from16 v0, v16

    :goto_a
    if-ge v0, v1, :cond_d

    aget v29, v28, v0

    move/from16 v30, v29

    const/16 v31, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const v33, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v32, v32, v33

    if-gtz v32, :cond_b

    move/from16 v32, v17

    goto :goto_b

    :cond_b
    move/from16 v32, v16

    :goto_b
    if-nez v32, :cond_c

    move/from16 v0, v16

    goto :goto_c

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    move/from16 v0, v17

    :goto_c
    nop

    if-nez v0, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v25

    move-object/from16 v0, v27

    goto :goto_9

    :cond_f
    move-object/from16 v27, v0

    move/from16 v25, v1

    move/from16 v16, v17

    :goto_d
    return v16

    :cond_10
    :goto_e
    return v16

    :cond_11
    :goto_f
    return v16

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final merge(Ljava/util/List;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;I)",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;"
        }
    .end annotation

    const-string v0, "spans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    new-instance v3, Lru/localscribe/analysis/AnalysisMath$merge$$inlined$sortedBy$1;

    invoke-direct {v3}, Lru/localscribe/analysis/AnalysisMath$merge$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/localscribe/analysis/SampleSpan;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/analysis/SampleSpan;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v4

    invoke-virtual {v3}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    add-int/2addr v5, p2

    if-gt v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    new-instance v5, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {v3}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v6

    invoke-virtual {v3}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v7

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2}, Lru/localscribe/analysis/SampleSpan;->getScore()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v5, v6, v7, v8}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;)V

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final recentCleanVoiceWindow(IILjava/util/List;)Lru/localscribe/analysis/SampleSpan;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;)",
            "Lru/localscribe/analysis/SampleSpan;"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v3, p2

    move-object/from16 v7, p3

    const-string v1, "overlaps"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v0, :cond_0

    if-lt v3, v0, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    if-eqz v1, :cond_6

    sub-int v1, v3, v0

    const/16 v10, 0x3200

    const/4 v11, 0x0

    if-ge v1, v10, :cond_1

    return-object v11

    :cond_1
    new-instance v1, Lru/localscribe/analysis/SampleSpan;

    add-int/lit16 v2, v3, -0x7d00

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v7}, Lru/localscribe/analysis/AnalysisMath;->subtract(Lru/localscribe/analysis/SampleSpan;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lru/localscribe/analysis/SampleSpan;

    const/4 v13, 0x0

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v14

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v15

    sub-int/2addr v14, v15

    if-lt v14, v10, :cond_3

    move v12, v8

    goto :goto_1

    :cond_3
    move v12, v9

    :goto_1
    if-eqz v12, :cond_2

    goto :goto_2

    :cond_4
    move-object v6, v11

    :goto_2
    check-cast v6, Lru/localscribe/analysis/SampleSpan;

    if-nez v6, :cond_5

    return-object v11

    :cond_5
    nop

    new-instance v8, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {v6}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v3

    invoke-virtual {v6}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v4

    add-int/lit16 v4, v4, -0x5dc0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v6}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_6
    move-object/from16 v2, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed requirement."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final subtract(Lru/localscribe/analysis/SampleSpan;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/analysis/SampleSpan;",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;"
        }
    .end annotation

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cuts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, p2, v4, v2, v3}, Lru/localscribe/analysis/AnalysisMath;->merge$default(Lru/localscribe/analysis/AnalysisMath;Ljava/util/List;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {v0}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v3

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    if-lt v3, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v3

    if-le v3, v4, :cond_2

    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    new-instance v3, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {v0}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v5

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v0

    if-ge v4, v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    new-instance v3, Lru/localscribe/analysis/SampleSpan;

    invoke-virtual {p1}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method
