.class public final synthetic Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$2:J

    iput-wide p5, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$2:J

    iget-wide v4, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda1;->f$3:J

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$r8$lambda$PnFJ6ba353JdPJcZL-kqOni0FTM(Lru/localscribe/ui/ScribeViewModel;Ljava/lang/String;JJLandroid/media/MediaPlayer;)V

    return-void
.end method
