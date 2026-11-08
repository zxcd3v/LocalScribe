.class final Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;
.super Ljava/lang/Object;
.source "Waveform.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/WaveformKt;->Waveform(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaveform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Waveform.kt\nru/localscribe/ui/WaveformKt$Waveform$3$3$1\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,95:1\n65#2:96\n65#2:101\n60#3:97\n85#3:100\n60#3:102\n85#3:105\n22#4:98\n22#4:103\n54#5:99\n54#5:104\n*S KotlinDebug\n*F\n+ 1 Waveform.kt\nru/localscribe/ui/WaveformKt$Waveform$3$3$1\n*L\n47#1:96\n50#1:101\n47#1:97\n47#1:100\n50#1:102\n50#1:105\n47#1:98\n50#1:103\n47#1:99\n50#1:104\n*E\n"
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
.field final synthetic $duration:J

.field final synthetic $latestSeek$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $scrubbing$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7kiVbyXJyR_PZNBhwgRyfyRXPXM(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->invoke$lambda$0(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Eov1dd1UUlED9sgM8ETbZtjT7Cg(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->invoke$lambda$3(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XyVAn3Calqde1zllqWNN0gby2wE(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ye7xvHS3Ss1366qaIUTXLUaKnoo(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    iput-wide p1, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$duration:J

    iput-object p3, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$scrubbing$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$latestSeek$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 10

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    const/4 v2, 0x0

    move-wide v3, v0

    const/4 v5, 0x0

    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    nop

    nop

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getSize-YbymL2g()J

    move-result-wide v0

    const/4 v2, 0x0

    move-wide v3, v0

    const/4 v5, 0x0

    shr-long v8, v3, v6

    long-to-int v3, v8

    nop

    int-to-float v0, v3

    div-float/2addr v7, v0

    long-to-float v0, p1

    mul-float/2addr v7, v0

    float-to-long v0, v7

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lru/localscribe/ui/WaveformKt;->access$Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)Lkotlin/Unit;
    .locals 2

    invoke-static {p0}, Lru/localscribe/ui/WaveformKt;->access$Waveform$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lru/localscribe/ui/WaveformKt;->access$Waveform$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/localscribe/ui/WaveformKt;->access$Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/localscribe/ui/WaveformKt;->access$Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$3(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 9

    const-string p5, "change"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    const/4 p5, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x20

    shr-long v6, v2, v5

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    nop

    nop

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getSize-YbymL2g()J

    move-result-wide v0

    const/4 p5, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    shr-long v7, v2, v5

    long-to-int v2, v7

    nop

    int-to-float p5, v2

    div-float/2addr v6, p5

    long-to-float p5, p1

    mul-float/2addr v6, p5

    float-to-long v0, v6

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lru/localscribe/ui/WaveformKt;->access$Waveform$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-wide v0, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$duration:J

    iget-object v2, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$scrubbing$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v4, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v0, v1, v2}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;)V

    iget-object v0, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$scrubbing$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$latestSeek$delegate:Landroidx/compose/runtime/State;

    new-instance v5, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v1}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    iget-object v0, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$scrubbing$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v6, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;)V

    iget-wide v0, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$duration:J

    iget-object v2, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$scrubbing$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v7, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda3;

    invoke-direct {v7, p1, v0, v1, v2}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;)V

    move-object v3, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
