.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda116;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lru/localscribe/service/LiveState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/service/LiveState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda116;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda116;->f$1:Lru/localscribe/service/LiveState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda116;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda116;->f$1:Lru/localscribe/service/LiveState;

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->$r8$lambda$wCIE5dC1dObVbEVoPoO7AhBFRD8(Lkotlin/jvm/functions/Function1;Lru/localscribe/service/LiveState;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
