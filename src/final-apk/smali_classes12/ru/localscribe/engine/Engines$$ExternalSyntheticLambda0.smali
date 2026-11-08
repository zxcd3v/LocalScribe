.class public final synthetic Lru/localscribe/engine/Engines$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lru/localscribe/engine/Engines;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/engine/Engines;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/engine/Engines;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/Engines$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/engine/Engines;

    invoke-static {v0}, Lru/localscribe/engine/Engines;->$r8$lambda$xs6DyYShgAcPON-atZcq_m-rcK0(Lru/localscribe/engine/Engines;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    move-result-object v0

    return-object v0
.end method
