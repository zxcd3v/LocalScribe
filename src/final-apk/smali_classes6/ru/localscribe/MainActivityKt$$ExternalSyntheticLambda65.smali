.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/core/Recording;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lru/localscribe/core/Transcript;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$6:Ljava/util/List;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;ZLru/localscribe/core/Transcript;ZLkotlin/jvm/functions/Function1;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$0:Lru/localscribe/core/Recording;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$1:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$2:Z

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$3:Lru/localscribe/core/Transcript;

    iput-boolean p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$4:Z

    iput-object p6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$5:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$6:Ljava/util/List;

    iput-object p8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$7:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$8:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$0:Lru/localscribe/core/Recording;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$1:Lkotlin/jvm/functions/Function1;

    iget-boolean v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$2:Z

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$3:Lru/localscribe/core/Transcript;

    iget-boolean v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$4:Z

    iget-object v5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$5:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$6:Ljava/util/List;

    iget-object v7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$7:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda65;->f$8:Lkotlin/jvm/functions/Function3;

    move-object v9, p1

    check-cast v9, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static/range {v0 .. v11}, Lru/localscribe/MainActivityKt;->$r8$lambda$zVvQzONMIvYFUQEx4F3FMu5EKT4(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;ZLru/localscribe/core/Transcript;ZLkotlin/jvm/functions/Function1;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
