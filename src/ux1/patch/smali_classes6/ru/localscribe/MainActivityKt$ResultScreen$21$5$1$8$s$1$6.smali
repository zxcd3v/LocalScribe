.class final Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lru/localscribe/core/Segment;",
        "Ljava/lang/CharSequence;",
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


# static fields
.field public static final INSTANCE:Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;

    invoke-direct {v0}, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;-><init>()V

    sput-object v0, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;->INSTANCE:Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lru/localscribe/core/Segment;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "it"    # Lru/localscribe/core/Segment;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getOriginalAsrText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 1154
    move-object v0, p1

    check-cast v0, Lru/localscribe/core/Segment;

    invoke-virtual {p0, v0}, Lru/localscribe/MainActivityKt$ResultScreen$21$5$1$8$s$1$6;->invoke(Lru/localscribe/core/Segment;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
