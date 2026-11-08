.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda214;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda214;->f$0:F

    iput p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda214;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda214;->f$0:F

    iget v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda214;->f$1:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lru/localscribe/MainActivityKt;->$r8$lambda$C3r3fFLGUV7VU6NCfFU1b1Bs4vQ(FILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
