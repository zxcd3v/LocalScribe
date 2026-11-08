.class final Lru/localscribe/service/ProcessingService$onStartCommand$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProcessingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/service/ProcessingService$onStartCommand$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nProcessingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessingService.kt\nru/localscribe/service/ProcessingService$onStartCommand$2$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
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
    c = "ru.localscribe.service.ProcessingService$onStartCommand$2$2"
    f = "ProcessingService.kt"
    i = {}
    l = {
        0x40
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $app:Lru/localscribe/ScribeApp;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $wake:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lru/localscribe/service/ProcessingService;


# direct methods
.method public static synthetic $r8$lambda$35k6yhVNzjyWZklYMqC8-_RID8M(F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->invokeSuspend$lambda$1(F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EhquQvbRvdHhktKvZUBr5QzdYhc(Lru/localscribe/ScribeApp;Lru/localscribe/service/ProcessingService;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->invokeSuspend$lambda$2(Lru/localscribe/ScribeApp;Lru/localscribe/service/ProcessingService;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/service/ProcessingService;Lru/localscribe/ScribeApp;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;",
            "Lru/localscribe/service/ProcessingService;",
            "Lru/localscribe/ScribeApp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/service/ProcessingService$onStartCommand$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$id:Ljava/lang/String;

    iput-object p2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$wake:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->this$0:Lru/localscribe/service/ProcessingService;

    iput-object p4, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(F)Lkotlin/Unit;
    .locals 2
    .param p0, "it"    # F

    .line 66
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getProcessingProgress()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$2(Lru/localscribe/ScribeApp;Lru/localscribe/service/ProcessingService;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .param p0, "$app"    # Lru/localscribe/ScribeApp;
    .param p1, "this$0"    # Lru/localscribe/service/ProcessingService;
    .param p2, "text"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v0}, Lru/localscribe/service/JobState;->getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lru/localscribe/data/Diagnostics;->stage(Ljava/lang/String;)V

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lru/localscribe/service/ServiceSupportKt;->foreground(Landroid/app/Service;ZLjava/lang/String;)V

    .line 71
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

    new-instance v0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$id:Ljava/lang/String;

    iget-object v2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$wake:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->this$0:Lru/localscribe/service/ProcessingService;

    iget-object v4, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/service/ProcessingService;Lru/localscribe/ScribeApp;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->label:I

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

    .line 54
    sget-object v1, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v1}, Lru/localscribe/service/JobState;->getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const-string v2, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0438"

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 55
    sget-object v1, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v1}, Lru/localscribe/service/JobState;->getProcessingProgress()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    invoke-virtual {v1}, Lru/localscribe/service/JobState;->getActive()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$wake:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    iget-object v2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->this$0:Lru/localscribe/service/ProcessingService;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Lru/localscribe/service/ProcessingService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 60
    nop

    .line 61
    nop

    .line 59
    const/4 v3, 0x1

    const-string v4, "LocalScribe:processing"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 63
    nop

    .line 142
    move-object v4, v2

    .local v4, "$this$invokeSuspend_u24lambda_u240\\1":Landroid/os/PowerManager$WakeLock;
    const/4 v5, 0x0

    .line 63
    .local v5, "$i$a$-apply-ProcessingService$onStartCommand$2$2$1\\1\\63\\0":I
    const-wide/32 v6, 0x1499700

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 57
    .end local v4    # "$this$invokeSuspend_u24lambda_u240\\1":Landroid/os/PowerManager$WakeLock;
    .end local v5    # "$i$a$-apply-ProcessingService$onStartCommand$2$2$1\\1\\63\\0":I
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 64
    new-instance v8, Lru/localscribe/engine/OfflinePipeline;

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v9

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v1}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lru/localscribe/engine/OfflinePipeline;-><init>(Lru/localscribe/data/Repository;Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$id:Ljava/lang/String;

    new-instance v2, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda0;-><init>()V

    .line 64
    iget-object v4, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    iget-object v5, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->this$0:Lru/localscribe/service/ProcessingService;

    new-instance v6, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4, v5}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/ScribeApp;Lru/localscribe/service/ProcessingService;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->label:I

    invoke-virtual {v8, v1, v2, v6, v4}, Lru/localscribe/engine/OfflinePipeline;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 53
    return-object v0

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/localscribe/data/Repository;->isReprocessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$app:Lru/localscribe/ScribeApp;

    invoke-virtual {v0}, Lru/localscribe/ScribeApp;->getRepository()Lru/localscribe/data/Repository;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/localscribe/data/Repository;->finishReprocessing(Ljava/lang/String;)V

    .line 73
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
