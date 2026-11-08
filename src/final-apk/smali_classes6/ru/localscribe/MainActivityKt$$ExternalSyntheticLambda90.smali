.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/PreparationState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/PreparationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$0:Lru/localscribe/data/PreparationState;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$3:Landroidx/compose/ui/Modifier;

    iput p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$0:Lru/localscribe/data/PreparationState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$2:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$3:Landroidx/compose/ui/Modifier;

    iget v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda90;->f$4:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lru/localscribe/MainActivityKt;->$r8$lambda$JQp4vMV53JCRbjZdhD8hbb0ePmI(Lru/localscribe/data/PreparationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
