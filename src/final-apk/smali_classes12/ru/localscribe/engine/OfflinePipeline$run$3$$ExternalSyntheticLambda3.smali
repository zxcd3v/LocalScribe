.class public final synthetic Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3;->$r8$lambda$lb_s2AxnAF_Ru5l-Bgkih3z9wgk(Ljava/util/Set;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
