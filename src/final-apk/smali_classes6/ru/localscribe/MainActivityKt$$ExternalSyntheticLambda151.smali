.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$2:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$3:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$2:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda151;->f$3:Landroidx/compose/runtime/State;

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lru/localscribe/MainActivityKt;->$r8$lambda$e1DECdiFY8r3XQH3M0ktEfBYlGo(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
