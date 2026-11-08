.class public final synthetic Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$1:[F

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;[FZJLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$1:[F

    iput-boolean p3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$2:Z

    iput-wide p4, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$3:J

    iput-object p6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p7, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$5:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$1:[F

    iget-boolean v2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$2:Z

    iget-wide v3, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$3:J

    iget-object v5, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v6, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda2;->f$5:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static/range {v0 .. v7}, Lru/localscribe/engine/OfflinePipeline$run$3;->$r8$lambda$htddatrWWjlNMFy0VrIjKB2XkBU(Lkotlin/jvm/internal/Ref$LongRef;[FZJLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
