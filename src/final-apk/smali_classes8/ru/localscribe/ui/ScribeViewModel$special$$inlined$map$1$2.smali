.class public final Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel\n*L\n1#1,49:1\n50#2:50\n45#3:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;

    iget v1, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;-><init>(Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->I$0:I

    iget-object v3, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    iget-object v5, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;

    iget-object p1, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    move-object v5, v0

    move-object v4, p1

    const/4 v6, 0x0

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    move-object v8, v4

    check-cast v8, Lru/localscribe/data/PreparationState;

    const/4 v9, 0x0

    invoke-virtual {v8}, Lru/localscribe/data/PreparationState;->getModelId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->L$3:Ljava/lang/Object;

    iput v6, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->I$0:I

    const/4 v8, 0x1

    iput v8, v0, Lru/localscribe/ui/ScribeViewModel$special$$inlined$map$1$2$1;->label:I

    invoke-interface {v3, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1

    return-object v2

    :cond_1
    move v2, v6

    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
