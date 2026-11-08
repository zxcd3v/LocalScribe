.class public final synthetic Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/audio/WaveformPeaks;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/audio/WaveformPeaks;JJLjava/util/Map;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/audio/WaveformPeaks;

    iput-wide p2, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$1:J

    iput-wide p4, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$2:J

    iput-object p6, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$3:Ljava/util/Map;

    iput-wide p7, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$4:J

    iput-wide p9, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$5:J

    iput-object p11, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$7:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/audio/WaveformPeaks;

    iget-wide v1, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$1:J

    iget-wide v3, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$2:J

    iget-object v5, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$3:Ljava/util/Map;

    iget-wide v6, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$4:J

    iget-wide v8, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$5:J

    iget-object v10, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/MutableState;

    iget-object v11, p0, Lru/localscribe/ui/WaveformKt$$ExternalSyntheticLambda5;->f$7:Landroidx/compose/runtime/State;

    move-object v12, p1

    check-cast v12, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-static/range {v0 .. v12}, Lru/localscribe/ui/WaveformKt;->$r8$lambda$82O0XB0pCI7T4pWFeM7iIqJfj0U(Lru/localscribe/audio/WaveformPeaks;JJLjava/util/Map;JJLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p1

    return-object p1
.end method
