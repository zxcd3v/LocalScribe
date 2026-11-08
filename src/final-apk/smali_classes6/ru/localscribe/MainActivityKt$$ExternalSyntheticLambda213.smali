.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda213;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda213;->f$0:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-wide p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda213;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda213;->f$0:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-wide v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda213;->f$1:J

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {v0, v1, v2, p1}, Lru/localscribe/MainActivityKt;->$r8$lambda$Ze2sLk_44cZVM2mQMasqemTf8kw(Landroidx/compose/runtime/snapshots/SnapshotStateList;JLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
