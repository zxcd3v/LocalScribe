.class final Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScribeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel$playAudio$1$4$3\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,797:1\n230#2,5:798\n*S KotlinDebug\n*F\n+ 1 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel$playAudio$1$4$3\n*L\n736#1:798,5\n*E\n"
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
    c = "ru.localscribe.ui.ScribeViewModel$playAudio$1$4$3"
    f = "ScribeViewModel.kt"
    i = {}
    l = {
        0x2e6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $offset:J

.field final synthetic $ready:Landroid/media/MediaPlayer;

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Landroid/media/MediaPlayer;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$ready:Landroid/media/MediaPlayer;

    iput-wide p3, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$offset:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$ready:Landroid/media/MediaPlayer;

    iget-wide v3, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$offset:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;-><init>(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p0

    iget v2, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v1

    move-object/from16 v0, p1

    goto :goto_1

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v1

    move-object/from16 v0, p1

    :goto_0
    iget-object v4, v3, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v4}, Lru/localscribe/ui/ScribeViewModel;->access$getPlayer$p(Lru/localscribe/ui/ScribeViewModel;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, v3, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$ready:Landroid/media/MediaPlayer;

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v4}, Lru/localscribe/ui/ScribeViewModel;->getPlayback()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iget-wide v5, v3, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$offset:J

    iget-object v7, v3, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->$ready:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    :cond_0
    nop

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lru/localscribe/ui/PlaybackState;

    const/16 v23, 0x0

    nop

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v11

    int-to-long v11, v11

    add-long v12, v5, v11

    nop

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v20

    const/16 v21, 0x3d

    const/16 v22, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v10 .. v22}, Lru/localscribe/ui/PlaybackState;->copy$default(Lru/localscribe/ui/PlaybackState;Ljava/lang/String;JJJLjava/lang/String;ZZILjava/lang/Object;)Lru/localscribe/ui/PlaybackState;

    move-result-object v11

    nop

    nop

    invoke-interface {v4, v9, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    nop

    move-object v4, v3

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v3, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;->label:I

    const-wide/16 v5, 0x20

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    return-object v2

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
