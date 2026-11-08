.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Lru/localscribe/core/Recording;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Lru/localscribe/core/Recording;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda1;->f$1:Lru/localscribe/core/Recording;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda1;->f$1:Lru/localscribe/core/Recording;

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->$r8$lambda$iihn6jUK5VJIIjTN7AJ_K3yzJ3E(Landroidx/compose/runtime/State;Lru/localscribe/core/Recording;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
