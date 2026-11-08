.class public final synthetic Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/Repository;

.field public final synthetic f$1:Lru/localscribe/core/Recording;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/Repository;Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/data/Repository;

    iput-object p2, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;->f$1:Lru/localscribe/core/Recording;

    iput-object p3, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/data/Repository;

    iget-object v1, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;->f$1:Lru/localscribe/core/Recording;

    iget-object v2, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lru/localscribe/data/Repository;->$r8$lambda$kQMHiN7G4XfPKBek5FI648_nK9E(Lru/localscribe/data/Repository;Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
