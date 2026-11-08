.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$0:Z

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$3:Landroidx/compose/runtime/State;

    iput-boolean p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$4:Z

    iput-object p6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$5:Lkotlin/jvm/functions/Function0;

    iput-boolean p7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$6:Z

    iput-object p8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$7:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-boolean v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$0:Z

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$3:Landroidx/compose/runtime/State;

    iget-boolean v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$4:Z

    iget-object v5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$5:Lkotlin/jvm/functions/Function0;

    iget-boolean v6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$6:Z

    iget-object v7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda96;->f$7:Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lru/localscribe/MainActivityKt;->$r8$lambda$SvmX5ImQc8lrb39fJmYz5VLMuZk(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
