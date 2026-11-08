.class public final Lru/localscribe/analysis/AdvancedModels$Separated;
.super Ljava/lang/Object;
.source "AdvancedModels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/analysis/AdvancedModels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Separated"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012JB\u0010\u0019\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\u0006H\u00d6\u0001R\u001b\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lru/localscribe/analysis/AdvancedModels$Separated;",
        "",
        "sources",
        "",
        "",
        "status",
        "",
        "reconstructionSnrDb",
        "",
        "sourceCorrelation",
        "<init>",
        "([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V",
        "getSources",
        "()[[F",
        "[[F",
        "getStatus",
        "()Ljava/lang/String;",
        "getReconstructionSnrDb",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getSourceCorrelation",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lru/localscribe/analysis/AdvancedModels$Separated;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final reconstructionSnrDb:Ljava/lang/Double;

.field private final sourceCorrelation:Ljava/lang/Double;

.field private final sources:[[F

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    iput-object p2, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    iput-object p3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    iput-object p4, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lru/localscribe/analysis/AdvancedModels$Separated;-><init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/analysis/AdvancedModels$Separated;[[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lru/localscribe/analysis/AdvancedModels$Separated;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/localscribe/analysis/AdvancedModels$Separated;->copy([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lru/localscribe/analysis/AdvancedModels$Separated;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[[F
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    return-object v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lru/localscribe/analysis/AdvancedModels$Separated;
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/localscribe/analysis/AdvancedModels$Separated;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/localscribe/analysis/AdvancedModels$Separated;-><init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/analysis/AdvancedModels$Separated;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/analysis/AdvancedModels$Separated;

    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    iget-object v4, v1, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    iget-object v1, v1, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getReconstructionSnrDb()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSourceCorrelation()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSources()[[F
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sources:[[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->status:Ljava/lang/String;

    iget-object v2, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->reconstructionSnrDb:Ljava/lang/Double;

    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels$Separated;->sourceCorrelation:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Separated(sources="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reconstructionSnrDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceCorrelation="

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
