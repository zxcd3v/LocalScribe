.class public final Lru/localscribe/core/Resampler;
.super Ljava/lang/Object;
.source "Resampler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Resampler$Kernel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResampler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Resampler.kt\nru/localscribe/core/Resampler\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,69:1\n382#2,7:70\n*S KotlinDebug\n*F\n+ 1 Resampler.kt\nru/localscribe/core/Resampler\n*L\n25#1:70,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u000f\u0018\u00002\u00020\u0001:\u0001\u0019B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lru/localscribe/core/Resampler;",
        "",
        "sourceRate",
        "",
        "targetRate",
        "<init>",
        "(II)V",
        "buffer",
        "",
        "base",
        "",
        "received",
        "produced",
        "radius",
        "kernels",
        "ru/localscribe/core/Resampler$kernels$1",
        "Lru/localscribe/core/Resampler$kernels$1;",
        "kernel",
        "Lru/localscribe/core/Resampler$Kernel;",
        "phase",
        "",
        "push",
        "input",
        "finished",
        "",
        "Kernel",
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


# instance fields
.field private base:J

.field private buffer:[F

.field private final kernels:Lru/localscribe/core/Resampler$kernels$1;

.field private produced:J

.field private final radius:I

.field private received:J

.field private final sourceRate:I

.field private final targetRate:I


# direct methods
.method public constructor <init>(II)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/localscribe/core/Resampler;->sourceRate:I

    iput p2, p0, Lru/localscribe/core/Resampler;->targetRate:I

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lru/localscribe/core/Resampler;->buffer:[F

    const/16 v1, 0x18

    int-to-double v1, v1

    iget v3, p0, Lru/localscribe/core/Resampler;->sourceRate:I

    int-to-double v3, v3

    iget v5, p0, Lru/localscribe/core/Resampler;->targetRate:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    iput v1, p0, Lru/localscribe/core/Resampler;->radius:I

    new-instance v1, Lru/localscribe/core/Resampler$kernels$1;

    invoke-direct {v1}, Lru/localscribe/core/Resampler$kernels$1;-><init>()V

    iput-object v1, p0, Lru/localscribe/core/Resampler;->kernels:Lru/localscribe/core/Resampler$kernels$1;

    nop

    iget v1, p0, Lru/localscribe/core/Resampler;->sourceRate:I

    const/16 v2, 0x1f40

    const/4 v3, 0x1

    if-gt v2, v1, :cond_0

    const v2, 0x5dc01

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v1, p0, Lru/localscribe/core/Resampler;->targetRate:I

    if-lez v1, :cond_1

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    nop

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x3e80

    :cond_0
    invoke-direct {p0, p1, p2}, Lru/localscribe/core/Resampler;-><init>(II)V

    return-void
.end method

.method private final kernel(D)Lru/localscribe/core/Resampler$Kernel;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/core/Resampler;->kernels:Lru/localscribe/core/Resampler$kernels$1;

    check-cast v1, Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v5, 0x0

    iget v6, v0, Lru/localscribe/core/Resampler;->targetRate:I

    int-to-double v6, v6

    iget v8, v0, Lru/localscribe/core/Resampler;->sourceRate:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide v8, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpg-double v8, p1, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    if-eqz v8, :cond_1

    iget v8, v0, Lru/localscribe/core/Resampler;->radius:I

    neg-int v8, v8

    goto :goto_1

    :cond_1
    iget v8, v0, Lru/localscribe/core/Resampler;->radius:I

    neg-int v8, v8

    add-int/2addr v8, v10

    :goto_1
    iget v11, v0, Lru/localscribe/core/Resampler;->radius:I

    sub-int/2addr v11, v8

    add-int/2addr v11, v10

    new-array v10, v11, [D

    :goto_2
    if-ge v9, v11, :cond_3

    add-int v12, v8, v9

    int-to-double v12, v12

    sub-double v12, p1, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v14, v14, v16

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    if-gez v14, :cond_2

    move-wide/from16 v17, v6

    goto :goto_3

    :cond_2
    mul-double v17, v12, v15

    mul-double v17, v17, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v19, v12, v15

    div-double v17, v17, v19

    :goto_3
    mul-double/2addr v15, v12

    iget v14, v0, Lru/localscribe/core/Resampler;->radius:I

    move/from16 v19, v3

    move-object/from16 v20, v4

    int-to-double v3, v14

    div-double/2addr v15, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v14

    add-double/2addr v3, v14

    mul-double v17, v17, v3

    aput-wide v17, v10, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_2

    :cond_3
    move/from16 v19, v3

    move-object/from16 v20, v4

    new-instance v3, Lru/localscribe/core/Resampler$Kernel;

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->sum([D)D

    move-result-wide v11

    invoke-direct {v3, v8, v10, v11, v12}, Lru/localscribe/core/Resampler$Kernel;-><init>(I[DD)V

    nop

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_4

    :cond_4
    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v3, v20

    :goto_4
    nop

    check-cast v3, Lru/localscribe/core/Resampler$Kernel;

    return-object v3
.end method

.method public static synthetic push$default(Lru/localscribe/core/Resampler;[FZILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/core/Resampler;->push([FZ)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final push([FZ)[F
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "input"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lru/localscribe/core/Resampler;->buffer:[F

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->plus([F[F)[F

    move-result-object v2

    iput-object v2, v0, Lru/localscribe/core/Resampler;->buffer:[F

    iget-wide v2, v0, Lru/localscribe/core/Resampler;->received:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lru/localscribe/core/Resampler;->received:J

    const-wide/16 v2, 0x0

    iget-wide v4, v0, Lru/localscribe/core/Resampler;->received:J

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget v6, v0, Lru/localscribe/core/Resampler;->radius:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    :goto_0
    iget v6, v0, Lru/localscribe/core/Resampler;->targetRate:I

    int-to-long v6, v6

    mul-long/2addr v6, v4

    iget v8, v0, Lru/localscribe/core/Resampler;->sourceRate:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iget v10, v0, Lru/localscribe/core/Resampler;->sourceRate:I

    int-to-long v10, v10

    div-long/2addr v6, v10

    iget-wide v10, v0, Lru/localscribe/core/Resampler;->produced:J

    sub-long v10, v6, v10

    invoke-static {v10, v11, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [F

    const/4 v3, 0x0

    array-length v10, v2

    :goto_1
    if-ge v3, v10, :cond_4

    iget-wide v11, v0, Lru/localscribe/core/Resampler;->produced:J

    long-to-double v11, v11

    iget v13, v0, Lru/localscribe/core/Resampler;->sourceRate:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    iget v13, v0, Lru/localscribe/core/Resampler;->targetRate:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-long v13, v13

    move-wide v15, v8

    long-to-double v8, v13

    sub-double v8, v11, v8

    invoke-direct {v0, v8, v9}, Lru/localscribe/core/Resampler;->kernel(D)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v8

    const-wide/16 v17, 0x0

    const/4 v9, 0x0

    move-wide/from16 v19, v15

    invoke-virtual {v8}, Lru/localscribe/core/Resampler$Kernel;->getWeights()[D

    move-result-object v15

    array-length v15, v15

    :goto_2
    if-ge v9, v15, :cond_3

    invoke-virtual {v8}, Lru/localscribe/core/Resampler$Kernel;->getFirst()I

    move-result v1

    move-object/from16 v16, v2

    int-to-long v1, v1

    add-long/2addr v1, v13

    move-wide/from16 v21, v1

    int-to-long v1, v9

    add-long v1, v21, v1

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lru/localscribe/core/Resampler;->base:J

    sub-long v1, v21, v1

    long-to-int v1, v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lru/localscribe/core/Resampler;->buffer:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_2

    iget-object v2, v0, Lru/localscribe/core/Resampler;->buffer:[F

    aget v2, v2, v1

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_4
    move/from16 v21, v1

    float-to-double v1, v2

    invoke-virtual {v8}, Lru/localscribe/core/Resampler$Kernel;->getWeights()[D

    move-result-object v22

    aget-wide v23, v22, v9

    mul-double v1, v1, v23

    add-double v17, v17, v1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    invoke-virtual {v8}, Lru/localscribe/core/Resampler$Kernel;->getNormalization()D

    move-result-wide v1

    div-double v1, v17, v1

    double-to-float v1, v1

    aput v1, v16, v3

    iget-wide v1, v0, Lru/localscribe/core/Resampler;->produced:J

    add-long v1, v1, v19

    iput-wide v1, v0, Lru/localscribe/core/Resampler;->produced:J

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-wide/from16 v8, v19

    goto :goto_1

    :cond_4
    move-object/from16 v16, v2

    move-wide/from16 v19, v8

    iget-wide v1, v0, Lru/localscribe/core/Resampler;->produced:J

    iget v3, v0, Lru/localscribe/core/Resampler;->sourceRate:I

    int-to-long v8, v3

    mul-long/2addr v1, v8

    iget v3, v0, Lru/localscribe/core/Resampler;->targetRate:I

    int-to-long v8, v3

    div-long/2addr v1, v8

    iget v3, v0, Lru/localscribe/core/Resampler;->radius:I

    int-to-long v8, v3

    sub-long/2addr v1, v8

    sub-long v1, v1, v19

    iget-wide v8, v0, Lru/localscribe/core/Resampler;->base:J

    invoke-static {v1, v2, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    iget-wide v8, v0, Lru/localscribe/core/Resampler;->received:J

    invoke-static {v1, v2, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v1

    nop

    iget-wide v8, v0, Lru/localscribe/core/Resampler;->base:J

    sub-long v8, v1, v8

    long-to-int v3, v8

    iget-object v8, v0, Lru/localscribe/core/Resampler;->buffer:[F

    iget-object v9, v0, Lru/localscribe/core/Resampler;->buffer:[F

    array-length v9, v9

    invoke-static {v8, v3, v9}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v8

    iput-object v8, v0, Lru/localscribe/core/Resampler;->buffer:[F

    iput-wide v1, v0, Lru/localscribe/core/Resampler;->base:J

    return-object v16
.end method
