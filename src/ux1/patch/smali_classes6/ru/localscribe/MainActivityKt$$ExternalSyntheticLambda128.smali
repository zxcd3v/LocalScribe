.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda128;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/PreparationState;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/PreparationState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda128;->f$0:Lru/localscribe/data/PreparationState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda128;->f$0:Lru/localscribe/data/PreparationState;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lru/localscribe/MainActivityKt;->$r8$lambda$MR5pFYmlYOwhjM6Rn1ASmXOtmQw(Lru/localscribe/data/PreparationState;Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
