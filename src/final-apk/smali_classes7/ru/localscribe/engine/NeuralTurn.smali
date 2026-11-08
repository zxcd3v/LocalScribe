.class public final Lru/localscribe/engine/NeuralTurn;
.super Ljava/lang/Object;
.source "NeuralDiarizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ8\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lru/localscribe/engine/NeuralTurn;",
        "",
        "begin",
        "",
        "end",
        "localSpeaker",
        "silhouette",
        "",
        "<init>",
        "(IIILjava/lang/Float;)V",
        "getBegin",
        "()I",
        "getEnd",
        "getLocalSpeaker",
        "getSilhouette",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(IIILjava/lang/Float;)Lru/localscribe/engine/NeuralTurn;",
        "equals",
        "",
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
.field private final begin:I

.field private final end:I

.field private final localSpeaker:I

.field private final silhouette:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    iput p2, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    iput p3, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    iput-object p4, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/engine/NeuralTurn;IIILjava/lang/Float;ILjava/lang/Object;)Lru/localscribe/engine/NeuralTurn;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/localscribe/engine/NeuralTurn;->copy(IIILjava/lang/Float;)Lru/localscribe/engine/NeuralTurn;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    return v0
.end method

.method public final component4()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(IIILjava/lang/Float;)Lru/localscribe/engine/NeuralTurn;
    .locals 1

    new-instance v0, Lru/localscribe/engine/NeuralTurn;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/localscribe/engine/NeuralTurn;-><init>(IIILjava/lang/Float;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/engine/NeuralTurn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/engine/NeuralTurn;

    iget v3, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    iget v4, v1, Lru/localscribe/engine/NeuralTurn;->begin:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    iget v4, v1, Lru/localscribe/engine/NeuralTurn;->end:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    iget v4, v1, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    iget-object v1, v1, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBegin()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    return v0
.end method

.method public final getEnd()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    return v0
.end method

.method public final getLocalSpeaker()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    return v0
.end method

.method public final getSilhouette()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lru/localscribe/engine/NeuralTurn;->begin:I

    iget v1, p0, Lru/localscribe/engine/NeuralTurn;->end:I

    iget v2, p0, Lru/localscribe/engine/NeuralTurn;->localSpeaker:I

    iget-object v3, p0, Lru/localscribe/engine/NeuralTurn;->silhouette:Ljava/lang/Float;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NeuralTurn(begin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", end="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localSpeaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silhouette="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
