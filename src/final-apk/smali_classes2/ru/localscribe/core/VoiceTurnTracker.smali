.class public final Lru/localscribe/core/VoiceTurnTracker;
.super Ljava/lang/Object;
.source "VoiceTurnTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/VoiceTurnTracker$Pending;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0016J\u001c\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00052\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\tR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lru/localscribe/core/VoiceTurnTracker;",
        "",
        "<init>",
        "()V",
        "value",
        "Lru/localscribe/core/SpeakerCluster$Match;",
        "current",
        "getCurrent",
        "()Lru/localscribe/core/SpeakerCluster$Match;",
        "",
        "embedding",
        "getEmbedding",
        "()[F",
        "pending",
        "Lru/localscribe/core/VoiceTurnTracker$Pending;",
        "observe",
        "",
        "observation",
        "Lru/localscribe/core/SessionSpeakers$Observation;",
        "voice",
        "start",
        "end",
        "(Lru/localscribe/core/SessionSpeakers$Observation;[FJJ)Ljava/lang/Long;",
        "reset",
        "",
        "next",
        "Pending",
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
.field private current:Lru/localscribe/core/SpeakerCluster$Match;

.field private embedding:[F

.field private pending:Lru/localscribe/core/VoiceTurnTracker$Pending;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    return-void
.end method

.method public static synthetic reset$default(Lru/localscribe/core/VoiceTurnTracker;Lru/localscribe/core/SpeakerCluster$Match;[FILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance v0, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/localscribe/core/VoiceTurnTracker;->reset(Lru/localscribe/core/SpeakerCluster$Match;[F)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Lru/localscribe/core/SpeakerCluster$Match;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    return-object v0
.end method

.method public final getEmbedding()[F
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/VoiceTurnTracker;->embedding:[F

    return-object v0
.end method

.method public final observe(Lru/localscribe/core/SessionSpeakers$Observation;[FJJ)Ljava/lang/Long;
    .locals 10

    const-string v0, "observation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/localscribe/core/SessionSpeakers$Observation;->getMatch()Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v0

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "copyOf(...)"

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getProvisional()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->pending:Lru/localscribe/core/VoiceTurnTracker$Pending;

    invoke-virtual {p1}, Lru/localscribe/core/SessionSpeakers$Observation;->getSince()J

    move-result-wide v4

    cmp-long v2, v4, p3

    if-gez v2, :cond_2

    invoke-virtual {p1}, Lru/localscribe/core/SessionSpeakers$Observation;->getSince()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lru/localscribe/core/VoiceTurnTracker$Pending;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lru/localscribe/core/VoiceTurnTracker$Pending;->getObservedAt()J

    move-result-wide v4

    sub-long v4, p5, v4

    const-wide/16 v6, 0x1f40

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Lru/localscribe/core/VoiceTurnTracker$Pending;->getSince()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lru/localscribe/core/VoiceTurnTracker$Pending;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v4, Lru/localscribe/core/VoiceTurnTracker$Pending;

    invoke-virtual {v0}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lru/localscribe/core/SessionSpeakers$Observation;->getSince()J

    move-result-wide v6

    move-wide v8, p5

    invoke-direct/range {v4 .. v9}, Lru/localscribe/core/VoiceTurnTracker$Pending;-><init>(Ljava/lang/String;JJ)V

    iput-object v4, p0, Lru/localscribe/core/VoiceTurnTracker;->pending:Lru/localscribe/core/VoiceTurnTracker$Pending;

    :cond_6
    return-object v3

    :cond_7
    :goto_2
    iput-object v0, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    if-eqz p2, :cond_8

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v1, v3

    :goto_3
    iput-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->embedding:[F

    iput-object v3, p0, Lru/localscribe/core/VoiceTurnTracker;->pending:Lru/localscribe/core/VoiceTurnTracker$Pending;

    return-object v3

    :cond_9
    :goto_4
    iget-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    if-eqz p2, :cond_a

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->embedding:[F

    :cond_a
    iput-object v3, p0, Lru/localscribe/core/VoiceTurnTracker;->pending:Lru/localscribe/core/VoiceTurnTracker$Pending;

    return-object v3
.end method

.method public final reset(Lru/localscribe/core/SpeakerCluster$Match;[F)V
    .locals 3

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/localscribe/core/VoiceTurnTracker;->current:Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lru/localscribe/core/VoiceTurnTracker;->embedding:[F

    iput-object v0, p0, Lru/localscribe/core/VoiceTurnTracker;->pending:Lru/localscribe/core/VoiceTurnTracker$Pending;

    return-void
.end method
