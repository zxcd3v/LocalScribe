.class Lru/localscribe/integration/OverlayService$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/integration/OverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/localscribe/integration/OverlayService;


# direct methods
.method constructor <init>(Lru/localscribe/integration/OverlayService;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, ":"

    :try_start_0
    iget-object v1, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-virtual {v0}, Lru/localscribe/integration/OverlayService;->stopSelf()V

    return-void

    :cond_0
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;

    move-result-object v1

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v2}, Lru/localscribe/integration/OverlayService;->access$000(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "\u25cf LocalScribe"

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->preparing:Z

    if-eqz v4, :cond_2

    const-string v4, "\u2026 "

    goto :goto_0

    :cond_2
    iget-boolean v4, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz v4, :cond_3

    const-string v4, "\u2161 "

    goto :goto_0

    :cond_3
    const-string v4, "\u25cf "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lru/localscribe/integration/RecordingBridge$Snapshot;->timer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v2}, Lru/localscribe/integration/OverlayService;->access$000(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    iget-boolean v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz v3, :cond_5

    const/16 v3, -0x3598

    goto :goto_2

    :cond_5
    const v3, -0x8687

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v2}, Lru/localscribe/integration/OverlayService;->access$100(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;

    move-result-object v2

    iget-boolean v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz v3, :cond_6

    const-string v3, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    goto :goto_3

    :cond_6
    const-string v3, "\u041f\u0430\u0443\u0437\u0430"

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v2}, Lru/localscribe/integration/OverlayService;->access$100(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;

    move-result-object v2

    iget-boolean v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->preparing:Z

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v2}, Lru/localscribe/integration/OverlayService;->access$200(Lru/localscribe/integration/OverlayService;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lru/localscribe/integration/RecordingBridge$Snapshot;->elapsed:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v2}, Lru/localscribe/integration/OverlayService;->access$300(Lru/localscribe/integration/OverlayService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Lru/localscribe/integration/OverlayService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v3, v1}, Lru/localscribe/integration/OverlayService;->access$400(Lru/localscribe/integration/OverlayService;Lru/localscribe/integration/RecordingBridge$Snapshot;)Landroid/app/Notification;

    move-result-object v1

    const/16 v3, 0x2c6

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v1, v0}, Lru/localscribe/integration/OverlayService;->access$302(Lru/localscribe/integration/OverlayService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v1}, Lru/localscribe/integration/OverlayService;->access$000(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v1}, Lru/localscribe/integration/OverlayService;->access$000(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, p0, Lru/localscribe/integration/OverlayService$1;->this$0:Lru/localscribe/integration/OverlayService;

    invoke-static {v0}, Lru/localscribe/integration/OverlayService;->access$500(Lru/localscribe/integration/OverlayService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
