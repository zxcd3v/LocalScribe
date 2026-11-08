.class public final Lru/localscribe/data/EngineGate;
.super Ljava/lang/Object;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelStore.kt\nru/localscribe/data/EngineGate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,341:1\n1#2:342\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u0008\u001a\u0002H\t\"\u0004\u0008\u0000\u0010\t2\u001c\u0010\n\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\t0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lru/localscribe/data/EngineGate;",
        "",
        "<init>",
        "()V",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "getMutex",
        "()Lkotlinx/coroutines/sync/Mutex;",
        "exclusive",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field public static final INSTANCE:Lru/localscribe/data/EngineGate;

.field private static final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/data/EngineGate;

    invoke-direct {v0}, Lru/localscribe/data/EngineGate;-><init>()V

    sput-object v0, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lru/localscribe/data/EngineGate;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/EngineGate;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exclusive(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    instance-of v0, p2, Lru/localscribe/data/EngineGate$exclusive$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lru/localscribe/data/EngineGate$exclusive$1;

    iget v1, v0, Lru/localscribe/data/EngineGate$exclusive$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/data/EngineGate$exclusive$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/data/EngineGate$exclusive$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/data/EngineGate$exclusive$1;

    invoke-direct {v0, p0, p2}, Lru/localscribe/data/EngineGate$exclusive$1;-><init>(Lru/localscribe/data/EngineGate;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lru/localscribe/data/EngineGate$exclusive$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 24
    iget v3, v0, Lru/localscribe/data/EngineGate$exclusive$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    iget-object v2, v0, Lru/localscribe/data/EngineGate$exclusive$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    sget-object v3, Lru/localscribe/data/EngineGate;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v3, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    nop

    .line 27
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lru/localscribe/data/EngineGate$exclusive$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lru/localscribe/data/EngineGate$exclusive$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v2, :cond_1

    .line 24
    return-object v2

    .line 29
    :cond_1
    :goto_1
    sget-object v2, Lru/localscribe/data/EngineGate;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 27
    return-object v3

    .line 29
    :catchall_0
    move-exception v2

    sget-object v3, Lru/localscribe/data/EngineGate;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v3, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw v2

    .line 342
    :cond_2
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-check-EngineGate$exclusive$2\\1\\25\\0":I
    nop

    .end local v2    # "$i$a$-check-EngineGate$exclusive$2\\1\\25\\0":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "\u0414\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMutex()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 22
    sget-object v0, Lru/localscribe/data/EngineGate;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method
