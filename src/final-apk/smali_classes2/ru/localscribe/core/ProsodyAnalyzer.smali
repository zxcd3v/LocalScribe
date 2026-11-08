.class public final Lru/localscribe/core/ProsodyAnalyzer;
.super Ljava/lang/Object;
.source "ProsodyAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProsodyAnalyzer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProsodyAnalyzer.kt\nru/localscribe/core/ProsodyAnalyzer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1#2:81\n1#2:92\n1#2:105\n1#2:118\n1617#3,9:82\n1869#3:91\n1870#3:93\n1626#3:94\n1617#3,9:95\n1869#3:104\n1870#3:106\n1626#3:107\n1617#3,9:108\n1869#3:117\n1870#3:119\n1626#3:120\n1788#3,4:121\n785#3:125\n796#3:126\n1878#3,2:127\n797#3,2:129\n1880#3:131\n799#3:132\n*S KotlinDebug\n*F\n+ 1 ProsodyAnalyzer.kt\nru/localscribe/core/ProsodyAnalyzer\n*L\n45#1:92\n47#1:105\n48#1:118\n45#1:82,9\n45#1:91\n45#1:93\n45#1:94\n47#1:95,9\n47#1:104\n47#1:106\n47#1:107\n48#1:108,9\n48#1:117\n48#1:119\n48#1:120\n50#1:121,4\n63#1:125\n63#1:126\n63#1:127,2\n63#1:129,2\n63#1:131\n63#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/localscribe/core/ProsodyAnalyzer;",
        "",
        "<init>",
        "()V",
        "analyze",
        "Lru/localscribe/core/Acoustics;",
        "x",
        "",
        "text",
        "",
        "pauseMs",
        "",
        "baseline",
        "Lru/localscribe/core/Speaker;",
        "updateNorm",
        "s",
        "a",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic analyze$default(Lru/localscribe/core/ProsodyAnalyzer;[FLjava/lang/String;JLru/localscribe/core/Speaker;ILjava/lang/Object;)Lru/localscribe/core/Acoustics;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lru/localscribe/core/ProsodyAnalyzer;->analyze([FLjava/lang/String;JLru/localscribe/core/Speaker;)Lru/localscribe/core/Acoustics;

    move-result-object p0

    return-object p0
.end method

.method private static final analyze$median(Ljava/util/List;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final analyze([FLjava/lang/String;JLru/localscribe/core/Speaker;)Lru/localscribe/core/Acoustics;
    .locals 48

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "x"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    new-instance v5, Lru/localscribe/core/Acoustics;

    const/16 v19, 0x37f

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-wide/from16 v14, p3

    invoke-direct/range {v5 .. v20}, Lru/localscribe/core/Acoustics;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_1
    array-length v2, v0

    move v7, v3

    const-wide/16 v8, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    aget v10, v0, v7

    nop

    const/4 v11, 0x0

    float-to-double v12, v10

    float-to-double v14, v10

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    array-length v2, v0

    int-to-double v10, v2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const/16 v2, 0x14

    int-to-double v9, v2

    const-wide v11, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    mul-double v25, v9, v11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    array-length v9, v0

    const/16 v10, 0x280

    sub-int/2addr v9, v10

    const/4 v11, 0x0

    const/16 v12, 0x140

    invoke-static {v3, v9, v12}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v9

    if-gt v11, v9, :cond_10

    :goto_2
    add-int/lit16 v5, v11, 0x280

    invoke-static {v11, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v18, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    nop

    const/16 v20, 0x0

    const-wide v21, 0x40cf400000000000L    # 16000.0

    aget v13, v0, v6

    float-to-double v13, v13

    add-double v18, v18, v13

    goto :goto_3

    :cond_3
    const-wide v21, 0x40cf400000000000L    # 16000.0

    int-to-double v5, v10

    div-double v18, v18, v5

    new-array v5, v10, [D

    move v6, v3

    :goto_4
    if-ge v6, v10, :cond_4

    add-int v13, v11, v6

    aget v13, v0, v13

    float-to-double v13, v13

    sub-double v13, v13, v18

    aput-wide v13, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    array-length v6, v5

    move v13, v3

    const-wide/16 v23, 0x0

    :goto_5
    if-ge v13, v6, :cond_5

    aget-wide v27, v5, v13

    nop

    const/4 v14, 0x0

    mul-double v27, v27, v27

    add-double v23, v23, v27

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    array-length v6, v5

    int-to-double v13, v6

    div-double v23, v23, v13

    const-wide/16 v13, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x142

    new-array v15, v10, [D

    const/16 v28, 0x1f

    move/from16 v3, v28

    :goto_6
    if-ge v3, v10, :cond_7

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v28, 0x0

    rsub-int v10, v3, 0x280

    move/from16 v4, v28

    :goto_7
    if-ge v4, v10, :cond_6

    aget-wide v36, v5, v4

    add-int v28, v4, v3

    aget-wide v38, v5, v28

    mul-double v36, v36, v38

    add-double v30, v30, v36

    aget-wide v36, v5, v4

    aget-wide v38, v5, v4

    mul-double v36, v36, v38

    add-double v32, v32, v36

    add-int v28, v4, v3

    aget-wide v36, v5, v28

    add-int v28, v4, v3

    aget-wide v38, v5, v28

    mul-double v36, v36, v38

    add-double v34, v34, v36

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    move-wide/from16 v36, v13

    const-wide v12, 0x3bc79ca10c924223L    # 1.0E-20

    move-object v10, v5

    mul-double v4, v32, v34

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double v4, v30, v4

    aput-wide v4, v15, v3

    add-int/lit8 v3, v3, 0x1

    move-object v5, v10

    move-wide/from16 v13, v36

    const/16 v10, 0x142

    const/16 v12, 0x140

    goto :goto_6

    :cond_7
    move-object v10, v5

    move-wide/from16 v36, v13

    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v4, 0x20

    const/16 v14, 0x140

    invoke-direct {v3, v4, v14}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v4, v3

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    const/4 v12, 0x0

    aget-wide v12, v15, v5

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    const/16 v28, 0x0

    move-object/from16 v30, v15

    aget-wide v14, v30, v5

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-object/from16 v15, v30

    const/16 v14, 0x140

    goto :goto_8

    :cond_8
    move-object/from16 v30, v15

    const/16 v3, 0x20

    :goto_9
    const/16 v4, 0x141

    const-wide v14, 0x3fe6666666666666L    # 0.7

    if-ge v3, v4, :cond_c

    aget-wide v4, v30, v3

    add-int/lit8 v28, v3, -0x1

    aget-wide v32, v30, v28

    cmpl-double v4, v4, v32

    if-ltz v4, :cond_a

    aget-wide v4, v30, v3

    add-int/lit8 v28, v3, 0x1

    aget-wide v32, v30, v28

    cmpl-double v4, v4, v32

    if-ltz v4, :cond_9

    aget-wide v4, v30, v3

    const-wide v32, 0x3fedc28f5c28f5c3L    # 0.93

    move/from16 v28, v3

    move-wide/from16 v34, v4

    mul-double v3, v12, v32

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v3, v34, v3

    if-ltz v3, :cond_b

    aget-wide v3, v30, v28

    move/from16 v6, v28

    move-wide/from16 v40, v3

    goto :goto_b

    :cond_9
    move/from16 v28, v3

    goto :goto_a

    :cond_a
    move/from16 v28, v3

    :cond_b
    :goto_a
    add-int/lit8 v3, v28, 0x1

    goto :goto_9

    :cond_c
    move/from16 v28, v3

    move-wide/from16 v40, v36

    :goto_b
    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v3, v23, v3

    if-lez v3, :cond_d

    if-lez v6, :cond_d

    cmpl-double v3, v40, v14

    if-lez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    const/4 v3, 0x0

    :goto_c
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    new-instance v36, Lru/localscribe/core/PitchPoint;

    sget-object v42, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    int-to-long v14, v11

    const/16 v46, 0x2

    const/16 v47, 0x0

    const/16 v45, 0x0

    move-wide/from16 v43, v14

    invoke-static/range {v42 .. v47}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v37

    if-eqz v3, :cond_e

    int-to-double v14, v6

    div-double v14, v21, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v39, v5

    goto :goto_d

    :cond_e
    const/16 v39, 0x0

    :goto_d
    invoke-direct/range {v36 .. v41}, Lru/localscribe/core/PitchPoint;-><init>(JLjava/lang/Double;D)V

    move-object/from16 v5, v36

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eq v11, v9, :cond_11

    add-int/lit16 v11, v11, 0x140

    const/4 v3, 0x0

    const/16 v10, 0x280

    const/16 v12, 0x140

    goto/16 :goto_2

    :cond_f
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_10
    const-wide v21, 0x40cf400000000000L    # 16000.0

    :cond_11
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    move-object v6, v3

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    const/4 v15, 0x0

    move-object/from16 v16, v14

    check-cast v16, Lru/localscribe/core/PitchPoint;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/core/PitchPoint;->getHz()Ljava/lang/Double;

    move-result-object v16

    if-eqz v16, :cond_12

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v1, p2

    goto :goto_e

    :cond_13
    nop

    nop

    move-object v1, v5

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    move-object v6, v3

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    const/4 v15, 0x0

    move-object/from16 v16, v14

    check-cast v16, Lru/localscribe/core/PitchPoint;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/core/PitchPoint;->getHz()Ljava/lang/Double;

    move-result-object v16

    if-eqz v16, :cond_14

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_14
    move-object/from16 v18, v3

    :goto_10
    move-object/from16 v3, v18

    goto :goto_f

    :cond_15
    move-object/from16 v18, v3

    nop

    move-object v3, v5

    check-cast v3, Ljava/util/List;

    nop

    invoke-static {v3}, Lru/localscribe/core/ProsodyAnalyzer;->analyze$median(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v9

    const/4 v12, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    const/16 v16, 0x0

    move-object/from16 v17, v15

    check-cast v17, Lru/localscribe/core/PitchPoint;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/PitchPoint;->getHz()Ljava/lang/Double;

    move-result-object v17

    if-eqz v17, :cond_16

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_16
    move-object/from16 v19, v2

    :goto_12
    move-object/from16 v2, v19

    goto :goto_11

    :cond_17
    move-object/from16 v19, v2

    nop

    move-object v2, v6

    check-cast v2, Ljava/util/List;

    nop

    invoke-static {v2}, Lru/localscribe/core/ProsodyAnalyzer;->analyze$median(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v2

    move-wide/from16 v4, v21

    invoke-static {v1}, Lru/localscribe/core/ProsodyAnalyzer;->analyze$median(Ljava/util/List;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v9, Lkotlin/text/Regex;

    const-string v10, "\\s+"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    const/4 v9, 0x0

    instance-of v11, v6, Ljava/util/Collection;

    if-eqz v11, :cond_18

    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_18

    move v11, v10

    goto :goto_14

    :cond_18
    const/4 v11, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_19
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_19

    add-int/lit8 v11, v11, 0x1

    if-gez v11, :cond_19

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_13

    :cond_1a
    nop

    :goto_14
    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x5

    const/16 v12, 0xc

    if-lt v6, v9, :cond_1b

    int-to-double v13, v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move-wide v15, v4

    int-to-double v4, v6

    const-wide v17, 0x3feccccccccccccdL    # 0.9

    mul-double v4, v4, v17

    double-to-int v4, v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v9, v11

    int-to-double v10, v6

    const-wide v17, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, v17

    double-to-int v6, v10

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->log2(D)D

    move-result-wide v4

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v23, v4

    goto :goto_15

    :cond_1b
    move-wide v15, v4

    move v9, v11

    const/16 v23, 0x0

    :goto_15
    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1c

    int-to-double v4, v12

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/math/MathKt;->log2(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v24, v4

    goto :goto_16

    :cond_1c
    const/16 v24, 0x0

    :goto_16
    nop

    if-eqz p5, :cond_1d

    invoke-virtual/range {p5 .. p5}, Lru/localscribe/core/Speaker;->getRmsMeanDb()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_1d

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    nop

    const/4 v6, 0x0

    sub-double v4, v25, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_17

    :cond_1d
    const/4 v4, 0x0

    :goto_17
    if-eqz v22, :cond_1f

    if-eqz p5, :cond_1e

    invoke-virtual/range {p5 .. p5}, Lru/localscribe/core/Speaker;->getF0MeanHz()Ljava/lang/Double;

    move-result-object v5

    goto :goto_18

    :cond_1e
    const/4 v5, 0x0

    :goto_18
    if-eqz v5, :cond_1f

    int-to-double v5, v12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual/range {p5 .. p5}, Lru/localscribe/core/Speaker;->getF0MeanHz()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/math/MathKt;->log2(D)D

    move-result-wide v10

    mul-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v28, v5

    goto :goto_19

    :cond_1f
    const/16 v28, 0x0

    :goto_19
    if-lez v9, :cond_20

    int-to-double v5, v9

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double/2addr v5, v10

    array-length v10, v0

    int-to-double v10, v10

    div-double/2addr v10, v15

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    goto :goto_1a

    :cond_20
    const/4 v15, 0x0

    :goto_1a
    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-double v12, v10

    div-double/2addr v5, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v32, v12, v5

    move-object/from16 v5, v19

    check-cast v5, Ljava/lang/Iterable;

    const/4 v6, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    move-object v12, v5

    const/4 v13, 0x0

    move-object v14, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_24

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v21, v17, 0x1

    if-gez v17, :cond_21

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_21
    move-object/from16 v27, v20

    const/16 v30, 0x0

    move-object/from16 v31, v27

    check-cast v31, Lru/localscribe/core/PitchPoint;

    move/from16 v31, v17

    const/16 v34, 0x0

    rem-int/lit8 v35, v31, 0x5

    if-nez v35, :cond_22

    move/from16 v31, v11

    goto :goto_1c

    :cond_22
    const/16 v31, 0x0

    :goto_1c
    if-eqz v31, :cond_23

    move-object/from16 v11, v27

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_23
    move-object/from16 v11, v27

    :goto_1d
    nop

    move/from16 v17, v21

    const/4 v11, 0x1

    goto :goto_1b

    :cond_24
    nop

    nop

    move-object/from16 v34, v10

    check-cast v34, Ljava/util/List;

    nop

    new-instance v21, Lru/localscribe/core/Acoustics;

    move-wide/from16 v30, p3

    move-object/from16 v27, v4

    move-object/from16 v29, v15

    invoke-direct/range {v21 .. v34}, Lru/localscribe/core/Acoustics;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)V

    return-object v21
.end method

.method public final updateNorm(Lru/localscribe/core/Speaker;Lru/localscribe/core/Acoustics;)Lru/localscribe/core/Speaker;
    .locals 17

    const-string v0, "s"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getNormCount()I

    move-result v0

    const/16 v3, 0x64

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    nop

    invoke-virtual {v2}, Lru/localscribe/core/Acoustics;->getF0MedianHz()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getF0MeanHz()Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getF0MeanHz()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v3

    add-int/lit8 v8, v0, 0x1

    int-to-double v8, v8

    div-double/2addr v6, v8

    move-wide v3, v6

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getF0MeanHz()Ljava/lang/Double;

    move-result-object v3

    move-object v6, v3

    :goto_1
    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getRmsMeanDb()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lru/localscribe/core/Acoustics;->getRmsDbfs()D

    move-result-wide v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getRmsMeanDb()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    int-to-double v7, v0

    mul-double/2addr v3, v7

    invoke-virtual {v2}, Lru/localscribe/core/Acoustics;->getRmsDbfs()D

    move-result-wide v7

    add-double/2addr v3, v7

    add-int/lit8 v5, v0, 0x1

    int-to-double v7, v5

    div-double/2addr v3, v7

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getNormCount()I

    move-result v3

    add-int/lit8 v8, v3, 0x1

    const/16 v15, 0x1f8f

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v16}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v2

    return-object v2
.end method
