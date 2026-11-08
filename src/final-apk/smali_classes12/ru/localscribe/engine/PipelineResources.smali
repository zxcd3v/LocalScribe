.class public final Lru/localscribe/engine/PipelineResources;
.super Ljava/lang/Object;
.source "PipelineResources.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipelineResources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipelineResources.kt\nru/localscribe/engine/PipelineResources\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,94:1\n12970#2,2:95\n1#3:97\n116#4,11:98\n*S KotlinDebug\n*F\n+ 1 PipelineResources.kt\nru/localscribe/engine/PipelineResources\n*L\n19#1:95,2\n92#1:98,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u00105\u001a\u000206H\u0002J\u0018\u00107\u001a\u0002062\u0006\u00108\u001a\u0002002\u0008\u0008\u0002\u00109\u001a\u00020\u0013J\u0006\u0010:\u001a\u00020\u0007J\u0006\u0010;\u001a\u00020\u0007J\u0006\u0010<\u001a\u00020\u0007J\u001e\u0010=\u001a\u0002062\u0006\u0010>\u001a\u0002002\u0006\u0010?\u001a\u00020\"2\u0006\u0010@\u001a\u00020\u0013J\"\u0010A\u001a\u0002HB\"\u0004\u0008\u0000\u0010B2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u0002HB0DH\u0086@\u00a2\u0006\u0002\u0010ER\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000bR\u0011\u0010\u0018\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000b\"\u0004\u0008 \u0010\u001dR\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u0002010/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00102\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u00130/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lru/localscribe/engine/PipelineResources;",
        "",
        "context",
        "Landroid/content/Context;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "enabled",
        "",
        "<init>",
        "(Landroid/content/Context;Lru/localscribe/core/Settings;Z)V",
        "getEnabled",
        "()Z",
        "activity",
        "Landroid/app/ActivityManager;",
        "power",
        "Landroid/os/PowerManager;",
        "loadMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "cores",
        "",
        "getCores",
        "()I",
        "emulatorCpu",
        "getEmulatorCpu",
        "asrThreads",
        "getAsrThreads",
        "asrRunning",
        "getAsrRunning",
        "setAsrRunning",
        "(Z)V",
        "diarizersTogether",
        "getDiarizersTogether",
        "setDiarizersTogether",
        "holdUntil",
        "",
        "healthySince",
        "sampledAt",
        "available",
        "threshold",
        "total",
        "pss",
        "low",
        "thermal",
        "headroom",
        "",
        "headroomAt",
        "best",
        "",
        "",
        "",
        "slow",
        "lastReason",
        "mib",
        "sample",
        "",
        "pause",
        "reason",
        "seconds",
        "canPrefetch",
        "canParallelDiarizers",
        "secondaryMustWait",
        "observe",
        "stage",
        "nanos",
        "frames",
        "load",
        "T",
        "work",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final activity:Landroid/app/ActivityManager;

.field private volatile asrRunning:Z

.field private final asrThreads:I

.field private available:J

.field private final best:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final cores:I

.field private volatile diarizersTogether:Z

.field private final emulatorCpu:Z

.field private final enabled:Z

.field private headroom:F

.field private headroomAt:J

.field private healthySince:J

.field private volatile holdUntil:J

.field private lastReason:Ljava/lang/String;

.field private final loadMutex:Lkotlinx/coroutines/sync/Mutex;

.field private low:Z

.field private final mib:J

.field private final power:Landroid/os/PowerManager;

.field private pss:J

.field private sampledAt:J

.field private final slow:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private thermal:I

.field private threshold:J

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/PipelineResources;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/localscribe/core/Settings;Z)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lru/localscribe/engine/PipelineResources;->enabled:Z

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lru/localscribe/engine/PipelineResources;->activity:Landroid/app/ActivityManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/PowerManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/PowerManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lru/localscribe/engine/PipelineResources;->power:Landroid/os/PowerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    iput-object v2, p0, Lru/localscribe/engine/PipelineResources;->loadMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    iput v2, p0, Lru/localscribe/engine/PipelineResources;->cores:I

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v3, "SUPPORTED_ABIS"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "x86_64"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "x86"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    move v7, v0

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v1

    :goto_3
    if-eqz v7, :cond_3

    move v0, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    nop

    :goto_4
    iput-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->emulatorCpu:Z

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->emulatorCpu:Z

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getThreads()I

    move-result v0

    iget v2, p0, Lru/localscribe/engine/PipelineResources;->cores:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5
    iput v0, p0, Lru/localscribe/engine/PipelineResources;->asrThreads:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lru/localscribe/engine/PipelineResources;->sampledAt:J

    iput-boolean v1, p0, Lru/localscribe/engine/PipelineResources;->low:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lru/localscribe/engine/PipelineResources;->headroom:F

    iput-wide v2, p0, Lru/localscribe/engine/PipelineResources;->headroomAt:J

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lru/localscribe/engine/PipelineResources;->best:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lru/localscribe/engine/PipelineResources;->slow:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lru/localscribe/engine/PipelineResources;->lastReason:Ljava/lang/String;

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lru/localscribe/engine/PipelineResources;->mib:J

    return-void
.end method

.method public static synthetic pause$default(Lru/localscribe/engine/PipelineResources;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x14

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/PipelineResources;->pause(Ljava/lang/String;I)V

    return-void
.end method

.method private final declared-synchronized sample()V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lru/localscribe/engine/PipelineResources;->sampledAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lru/localscribe/engine/PipelineResources;->sampledAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-long v2, v0, v2

    const-wide/16 v6, 0x7d0

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v3, p0, Lru/localscribe/engine/PipelineResources;->activity:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v6, p0, Lru/localscribe/engine/PipelineResources;->available:J

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iput-wide v6, p0, Lru/localscribe/engine/PipelineResources;->threshold:J

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v6, p0, Lru/localscribe/engine/PipelineResources;->total:J

    iget-boolean v3, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v3, p0, Lru/localscribe/engine/PipelineResources;->low:Z

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v6

    const/16 v3, 0x400

    int-to-long v8, v3

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lru/localscribe/engine/PipelineResources;->pss:J

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v6, 0x1d

    const/4 v7, 0x0

    if-lt v3, v6, :cond_3

    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lru/localscribe/engine/PipelineResources;

    const/4 v6, 0x0

    iget-object v8, v3, Lru/localscribe/engine/PipelineResources;->power:Landroid/os/PowerManager;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v8

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v3, v6

    :cond_2
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v7

    :goto_2
    iput v3, p0, Lru/localscribe/engine/PipelineResources;->thermal:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v3, v6, :cond_7

    iget-wide v8, p0, Lru/localscribe/engine/PipelineResources;->headroomAt:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lru/localscribe/engine/PipelineResources;->headroomAt:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    :cond_4
    const/high16 v3, 0x7fc00000    # Float.NaN

    :try_start_4
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lru/localscribe/engine/PipelineResources;

    const/4 v5, 0x0

    iget-object v6, v4, Lru/localscribe/engine/PipelineResources;->power:Landroid/os/PowerManager;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Landroid/os/PowerManager;->getThermalHeadroom(I)F

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v4

    :try_start_5
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v4, v3

    :cond_6
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iput v3, p0, Lru/localscribe/engine/PipelineResources;->headroom:F

    iput-wide v0, p0, Lru/localscribe/engine/PipelineResources;->headroomAt:J

    :cond_7
    iput-wide v0, p0, Lru/localscribe/engine/PipelineResources;->sampledAt:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized canParallelDiarizers()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lru/localscribe/engine/PipelineResources;->sample()V

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->emulatorCpu:Z

    if-nez v0, :cond_0

    iget v0, p0, Lru/localscribe/engine/PipelineResources;->cores:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lru/localscribe/engine/PipelineResources;->total:J

    iget-wide v2, p0, Lru/localscribe/engine/PipelineResources;->mib:J

    const-wide/16 v4, 0xc00

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lru/localscribe/engine/PipelineResources;->canPrefetch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/localscribe/engine/PipelineResources;->available:J

    iget-wide v2, p0, Lru/localscribe/engine/PipelineResources;->threshold:J

    const/16 v4, 0x600

    int-to-long v4, v4

    iget-wide v6, p0, Lru/localscribe/engine/PipelineResources;->mib:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized canPrefetch()Z
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lru/localscribe/engine/PipelineResources;->enabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget v0, v1, Lru/localscribe/engine/PipelineResources;->cores:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    move v15, v2

    goto/16 :goto_5

    :cond_0
    invoke-direct {v1}, Lru/localscribe/engine/PipelineResources;->sample()V

    iget-wide v3, v1, Lru/localscribe/engine/PipelineResources;->total:J

    const/16 v0, 0x2d

    int-to-long v5, v0

    mul-long/2addr v3, v5

    const/16 v0, 0x64

    int-to-long v5, v0

    div-long/2addr v3, v5

    iget-wide v5, v1, Lru/localscribe/engine/PipelineResources;->mib:J

    const-wide/16 v7, 0x800

    mul-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-boolean v0, v1, Lru/localscribe/engine/PipelineResources;->low:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v0, :cond_3

    iget-wide v7, v1, Lru/localscribe/engine/PipelineResources;->available:J

    iget-wide v9, v1, Lru/localscribe/engine/PipelineResources;->threshold:J

    const/16 v0, 0x180

    int-to-long v11, v0

    iget-wide v13, v1, Lru/localscribe/engine/PipelineResources;->mib:J

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    cmp-long v0, v7, v9

    if-ltz v0, :cond_3

    iget-wide v7, v1, Lru/localscribe/engine/PipelineResources;->pss:J

    cmp-long v0, v7, v3

    if-gtz v0, :cond_3

    iget v0, v1, Lru/localscribe/engine/PipelineResources;->thermal:I

    if-ge v0, v5, :cond_3

    iget v0, v1, Lru/localscribe/engine/PipelineResources;->headroom:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v0, v1, Lru/localscribe/engine/PipelineResources;->headroom:F

    const v7, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_4

    iget-wide v6, v1, Lru/localscribe/engine/PipelineResources;->available:J

    iget-wide v8, v1, Lru/localscribe/engine/PipelineResources;->mib:J

    div-long/2addr v6, v8

    iget-wide v8, v1, Lru/localscribe/engine/PipelineResources;->pss:J

    iget-wide v10, v1, Lru/localscribe/engine/PipelineResources;->mib:J

    div-long/2addr v8, v10

    iget v10, v1, Lru/localscribe/engine/PipelineResources;->thermal:I

    iget v11, v1, Lru/localscribe/engine/PipelineResources;->headroom:F

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "memory/thermal: free="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MiB pss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MiB status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " headroom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v2, v5, v7}, Lru/localscribe/engine/PipelineResources;->pause$default(Lru/localscribe/engine/PipelineResources;Ljava/lang/String;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v1, Lru/localscribe/engine/PipelineResources;->holdUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v7, v9

    if-gez v5, :cond_5

    monitor-exit p0

    return v2

    :cond_5
    :try_start_2
    iget-wide v9, v1, Lru/localscribe/engine/PipelineResources;->holdUntil:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_a

    iget-wide v9, v1, Lru/localscribe/engine/PipelineResources;->available:J

    iget-wide v13, v1, Lru/localscribe/engine/PipelineResources;->threshold:J

    const/16 v5, 0x280

    move v15, v2

    move-wide/from16 v16, v3

    int-to-long v2, v5

    iget-wide v4, v1, Lru/localscribe/engine/PipelineResources;->mib:J

    mul-long/2addr v2, v4

    add-long/2addr v13, v2

    cmp-long v2, v9, v13

    if-ltz v2, :cond_9

    iget v2, v1, Lru/localscribe/engine/PipelineResources;->thermal:I

    if-gt v2, v6, :cond_9

    iget-wide v2, v1, Lru/localscribe/engine/PipelineResources;->pss:J

    const/16 v4, 0x9

    int-to-long v4, v4

    mul-long v4, v4, v16

    const/16 v9, 0xa

    int-to-long v9, v9

    div-long/2addr v4, v9

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v2, v1, Lru/localscribe/engine/PipelineResources;->healthySince:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_7

    iput-wide v7, v1, Lru/localscribe/engine/PipelineResources;->healthySince:J

    :cond_7
    iget-wide v2, v1, Lru/localscribe/engine/PipelineResources;->healthySince:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v2, v7, v2

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    monitor-exit p0

    return v15

    :cond_8
    :try_start_3
    iput-wide v11, v1, Lru/localscribe/engine/PipelineResources;->holdUntil:J

    const-string v2, ""

    iput-object v2, v1, Lru/localscribe/engine/PipelineResources;->lastReason:Ljava/lang/String;

    const-string v2, "LocalScribeLoad"

    const-string v3, "parallel resumed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    :goto_3
    iput-wide v11, v1, Lru/localscribe/engine/PipelineResources;->healthySince:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v15

    :cond_a
    move-wide/from16 v16, v3

    :goto_4
    monitor-exit p0

    return v6

    :cond_b
    move v15, v2

    :goto_5
    monitor-exit p0

    return v15

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final getAsrRunning()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->asrRunning:Z

    return v0
.end method

.method public final getAsrThreads()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/PipelineResources;->asrThreads:I

    return v0
.end method

.method public final getCores()I
    .locals 1

    iget v0, p0, Lru/localscribe/engine/PipelineResources;->cores:I

    return v0
.end method

.method public final getDiarizersTogether()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->diarizersTogether:Z

    return v0
.end method

.method public final getEmulatorCpu()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->emulatorCpu:Z

    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->enabled:Z

    return v0
.end method

.method public final load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lru/localscribe/engine/PipelineResources$load$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lru/localscribe/engine/PipelineResources$load$1;

    iget v1, v0, Lru/localscribe/engine/PipelineResources$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/engine/PipelineResources$load$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/engine/PipelineResources$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/PipelineResources$load$1;

    invoke-direct {v0, p0, p2}, Lru/localscribe/engine/PipelineResources$load$1;-><init>(Lru/localscribe/engine/PipelineResources;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v0, Lru/localscribe/engine/PipelineResources$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lru/localscribe/engine/PipelineResources$load$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, v0, Lru/localscribe/engine/PipelineResources$load$1;->I$0:I

    const/4 v3, 0x0

    iget-object v4, v0, Lru/localscribe/engine/PipelineResources$load$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lru/localscribe/engine/PipelineResources$load$1;->L$0:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v4, p0, Lru/localscribe/engine/PipelineResources;->loadMutex:Lkotlinx/coroutines/sync/Mutex;

    nop

    const/4 v3, 0x0

    const/4 v5, 0x0

    iput-object p1, v0, Lru/localscribe/engine/PipelineResources$load$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lru/localscribe/engine/PipelineResources$load$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lru/localscribe/engine/PipelineResources$load$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lru/localscribe/engine/PipelineResources$load$1;->label:I

    invoke-interface {v4, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_1

    return-object v2

    :cond_1
    move v2, v5

    :goto_1
    nop

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    nop

    nop

    return-object v6

    :catchall_0
    move-exception v5

    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized observe(Ljava/lang/String;JI)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "stage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x1f400

    if-ge p4, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    long-to-double v0, p2

    int-to-double v2, p4

    div-double/2addr v0, v2

    :try_start_1
    iget-object v2, p0, Lru/localscribe/engine/PipelineResources;->best:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    iget-object v3, p0, Lru/localscribe/engine/PipelineResources;->best:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v0

    :goto_0
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lru/localscribe/engine/PipelineResources;->asrRunning:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lru/localscribe/engine/PipelineResources;->diarizersTogether:Z

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x3ffa666666666666L    # 1.65

    mul-double/2addr v4, v6

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lru/localscribe/engine/PipelineResources;->slow:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lru/localscribe/engine/PipelineResources;->slow:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "measured slowdown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {p0, v5, v6}, Lru/localscribe/engine/PipelineResources;->pause(Ljava/lang/String;I)V

    iget-object v5, p0, Lru/localscribe/engine/PipelineResources;->slow:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lru/localscribe/engine/PipelineResources;->slow:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized pause(Ljava/lang/String;I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lru/localscribe/engine/PipelineResources;->holdUntil:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lru/localscribe/engine/PipelineResources;->holdUntil:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/localscribe/engine/PipelineResources;->healthySince:J

    iget-object v0, p0, Lru/localscribe/engine/PipelineResources;->lastReason:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LocalScribeLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parallel pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lru/localscribe/engine/PipelineResources;->lastReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized secondaryMustWait()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lru/localscribe/engine/PipelineResources;->sample()V

    iget-boolean v0, p0, Lru/localscribe/engine/PipelineResources;->low:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lru/localscribe/engine/PipelineResources;->available:J

    iget-wide v2, p0, Lru/localscribe/engine/PipelineResources;->threshold:J

    const/16 v4, 0xa0

    int-to-long v4, v4

    iget-wide v6, p0, Lru/localscribe/engine/PipelineResources;->mib:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lru/localscribe/engine/PipelineResources;->pss:J

    iget-wide v2, p0, Lru/localscribe/engine/PipelineResources;->total:J

    const/4 v4, 0x2

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget-wide v4, p0, Lru/localscribe/engine/PipelineResources;->mib:J

    const-wide/16 v6, 0x800

    mul-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lru/localscribe/engine/PipelineResources;->thermal:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "secondary rescheduled"

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Lru/localscribe/engine/PipelineResources;->pause(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setAsrRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/localscribe/engine/PipelineResources;->asrRunning:Z

    return-void
.end method

.method public final setDiarizersTogether(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/localscribe/engine/PipelineResources;->diarizersTogether:Z

    return-void
.end method
