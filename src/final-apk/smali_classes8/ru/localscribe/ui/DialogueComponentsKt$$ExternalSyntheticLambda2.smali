.class public final synthetic Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Lru/localscribe/core/Segment;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lru/localscribe/core/DialogueTurns$SpokenText;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Lru/localscribe/core/Segment;Ljava/util/List;Lru/localscribe/core/DialogueTurns$SpokenText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$1:Lru/localscribe/core/Segment;

    iput-object p3, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iput-object p4, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$3:Lru/localscribe/core/DialogueTurns$SpokenText;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$1:Lru/localscribe/core/Segment;

    iget-object v2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iget-object v3, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda2;->f$3:Lru/localscribe/core/DialogueTurns$SpokenText;

    invoke-static {v0, v1, v2, v3}, Lru/localscribe/ui/DialogueComponentsKt;->$r8$lambda$BQvner_DyrNmzhfjM6Sz9icq8t0(Landroidx/compose/runtime/State;Lru/localscribe/core/Segment;Ljava/util/List;Lru/localscribe/core/DialogueTurns$SpokenText;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
