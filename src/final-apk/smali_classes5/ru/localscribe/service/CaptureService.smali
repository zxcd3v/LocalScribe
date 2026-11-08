.class public final Lru/localscribe/service/CaptureService;
.super Landroid/app/Service;
.source "CaptureService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureService.kt\nru/localscribe/service/CaptureService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,441:1\n1#2:442\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\"\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lru/localscribe/service/CaptureService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "stopping",
        "",
        "paused",
        "recorder",
        "Landroid/media/AudioRecord;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "onDestroy",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private job:Lkotlinx/coroutines/Job;

.field private volatile paused:Z

.field private volatile recorder:Landroid/media/AudioRecord;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private volatile stopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/service/CaptureService;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/service/CaptureService;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getPaused$p(Lru/localscribe/service/CaptureService;)Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/service/CaptureService;->paused:Z

    return v0
.end method

.method public static final synthetic access$getStopping$p(Lru/localscribe/service/CaptureService;)Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/service/CaptureService;->stopping:Z

    return v0
.end method

.method public static final synthetic access$setRecorder$p(Lru/localscribe/service/CaptureService;Landroid/media/AudioRecord;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/service/CaptureService;->recorder:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/localscribe/service/CaptureService;->stopping:Z

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lru/localscribe/service/CaptureService;

    const/4 v3, 0x0

    iget-object v4, v2, Lru/localscribe/service/CaptureService;->recorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Lru/localscribe/service/CaptureService;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v1, v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v7, "PAUSE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v5, v1, Lru/localscribe/service/CaptureService;->paused:Z

    return v4

    :sswitch_1
    const-string v7, "STOP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v5, v1, Lru/localscribe/service/CaptureService;->stopping:Z

    iget-object v0, v1, Lru/localscribe/service/CaptureService;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    if-nez v5, :cond_4

    invoke-virtual {v1}, Lru/localscribe/service/CaptureService;->stopSelf()V

    :cond_4
    return v4

    :sswitch_2
    const-string v7, "RESUME"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v6, v1, Lru/localscribe/service/CaptureService;->paused:Z

    return v4

    :cond_6
    :goto_2
    iget-object v0, v1, Lru/localscribe/service/CaptureService;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v6

    :goto_3
    if-eqz v0, :cond_8

    return v4

    :cond_8
    if-eqz v2, :cond_a

    const-string v0, "id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v0

    nop

    :try_start_0
    move-object v0, v1

    check-cast v0, Landroid/app/Service;

    const-string v8, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a \u0437\u0430\u043f\u0438\u0441\u0438"

    invoke-static {v0, v5, v8}, Lru/localscribe/service/ServiceSupportKt;->foreground(Landroid/app/Service;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v6, v1, Lru/localscribe/service/CaptureService;->stopping:Z

    iput-boolean v6, v1, Lru/localscribe/service/CaptureService;->paused:Z

    nop

    iget-object v9, v1, Lru/localscribe/service/CaptureService;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lru/localscribe/service/CaptureService$onStartCommand$2;

    invoke-direct {v0, v1, v7, v3}, Lru/localscribe/service/CaptureService$onStartCommand$2;-><init>(Lru/localscribe/service/CaptureService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v1, Lru/localscribe/service/CaptureService;->job:Lkotlinx/coroutines/Job;

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lru/localscribe/service/CaptureService;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type ru.localscribe.ScribeApp"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lru/localscribe/ScribeApp;

    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v6

    const-string v8, "foreground-start"

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v9}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Lru/localscribe/ScribeApp;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    new-instance v6, Lru/localscribe/service/CaptureService$onStartCommand$1;

    invoke-direct {v6, v5, v7, v3}, Lru/localscribe/service/CaptureService$onStartCommand$1;-><init>(Lru/localscribe/ScribeApp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-virtual {v1}, Lru/localscribe/service/CaptureService;->stopSelf()V

    return v4

    :cond_a
    :goto_4
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x701f43d3 -> :sswitch_2
        0x270002 -> :sswitch_1
        0x4862dd6 -> :sswitch_0
    .end sparse-switch
.end method
