.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda180;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/service/LiveState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/service/LiveState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda180;->f$0:Lru/localscribe/service/LiveState;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda180;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda180;->f$0:Lru/localscribe/service/LiveState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda180;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/layout/FlowRowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lru/localscribe/MainActivityKt;->$r8$lambda$yMtm3c-Lxgn0Lar_dfzeqw1kbkk(Lru/localscribe/service/LiveState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
