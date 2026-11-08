.class public final synthetic Lru/localscribe/data/Repository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lru/localscribe/core/SpeakerCluster;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/core/SpeakerCluster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/core/SpeakerCluster;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/core/SpeakerCluster;

    check-cast p1, Lru/localscribe/core/Segment;

    invoke-static {v0, v1, p1}, Lru/localscribe/data/Repository;->$r8$lambda$1Hs5urzfPuhgEEOKZ4iDnRSDH9Y(Lkotlin/jvm/internal/Ref$ObjectRef;Lru/localscribe/core/SpeakerCluster;Lru/localscribe/core/Segment;)Lru/localscribe/core/Segment;

    move-result-object p1

    return-object p1
.end method
