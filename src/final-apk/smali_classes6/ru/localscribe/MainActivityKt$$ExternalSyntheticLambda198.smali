.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/RecordingNote;

.field public final synthetic f$1:Lru/localscribe/ui/ScribeViewModel;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/RecordingNote;Lru/localscribe/ui/ScribeViewModel;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$0:Lru/localscribe/data/RecordingNote;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$1:Lru/localscribe/ui/ScribeViewModel;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$0:Lru/localscribe/data/RecordingNote;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$1:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda198;->f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/localscribe/MainActivityKt;->$r8$lambda$XbJDgw9ZTvQ4IgcBppbYtGSCm6I(Lru/localscribe/data/RecordingNote;Lru/localscribe/ui/ScribeViewModel;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
