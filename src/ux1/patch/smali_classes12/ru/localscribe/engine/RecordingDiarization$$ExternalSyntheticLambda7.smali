.class public final synthetic Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lru/localscribe/engine/RecordingDiarization;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLru/localscribe/engine/RecordingDiarization;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;->f$1:J

    iput-object p4, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;->f$2:Lru/localscribe/engine/RecordingDiarization;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;->f$1:J

    iget-object v3, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;->f$2:Lru/localscribe/engine/RecordingDiarization;

    invoke-static {v0, v1, v2, v3}, Lru/localscribe/engine/RecordingDiarization;->$r8$lambda$h6UTXPN3KpjFUGppITRv5iOeu8w(Ljava/lang/String;JLru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;

    move-result-object v0

    return-object v0
.end method
