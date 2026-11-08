.class final Lru/localscribe/audio/WaveformDiarization$Event;
.super Ljava/lang/Object;
.source "WaveformPeaks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/audio/WaveformDiarization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J3\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lru/localscribe/audio/WaveformDiarization$Event;",
        "",
        "at",
        "",
        "speaker",
        "",
        "delta",
        "",
        "overlap",
        "<init>",
        "(JLjava/lang/String;II)V",
        "getAt",
        "()J",
        "getSpeaker",
        "()Ljava/lang/String;",
        "getDelta",
        "()I",
        "getOverlap",
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


# instance fields
.field private final at:J

.field private final delta:I

.field private final overlap:I

.field private final speaker:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    iput-object p3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    iput p4, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    iput p5, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/audio/WaveformDiarization$Event;JLjava/lang/String;IIILjava/lang/Object;)Lru/localscribe/audio/WaveformDiarization$Event;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget p4, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    :cond_2
    move v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget p5, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    :cond_3
    move-object v0, p0

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lru/localscribe/audio/WaveformDiarization$Event;->copy(JLjava/lang/String;II)Lru/localscribe/audio/WaveformDiarization$Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    return v0
.end method

.method public final copy(JLjava/lang/String;II)Lru/localscribe/audio/WaveformDiarization$Event;
    .locals 6

    new-instance v0, Lru/localscribe/audio/WaveformDiarization$Event;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lru/localscribe/audio/WaveformDiarization$Event;-><init>(JLjava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/audio/WaveformDiarization$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/audio/WaveformDiarization$Event;

    iget-wide v3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    iget-wide v5, v1, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    iget v4, v1, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    iget v1, v1, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAt()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    return-wide v0
.end method

.method public final getDelta()I
    .locals 1

    iget v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    return v0
.end method

.method public final getOverlap()I
    .locals 1

    iget v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    return v0
.end method

.method public final getSpeaker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lru/localscribe/audio/WaveformDiarization$Event;->at:J

    iget-object v2, p0, Lru/localscribe/audio/WaveformDiarization$Event;->speaker:Ljava/lang/String;

    iget v3, p0, Lru/localscribe/audio/WaveformDiarization$Event;->delta:I

    iget v4, p0, Lru/localscribe/audio/WaveformDiarization$Event;->overlap:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event(at="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
