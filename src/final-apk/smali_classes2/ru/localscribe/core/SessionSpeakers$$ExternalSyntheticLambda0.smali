.class public final synthetic Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:Lru/localscribe/core/SessionSpeakers;


# direct methods
.method public synthetic constructor <init>([FLru/localscribe/core/SessionSpeakers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;->f$0:[F

    iput-object p2, p0, Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/core/SessionSpeakers;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;->f$0:[F

    iget-object v1, p0, Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;->f$1:Lru/localscribe/core/SessionSpeakers;

    check-cast p1, Lru/localscribe/core/SessionSpeakers$Candidate;

    invoke-static {v0, v1, p1}, Lru/localscribe/core/SessionSpeakers;->$r8$lambda$5kK9VIK1xjBMyCXOekVIcKLnCl4([FLru/localscribe/core/SessionSpeakers;Lru/localscribe/core/SessionSpeakers$Candidate;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
