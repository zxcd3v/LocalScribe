.class public final synthetic Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$run$3$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lru/localscribe/engine/OfflinePipeline$run$3;->$r8$lambda$4yx-WX9Fl5DqD47r-uZ_jB_WX0o(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
