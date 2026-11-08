.class public final Lru/localscribe/core/DialogueTurns$WordRange;
.super Ljava/lang/Object;
.source "DialogueTurns.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/core/DialogueTurns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordRange"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lru/localscribe/core/DialogueTurns$WordRange;",
        "",
        "from",
        "",
        "until",
        "startMs",
        "",
        "endMs",
        "<init>",
        "(IIJJ)V",
        "getFrom",
        "()I",
        "getUntil",
        "getStartMs",
        "()J",
        "getEndMs",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final endMs:J

.field private final from:I

.field private final startMs:J

.field private final until:I


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    iput p2, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    iput-wide p3, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    iput-wide p5, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/core/DialogueTurns$WordRange;IIJJILjava/lang/Object;)Lru/localscribe/core/DialogueTurns$WordRange;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-wide p3, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    iget-wide p5, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    :cond_3
    move-wide p7, p5

    move-wide p5, p3

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lru/localscribe/core/DialogueTurns$WordRange;->copy(IIJJ)Lru/localscribe/core/DialogueTurns$WordRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    return-wide v0
.end method

.method public final copy(IIJJ)Lru/localscribe/core/DialogueTurns$WordRange;
    .locals 7

    new-instance v0, Lru/localscribe/core/DialogueTurns$WordRange;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lru/localscribe/core/DialogueTurns$WordRange;-><init>(IIJJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/DialogueTurns$WordRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/DialogueTurns$WordRange;

    iget v3, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    iget v4, v1, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    iget v4, v1, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    iget-wide v5, v1, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    iget-wide v5, v1, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEndMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    return-wide v0
.end method

.method public final getFrom()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    return v0
.end method

.method public final getStartMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    return-wide v0
.end method

.method public final getUntil()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lru/localscribe/core/DialogueTurns$WordRange;->from:I

    iget v1, p0, Lru/localscribe/core/DialogueTurns$WordRange;->until:I

    iget-wide v2, p0, Lru/localscribe/core/DialogueTurns$WordRange;->startMs:J

    iget-wide v4, p0, Lru/localscribe/core/DialogueTurns$WordRange;->endMs:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WordRange(from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", until="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
