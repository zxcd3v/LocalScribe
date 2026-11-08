.class public final Lru/localscribe/integration/RecordingBridge$Snapshot;
.super Ljava/lang/Object;
.source "RecordingBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/integration/RecordingBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final elapsed:J

.field public final id:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final paused:Z

.field public final preparing:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    iput-wide p2, p0, Lru/localscribe/integration/RecordingBridge$Snapshot;->elapsed:J

    iput-boolean p4, p0, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    iput-boolean p5, p0, Lru/localscribe/integration/RecordingBridge$Snapshot;->preparing:Z

    iput-object p6, p0, Lru/localscribe/integration/RecordingBridge$Snapshot;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public timer()Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lru/localscribe/integration/RecordingBridge$Snapshot;->elapsed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-wide/16 v3, 0xe10

    div-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x3c

    div-long v6, v0, v4

    rem-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    rem-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d:%02d:%02d"

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
