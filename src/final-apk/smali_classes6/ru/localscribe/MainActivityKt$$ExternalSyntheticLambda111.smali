.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;->f$2:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda111;->f$2:Landroidx/compose/runtime/MutableState;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, v2, p1}, Lru/localscribe/MainActivityKt;->$r8$lambda$4Xf-KFWdOsU0j8cL1h53FXPnrdA(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
