.class public final synthetic Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic f$1:Lru/localscribe/engine/TranscriptEditingWindow;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/TranscriptEditingWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;->f$0:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;->f$1:Lru/localscribe/engine/TranscriptEditingWindow;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;->f$0:Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda2;->f$1:Lru/localscribe/engine/TranscriptEditingWindow;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$r8$lambda$K-PQiJhpQVwNpOZ3oPqSaCOru74(Lkotlin/coroutines/CoroutineContext;Lru/localscribe/engine/TranscriptEditingWindow;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
