.class public final synthetic Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/core/Segment;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/core/Segment;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda15;->f$0:Lru/localscribe/core/Segment;

    iput-object p2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda15;->f$1:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda15;->f$0:Lru/localscribe/core/Segment;

    iget-object v1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda15;->f$1:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/foundation/layout/FlowRowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lru/localscribe/ui/DialogueComponentsKt;->$r8$lambda$oqhI4s79yn6rUkGcBTrtzDqEtgw(Lru/localscribe/core/Segment;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
