.class public final Lru/localscribe/ScribeApp;
.super Landroid/app/Application;
.source "ScribeApp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\"\u001a\u00020\u001aH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\r\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lru/localscribe/ScribeApp;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "diagnostics",
        "Lru/localscribe/data/Diagnostics;",
        "getDiagnostics",
        "()Lru/localscribe/data/Diagnostics;",
        "diagnostics$delegate",
        "Lkotlin/Lazy;",
        "repository",
        "Lru/localscribe/data/Repository;",
        "getRepository",
        "()Lru/localscribe/data/Repository;",
        "repository$delegate",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "getModels",
        "()Lru/localscribe/data/ModelStore;",
        "models$delegate",
        "ready",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "getReady",
        "()Lkotlinx/coroutines/CompletableDeferred;",
        "preparation",
        "Lru/localscribe/data/ModelPreparation;",
        "getPreparation",
        "()Lru/localscribe/data/ModelPreparation;",
        "preparation$delegate",
        "onCreate",
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
.field private final diagnostics$delegate:Lkotlin/Lazy;

.field private final models$delegate:Lkotlin/Lazy;

.field private final preparation$delegate:Lkotlin/Lazy;

.field private final ready:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final repository$delegate:Lkotlin/Lazy;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$7P97wSudbWSM3KWlHYNq02QZGzM(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Repository;
    .locals 0

    invoke-static {p0}, Lru/localscribe/ScribeApp;->repository_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Repository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$87Do0TxVRXDEVh68hodshBmYw1k(Lru/localscribe/ScribeApp;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ScribeApp;->preparation_delegate$lambda$0$0(Lru/localscribe/ScribeApp;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RbTf2FgdqF11VmPUrYn0gGKkY3o(Lru/localscribe/ScribeApp;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/ScribeApp;->onCreate$lambda$0(Lru/localscribe/ScribeApp;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXL0nyNKI2DHc5Nn9DbY9K1wFNY(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Diagnostics;
    .locals 0

    invoke-static {p0}, Lru/localscribe/ScribeApp;->diagnostics_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Diagnostics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fWMzXFLqgr2itD-pYVcyCTYJDg8(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelPreparation;
    .locals 0

    invoke-static {p0}, Lru/localscribe/ScribeApp;->preparation_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelPreparation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jNQRZjvJ-3avTTU9gvvarX7spGU(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelStore;
    .locals 0

    invoke-static {p0}, Lru/localscribe/ScribeApp;->models_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelStore;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/ScribeApp;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 8
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    iput-object v2, p0, Lru/localscribe/ScribeApp;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    new-instance v2, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/ScribeApp;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lru/localscribe/ScribeApp;->diagnostics$delegate:Lkotlin/Lazy;

    .line 10
    new-instance v2, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/ScribeApp;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lru/localscribe/ScribeApp;->repository$delegate:Lkotlin/Lazy;

    .line 11
    new-instance v2, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda2;-><init>(Lru/localscribe/ScribeApp;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lru/localscribe/ScribeApp;->models$delegate:Lkotlin/Lazy;

    .line 12
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/ScribeApp;->ready:Lkotlinx/coroutines/CompletableDeferred;

    .line 13
    new-instance v0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/ScribeApp;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/ScribeApp;->preparation$delegate:Lkotlin/Lazy;

    .line 7
    return-void
.end method

.method private static final diagnostics_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Diagnostics;
    .locals 2
    .param p0, "this$0"    # Lru/localscribe/ScribeApp;

    .line 9
    new-instance v0, Lru/localscribe/data/Diagnostics;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/localscribe/data/Diagnostics;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final models_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelStore;
    .locals 2
    .param p0, "this$0"    # Lru/localscribe/ScribeApp;

    .line 11
    new-instance v0, Lru/localscribe/data/ModelStore;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/localscribe/data/ModelStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final onCreate$lambda$0(Lru/localscribe/ScribeApp;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "this$0"    # Lru/localscribe/ScribeApp;
    .param p1, "$previous"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 22
    invoke-virtual {p0}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "uncaught"

    invoke-virtual {v0, v1, p3}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 24
    :cond_0
    return-void
.end method

.method private static final preparation_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelPreparation;
    .locals 4
    .param p0, "this$0"    # Lru/localscribe/ScribeApp;

    .line 14
    new-instance v0, Lru/localscribe/data/ModelPreparation;

    invoke-virtual {p0}, Lru/localscribe/ScribeApp;->getModels()Lru/localscribe/data/ModelStore;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/ScribeApp;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda4;-><init>(Lru/localscribe/ScribeApp;)V

    invoke-direct {v0, v1, v2, v3}, Lru/localscribe/data/ModelPreparation;-><init>(Lru/localscribe/data/ModelStore;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final preparation_delegate$lambda$0$0(Lru/localscribe/ScribeApp;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lru/localscribe/ScribeApp;
    .param p1, "it"    # Ljava/lang/Throwable;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lru/localscribe/ScribeApp;->getDiagnostics()Lru/localscribe/data/Diagnostics;

    move-result-object v0

    const-string v1, "model-preparation"

    invoke-virtual {v0, v1, p1}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final repository_delegate$lambda$0(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Repository;
    .locals 2
    .param p0, "this$0"    # Lru/localscribe/ScribeApp;

    .line 10
    new-instance v0, Lru/localscribe/data/Repository;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/localscribe/data/Repository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final getDiagnostics()Lru/localscribe/data/Diagnostics;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/localscribe/ScribeApp;->diagnostics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/Diagnostics;

    return-object v0
.end method

.method public final getModels()Lru/localscribe/data/ModelStore;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/localscribe/ScribeApp;->models$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/ModelStore;

    return-object v0
.end method

.method public final getPreparation()Lru/localscribe/data/ModelPreparation;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/localscribe/ScribeApp;->preparation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/ModelPreparation;

    return-object v0
.end method

.method public final getReady()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/localscribe/ScribeApp;->ready:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public final getRepository()Lru/localscribe/data/Repository;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/localscribe/ScribeApp;->repository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/Repository;

    return-object v0
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/localscribe/ScribeApp;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    new-instance v0, Lru/localscribe/ui/HexLegacyControls;

    invoke-direct {v0}, Lru/localscribe/ui/HexLegacyControls;-><init>()V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lru/localscribe/ScribeApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 20
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 21
    .local v0, "previous":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;-><init>(Lru/localscribe/ScribeApp;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 25
    iget-object v2, p0, Lru/localscribe/ScribeApp;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lru/localscribe/ScribeApp$onCreate$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lru/localscribe/ScribeApp$onCreate$2;-><init>(Lru/localscribe/ScribeApp;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 43
    return-void
.end method
