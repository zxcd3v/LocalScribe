.class public final synthetic Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/internal/Ref$FloatRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v2, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lru/localscribe/engine/RecordingDiarization;->$r8$lambda$iUPOweZRHv0UgMmNVOwyYm2TiHA(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
