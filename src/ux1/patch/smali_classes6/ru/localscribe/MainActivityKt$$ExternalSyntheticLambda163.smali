.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lru/localscribe/data/PreparationState;

.field public final synthetic f$10:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Long;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:Lru/localscribe/core/Settings;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lru/localscribe/data/PreparationState;Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$0:Ljava/util/List;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$1:Lru/localscribe/data/PreparationState;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$4:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$5:Z

    iput-object p7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$6:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$7:Lru/localscribe/core/Settings;

    iput-object p9, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$8:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$9:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$10:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$11:Ljava/lang/String;

    iput-object p13, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$12:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$0:Ljava/util/List;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$1:Lru/localscribe/data/PreparationState;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$3:Ljava/lang/Long;

    iget-object v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$4:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$5:Z

    iget-object v6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$6:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$7:Lru/localscribe/core/Settings;

    iget-object v8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$8:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$9:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$10:Landroidx/compose/runtime/MutableState;

    iget-object v11, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$11:Ljava/lang/String;

    iget-object v12, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda163;->f$12:Lkotlin/jvm/functions/Function1;

    move-object v13, p1

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static/range {v0 .. v13}, Lru/localscribe/MainActivityKt;->$r8$lambda$bNGIQcMG4RBehwsBAOCFNp6wiPU(Ljava/util/List;Lru/localscribe/data/PreparationState;Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
