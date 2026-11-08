.class public final synthetic Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/engine/LiveProcessor;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/engine/LiveProcessor;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/engine/LiveProcessor;

    iput-object p2, p0, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/engine/LiveProcessor;

    iget-object v1, p0, Lru/localscribe/engine/LiveProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    check-cast p1, Lru/localscribe/core/Segment;

    invoke-static {v0, v1, p1}, Lru/localscribe/engine/LiveProcessor;->$r8$lambda$Qy3re-l7NIradYm1tHDZRUdq4F0(Lru/localscribe/engine/LiveProcessor;Ljava/util/Map;Lru/localscribe/core/Segment;)Lru/localscribe/core/Segment;

    move-result-object p1

    return-object p1
.end method
