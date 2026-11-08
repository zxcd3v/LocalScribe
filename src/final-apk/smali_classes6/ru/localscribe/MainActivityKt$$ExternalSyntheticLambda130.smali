.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lru/localscribe/core/Settings;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;->f$2:Lru/localscribe/core/Settings;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;->f$0:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda130;->f$2:Lru/localscribe/core/Settings;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/localscribe/MainActivityKt;->$r8$lambda$_ks-bx2pY4BtEHsT_J8kTJtI3kE(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
