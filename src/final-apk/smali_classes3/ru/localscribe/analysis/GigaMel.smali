.class public final Lru/localscribe/analysis/GigaMel;
.super Ljava/lang/Object;
.source "GigaMel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGigaMel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GigaMel.kt\nru/localscribe/analysis/GigaMel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,58:1\n12837#2,2:59\n*S KotlinDebug\n*F\n+ 1 GigaMel.kt\nru/localscribe/analysis/GigaMel\n*L\n26#1:59,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lru/localscribe/analysis/GigaMel;",
        "",
        "<init>",
        "()V",
        "window",
        "",
        "cosines",
        "",
        "[[D",
        "sines",
        "filters",
        "extract",
        "",
        "audio",
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


# instance fields
.field private final cosines:[[D

.field private final filters:[[D

.field private final sines:[[D

.field private final window:[D


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x190

    new-array v2, v1, [D

    const/4 v4, 0x0

    :goto_0
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    if-ge v4, v1, :cond_0

    int-to-double v7, v4

    mul-double/2addr v7, v5

    int-to-double v5, v1

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    sub-double/2addr v7, v5

    aput-wide v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lru/localscribe/analysis/GigaMel;->window:[D

    const/16 v2, 0xc9

    new-array v4, v2, [[D

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    new-array v8, v1, [D

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_1

    int-to-double v10, v7

    mul-double/2addr v10, v5

    int-to-double v12, v9

    mul-double/2addr v10, v12

    int-to-double v12, v1

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iput-object v4, v0, Lru/localscribe/analysis/GigaMel;->cosines:[[D

    new-array v4, v2, [[D

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_4

    new-array v8, v1, [D

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_3

    int-to-double v10, v7

    mul-double/2addr v10, v5

    int-to-double v12, v9

    mul-double/2addr v10, v12

    int-to-double v12, v1

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    iput-object v4, v0, Lru/localscribe/analysis/GigaMel;->sines:[[D

    const/16 v1, 0x40

    new-array v4, v1, [[D

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_6

    invoke-static {v5}, Lru/localscribe/analysis/GigaMel;->filters$hz(I)D

    move-result-wide v6

    add-int/lit8 v8, v5, 0x1

    invoke-static {v8}, Lru/localscribe/analysis/GigaMel;->filters$hz(I)D

    move-result-wide v9

    add-int/lit8 v11, v5, 0x2

    invoke-static {v11}, Lru/localscribe/analysis/GigaMel;->filters$hz(I)D

    move-result-wide v11

    new-array v13, v2, [D

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v2, :cond_5

    int-to-double v1, v14

    const-wide/high16 v15, 0x4044000000000000L    # 40.0

    mul-double/2addr v1, v15

    sub-double v15, v1, v6

    sub-double v17, v9, v6

    move-object/from16 v19, v4

    div-double v3, v15, v17

    sub-double v1, v11, v1

    sub-double v15, v11, v9

    div-double/2addr v1, v15

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v19

    const/16 v1, 0x40

    const/16 v2, 0xc9

    goto :goto_6

    :cond_5
    move-object/from16 v19, v4

    aput-object v13, v19, v5

    move v5, v8

    const/16 v1, 0x40

    const/16 v2, 0xc9

    goto :goto_5

    :cond_6
    move-object/from16 v19, v4

    move-object/from16 v1, v19

    iput-object v1, v0, Lru/localscribe/analysis/GigaMel;->filters:[[D

    return-void
.end method

.method private static final filters$hz(I)D
    .locals 8

    const/16 v0, 0x2bc

    int-to-double v0, v0

    const/16 v2, 0xa23

    int-to-double v2, v2

    const-wide v4, 0x4028db6db6db6db7L    # 12.428571428571429

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    int-to-double v6, p0

    mul-double/2addr v4, v6

    const/16 v6, 0x41

    int-to-double v6, v6

    div-double/2addr v4, v6

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/4 v4, 0x1

    int-to-double v4, v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final extract([F)[F
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "audio"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xc8

    if-le v2, v5, :cond_3

    move-object/from16 v2, p1

    const/4 v6, 0x0

    array-length v7, v2

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_2

    aget v9, v2, v8

    move v10, v9

    const/4 v11, 0x0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_0

    move v12, v4

    goto :goto_1

    :cond_0
    move v12, v3

    :goto_1
    if-nez v12, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_c

    array-length v2, v1

    div-int/lit16 v2, v2, 0xa0

    add-int/2addr v2, v4

    mul-int/lit8 v3, v2, 0x40

    new-array v3, v3, [F

    const/16 v4, 0x190

    new-array v4, v4, [D

    const/16 v6, 0xc9

    new-array v6, v6, [D

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_b

    const/4 v8, 0x0

    array-length v9, v4

    :goto_4
    if-ge v8, v9, :cond_6

    mul-int/lit16 v10, v7, 0xa0

    add-int/2addr v10, v8

    sub-int/2addr v10, v5

    if-gez v10, :cond_4

    neg-int v10, v10

    :cond_4
    array-length v11, v1

    if-lt v10, v11, :cond_5

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([F)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int v10, v11, v10

    :cond_5
    aget v11, v1, v10

    float-to-double v11, v11

    iget-object v13, v0, Lru/localscribe/analysis/GigaMel;->window:[D

    aget-wide v14, v13, v8

    mul-double/2addr v11, v14

    aput-wide v11, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    array-length v9, v6

    :goto_5
    if-ge v8, v9, :cond_8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-object v14, v0, Lru/localscribe/analysis/GigaMel;->cosines:[[D

    aget-object v14, v14, v8

    iget-object v15, v0, Lru/localscribe/analysis/GigaMel;->sines:[[D

    aget-object v15, v15, v8

    const/16 v16, 0x0

    array-length v5, v4

    move/from16 v1, v16

    :goto_6
    if-ge v1, v5, :cond_7

    aget-wide v17, v4, v1

    aget-wide v19, v14, v1

    mul-double v17, v17, v19

    add-double v10, v10, v17

    aget-wide v17, v4, v1

    aget-wide v19, v15, v1

    mul-double v17, v17, v19

    add-double v12, v12, v17

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    mul-double v17, v10, v10

    mul-double v19, v12, v12

    add-double v17, v17, v19

    aput-wide v17, v6, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    const/16 v5, 0xc8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    iget-object v5, v0, Lru/localscribe/analysis/GigaMel;->filters:[[D

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    :goto_7
    if-ge v1, v5, :cond_a

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v6

    move-wide/from16 v17, v8

    :goto_8
    if-ge v10, v11, :cond_9

    aget-wide v8, v6, v10

    iget-object v12, v0, Lru/localscribe/analysis/GigaMel;->filters:[[D

    aget-object v12, v12, v1

    aget-wide v13, v12, v10

    mul-double/2addr v8, v13

    add-double v17, v17, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    mul-int v8, v1, v2

    add-int/2addr v8, v7

    const-wide v19, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v21, 0x41cdcd6500000000L    # 1.0E9

    invoke-static/range {v17 .. v22}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    const/16 v5, 0xc8

    goto/16 :goto_3

    :cond_b
    return-object v3

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
