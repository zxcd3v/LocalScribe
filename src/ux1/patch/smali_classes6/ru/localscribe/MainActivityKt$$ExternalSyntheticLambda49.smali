.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Landroidx/compose/runtime/State;

.field public final synthetic f$6:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$5:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$6:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$0:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$4:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$5:Landroidx/compose/runtime/State;

    iget-object v6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda49;->f$6:Landroidx/compose/runtime/State;

    move-object v7, p1

    check-cast v7, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lru/localscribe/MainActivityKt;->$r8$lambda$2X_pPSzO6iNVTTgdYFmKAHD9ti4(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
