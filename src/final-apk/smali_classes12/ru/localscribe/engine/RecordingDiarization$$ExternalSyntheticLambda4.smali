.class public final synthetic Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lru/localscribe/engine/RecordingDiarization;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/engine/RecordingDiarization;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;->f$0:Lru/localscribe/engine/RecordingDiarization;

    iput-object p2, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;->f$0:Lru/localscribe/engine/RecordingDiarization;

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lru/localscribe/engine/RecordingDiarization;->$r8$lambda$BzJ6z0IwyZA0gmsc_4fZIcpSoSY(Lru/localscribe/engine/RecordingDiarization;Ljava/lang/String;J)Lru/localscribe/engine/NativeDiarizer;

    move-result-object v0

    return-object v0
.end method
