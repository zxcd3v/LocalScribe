.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$2:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$3:Z

    iput-object p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$4:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$2:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$3:Z

    iget-object v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda120;->f$4:Landroidx/compose/runtime/MutableState;

    move-object v5, p1

    check-cast v5, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lru/localscribe/MainActivityKt;->$r8$lambda$wHelIaYjs9ULE5Y-TF6oT9FhjvE(Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
