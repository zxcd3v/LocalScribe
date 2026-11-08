.class final Lru/localscribe/engine/OfflinePipeline$run$3$4;
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
    c = "ru.localscribe.engine.OfflinePipeline$run$3$4"
    f = "OfflinePipeline.kt"
    i = {}
    l = {
        0x3f
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

.field final synthetic $r:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tmp:Ljava/io/File;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$AvThnt-RZMUR5_zDSBgBF4P0s3U(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/OfflinePipeline$run$3$4;->invokeSuspend$lambda$0(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lru/localscribe/core/Recording;",
            ">;",
            "Ljava/io/File;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$run$3$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$tmp:Ljava/io/File;

    iput-object p3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$onProgress:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;
    .locals 2
    .param p0, "$displayed"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p1, "$onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p2, "p"    # F

    .line 64
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lru/localscribe/engine/OfflinePipeline$run$3;->access$invokeSuspend$report(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)V

    .line 65
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lru/localscribe/engine/OfflinePipeline$run$3$4;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$tmp:Ljava/io/File;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$onProgress:Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lru/localscribe/engine/OfflinePipeline$run$3$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3$4;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/engine/OfflinePipeline$run$3$4;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/OfflinePipeline$run$3$4;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/engine/OfflinePipeline$run$3$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 62
    iget v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->label:I

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

    .line 63
    new-instance v1, Lru/localscribe/audio/AudioDecoder;

    invoke-direct {v1}, Lru/localscribe/audio/AudioDecoder;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$r:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getAudioPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$tmp:Ljava/io/File;

    iget-object v4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$displayed:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->$onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v6, Lru/localscribe/engine/OfflinePipeline$run$3$4$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v5}, Lru/localscribe/engine/OfflinePipeline$run$3$4$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$4;->label:I

    invoke-virtual {v1, v2, v3, v6, v4}, Lru/localscribe/audio/AudioDecoder;->decode(Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 62
    return-object v0

    .line 66
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
