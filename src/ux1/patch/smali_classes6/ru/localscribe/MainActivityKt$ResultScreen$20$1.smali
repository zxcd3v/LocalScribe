.class final Lru/localscribe/MainActivityKt$ResultScreen$20$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ResultScreen(Lru/localscribe/core/Transcript;ZLru/localscribe/service/LiveState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lru/localscribe/data/TranscriptPage;Lru/localscribe/data/TranscriptQuery;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lru/localscribe/ui/PlaybackState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lru/localscribe/ui/SummaryState$Running;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "ru.localscribe.MainActivityKt$ResultScreen$20$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x3d1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $clock:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lru/localscribe/ui/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filter:Ljava/lang/String;

.field final synthetic $followPlayback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $following$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $page:Lru/localscribe/data/TranscriptPage;

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $r:Lru/localscribe/core/Recording;

.field final synthetic $t:Lru/localscribe/core/Transcript;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$q6qcQXXIXCNey63p0sZ0SR83NvI(Landroidx/compose/runtime/State;)J
    .locals 2

    invoke-static {p0}, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->invokeSuspend$lambda$0(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    return-wide v0
.end method

.method constructor <init>(Landroidx/compose/runtime/State;Lru/localscribe/data/TranscriptPage;Lru/localscribe/core/Transcript;Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lru/localscribe/ui/PlaybackState;",
            ">;",
            "Lru/localscribe/data/TranscriptPage;",
            "Lru/localscribe/core/Transcript;",
            "Lru/localscribe/core/Recording;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/MainActivityKt$ResultScreen$20$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$clock:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$page:Lru/localscribe/data/TranscriptPage;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$t:Lru/localscribe/core/Transcript;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$r:Lru/localscribe/core/Recording;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$query:Ljava/lang/String;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$filter:Ljava/lang/String;

    iput-object p7, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$followPlayback:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$clock"    # Landroidx/compose/runtime/State;

    .line 977
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/PlaybackState;

    invoke-virtual {v0}, Lru/localscribe/ui/PlaybackState;->getPositionMs()J

    move-result-wide v0

    const/16 v2, 0x1f4

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$clock:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$page:Lru/localscribe/data/TranscriptPage;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$t:Lru/localscribe/core/Transcript;

    iget-object v4, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$r:Lru/localscribe/core/Recording;

    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$query:Ljava/lang/String;

    iget-object v6, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$filter:Ljava/lang/String;

    iget-object v7, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$followPlayback:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lru/localscribe/MainActivityKt$ResultScreen$20$1;-><init>(Landroidx/compose/runtime/State;Lru/localscribe/data/TranscriptPage;Lru/localscribe/core/Transcript;Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 976
    iget v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 977
    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$clock:Landroidx/compose/runtime/State;

    new-instance v2, Lru/localscribe/MainActivityKt$ResultScreen$20$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lru/localscribe/MainActivityKt$ResultScreen$20$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$clock:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$page:Lru/localscribe/data/TranscriptPage;

    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$t:Lru/localscribe/core/Transcript;

    iget-object v6, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$r:Lru/localscribe/core/Recording;

    iget-object v7, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$query:Ljava/lang/String;

    iget-object v8, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$filter:Ljava/lang/String;

    iget-object v9, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$followPlayback:Lkotlin/jvm/functions/Function1;

    iget-object v10, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v2 .. v10}, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;-><init>(Landroidx/compose/runtime/State;Lru/localscribe/data/TranscriptPage;Lru/localscribe/core/Transcript;Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1;->label:I

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 976
    return-object v0

    .line 984
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
