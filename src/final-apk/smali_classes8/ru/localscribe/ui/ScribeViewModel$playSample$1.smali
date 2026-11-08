.class final Lru/localscribe/ui/ScribeViewModel$playSample$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel;->playSample(Lru/localscribe/core/VoiceSample;)V
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
    c = "ru.localscribe.ui.ScribeViewModel$playSample$1"
    f = "ScribeViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $sample:Lru/localscribe/core/VoiceSample;

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public static synthetic $r8$lambda$7jPdaeqg2_iSOUDzvmXld6CEM2E(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playSample$1;->invokeSuspend$lambda$1(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MsKH54Ia1tKWJ0y9VtE-EKbqLak(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playSample$1;->invokeSuspend$lambda$2(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ujZVPOLJTw82KX76CsHgFkeyak0(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/ui/ScribeViewModel$playSample$1;->invokeSuspend$lambda$3(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/core/VoiceSample;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Lru/localscribe/core/VoiceSample;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$playSample$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->$sample:Lru/localscribe/core/VoiceSample;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-static {p0}, Lru/localscribe/ui/ScribeViewModel;->access$getPlayer$p(Lru/localscribe/ui/ScribeViewModel;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    return-void
.end method

.method private static final invokeSuspend$lambda$3(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    invoke-virtual {p0}, Lru/localscribe/ui/ScribeViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const-string p2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0441\u0442\u0438 \u043e\u0431\u0440\u0430\u0437\u0435\u0446"

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$playSample$1;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->$sample:Lru/localscribe/core/VoiceSample;

    invoke-direct {v0, v1, v2, p1}, Lru/localscribe/ui/ScribeViewModel$playSample$1;-><init>(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/core/VoiceSample;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playSample$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/ui/ScribeViewModel$playSample$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$playSample$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$playSample$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->$sample:Lru/localscribe/core/VoiceSample;

    invoke-virtual {v0}, Lru/localscribe/core/VoiceSample;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->$sample:Lru/localscribe/core/VoiceSample;

    invoke-virtual {v3}, Lru/localscribe/core/VoiceSample;->getAudioPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v1, v0}, Lru/localscribe/ui/ScribeViewModel;->access$setPlayer$p(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    new-instance v2, Lru/localscribe/ui/ScribeViewModel$playSample$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lru/localscribe/ui/ScribeViewModel$playSample$1$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    new-instance v2, Lru/localscribe/ui/ScribeViewModel$playSample$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lru/localscribe/ui/ScribeViewModel$playSample$1$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    new-instance v2, Lru/localscribe/ui/ScribeViewModel$playSample$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lru/localscribe/ui/ScribeViewModel$playSample$1$$ExternalSyntheticLambda2;-><init>(Lru/localscribe/ui/ScribeViewModel;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    nop

    :try_start_0
    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->$sample:Lru/localscribe/core/VoiceSample;

    invoke-virtual {v1}, Lru/localscribe/core/VoiceSample;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$playSample$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v2}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    throw v1

    :cond_2
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0410\u0443\u0434\u0438\u043e \u043e\u0431\u0440\u0430\u0437\u0446\u0430 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
