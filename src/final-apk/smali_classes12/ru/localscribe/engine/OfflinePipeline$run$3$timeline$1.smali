.class final Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OfflinePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/OfflinePipeline$run$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lru/localscribe/core/SpeakerTimeline;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflinePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflinePipeline.kt\nru/localscribe/engine/OfflinePipeline$run$3$timeline$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1#2:346\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lru/localscribe/core/SpeakerTimeline;"
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
    c = "ru.localscribe.engine.OfflinePipeline$run$3$timeline$1"
    f = "OfflinePipeline.kt"
    i = {}
    l = {
        0x60
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $displayed:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onStatus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $r:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resources:Lru/localscribe/engine/PipelineResources;

.field final synthetic $wav:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lru/localscribe/engine/OfflinePipeline;


# direct methods
.method public static synthetic $r8$lambda$rblAYRE0gMqLMhHt2y7lvzBgvmA(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->invokeSuspend$lambda$2(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vMyMYpNu6OjCnI7_JvtbrUsB8D0(Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/PipelineResources;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->invokeSuspend$lambda$1(Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/PipelineResources;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/engine/PipelineResources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/OfflinePipeline;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;",
            "Lru/localscribe/engine/PipelineResources;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$wav:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$resources:Lru/localscribe/engine/PipelineResources;

    iput-object p5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$onStatus:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p7, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$onProgress:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/PipelineResources;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p1}, Lru/localscribe/engine/PipelineResources;->getAsrRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0420\u0435\u0447\u044c \u0438 \u0433\u043e\u043b\u043e\u0441\u0430 \u043f\u0430\u0440\u0430\u043b\u043b\u0435\u043b\u044c\u043d\u043e \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$2(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;
    .locals 2

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p2

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lru/localscribe/engine/OfflinePipeline$run$3;->access$invokeSuspend$report(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)V

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

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$wav:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$resources:Lru/localscribe/engine/PipelineResources;

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$onStatus:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v7, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$onProgress:Lkotlin/jvm/functions/Function1;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;-><init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/engine/PipelineResources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lru/localscribe/core/SpeakerTimeline;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v2, Lru/localscribe/engine/RecordingDiarization;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v1}, Lru/localscribe/engine/OfflinePipeline;->access$getModels$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/data/ModelStore;

    move-result-object v1

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-static {v3}, Lru/localscribe/engine/OfflinePipeline;->access$getTiming$p(Lru/localscribe/engine/OfflinePipeline;)Lru/localscribe/engine/ProcessingTimings;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lru/localscribe/engine/RecordingDiarization;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$resources:Lru/localscribe/engine/PipelineResources;

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v1}, Lru/localscribe/engine/RecordingDiarization;->setResources(Lru/localscribe/engine/PipelineResources;)V

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$wav:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lru/localscribe/core/Recording;

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v4

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$onStatus:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$resources:Lru/localscribe/engine/PipelineResources;

    move-object v6, v5

    new-instance v5, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v6}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/engine/PipelineResources;)V

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->$onProgress:Lkotlin/jvm/functions/Function1;

    move-object v7, v6

    new-instance v6, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v7}, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x1

    iput v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$timeline$1;->label:I

    invoke-virtual/range {v2 .. v7}, Lru/localscribe/engine/RecordingDiarization;->analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
