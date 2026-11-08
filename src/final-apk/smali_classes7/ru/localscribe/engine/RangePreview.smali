.class public final Lru/localscribe/engine/RangePreview;
.super Ljava/lang/Object;
.source "RangePreview.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J\u000f\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003Jk\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00082\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\u00a8\u0006+"
    }
    d2 = {
        "Lru/localscribe/engine/RangePreview;",
        "",
        "recordingId",
        "",
        "startMs",
        "",
        "endMs",
        "original",
        "",
        "Lru/localscribe/core/Segment;",
        "segments",
        "speakers",
        "Lru/localscribe/core/Speaker;",
        "fileSize",
        "fileModified",
        "<init>",
        "(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJ)V",
        "getRecordingId",
        "()Ljava/lang/String;",
        "getStartMs",
        "()J",
        "getEndMs",
        "getOriginal",
        "()Ljava/util/List;",
        "getSegments",
        "getSpeakers",
        "getFileSize",
        "getFileModified",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "",
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

.field private final fileModified:J

.field private final fileSize:J

.field private final original:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final recordingId:Ljava/lang/String;

.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final speakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation
.end field

.field private final startMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/RangePreview;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;JJ)V"
        }
    .end annotation

    const-string v0, "recordingId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "original"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segments"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speakers"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    iput-wide p2, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    iput-wide p4, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    iput-object p6, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    iput-object p7, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    iput-object p8, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    iput-wide p9, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    iput-wide p11, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/engine/RangePreview;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJILjava/lang/Object;)Lru/localscribe/engine/RangePreview;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-wide p2, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-wide p4, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p6, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p7, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p8, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-wide p9, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    :cond_6
    and-int/lit16 p13, p13, 0x80

    if-eqz p13, :cond_7

    iget-wide p11, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    :cond_7
    move-wide p13, p11

    move-wide p11, p9

    move-object p9, p7

    move-object p10, p8

    move-object p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p14}, Lru/localscribe/engine/RangePreview;->copy(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJ)Lru/localscribe/engine/RangePreview;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    return-wide v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    return-object v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJ)Lru/localscribe/engine/RangePreview;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;JJ)",
            "Lru/localscribe/engine/RangePreview;"
        }
    .end annotation

    const-string v0, "recordingId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "original"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segments"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speakers"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/engine/RangePreview;

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lru/localscribe/engine/RangePreview;-><init>(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;JJ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/engine/RangePreview;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/engine/RangePreview;

    iget-object v3, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    iget-wide v5, v1, Lru/localscribe/engine/RangePreview;->startMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    iget-wide v5, v1, Lru/localscribe/engine/RangePreview;->endMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    iget-wide v5, v1, Lru/localscribe/engine/RangePreview;->fileSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    iget-wide v5, v1, Lru/localscribe/engine/RangePreview;->fileModified:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getEndMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    return-wide v0
.end method

.method public final getFileModified()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    return-wide v0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    return-wide v0
.end method

.method public final getOriginal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    return-object v0
.end method

.method public final getRecordingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final getSpeakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    return-object v0
.end method

.method public final getStartMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lru/localscribe/engine/RangePreview;->recordingId:Ljava/lang/String;

    iget-wide v1, p0, Lru/localscribe/engine/RangePreview;->startMs:J

    iget-wide v3, p0, Lru/localscribe/engine/RangePreview;->endMs:J

    iget-object v5, p0, Lru/localscribe/engine/RangePreview;->original:Ljava/util/List;

    iget-object v6, p0, Lru/localscribe/engine/RangePreview;->segments:Ljava/util/List;

    iget-object v7, p0, Lru/localscribe/engine/RangePreview;->speakers:Ljava/util/List;

    iget-wide v8, p0, Lru/localscribe/engine/RangePreview;->fileSize:J

    iget-wide v10, p0, Lru/localscribe/engine/RangePreview;->fileModified:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RangePreview(recordingId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", startMs="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
