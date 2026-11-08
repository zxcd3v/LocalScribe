.class public final Lru/localscribe/engine/ContextAsrWindowKt;
.super Ljava/lang/Object;
.source "ContextAsrWindow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a&\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "contextAsrWindows",
        "",
        "Lru/localscribe/engine/ContextAsrWindow;",
        "blockSize",
        "",
        "coreStart",
        "contextSize",
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
.method public static final contextAsrWindows(III)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lru/localscribe/engine/ContextAsrWindow;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    add-int v1, p1, p0

    if-lt p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p0, :cond_1

    const v5, 0x2ee00

    add-int/2addr v5, v4

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v6, Lru/localscribe/engine/ContextAsrWindow;

    add-int v7, p1, v4

    add-int/lit16 v7, v7, -0x5dc0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, p1, v5

    add-int/lit16 v8, v8, 0x5dc0

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v6, v4, v5, v7, v8}, Lru/localscribe/engine/ContextAsrWindow;-><init>(IIII)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_1

    :cond_1
    nop

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
