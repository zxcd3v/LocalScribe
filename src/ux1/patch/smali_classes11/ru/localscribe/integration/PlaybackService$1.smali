.class Lru/localscribe/integration/PlaybackService$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/integration/PlaybackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/localscribe/integration/PlaybackService;


# direct methods
.method constructor <init>(Lru/localscribe/integration/PlaybackService;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/localscribe/integration/PlaybackService$1;->this$0:Lru/localscribe/integration/PlaybackService;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 60
    iget-object v0, p0, Lru/localscribe/integration/PlaybackService$1;->this$0:Lru/localscribe/integration/PlaybackService;

    invoke-static {v0}, Lru/localscribe/integration/PlaybackService;->access$000(Lru/localscribe/integration/PlaybackService;)V

    return-void
.end method
