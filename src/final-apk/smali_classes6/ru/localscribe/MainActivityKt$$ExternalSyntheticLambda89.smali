.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/PreparationState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/PreparationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;->f$0:Lru/localscribe/data/PreparationState;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;->f$0:Lru/localscribe/data/PreparationState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda89;->f$2:Lkotlin/jvm/functions/Function0;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/localscribe/MainActivityKt;->$r8$lambda$zsuNyfBMQI3bRqKh7otmmSO1TqE(Lru/localscribe/data/PreparationState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
