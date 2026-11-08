.class public final Lru/localscribe/data/TranscriptPage;
.super Ljava/lang/Object;
.source "TranscriptPage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00132\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lru/localscribe/data/TranscriptPage;",
        "",
        "transcript",
        "Lru/localscribe/core/Transcript;",
        "total",
        "",
        "offset",
        "size",
        "visibleCount",
        "<init>",
        "(Lru/localscribe/core/Transcript;IIII)V",
        "getTranscript",
        "()Lru/localscribe/core/Transcript;",
        "getTotal",
        "()I",
        "getOffset",
        "getSize",
        "getVisibleCount",
        "hasPrevious",
        "",
        "getHasPrevious",
        "()Z",
        "hasNext",
        "getHasNext",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final offset:I

.field private final size:I

.field private final total:I

.field private final transcript:Lru/localscribe/core/Transcript;

.field private final visibleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/TranscriptPage;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/core/Transcript;IIII)V
    .locals 1
    .param p1, "transcript"    # Lru/localscribe/core/Transcript;
    .param p2, "total"    # I
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "visibleCount"    # I

    const-string v0, "transcript"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    .line 14
    iput p2, p0, Lru/localscribe/data/TranscriptPage;->total:I

    .line 15
    iput p3, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    .line 16
    iput p4, p0, Lru/localscribe/data/TranscriptPage;->size:I

    .line 17
    iput p5, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lru/localscribe/core/Transcript;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 16
    const/16 p4, 0x64

    move v4, p4

    goto :goto_0

    .line 12
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 17
    invoke-virtual {p1}, Lru/localscribe/core/Transcript;->getSegments()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    move v5, p5

    goto :goto_1

    .line 12
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lru/localscribe/data/TranscriptPage;-><init>(Lru/localscribe/core/Transcript;IIII)V

    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/data/TranscriptPage;Lru/localscribe/core/Transcript;IIIIILjava/lang/Object;)Lru/localscribe/data/TranscriptPage;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lru/localscribe/data/TranscriptPage;->total:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lru/localscribe/data/TranscriptPage;->size:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lru/localscribe/data/TranscriptPage;->copy(Lru/localscribe/core/Transcript;IIII)Lru/localscribe/data/TranscriptPage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/localscribe/core/Transcript;
    .locals 1

    iget-object v0, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/localscribe/data/TranscriptPage;->total:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lru/localscribe/data/TranscriptPage;->size:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    return v0
.end method

.method public final copy(Lru/localscribe/core/Transcript;IIII)Lru/localscribe/data/TranscriptPage;
    .locals 7

    const-string v0, "transcript"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/data/TranscriptPage;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lru/localscribe/data/TranscriptPage;-><init>(Lru/localscribe/core/Transcript;IIII)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/data/TranscriptPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/data/TranscriptPage;

    iget-object v3, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    iget-object v4, v1, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lru/localscribe/data/TranscriptPage;->total:I

    iget v4, v1, Lru/localscribe/data/TranscriptPage;->total:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    iget v4, v1, Lru/localscribe/data/TranscriptPage;->offset:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lru/localscribe/data/TranscriptPage;->size:I

    iget v4, v1, Lru/localscribe/data/TranscriptPage;->size:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    iget v1, v1, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    if-eq v3, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getHasNext()Z
    .locals 2

    .line 23
    iget v0, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    iget v1, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lru/localscribe/data/TranscriptPage;->total:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasPrevious()Z
    .locals 1

    .line 20
    iget v0, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 15
    iget v0, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 16
    iget v0, p0, Lru/localscribe/data/TranscriptPage;->size:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    .line 14
    iget v0, p0, Lru/localscribe/data/TranscriptPage;->total:I

    return v0
.end method

.method public final getTranscript()Lru/localscribe/core/Transcript;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    return-object v0
.end method

.method public final getVisibleCount()I
    .locals 1

    .line 17
    iget v0, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    invoke-virtual {v0}, Lru/localscribe/core/Transcript;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/data/TranscriptPage;->total:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/data/TranscriptPage;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lru/localscribe/data/TranscriptPage;->transcript:Lru/localscribe/core/Transcript;

    iget v1, p0, Lru/localscribe/data/TranscriptPage;->total:I

    iget v2, p0, Lru/localscribe/data/TranscriptPage;->offset:I

    iget v3, p0, Lru/localscribe/data/TranscriptPage;->size:I

    iget v4, p0, Lru/localscribe/data/TranscriptPage;->visibleCount:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TranscriptPage(transcript="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", total="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visibleCount="

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
