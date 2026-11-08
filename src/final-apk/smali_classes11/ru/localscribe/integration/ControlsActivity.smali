.class public final Lru/localscribe/integration/ControlsActivity;
.super Landroid/app/Activity;
.source "ControlsActivity.java"


# instance fields
.field private consent:Landroid/widget/CheckBox;

.field private final handler:Landroid/os/Handler;

.field private pause:Landroid/widget/Button;

.field private pending:Ljava/lang/String;

.field private final refresh:Ljava/lang/Runnable;

.field private status:Landroid/widget/TextView;

.field private stop:Landroid/widget/Button;

.field private waitStarted:J

.field private waitingForMicrophone:Z


# direct methods
.method public static synthetic $r8$lambda$r8DIF6nTK-KB4cMyId3M_1NMYqg(Lru/localscribe/integration/ControlsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/integration/ControlsActivity;->enableOverlay()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/localscribe/integration/ControlsActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lru/localscribe/integration/ControlsActivity$1;

    invoke-direct {v0, p0}, Lru/localscribe/integration/ControlsActivity$1;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    iput-object v0, p0, Lru/localscribe/integration/ControlsActivity;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lru/localscribe/integration/ControlsActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/ControlsActivity;->pause:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lru/localscribe/integration/ControlsActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/ControlsActivity;->stop:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lru/localscribe/integration/ControlsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lru/localscribe/integration/ControlsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lru/localscribe/integration/ControlsActivity;->waitingForMicrophone:Z

    return p0
.end method

.method static synthetic access$302(Lru/localscribe/integration/ControlsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lru/localscribe/integration/ControlsActivity;->waitingForMicrophone:Z

    return p1
.end method

.method static synthetic access$400(Lru/localscribe/integration/ControlsActivity;)J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/integration/ControlsActivity;->waitStarted:J

    return-wide v0
.end method

.method static synthetic access$500(Lru/localscribe/integration/ControlsActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/ControlsActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private begin()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->busy()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lru/localscribe/integration/PlaybackService;->running()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "playback"

    iget-object v2, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p0, v1}, Lru/localscribe/integration/ControlsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Lru/localscribe/integration/ControlsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u041d\u0443\u0436\u0435\u043d Android 10 \u0438\u043b\u0438 \u043d\u043e\u0432\u0435\u0435"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "microphone"

    iget-object v2, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lru/localscribe/integration/RecordingBridge;->startMicrophone(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lru/localscribe/integration/ControlsActivity;->waitingForMicrophone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lru/localscribe/integration/ControlsActivity;->waitStarted:J

    iget-object v1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    const-string v2, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u0414\u0440\u0443\u0433\u0430\u044f \u0437\u0430\u0434\u0430\u0447\u0430 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iput-object v0, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    invoke-direct {p0, v1}, Lru/localscribe/integration/ControlsActivity;->showError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/ux/UxPatch;->overlayButton(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private enableOverlay()V
    .locals 3

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lru/localscribe/integration/ControlsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lru/localscribe/integration/ControlsActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    const-string v1, "\u041f\u043e\u0441\u043b\u0435 \u0432\u044b\u0434\u0430\u0447\u0438 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f \u043d\u0430\u0436\u043c\u0438\u0442\u0435 \u00ab\u0412\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0443\u044e \u043a\u043d\u043e\u043f\u043a\u0443\u00bb \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/localscribe/integration/ControlsActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lru/localscribe/integration/ControlsActivity;->showError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$button$6(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private request(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/integration/ControlsActivity;->waitingForMicrophone:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    const-string v0, "\u0417\u0430\u043f\u0443\u0441\u043a \u0437\u0430\u043f\u0438\u0441\u0438 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f\u2026"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lru/localscribe/integration/ControlsActivity;->consent:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    const-string v0, "\u041f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u0435 \u0441\u043e\u0433\u043b\u0430\u0441\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432 \u043f\u0435\u0440\u0435\u0434 \u0437\u0430\u043f\u0438\u0441\u044c\u044e."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iput-object p1, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, p1}, Lru/localscribe/integration/ControlsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lru/localscribe/integration/ControlsActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_3

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Lru/localscribe/integration/ControlsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lru/localscribe/integration/ControlsActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-direct {p0}, Lru/localscribe/integration/ControlsActivity;->begin()V

    return-void
.end method

.method private showError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    invoke-static {p1}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "LocalScribe"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p1}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "OK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$ru-localscribe-integration-ControlsActivity()V
    .locals 1

    const-string v0, "microphone"

    invoke-direct {p0, v0}, Lru/localscribe/integration/ControlsActivity;->request(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$ru-localscribe-integration-ControlsActivity()V
    .locals 1

    const-string v0, "playback"

    invoke-direct {p0, v0}, Lru/localscribe/integration/ControlsActivity;->request(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$ru-localscribe-integration-ControlsActivity()V
    .locals 1

    :try_start_0
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;

    move-result-object v0

    iget-boolean v0, v0, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz v0, :cond_0

    const-string v0, "RESUME"

    goto :goto_0

    :cond_0
    const-string v0, "PAUSE"

    :goto_0
    invoke-static {p0, v0}, Lru/localscribe/integration/RecordingBridge;->control(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lru/localscribe/integration/ControlsActivity;->showError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onCreate$3$ru-localscribe-integration-ControlsActivity()V
    .locals 1

    :try_start_0
    const-string v0, "STOP"

    invoke-static {p0, v0}, Lru/localscribe/integration/RecordingBridge;->control(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lru/localscribe/integration/ControlsActivity;->showError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$4$ru-localscribe-integration-ControlsActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/localscribe/integration/ControlsActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method synthetic lambda$onCreate$5$ru-localscribe-integration-ControlsActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ru.localscribe.MainActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/localscribe/integration/ControlsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lru/localscribe/integration/ControlsActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lru/localscribe/integration/PlaybackService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "projection"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "result"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/localscribe/integration/ControlsActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lru/localscribe/integration/ControlsActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lru/localscribe/integration/ControlsActivity;->showError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    const-string p2, "\u0417\u0430\u0445\u0432\u0430\u0442 \u043e\u0442\u043c\u0435\u043d\u0451\u043d. \u0417\u0430\u043f\u0438\u0441\u044c \u043d\u0435 \u043d\u0430\u0447\u0430\u0442\u0430."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "LocalScribe \u2014 \u0437\u0430\u043f\u0438\u0441\u044c"

    invoke-virtual {p0, v0}, Lru/localscribe/integration/ControlsActivity;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    const-string v0, "pending"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    const-string v0, "waiting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lru/localscribe/integration/ControlsActivity;->waitingForMicrophone:Z

    const-string v0, "waitStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lru/localscribe/integration/ControlsActivity;->waitStarted:J

    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lru/localscribe/integration/ControlsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v3, v4, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "LocalScribe"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u0417\u0430\u043f\u0438\u0441\u044c \u0438 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0430 \u043e\u0441\u0442\u0430\u044e\u0442\u0441\u044f \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435. \u041f\u043e\u043b\u0443\u0447\u0438\u0442\u0435 \u0441\u043e\u0433\u043b\u0430\u0441\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432 \u0438 \u0441\u043e\u0431\u043b\u044e\u0434\u0430\u0439\u0442\u0435 \u043f\u0440\u0438\u043c\u0435\u043d\u0438\u043c\u044b\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u0430 \u0437\u0430\u043f\u0438\u0441\u0438.\n\n\u0417\u0432\u0443\u043a Zoom, Meet \u0438 Teams \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u0434\u043b\u044f \u0437\u0430\u0445\u0432\u0430\u0442\u0430. Android \u0440\u0430\u0437\u0440\u0435\u0448\u0430\u0435\u0442 \u0442\u043e\u043b\u044c\u043a\u043e \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0435 \u0442\u0438\u043f\u044b \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u044f; \u0437\u0432\u0443\u043a \u0437\u0432\u043e\u043d\u043a\u043e\u0432 \u043e\u0431\u044b\u0447\u043d\u043e \u0438\u0441\u043a\u043b\u044e\u0447\u0451\u043d. \u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u2014 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c: \u043e\u043d \u043d\u0435 \u0433\u0430\u0440\u0430\u043d\u0442\u0438\u0440\u0443\u0435\u0442 \u0437\u0430\u043f\u0438\u0441\u044c \u0441\u043e\u0431\u0435\u0441\u0435\u0434\u043d\u0438\u043a\u043e\u0432, \u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043a\u043e\u043d\u0444\u0435\u0440\u0435\u043d\u0446\u0438\u0438 \u043c\u043e\u0436\u0435\u0442 \u0437\u0430\u043d\u044f\u0442\u044c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d. \u041f\u0440\u0438 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u043c \u0437\u0430\u0445\u0432\u0430\u0442\u0435 LocalScribe \u043f\u043e\u043a\u0430\u0436\u0435\u0442 \u043f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435; \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u043e\u0433\u043e \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f \u0438\u0441\u0442\u043e\u0447\u043d\u0438\u043a\u0430 \u043d\u0435\u0442."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lru/localscribe/integration/ControlsActivity;->consent:Landroid/widget/CheckBox;

    iget-object v3, p0, Lru/localscribe/integration/ControlsActivity;->consent:Landroid/widget/CheckBox;

    const-string v4, "\u0421\u043e\u0433\u043b\u0430\u0441\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432 \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u043e. \u041d\u0430\u0447\u0430\u0442\u044c \u044f\u0432\u043d\u0443\u044e \u0437\u0430\u043f\u0438\u0441\u044c."

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lru/localscribe/integration/ControlsActivity;->consent:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    const-string v4, "consent"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->consent:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u0417\u0430\u043f\u0438\u0441\u0430\u0442\u044c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_2

    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda2;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u0417\u0430\u0445\u0432\u0430\u0442\u0438\u0442\u044c \u0440\u0430\u0437\u0440\u0435\u0448\u0451\u043d\u043d\u043e\u0435 \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0435"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    :cond_2
    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u041f\u0430\u0443\u0437\u0430 / \u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lru/localscribe/integration/ControlsActivity;->pause:Landroid/widget/Button;

    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda4;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u0417\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u044c \u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lru/localscribe/integration/ControlsActivity;->stop:Landroid/widget/Button;

    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda5;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0443\u044e \u043a\u043d\u043e\u043f\u043a\u0443"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda6;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u0421\u043a\u0440\u044b\u0442\u044c \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0443\u044e \u043a\u043d\u043e\u043f\u043a\u0443"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    new-instance p1, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lru/localscribe/integration/ControlsActivity$$ExternalSyntheticLambda7;-><init>(Lru/localscribe/integration/ControlsActivity;)V

    const-string v2, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u0438 \u0438 \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0438"

    invoke-direct {p0, v1, v2, p1}, Lru/localscribe/integration/ControlsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lru/localscribe/integration/ControlsActivity;->setContentView(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0}, Lru/localscribe/integration/RecordingBridge;->model(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lru/localscribe/integration/ControlsActivity;->showError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lru/localscribe/integration/ControlsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/localscribe/integration/ControlsActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    invoke-direct {p0, p1}, Lru/localscribe/integration/ControlsActivity;->request(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    iget-object p1, p0, Lru/localscribe/integration/ControlsActivity;->status:Landroid/widget/TextView;

    const-string p2, "\u0414\u043e\u0441\u0442\u0443\u043f \u043a \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0443 \u043e\u0442\u043a\u043b\u043e\u043d\u0451\u043d. \u0417\u0430\u043f\u0438\u0441\u044c \u043d\u0435 \u043d\u0430\u0447\u0430\u0442\u0430."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lru/localscribe/integration/ControlsActivity;->begin()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lru/localscribe/ux/UxPatch;->refreshOverlay()V

    iget-object v0, p0, Lru/localscribe/integration/ControlsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/localscribe/integration/ControlsActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "pending"

    iget-object v1, p0, Lru/localscribe/integration/ControlsActivity;->pending:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lru/localscribe/integration/ControlsActivity;->consent:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "consent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "waiting"

    iget-boolean v1, p0, Lru/localscribe/integration/ControlsActivity;->waitingForMicrophone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "waitStarted"

    iget-wide v1, p0, Lru/localscribe/integration/ControlsActivity;->waitStarted:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
