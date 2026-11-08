.class public final synthetic Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/input/pointer/PointerInputScope;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iput-wide p2, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-wide v1, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {v0, v1, v2, v3, p1}, Lru/localscribe/ui/WaveformKt$Waveform$3$3$1;->$r8$lambda$7kiVbyXJyR_PZNBhwgRyfyRXPXM(Landroidx/compose/ui/input/pointer/PointerInputScope;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
