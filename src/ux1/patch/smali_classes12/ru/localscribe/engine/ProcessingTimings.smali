.class public final Lru/localscribe/engine/ProcessingTimings;
.super Ljava/lang/Object;
.source "ProcessingTimings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProcessingTimings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessingTimings.kt\nru/localscribe/engine/ProcessingTimings\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,17:1\n1#2:18\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u001a\u0008\u0002\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0005J\'\u0010\u000c\u001a\u0002H\r\"\u0004\u0008\u0000\u0010\r2\u0006\u0010\n\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000f\u00a2\u0006\u0002\u0010\u0010J:\u0010\u0011\u001a\u0002H\r\"\u0004\u0008\u0000\u0010\r2\u0006\u0010\n\u001a\u00020\u00042\u001c\u0010\u000e\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\r0\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0014R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lru/localscribe/engine/ProcessingTimings;",
        "",
        "observer",
        "Lkotlin/Function2;",
        "",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "elapsed",
        "name",
        "started",
        "measure",
        "T",
        "work",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "suspendMeasure",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final observer:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bBWrE1yVbobOVxiI_yzFToaddBc(Ljava/lang/String;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/engine/ProcessingTimings;->_init_$lambda$0(Ljava/lang/String;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lru/localscribe/engine/ProcessingTimings;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "observer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/ProcessingTimings;->observer:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 4
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lru/localscribe/engine/ProcessingTimings$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lru/localscribe/engine/ProcessingTimings$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lru/localscribe/engine/ProcessingTimings;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 6
    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;J)Lkotlin/Unit;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ms"    # J

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " elapsed_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalScribePerf"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final elapsed(Ljava/lang/String;J)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "started"    # J

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lru/localscribe/engine/ProcessingTimings;->observer:Lkotlin/jvm/functions/Function2;

    monitor-enter v0

    .line 18
    const/4 v1, 0x0

    .line 7
    .local v1, "$i$a$-synchronized-ProcessingTimings$elapsed$1\\1\\7\\0":I
    :try_start_0
    iget-object v2, p0, Lru/localscribe/engine/ProcessingTimings;->observer:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, p2

    const v5, 0xf4240

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-ProcessingTimings$elapsed$1\\1\\7\\0":I
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "work"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "work"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 10
    .local v0, "start":J
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, v0, v1}, Lru/localscribe/engine/ProcessingTimings;->elapsed(Ljava/lang/String;J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1, v0, v1}, Lru/localscribe/engine/ProcessingTimings;->elapsed(Ljava/lang/String;J)V

    throw v2
.end method

.method public final suspendMeasure(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "work"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;

    iget v1, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;

    invoke-direct {v0, p0, p3}, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;-><init>(Lru/localscribe/engine/ProcessingTimings;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 12
    iget v3, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v2, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->J$0:J

    .local v2, "start":J
    iget-object v4, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .line 14
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 12
    .end local v2    # "start":J
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 14
    .local v3, "start":J
    :try_start_1
    iput-object p1, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->L$1:Ljava/lang/Object;

    iput-wide v3, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v0, Lru/localscribe/engine/ProcessingTimings$suspendMeasure$1;->label:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v5, v2, :cond_1

    .line 12
    return-object v2

    .line 14
    :cond_1
    move-wide v2, v3

    .end local v3    # "start":J
    .restart local v2    # "start":J
    :goto_1
    invoke-virtual {p0, p1, v2, v3}, Lru/localscribe/engine/ProcessingTimings;->elapsed(Ljava/lang/String;J)V

    return-object v5

    .end local v2    # "start":J
    .restart local v3    # "start":J
    :catchall_1
    move-exception v2

    move-wide v6, v3

    move-object v4, v2

    move-wide v2, v6

    .end local v3    # "start":J
    .restart local v2    # "start":J
    :goto_2
    invoke-virtual {p0, p1, v2, v3}, Lru/localscribe/engine/ProcessingTimings;->elapsed(Ljava/lang/String;J)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
