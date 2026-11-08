.class public final synthetic Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    check-cast p1, Lru/localscribe/core/Segment;

    invoke-static {v0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3;->$r8$lambda$rUtPrdyV4rwTIVWNNUAytpHPE88(Ljava/util/Map;Lru/localscribe/core/Segment;)Lru/localscribe/core/Segment;

    move-result-object p1

    return-object p1
.end method
