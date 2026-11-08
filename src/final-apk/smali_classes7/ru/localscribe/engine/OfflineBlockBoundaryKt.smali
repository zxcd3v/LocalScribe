.class public final Lru/localscribe/engine/OfflineBlockBoundaryKt;
.super Ljava/lang/Object;
.source "OfflineBlockBoundary.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineBlockBoundary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineBlockBoundary.kt\nru/localscribe/engine/OfflineBlockBoundaryKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n1740#2,3:19\n*S KotlinDebug\n*F\n+ 1 OfflineBlockBoundary.kt\nru/localscribe/engine/OfflineBlockBoundaryKt\n*L\n9#1:19,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "offlineBlockEnd",
        "",
        "samples",
        "",
        "hasFollowingAudio",
        "",
        "app_debug"
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
.method public static final offlineBlockEnd([FZ)I
    .locals 7

    const-string v0, "samples"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    array-length v0, p0

    const/16 v1, 0x3e80

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x280

    const v2, 0x3c03126f    # 0.008f

    array-length v3, p0

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    array-length v4, p0

    invoke-static {p0, v2, v3, v4}, Lru/localscribe/engine/OfflineBlockBoundaryKt;->offlineBlockEnd$quiet([FFII)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v1, p0

    return v1

    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v1

    add-int/2addr v3, v0

    array-length v1, p0

    sub-int/2addr v1, v0

    move v4, v1

    const/16 v5, -0x140

    invoke-static {v1, v3, v5}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v1

    if-gt v1, v4, :cond_3

    :goto_0
    sub-int v5, v4, v0

    add-int v6, v4, v0

    invoke-static {p0, v2, v5, v6}, Lru/localscribe/engine/OfflineBlockBoundaryKt;->offlineBlockEnd$quiet([FFII)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    if-eq v4, v1, :cond_3

    add-int/lit16 v4, v4, -0x140

    goto :goto_0

    :cond_3
    array-length v1, p0

    return v1

    :cond_4
    :goto_1
    array-length v0, p0

    return v0
.end method

.method private static final offlineBlockEnd$quiet([FFII)Z
    .locals 9

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    move v5, v4

    const/4 v6, 0x0

    aget v7, p0, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, p1

    const/4 v8, 0x0

    if-gtz v7, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v8

    :goto_0
    if-nez v5, :cond_1

    move v3, v8

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v3
.end method
