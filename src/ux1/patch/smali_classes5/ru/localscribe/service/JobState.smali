.class public final Lru/localscribe/service/JobState;
.super Ljava/lang/Object;
.source "ServiceSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/localscribe/service/JobState;",
        "",
        "<init>",
        "()V",
        "active",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "getActive",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "processingStage",
        "getProcessingStage",
        "processingProgress",
        "",
        "getProcessingProgress",
        "live",
        "Lru/localscribe/service/LiveState;",
        "getLive",
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

.field public static final INSTANCE:Lru/localscribe/service/JobState;

.field private static final active:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final live:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lru/localscribe/service/LiveState;",
            ">;"
        }
    .end annotation
.end field

.field private static final processingProgress:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final processingStage:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lru/localscribe/service/JobState;

    invoke-direct {v0}, Lru/localscribe/service/JobState;-><init>()V

    sput-object v0, Lru/localscribe/service/JobState;->INSTANCE:Lru/localscribe/service/JobState;

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lru/localscribe/service/JobState;->active:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 12
    const-string v0, ""

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lru/localscribe/service/JobState;->processingStage:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lru/localscribe/service/JobState;->processingProgress:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 14
    new-instance v1, Lru/localscribe/service/LiveState;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v14}, Lru/localscribe/service/LiveState;-><init>(Ljava/lang/String;JFLjava/lang/String;Ljava/lang/String;ZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lru/localscribe/service/JobState;->live:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/service/JobState;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActive()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lru/localscribe/service/JobState;->active:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getLive()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lru/localscribe/service/LiveState;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lru/localscribe/service/JobState;->live:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getProcessingProgress()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lru/localscribe/service/JobState;->processingProgress:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getProcessingStage()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lru/localscribe/service/JobState;->processingStage:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method
