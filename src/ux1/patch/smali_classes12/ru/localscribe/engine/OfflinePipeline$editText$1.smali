.class final Lru/localscribe/engine/OfflinePipeline$editText$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "OfflinePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/OfflinePipeline;->editText(Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "ru.localscribe.engine.OfflinePipeline"
    f = "OfflinePipeline.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x127,
        0x132
    }
    m = "editText"
    n = {
        "recording",
        "onStatus",
        "report",
        "total",
        "recording",
        "onStatus",
        "report",
        "job",
        "editor\\2",
        "total",
        "editorStarted",
        "$i$a$-use-OfflinePipeline$editText$3\\2\\305\\0"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$5",
        "I$0",
        "J$0",
        "I$1"
    }
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lru/localscribe/engine/OfflinePipeline;


# direct methods
.method constructor <init>(Lru/localscribe/engine/OfflinePipeline;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/OfflinePipeline;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/OfflinePipeline$editText$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$editText$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$editText$1;->result:Ljava/lang/Object;

    iget v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$1;->label:I

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$1;->this$0:Lru/localscribe/engine/OfflinePipeline;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v1, v1, v2}, Lru/localscribe/engine/OfflinePipeline;->access$editText(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/core/Recording;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
