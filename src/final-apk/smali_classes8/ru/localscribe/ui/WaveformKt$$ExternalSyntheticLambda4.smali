.class public final synthetic Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;->f$0:J

    iput-object p3, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;->f$0:J

    iget-object v2, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {v0, v1, v2, v3, p1}, Lru/localscribe/ui/WaveformKt;->$r8$lambda$xYSyVzMM8LSW6IR__LJ1RH72P6A(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
