.class final Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel$previewRange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "ru.localscribe.ui.ScribeViewModel$previewRange$1$2"
    f = "ScribeViewModel.kt"
    i = {}
    l = {
        0xa5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $endMs:J

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $rediarize:Z

.field final synthetic $startMs:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public static synthetic $r8$lambda$0cbSVxgANf1nDStzYvJ8_jh8_hs(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->invokeSuspend$lambda$0(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Ljava/lang/String;",
            "JJZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$id:Ljava/lang/String;

    iput-wide p3, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$startMs:J

    iput-wide p5, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$endMs:J

    iput-boolean p7, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$rediarize:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->getRangeStatus()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$id:Ljava/lang/String;

    iget-wide v3, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$startMs:J

    iget-wide v5, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$endMs:J

    iget-boolean v7, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$rediarize:Z

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;-><init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getRangePreview()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    new-instance v2, Lru/localscribe/engine/OfflinePipeline;

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v3}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v3

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    iget-object v4, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v4}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v4

    invoke-virtual {v4}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lru/localscribe/engine/OfflinePipeline;-><init>(Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$id:Ljava/lang/String;

    iget-wide v4, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$startMs:J

    iget-wide v6, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$endMs:J

    iget-boolean v8, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->$rediarize:Z

    iget-object v9, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->this$0:Lru/localscribe/ui/ScribeViewModel;

    move-object v10, v9

    new-instance v9, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v9, v10}, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->L$0:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, p0, Lru/localscribe/ui/ScribeViewModel$previewRange$1$2;->label:I

    invoke-virtual/range {v2 .. v10}, Lru/localscribe/engine/OfflinePipeline;->previewRange(Ljava/lang/String;JJZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
