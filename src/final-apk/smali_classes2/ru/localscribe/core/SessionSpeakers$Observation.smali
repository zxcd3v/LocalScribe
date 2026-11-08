.class public final Lru/localscribe/core/SessionSpeakers$Observation;
.super Ljava/lang/Object;
.source "SessionSpeakers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/core/SessionSpeakers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Observation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lru/localscribe/core/SessionSpeakers$Observation;",
        "",
        "match",
        "Lru/localscribe/core/SpeakerCluster$Match;",
        "since",
        "",
        "<init>",
        "(Lru/localscribe/core/SpeakerCluster$Match;J)V",
        "getMatch",
        "()Lru/localscribe/core/SpeakerCluster$Match;",
        "getSince",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final match:Lru/localscribe/core/SpeakerCluster$Match;

.field private final since:J


# direct methods
.method public constructor <init>(Lru/localscribe/core/SpeakerCluster$Match;J)V
    .locals 1

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    iput-wide p2, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/core/SessionSpeakers$Observation;Lru/localscribe/core/SpeakerCluster$Match;JILjava/lang/Object;)Lru/localscribe/core/SessionSpeakers$Observation;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lru/localscribe/core/SessionSpeakers$Observation;->copy(Lru/localscribe/core/SpeakerCluster$Match;J)Lru/localscribe/core/SessionSpeakers$Observation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/localscribe/core/SpeakerCluster$Match;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    return-wide v0
.end method

.method public final copy(Lru/localscribe/core/SpeakerCluster$Match;J)Lru/localscribe/core/SessionSpeakers$Observation;
    .locals 1

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/localscribe/core/SessionSpeakers$Observation;

    invoke-direct {v0, p1, p2, p3}, Lru/localscribe/core/SessionSpeakers$Observation;-><init>(Lru/localscribe/core/SpeakerCluster$Match;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/SessionSpeakers$Observation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/SessionSpeakers$Observation;

    iget-object v3, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    iget-object v4, v1, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    iget-wide v5, v1, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMatch()Lru/localscribe/core/SpeakerCluster$Match;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    return-object v0
.end method

.method public final getSince()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lru/localscribe/core/SessionSpeakers$Observation;->match:Lru/localscribe/core/SpeakerCluster$Match;

    iget-wide v1, p0, Lru/localscribe/core/SessionSpeakers$Observation;->since:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observation(match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", since="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
