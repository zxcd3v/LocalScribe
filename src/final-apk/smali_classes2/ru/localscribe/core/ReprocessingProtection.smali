.class public final Lru/localscribe/core/ReprocessingProtection;
.super Ljava/lang/Object;
.source "ReprocessingProtection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/ReprocessingProtection$Interval;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReprocessingProtection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReprocessingProtection.kt\nru/localscribe/core/ReprocessingProtection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,21:1\n1056#2:22\n*S KotlinDebug\n*F\n+ 1 ReprocessingProtection.kt\nru/localscribe/core/ReprocessingProtection\n*L\n10#1:22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lru/localscribe/core/ReprocessingProtection;",
        "",
        "<init>",
        "()V",
        "windows",
        "",
        "Lru/localscribe/core/ReprocessingProtection$Interval;",
        "intervals",
        "Interval",
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
.field public static final INSTANCE:Lru/localscribe/core/ReprocessingProtection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/ReprocessingProtection;

    invoke-direct {v0}, Lru/localscribe/core/ReprocessingProtection;-><init>()V

    sput-object v0, Lru/localscribe/core/ReprocessingProtection;->INSTANCE:Lru/localscribe/core/ReprocessingProtection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final windows(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/ReprocessingProtection$Interval;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/core/ReprocessingProtection$Interval;",
            ">;"
        }
    .end annotation

    const-string v0, "intervals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    new-instance v4, Lru/localscribe/core/ReprocessingProtection$windows$$inlined$sortedBy$1;

    invoke-direct {v4}, Lru/localscribe/core/ReprocessingProtection$windows$$inlined$sortedBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/core/ReprocessingProtection$Interval;

    move-object v6, v1

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lru/localscribe/core/ReprocessingProtection$Interval;->getStartMs()J

    move-result-wide v7

    invoke-virtual {v6}, Lru/localscribe/core/ReprocessingProtection$Interval;->getEndMs()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v6}, Lru/localscribe/core/ReprocessingProtection$Interval;->getEndMs()J

    move-result-wide v7

    invoke-virtual {v3}, Lru/localscribe/core/ReprocessingProtection$Interval;->getEndMs()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v6}, Lru/localscribe/core/ReprocessingProtection$Interval;->getCorrected()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lru/localscribe/core/ReprocessingProtection$Interval;->getCorrected()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v11, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v4

    :goto_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v6 .. v13}, Lru/localscribe/core/ReprocessingProtection$Interval;->copy$default(Lru/localscribe/core/ReprocessingProtection$Interval;JJZILjava/lang/Object;)Lru/localscribe/core/ReprocessingProtection$Interval;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lru/localscribe/core/ReprocessingProtection$Interval;->getCorrected()Z

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v3

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lru/localscribe/core/ReprocessingProtection$Interval;->getCorrected()Z

    move-result v2

    if-ne v2, v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    if-eqz v4, :cond_8

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method
