.class public final Lru/localscribe/ux/UxFollow;
.super Ljava/lang/Object;
.source "UxFollow.smali"

.method public static shouldScroll(Landroidx/compose/foundation/lazy/LazyListState;I)Z
    .locals 9
    if-ltz p1, :visible
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    move-result-object v0
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I
    move-result v1
    if-eqz v1, :scroll
    if-ge p1, v1, :visible
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
    :next
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :scroll
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I
    move-result v4
    if-ne v4, p1, :next
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I
    move-result v4
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I
    move-result v5
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportStartOffset()I
    move-result v6
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportEndOffset()I
    move-result v7
    if-lt v4, v6, :scroll
    sub-int v8, v7, v6
    if-le v5, v8, :check_bottom
    if-eq v4, v6, :visible
    :check_bottom
    add-int/2addr v5, v4
    if-gt v5, v7, :scroll
    :visible
    const/4 v0, 0x0
    return v0
    :scroll
    const/4 v0, 0x1
    return v0
.end method
