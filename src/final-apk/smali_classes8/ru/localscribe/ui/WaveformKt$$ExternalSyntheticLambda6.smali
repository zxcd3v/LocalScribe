.class public final synthetic Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/audio/WaveformPeaks;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$0:Lru/localscribe/audio/WaveformPeaks;

    iput-object p2, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$3:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$0:Lru/localscribe/audio/WaveformPeaks;

    iget-object v1, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$3:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda6;->f$4:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lru/localscribe/ui/WaveformKt;->$r8$lambda$NYS_Ky7ETOCCkS8KoadkuKzzE7A(Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
