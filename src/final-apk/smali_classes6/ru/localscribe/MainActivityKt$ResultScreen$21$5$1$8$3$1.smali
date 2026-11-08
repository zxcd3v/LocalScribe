.class final Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ResultScreen(Lru/localscribe/core/Transcript;ZLru/localscribe/service/LiveState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lru/localscribe/data/TranscriptPage;Lru/localscribe/data/TranscriptQuery;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lru/localscribe/ui/PlaybackState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lru/localscribe/ui/SummaryState$Running;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
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


# instance fields
.field final synthetic $assigned$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $editing$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $editingParts$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $s:Lru/localscribe/core/Segment;

.field final synthetic $text$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lru/localscribe/core/Segment;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Segment;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$s:Lru/localscribe/core/Segment;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$parts:Ljava/util/List;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$editing$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$editingParts$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$text$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$assigned$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$editing$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$s:Lru/localscribe/core/Segment;

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$22(Landroidx/compose/runtime/MutableState;Lru/localscribe/core/Segment;)V

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$editingParts$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$parts:Ljava/util/List;

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$25(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$text$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$s:Lru/localscribe/core/Segment;

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$29(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$assigned$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$3$1;->$s:Lru/localscribe/core/Segment;

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$32(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
