.class public final Lru/localscribe/audio/WaveformInterval;
.super Ljava/lang/Object;
.source "WaveformPeaks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J3\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lru/localscribe/audio/WaveformInterval;",
        "",
        "startMs",
        "",
        "endMs",
        "speakerId",
        "",
        "overlap",
        "",
        "<init>",
        "(JJLjava/lang/String;Z)V",
        "getStartMs",
        "()J",
        "getEndMs",
        "getSpeakerId",
        "()Ljava/lang/String;",
        "getOverlap",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "app_debug"
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
.field public static final $stable:I


# instance fields
.field private final endMs:J

.field private final overlap:Z

.field private final speakerId:Ljava/lang/String;

.field private final startMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    iput-wide p3, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    iput-object p5, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    iput-boolean p6, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/audio/WaveformInterval;JJLjava/lang/String;ZILjava/lang/Object;)Lru/localscribe/audio/WaveformInterval;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-boolean p6, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    :cond_3
    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lru/localscribe/audio/WaveformInterval;->copy(JJLjava/lang/String;Z)Lru/localscribe/audio/WaveformInterval;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    return v0
.end method

.method public final copy(JJLjava/lang/String;Z)Lru/localscribe/audio/WaveformInterval;
    .locals 7

    new-instance v0, Lru/localscribe/audio/WaveformInterval;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lru/localscribe/audio/WaveformInterval;-><init>(JJLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/audio/WaveformInterval;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/audio/WaveformInterval;

    iget-wide v3, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    iget-wide v5, v1, Lru/localscribe/audio/WaveformInterval;->startMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    iget-wide v5, v1, Lru/localscribe/audio/WaveformInterval;->endMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    iget-boolean v1, v1, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEndMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    return-wide v0
.end method

.method public final getOverlap()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    return v0
.end method

.method public final getSpeakerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lru/localscribe/audio/WaveformInterval;->startMs:J

    iget-wide v2, p0, Lru/localscribe/audio/WaveformInterval;->endMs:J

    iget-object v4, p0, Lru/localscribe/audio/WaveformInterval;->speakerId:Ljava/lang/String;

    iget-boolean v5, p0, Lru/localscribe/audio/WaveformInterval;->overlap:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WaveformInterval(startMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
