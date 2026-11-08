.class public final Lru/localscribe/core/ReprocessingProtection$Interval;
.super Ljava/lang/Object;
.source "ReprocessingProtection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/core/ReprocessingProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interval"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lru/localscribe/core/ReprocessingProtection$Interval;",
        "",
        "startMs",
        "",
        "endMs",
        "corrected",
        "",
        "<init>",
        "(JJZ)V",
        "getStartMs",
        "()J",
        "getEndMs",
        "getCorrected",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final corrected:Z

.field private final endMs:J

.field private final startMs:J


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    iput-wide p3, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    iput-boolean p5, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    return-void
.end method

.method public synthetic constructor <init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lru/localscribe/core/ReprocessingProtection$Interval;-><init>(JJZ)V

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/core/ReprocessingProtection$Interval;JJZILjava/lang/Object;)Lru/localscribe/core/ReprocessingProtection$Interval;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-boolean p5, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    :cond_2
    move-object v0, p0

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lru/localscribe/core/ReprocessingProtection$Interval;->copy(JJZ)Lru/localscribe/core/ReprocessingProtection$Interval;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    return v0
.end method

.method public final copy(JJZ)Lru/localscribe/core/ReprocessingProtection$Interval;
    .locals 6

    new-instance v0, Lru/localscribe/core/ReprocessingProtection$Interval;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lru/localscribe/core/ReprocessingProtection$Interval;-><init>(JJZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/ReprocessingProtection$Interval;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/ReprocessingProtection$Interval;

    iget-wide v3, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    iget-wide v5, v1, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    iget-wide v5, v1, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    iget-boolean v1, v1, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCorrected()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    return v0
.end method

.method public final getEndMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    return-wide v0
.end method

.method public final getStartMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->startMs:J

    iget-wide v2, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->endMs:J

    iget-boolean v4, p0, Lru/localscribe/core/ReprocessingProtection$Interval;->corrected:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interval(startMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corrected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
