.class public final Lru/localscribe/analysis/SampleSpan;
.super Ljava/lang/Object;
.source "AnalysisMath.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0000J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ.\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lru/localscribe/analysis/SampleSpan;",
        "",
        "start",
        "",
        "end",
        "score",
        "",
        "<init>",
        "(IILjava/lang/Double;)V",
        "getStart",
        "()I",
        "getEnd",
        "getScore",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "intersects",
        "",
        "other",
        "component1",
        "component2",
        "component3",
        "copy",
        "(IILjava/lang/Double;)Lru/localscribe/analysis/SampleSpan;",
        "equals",
        "hashCode",
        "toString",
        "",
        "analysis"
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
.field private final end:I

.field private final score:Ljava/lang/Double;

.field private final start:I


# direct methods
.method public constructor <init>(IILjava/lang/Double;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    iput p2, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    iput-object p3, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    nop

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    iget v1, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    nop

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/analysis/SampleSpan;IILjava/lang/Double;ILjava/lang/Object;)Lru/localscribe/analysis/SampleSpan;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/localscribe/analysis/SampleSpan;->copy(IILjava/lang/Double;)Lru/localscribe/analysis/SampleSpan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    return v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(IILjava/lang/Double;)Lru/localscribe/analysis/SampleSpan;
    .locals 1

    new-instance v0, Lru/localscribe/analysis/SampleSpan;

    invoke-direct {v0, p1, p2, p3}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/analysis/SampleSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/analysis/SampleSpan;

    iget v3, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    iget v4, v1, Lru/localscribe/analysis/SampleSpan;->start:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    iget v4, v1, Lru/localscribe/analysis/SampleSpan;->end:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    iget-object v1, v1, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnd()I
    .locals 1

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    return v0
.end method

.method public final getScore()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStart()I
    .locals 1

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final intersects(Lru/localscribe/analysis/SampleSpan;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    iget v1, p1, Lru/localscribe/analysis/SampleSpan;->end:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lru/localscribe/analysis/SampleSpan;->start:I

    iget v1, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lru/localscribe/analysis/SampleSpan;->start:I

    iget v1, p0, Lru/localscribe/analysis/SampleSpan;->end:I

    iget-object v2, p0, Lru/localscribe/analysis/SampleSpan;->score:Ljava/lang/Double;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SampleSpan(start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", end="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
