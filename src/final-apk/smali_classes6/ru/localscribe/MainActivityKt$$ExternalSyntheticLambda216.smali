.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lru/localscribe/data/RecordingNote;

.field public final synthetic f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lru/localscribe/data/RecordingNote;Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;->f$1:Lru/localscribe/data/RecordingNote;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;->f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;->f$1:Lru/localscribe/data/RecordingNote;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda216;->f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/localscribe/MainActivityKt;->$r8$lambda$We2pBD-axoCnH6leRVIeaEh6aNc(Landroid/content/Context;Lru/localscribe/data/RecordingNote;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
