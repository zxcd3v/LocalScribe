.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/core/Recording;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:F

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Landroidx/compose/ui/Modifier;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/core/Recording;Ljava/lang/String;FLjava/lang/Integer;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$0:Lru/localscribe/core/Recording;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$1:Ljava/lang/String;

    iput p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$2:F

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$3:Ljava/lang/Integer;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$4:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$5:Landroidx/compose/ui/Modifier;

    iput p7, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$0:Lru/localscribe/core/Recording;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$1:Ljava/lang/String;

    iget v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$2:F

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$3:Ljava/lang/Integer;

    iget-object v4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$4:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$5:Landroidx/compose/ui/Modifier;

    iget v6, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda226;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lru/localscribe/MainActivityKt;->$r8$lambda$ERI-5XvvxSPdD7ZfCcCSf7BBNLs(Lru/localscribe/core/Recording;Ljava/lang/String;FLjava/lang/Integer;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
