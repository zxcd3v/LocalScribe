.class public final synthetic Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda3;->f$0:Lru/localscribe/ui/ScribeViewModel;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$playAudio$1$$ExternalSyntheticLambda3;->f$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-static {v0, p1, p2, p3}, Lru/localscribe/ui/ScribeViewModel$playAudio$1;->$r8$lambda$DVx68Ohlw94a7VdLQW-OCKEoU3c(Lru/localscribe/ui/ScribeViewModel;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
