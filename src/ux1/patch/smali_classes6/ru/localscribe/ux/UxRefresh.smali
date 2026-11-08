.class public final Lru/localscribe/ux/UxRefresh;
.super Ljava/lang/Object;
.source "UxRefresh.smali"

# Signal the existing UI reader; do not alter stored transcripts or audio.
.method public static finished(Landroid/content/Context;)V
    .locals 7
    :try_start
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    check-cast v0, Lru/localscribe/ScribeApp;
    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;
    move-result-object v0
    invoke-virtual {v0}, Lru/localscribe/data/Repository;->getRevision()Lkotlinx/coroutines/flow/MutableStateFlow;
    move-result-object v0
    :retry
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;
    move-result-object v1
    move-object v6, v1
    check-cast v6, Ljava/lang/Number;
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J
    move-result-wide v2
    const-wide/16 v4, 0x1
    add-long/2addr v2, v4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v6
    invoke-interface {v0, v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :retry
    const-string v0, "LocalScribeUX"
    const-string v1, "transcript revision refreshed"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    return-void
    :failed
    move-exception v0
    const-string v1, "LocalScribeUX"
    const-string v2, "transcript refresh unavailable"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
