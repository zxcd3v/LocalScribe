.class public final synthetic Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$0:Landroidx/compose/runtime/MutableState;

    iput-boolean p2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$1:Z

    iput-object p3, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$3:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$0:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$1:Z

    iget-object v2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$2:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda16;->f$3:Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lru/localscribe/ui/DialogueComponentsKt;->$r8$lambda$C9UxLvWCzyij_TkLTZRLnaymJRo(Landroidx/compose/runtime/MutableState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
