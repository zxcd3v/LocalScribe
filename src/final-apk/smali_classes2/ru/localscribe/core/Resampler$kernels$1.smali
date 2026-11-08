.class public final Lru/localscribe/core/Resampler$kernels$1;
.super Ljava/util/LinkedHashMap;
.source "Resampler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/core/Resampler;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Double;",
        "Lru/localscribe/core/Resampler$Kernel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\'\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "ru/localscribe/core/Resampler$kernels$1",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lru/localscribe/core/Resampler$Kernel;",
        "Lkotlin/collections/LinkedHashMap;",
        "removeEldestEntry",
        "",
        "eldest",
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


# direct methods
.method constructor <init>()V
    .locals 3

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x200

    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public bridge containsKey(Ljava/lang/Double;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lru/localscribe/core/Resampler$kernels$1;->containsKey(Ljava/lang/Double;)Z

    move-result v0

    return v0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lru/localscribe/core/Resampler$Kernel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lru/localscribe/core/Resampler$Kernel;

    invoke-virtual {p0, v0}, Lru/localscribe/core/Resampler$kernels$1;->containsValue(Lru/localscribe/core/Resampler$Kernel;)Z

    move-result v0

    return v0
.end method

.method public bridge containsValue(Lru/localscribe/core/Resampler$Kernel;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Lru/localscribe/core/Resampler$Kernel;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lru/localscribe/core/Resampler$kernels$1;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lru/localscribe/core/Resampler$kernels$1;->get(Ljava/lang/Double;)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge get(Ljava/lang/Double;)Lru/localscribe/core/Resampler$Kernel;
    .locals 1

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/Resampler$Kernel;

    return-object v0
.end method

.method public final bridge get(Ljava/lang/Object;)Lru/localscribe/core/Resampler$Kernel;
    .locals 1

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lru/localscribe/core/Resampler$kernels$1;->get(Ljava/lang/Double;)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Lru/localscribe/core/Resampler$Kernel;",
            ">;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v1, p2

    check-cast v1, Lru/localscribe/core/Resampler$Kernel;

    invoke-virtual {p0, v0, v1}, Lru/localscribe/core/Resampler$kernels$1;->getOrDefault(Ljava/lang/Double;Lru/localscribe/core/Resampler$Kernel;)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge getOrDefault(Ljava/lang/Double;Lru/localscribe/core/Resampler$Kernel;)Lru/localscribe/core/Resampler$Kernel;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/Resampler$Kernel;

    return-object v0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Lru/localscribe/core/Resampler$Kernel;)Lru/localscribe/core/Resampler$Kernel;
    .locals 1

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0, p2}, Lru/localscribe/core/Resampler$kernels$1;->getOrDefault(Ljava/lang/Double;Lru/localscribe/core/Resampler$Kernel;)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lru/localscribe/core/Resampler$Kernel;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lru/localscribe/core/Resampler$kernels$1;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lru/localscribe/core/Resampler$kernels$1;->remove(Ljava/lang/Double;)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Ljava/lang/Double;)Lru/localscribe/core/Resampler$Kernel;
    .locals 1

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/Resampler$Kernel;

    return-object v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Lru/localscribe/core/Resampler$Kernel;
    .locals 1

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lru/localscribe/core/Resampler$kernels$1;->remove(Ljava/lang/Double;)Lru/localscribe/core/Resampler$Kernel;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Ljava/lang/Double;Lru/localscribe/core/Resampler$Kernel;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p2, Lru/localscribe/core/Resampler$Kernel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v1, p2

    check-cast v1, Lru/localscribe/core/Resampler$Kernel;

    invoke-virtual {p0, v0, v1}, Lru/localscribe/core/Resampler$kernels$1;->remove(Ljava/lang/Double;Lru/localscribe/core/Resampler$Kernel;)Z

    move-result v0

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Lru/localscribe/core/Resampler$Kernel;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lru/localscribe/core/Resampler$kernels$1;->size()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/core/Resampler$kernels$1;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lru/localscribe/core/Resampler$Kernel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lru/localscribe/core/Resampler$kernels$1;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
