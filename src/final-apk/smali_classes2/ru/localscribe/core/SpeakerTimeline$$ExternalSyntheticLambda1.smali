.class public final synthetic Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;->f$0:J

    iput p3, p0, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;->f$0:J

    iget v2, p0, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lru/localscribe/core/VoiceTurn;

    invoke-static {v0, v1, v2, p1}, Lru/localscribe/core/SpeakerTimeline;->$r8$lambda$JBU45WsB2AAeOl7i9-CvUyQ8950(JILru/localscribe/core/VoiceTurn;)Lru/localscribe/core/VoiceTurn;

    move-result-object p1

    return-object p1
.end method
