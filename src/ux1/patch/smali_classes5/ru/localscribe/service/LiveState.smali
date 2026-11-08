.class public final Lru/localscribe/service/LiveState;
.super Ljava/lang/Object;
.source "ServiceSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u001e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\'\u001a\u00020\u000eH\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003Jg\u0010)\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010*\u001a\u00020\u000b2\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020-H\u00d6\u0001J\t\u0010.\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0013\u00a8\u0006/"
    }
    d2 = {
        "Lru/localscribe/service/LiveState;",
        "",
        "recordingId",
        "",
        "elapsedMs",
        "",
        "level",
        "",
        "preliminary",
        "speakerId",
        "paused",
        "",
        "preparing",
        "lagSeconds",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;)V",
        "getRecordingId",
        "()Ljava/lang/String;",
        "getElapsedMs",
        "()J",
        "getLevel",
        "()F",
        "getPreliminary",
        "getSpeakerId",
        "getPaused",
        "()Z",
        "getPreparing",
        "getLagSeconds",
        "()D",
        "getMessage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
.field private final elapsedMs:J

.field private final lagSeconds:D

.field private final level:F

.field private final message:Ljava/lang/String;

.field private final paused:Z

.field private final preliminary:Ljava/lang/String;

.field private final preparing:Z

.field private final recordingId:Ljava/lang/String;

.field private final speakerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;)V
    .locals 1
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "elapsedMs"    # J
    .param p4, "level"    # F
    .param p5, "preliminary"    # Ljava/lang/String;
    .param p6, "speakerId"    # Ljava/lang/String;
    .param p7, "paused"    # Z
    .param p8, "preparing"    # Z
    .param p9, "lagSeconds"    # D
    .param p11, "message"    # Ljava/lang/String;

    const-string v0, "preliminary"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    .line 20
    iput p4, p0, Lru/localscribe/service/LiveState;->level:F

    .line 21
    iput-object p5, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    .line 23
    iput-boolean p7, p0, Lru/localscribe/service/LiveState;->paused:Z

    .line 24
    iput-boolean p8, p0, Lru/localscribe/service/LiveState;->preparing:Z

    .line 25
    iput-wide p9, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    .line 26
    iput-object p11, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 17
    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    .line 18
    move-object p1, v0

    .line 17
    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 19
    const-wide/16 p2, 0x0

    .line 17
    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 20
    const/4 p4, 0x0

    .line 17
    :cond_2
    and-int/lit8 p13, p12, 0x8

    const-string v1, ""

    if-eqz p13, :cond_3

    .line 21
    move-object p5, v1

    .line 17
    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 22
    move-object p6, v0

    .line 17
    :cond_4
    and-int/lit8 p13, p12, 0x20

    const/4 v0, 0x0

    if-eqz p13, :cond_5

    .line 23
    move p7, v0

    .line 17
    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 24
    move p8, v0

    .line 17
    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 25
    const-wide/16 p9, 0x0

    .line 17
    :cond_7
    and-int/lit16 p12, p12, 0x100

    if-eqz p12, :cond_8

    .line 26
    move-object p12, v1

    goto :goto_0

    .line 17
    :cond_8
    move-object p12, p11

    :goto_0
    move-wide p10, p9

    move p9, p8

    move p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p12}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;)V

    .line 27
    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/service/LiveState;Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILjava/lang/Object;)Lru/localscribe/service/LiveState;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-wide p2, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget p4, p0, Lru/localscribe/service/LiveState;->level:F

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p5, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p6, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-boolean p7, p0, Lru/localscribe/service/LiveState;->paused:Z

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-boolean p8, p0, Lru/localscribe/service/LiveState;->preparing:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-wide p9, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    :cond_7
    and-int/lit16 p12, p12, 0x100

    if-eqz p12, :cond_8

    iget-object p11, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    :cond_8
    move-object p13, p11

    move-wide p11, p9

    move p9, p7

    move p10, p8

    move-object p7, p5

    move-object p8, p6

    move p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lru/localscribe/service/LiveState;->copy(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;)Lru/localscribe/service/LiveState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    return-wide v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lru/localscribe/service/LiveState;->level:F

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/service/LiveState;->paused:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/service/LiveState;->preparing:Z

    return v0
.end method

.method public final component8()D
    .locals 2

    iget-wide v0, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    return-wide v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;)Lru/localscribe/service/LiveState;
    .locals 13

    const-string v0, "preliminary"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/service/LiveState;

    move-object v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/service/LiveState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/service/LiveState;

    iget-object v3, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    iget-wide v5, v1, Lru/localscribe/service/LiveState;->elapsedMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lru/localscribe/service/LiveState;->level:F

    iget v4, v1, Lru/localscribe/service/LiveState;->level:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lru/localscribe/service/LiveState;->paused:Z

    iget-boolean v4, v1, Lru/localscribe/service/LiveState;->paused:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lru/localscribe/service/LiveState;->preparing:Z

    iget-boolean v4, v1, Lru/localscribe/service/LiveState;->preparing:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    iget-wide v5, v1, Lru/localscribe/service/LiveState;->lagSeconds:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    iget-object v1, v1, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getElapsedMs()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    return-wide v0
.end method

.method public final getLagSeconds()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    return-wide v0
.end method

.method public final getLevel()F
    .locals 1

    .line 20
    iget v0, p0, Lru/localscribe/service/LiveState;->level:F

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaused()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lru/localscribe/service/LiveState;->paused:Z

    return v0
.end method

.method public final getPreliminary()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreparing()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lru/localscribe/service/LiveState;->preparing:Z

    return v0
.end method

.method public final getRecordingId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeakerId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget v3, p0, Lru/localscribe/service/LiveState;->level:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lru/localscribe/service/LiveState;->paused:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lru/localscribe/service/LiveState;->preparing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lru/localscribe/service/LiveState;->recordingId:Ljava/lang/String;

    iget-wide v1, p0, Lru/localscribe/service/LiveState;->elapsedMs:J

    iget v3, p0, Lru/localscribe/service/LiveState;->level:F

    iget-object v4, p0, Lru/localscribe/service/LiveState;->preliminary:Ljava/lang/String;

    iget-object v5, p0, Lru/localscribe/service/LiveState;->speakerId:Ljava/lang/String;

    iget-boolean v6, p0, Lru/localscribe/service/LiveState;->paused:Z

    iget-boolean v7, p0, Lru/localscribe/service/LiveState;->preparing:Z

    iget-wide v8, p0, Lru/localscribe/service/LiveState;->lagSeconds:D

    iget-object v10, p0, Lru/localscribe/service/LiveState;->message:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LiveState(recordingId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", elapsedMs="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preliminary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preparing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lagSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
