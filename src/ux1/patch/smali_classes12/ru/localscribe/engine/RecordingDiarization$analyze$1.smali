.class final Lru/localscribe/engine/RecordingDiarization$analyze$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RecordingDiarization.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/RecordingDiarization;->analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "ru.localscribe.engine.RecordingDiarization"
    f = "RecordingDiarization.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5
    }
    l = {
        0x14,
        0x15,
        0x16,
        0x1b,
        0x28,
        0x28
    }
    m = "analyze"
    n = {
        "wav",
        "settings",
        "status",
        "progress",
        "total",
        "wav",
        "settings",
        "status",
        "progress",
        "total",
        "wav",
        "settings",
        "status",
        "progress",
        "total",
        "wav",
        "settings",
        "status",
        "progress",
        "a",
        "b",
        "lock",
        "progressA",
        "progressB",
        "total",
        "parallel",
        "wav",
        "settings",
        "status",
        "progress",
        "a",
        "b",
        "lock",
        "progressA",
        "progressB",
        "total",
        "parallel",
        "wav",
        "settings",
        "status",
        "progress",
        "a",
        "b",
        "lock",
        "progressA",
        "progressB",
        "total",
        "parallel"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "J$0",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "J$0",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "J$0",
        "I$0"
    }
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lru/localscribe/engine/RecordingDiarization;


# direct methods
.method constructor <init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/engine/RecordingDiarization;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/engine/RecordingDiarization$analyze$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$1;->result:Ljava/lang/Object;

    iget v0, p0, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$analyze$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lru/localscribe/engine/RecordingDiarization;->analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
