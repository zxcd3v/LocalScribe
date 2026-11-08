.class public final synthetic Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic f$1:Lru/localscribe/engine/OfflinePipeline;

.field public final synthetic f$2:Lru/localscribe/core/Recording;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:I

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$0:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$1:Lru/localscribe/engine/OfflinePipeline;

    iput-object p3, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$2:Lru/localscribe/core/Recording;

    iput-object p4, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$0:Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$1:Lru/localscribe/engine/OfflinePipeline;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$2:Lru/localscribe/core/Recording;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    iget v5, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function1;

    move-object v7, p1

    check-cast v7, Ljava/util/List;

    invoke-static/range {v0 .. v7}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$r8$lambda$L0eFgDU4KsSN1UUi47cW6uas9bc(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
