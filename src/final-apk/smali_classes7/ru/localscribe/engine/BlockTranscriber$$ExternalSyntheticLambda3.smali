.class public final synthetic Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda3;->f$0:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda3;->f$0:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lru/localscribe/engine/BlockTranscriber;->$r8$lambda$03sUj6Vt0uTasjScB6T5_sWvtJk(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
