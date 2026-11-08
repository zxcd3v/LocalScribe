.class final Lru/localscribe/engine/RecordingDiarization$load$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RecordingDiarization.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/engine/RecordingDiarization;->load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
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
        0x0
    }
    l = {
        0xd
    }
    m = "load"
    n = {
        "work"
    }
    s = {
        "L$0"
    }
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lru/localscribe/engine/RecordingDiarization$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$load$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$load$1;->result:Ljava/lang/Object;

    iget v0, p0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization$load$1;->this$0:Lru/localscribe/engine/RecordingDiarization;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v2}, Lru/localscribe/engine/RecordingDiarization;->access$load(Lru/localscribe/engine/RecordingDiarization;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
