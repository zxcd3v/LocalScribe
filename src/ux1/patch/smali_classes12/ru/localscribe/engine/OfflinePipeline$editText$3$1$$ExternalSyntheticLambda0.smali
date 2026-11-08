.class public final synthetic Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/engine/OfflinePipeline;

.field public final synthetic f$1:Lru/localscribe/engine/LocalTextEditor;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/engine/LocalTextEditor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/engine/OfflinePipeline;

    iput-object p2, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/engine/LocalTextEditor;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/engine/OfflinePipeline;

    iget-object v1, p0, Lru/localscribe/engine/OfflinePipeline$editText$3$1$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/engine/LocalTextEditor;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lru/localscribe/engine/OfflinePipeline$editText$3$1;->$r8$lambda$WNxdCIdUr6q99PrdYdg-81zPuv8(Lru/localscribe/engine/OfflinePipeline;Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
