.class final Lru/localscribe/ui/ScribeViewModel$3$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScribeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel$3$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nScribeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel$3$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,797:1\n1#2:798\n1869#3,2:799\n*S KotlinDebug\n*F\n+ 1 ScribeViewModel.kt\nru/localscribe/ui/ScribeViewModel$3$2$1\n*L\n119#1:799,2\n*E\n"
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
    c = "ru.localscribe.ui.ScribeViewModel$3$2$1"
    f = "ScribeViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x75
    }
    m = "invokeSuspend"
    n = {
        "result",
        "recording",
        "wav"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $q:Lru/localscribe/data/TranscriptQuery;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public static synthetic $r8$lambda$9W7FIMJrBZWMwutDcuLxKRJQ8rg(Lru/localscribe/audio/WaveformDiarization;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/ScribeViewModel$3$2$1;->invokeSuspend$lambda$2(Lru/localscribe/audio/WaveformDiarization;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;Lru/localscribe/data/TranscriptQuery;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Ljava/lang/String;",
            "Lru/localscribe/data/TranscriptQuery;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$3$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$id:Ljava/lang/String;

    iput-object p3, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$q:Lru/localscribe/data/TranscriptQuery;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lru/localscribe/audio/WaveformDiarization;Ljava/util/List;)Lkotlin/Unit;
    .locals 16

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/localscribe/core/Segment;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v7

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v9

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getOverlap()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-string v14, "detected"

    const/4 v15, 0x0

    invoke-static {v6, v14, v15, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Lru/localscribe/audio/WaveformDiarization;->add(JJLjava/lang/String;Z)V

    nop

    nop

    goto :goto_0

    :cond_0
    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lru/localscribe/ui/ScribeViewModel$3$2$1;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$id:Ljava/lang/String;

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$q:Lru/localscribe/data/TranscriptQuery;

    invoke-direct {v0, v1, v2, v3, p2}, Lru/localscribe/ui/ScribeViewModel$3$2$1;-><init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;Lru/localscribe/data/TranscriptQuery;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ui/ScribeViewModel$3$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ui/ScribeViewModel$3$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/ScribeViewModel$3$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel$3$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lru/localscribe/core/Recording;

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/data/TranscriptPage;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, p1

    goto/16 :goto_5

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getRecords()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v2}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/Repository;->recordings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getProfiles()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v2}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/Repository;->voiceProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getExtraModels()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v2}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/ExtraModels;->status()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v4, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$id:Ljava/lang/String;

    iget-object v5, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->$q:Lru/localscribe/data/TranscriptQuery;

    const/4 v6, 0x0

    invoke-static {v3}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v7

    invoke-virtual {v7}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v7

    invoke-virtual {v7, v1}, Lru/localscribe/data/Repository;->recording(Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v8, 0x0

    invoke-static {v3}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v3

    invoke-virtual {v3}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lru/localscribe/data/Repository;->page(Ljava/lang/String;Lru/localscribe/data/TranscriptQuery;)Lru/localscribe/data/TranscriptPage;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    nop

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getPage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->getTranscript()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lru/localscribe/data/TranscriptPage;->getTranscript()Lru/localscribe/core/Transcript;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lru/localscribe/data/TranscriptPage;->getTranscript()Lru/localscribe/core/Transcript;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lru/localscribe/core/Transcript;->getRecording()Lru/localscribe/core/Recording;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getPcmPath()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v6

    :cond_4
    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v7, v2

    :goto_4
    if-eqz v1, :cond_7

    if-eqz v7, :cond_7

    sget-object v4, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v7, v5, v6, v2}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "recording"

    aput-object v8, v4, v5

    const-string v5, "paused"

    const/4 v8, 0x1

    aput-object v5, v4, v8

    const-string v5, "processing"

    aput-object v5, v4, v6

    const/4 v5, 0x3

    const-string v6, "decoding"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "finishing"

    aput-object v6, v4, v5

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v2, Lru/localscribe/audio/WaveformCache;->INSTANCE:Lru/localscribe/audio/WaveformCache;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v5}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v5

    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "waveform-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".bin"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->L$2:Ljava/lang/Object;

    iput v8, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->label:I

    invoke-virtual {v2, v7, v4, v5}, Lru/localscribe/audio/WaveformCache;->read(Ljava/io/File;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v7

    :goto_5
    move-object v4, v2

    check-cast v4, Lru/localscribe/audio/WaveformPeaks;

    new-instance v2, Lru/localscribe/audio/WaveformDiarization;

    invoke-direct {v2}, Lru/localscribe/audio/WaveformDiarization;-><init>()V

    iget-object v5, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v5}, Lru/localscribe/ui/ScribeViewModel;->access$getApp$p(Lru/localscribe/ui/ScribeViewModel;)Lru/localscribe/ScribeApp;

    move-result-object v5

    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v5

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lru/localscribe/ui/ScribeViewModel$3$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lru/localscribe/ui/ScribeViewModel$3$2$1$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/audio/WaveformDiarization;)V

    invoke-virtual {v5, v6, v7}, Lru/localscribe/data/Repository;->visitSegments(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v5, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v5}, Lru/localscribe/ui/ScribeViewModel;->getWaveform()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    invoke-virtual {v4}, Lru/localscribe/audio/WaveformPeaks;->getDurationMs()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lru/localscribe/audio/WaveformDiarization;->build(J)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lru/localscribe/audio/WaveformPeaks;->copy$default(Lru/localscribe/audio/WaveformPeaks;JLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/audio/WaveformPeaks;

    move-result-object v5

    invoke-interface {v12, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object v7, v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$3$2$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getWaveform()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
