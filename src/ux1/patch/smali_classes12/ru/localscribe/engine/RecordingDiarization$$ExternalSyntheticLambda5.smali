.class public final synthetic Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lru/localscribe/engine/NativeDiarizer;

.field public final synthetic f$1:[F


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/engine/NativeDiarizer;[F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/engine/NativeDiarizer;

    iput-object p2, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;->f$1:[F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/engine/NativeDiarizer;

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;->f$1:[F

    invoke-static {v0, v1}, Lru/localscribe/engine/RecordingDiarization;->$r8$lambda$JbIuntuvF5fLvGqKjtV8EeQma6I(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
