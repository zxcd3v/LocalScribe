.class public final synthetic Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lru/localscribe/core/Speaker;

.field public final synthetic f$1:Lru/localscribe/core/Speaker;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/core/Speaker;Lru/localscribe/core/Speaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/core/Speaker;

    iput-object p2, p0, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/core/Speaker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/core/Speaker;

    iget-object v1, p0, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/core/Speaker;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lru/localscribe/core/SpeakerCluster;->$r8$lambda$am112eMfKU-6vghGEAzy7-6mppM(Lru/localscribe/core/Speaker;Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
