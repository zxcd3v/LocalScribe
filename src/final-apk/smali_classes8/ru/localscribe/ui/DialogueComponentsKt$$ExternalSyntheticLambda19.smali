.class public final synthetic Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroidx/compose/ui/Modifier;

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$1:Z

    iput-object p3, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$4:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$5:Z

    iput p7, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$6:I

    iput p8, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$1:Z

    iget-object v2, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$4:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$5:Z

    iget v6, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$6:I

    iget v7, p0, Lru/localscribe/ui/DialogueComponentsKt$$ExternalSyntheticLambda19;->f$7:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lru/localscribe/ui/DialogueComponentsKt;->$r8$lambda$7ZfxwVINNQqbsNi9V_5YpHmCWs0(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
