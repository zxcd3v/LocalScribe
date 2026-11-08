.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/core/Segment;

.field public final synthetic f$1:Lru/localscribe/core/Transcript;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/core/Segment;Lru/localscribe/core/Transcript;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$0:Lru/localscribe/core/Segment;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$1:Lru/localscribe/core/Transcript;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$2:Ljava/util/List;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$3:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$5:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$6:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$7:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$8:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$0:Lru/localscribe/core/Segment;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$1:Lru/localscribe/core/Transcript;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$2:Ljava/util/List;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$3:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$4:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$5:Lkotlin/jvm/functions/Function3;

    iget-object v6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$6:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$7:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda15;->f$8:Lkotlin/jvm/functions/Function3;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static/range {v0 .. v10}, Lru/localscribe/MainActivityKt;->$r8$lambda$-88F5acDd3jrfn60MlJPP9Ttycw(Lru/localscribe/core/Segment;Lru/localscribe/core/Transcript;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
