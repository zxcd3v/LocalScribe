.class public final Lru/localscribe/core/SpeakerCluster$Companion;
.super Ljava/lang/Object;
.source "SpeakerCluster.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/core/SpeakerCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeakerCluster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeakerCluster.kt\nru/localscribe/core/SpeakerCluster$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1#2:247\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Lru/localscribe/core/SpeakerCluster$Companion;",
        "",
        "<init>",
        "()V",
        "normalize",
        "",
        "x",
        "cosine",
        "",
        "a",
        "b",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/core/SpeakerCluster$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final cosine([F[F)F
    .locals 12

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getIndices([F)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    nop

    const/4 v7, 0x0

    aget v8, v0, v6

    float-to-double v8, v8

    aget v10, v2, v6

    float-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    goto :goto_1

    :cond_3
    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    return v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final normalize([F)[F
    .locals 11

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aget v5, p1, v4

    nop

    const/4 v6, 0x0

    float-to-double v7, v5

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v0, v4

    if-gez v2, :cond_2

    goto :goto_3

    :cond_2
    array-length v2, p1

    new-array v4, v2, [F

    :goto_2
    if-ge v3, v2, :cond_4

    aget v5, p1, v3

    float-to-double v5, v5

    div-double/2addr v5, v0

    double-to-float v5, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v4, 0x0

    :cond_4
    return-object v4
.end method
