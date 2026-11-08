.class public final synthetic Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;->f$0:J

    iput-object p3, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;->f$0:J

    iget-object v2, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/runtime/State;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lru/localscribe/ui/WaveformKt;->$r8$lambda$gENlILEYTeupEBkQ3qkhijrsf0A(JLandroidx/compose/runtime/State;F)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
