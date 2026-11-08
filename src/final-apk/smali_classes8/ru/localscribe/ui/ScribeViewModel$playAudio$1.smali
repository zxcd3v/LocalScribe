.class final Lru/localscribe/ui/ScribeViewModel$playAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel;->playAudio(JLjava/lang/String;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScribeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel$playAudio$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,797:1\n1#2:798\n230#3,5:799\n230#3,5:804\n*S KotlinDebug\n*F\n+ 1 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel$playAudio$1\n*L\n724#1:799,5\n729#1:804,5\n*E\n"
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
    c = "ru.localscribe.ui.ScribeViewModel$playAudio$1"
    f = "ScribeViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $segmentId:Ljava/lang/String;

.field final synthetic $separatedPath:Ljava/lang/String;

.field final synthetic $startMs:J

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public static synthetic $r8$lambda$DVx68Ohlw94a7VdLQW-OCKEoU3c(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invokeSuspend$lambda$6(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PnFJ6ba353JdPJcZL-kqOni0FTM(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJLandroid/media/MediaPlayer;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invokeSuspend$lambda$4(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJLandroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ec-VY8Ks-R-3QLumlpt52C-FR-I(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invokeSuspend$lambda$4$1(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sisQqv4in0A2hy5N6GuAgyM1Q-Y(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invokeSuspend$lambda$5(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$playAudio$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$separatedPath:Ljava/lang/String;

    iput-wide p3, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$startMs:J

    iput-object p5, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$segmentId:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$4(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJLandroid/media/MediaPlayer;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v1}, Lru/localscribe/ui/ScribeViewModel;->access$getPlayer$p(Lru/localscribe/ui/ScribeViewModel;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getPlayback()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    nop

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lru/localscribe/ui/PlaybackState;

    const/16 v18, 0x0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-long v11, v6

    const/16 v16, 0x57

    const/16 v17, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v5 .. v17}, Lru/localscribe/ui/PlaybackState;->copy$default(Lru/localscribe/ui/PlaybackState;Ljava/lang/String;JJJLjava/lang/String;ZZILjava/lang/Object;)Lru/localscribe/ui/PlaybackState;

    move-result-object v5

    nop

    invoke-interface {v0, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    nop

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v3, p2

    :goto_1
    const/4 v0, 0x3

    invoke-virtual {v2, v3, v4, v0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    nop

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;

    const/4 v5, 0x0

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$4$3;-><init>(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;JLkotlin/coroutines/Continuation;)V

    move-object v7, v1

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    move-object v1, v6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-static {v7, v0}, Lru/localscribe/ui/ScribeViewModel;->access$setPlaybackJob$p(Lru/localscribe/ui/ScribeViewModel;Lkotlinx/coroutines/Job;)V

    goto :goto_2

    :cond_1
    move-object v7, v1

    move-object/from16 v2, p6

    goto :goto_0

    :cond_2
    move-object v7, v1

    :goto_2
    return-void
.end method

.method private static final invokeSuspend$lambda$4$1(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 18

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lru/localscribe/ui/ScribeViewModel;->access$getPlayer$p(Lru/localscribe/ui/ScribeViewModel;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual/range {p0 .. p0}, Lru/localscribe/ui/ScribeViewModel;->getPlayback()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    nop

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/localscribe/ui/PlaybackState;

    const/16 v17, 0x0

    const/16 v15, 0x3f

    const/16 v16, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static/range {v4 .. v16}, Lru/localscribe/ui/PlaybackState;->copy$default(Lru/localscribe/ui/PlaybackState;Ljava/lang/String;JJJLjava/lang/String;ZZILjava/lang/Object;)Lru/localscribe/ui/PlaybackState;

    move-result-object v4

    nop

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    nop

    :cond_1
    return-void
.end method

.method private static final invokeSuspend$lambda$5(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-static {p0}, Lru/localscribe/ui/ScribeViewModel;->access$getPlayer$p(Lru/localscribe/ui/ScribeViewModel;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$6(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z
    .locals 3

    invoke-static {p0}, Lru/localscribe/ui/ScribeViewModel;->access$getPlayer$p(Lru/localscribe/ui/ScribeViewModel;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u044f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$separatedPath:Ljava/lang/String;

    iget-wide v3, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$startMs:J

    iget-object v5, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$segmentId:Ljava/lang/String;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;-><init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$playAudio$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getTranscript()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/Transcript;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lru/localscribe/core/Transcript;->getRecording()Lru/localscribe/core/Recording;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    move-object v2, v0

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$separatedPath:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    move-object v10, v0

    if-eqz v10, :cond_3

    iget-wide v8, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$startMs:J

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x0

    :goto_2
    move-wide v13, v8

    move-wide/from16 v19, v13

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    move-object v3, v0

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v0, v3}, Lru/localscribe/ui/ScribeViewModel;->access$setPlayer$p(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V

    nop

    if-nez v10, :cond_5

    :try_start_0
    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getPcmPath()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :cond_4
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v0, v10

    :goto_3
    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getPlayback()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    nop

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v16

    iget-wide v8, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$startMs:J

    nop

    nop

    iget-object v5, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$segmentId:Ljava/lang/String;

    move-object v11, v5

    const/4 v12, 0x0

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    move v6, v7

    :goto_4
    if-eqz v6, :cond_7

    move-object/from16 v23, v5

    goto :goto_5

    :cond_7
    move-object/from16 v23, v4

    :goto_5
    new-instance v15, Lru/localscribe/ui/PlaybackState;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v21, 0x0

    const/16 v26, 0x68

    const/16 v27, 0x0

    move-wide/from16 v17, v8

    invoke-direct/range {v15 .. v27}, Lru/localscribe/ui/PlaybackState;-><init>(Ljava/lang/String;JJJLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v9, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-wide v11, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$startMs:J

    new-instance v8, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v13, v19

    :try_start_1
    invoke-direct/range {v8 .. v14}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3, v8}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    new-instance v4, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda2;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    new-instance v4, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_0
    move-exception v0

    move-wide/from16 v19, v13

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    iget-object v4, v1, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v4}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    throw v0

    :cond_8
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u0412\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0435 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u043f\u043e\u0441\u043b\u0435 \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
