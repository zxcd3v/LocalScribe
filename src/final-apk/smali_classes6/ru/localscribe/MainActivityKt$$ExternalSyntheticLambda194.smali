.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda194;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/engine/RangePreview;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/engine/RangePreview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda194;->f$0:Lru/localscribe/engine/RangePreview;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda194;->f$0:Lru/localscribe/engine/RangePreview;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lru/localscribe/MainActivityKt;->$r8$lambda$uGPIXsRQy_e4woDH5vGkQ5oT7ZQ(Lru/localscribe/engine/RangePreview;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
