.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda199;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;

.field public final synthetic f$1:Lru/localscribe/ui/SummaryState$Ready;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/ui/SummaryState$Ready;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda199;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda199;->f$1:Lru/localscribe/ui/SummaryState$Ready;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda199;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda199;->f$1:Lru/localscribe/ui/SummaryState$Ready;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lru/localscribe/MainActivityKt;->$r8$lambda$7CDtKEPGmXrtHG0FE2oXYpXiYeA(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/ui/SummaryState$Ready;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
