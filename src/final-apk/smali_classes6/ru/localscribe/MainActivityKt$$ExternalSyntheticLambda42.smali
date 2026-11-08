.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$0:Z

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$3:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-boolean v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$0:Z

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda42;->f$3:Landroidx/compose/runtime/State;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/localscribe/MainActivityKt;->$r8$lambda$25BIlDPcPJb5WakLt1FgZEBtGU0(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
