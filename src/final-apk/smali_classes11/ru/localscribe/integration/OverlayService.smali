.class public final Lru/localscribe/integration/OverlayService;
.super Landroid/app/Service;
.source "OverlayService.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "localscribe_overlay"

.field private static final NOTICE:I = 0x2c6


# instance fields
.field private actions:Landroid/widget/LinearLayout;

.field private attached:Z

.field private dragged:Z

.field private final handler:Landroid/os/Handler;

.field private main:Landroid/widget/Button;

.field private noticeKey:Ljava/lang/String;

.field private originX:I

.field private originY:I

.field private panel:Landroid/widget/LinearLayout;

.field private pause:Landroid/widget/Button;

.field private position:Landroid/view/WindowManager$LayoutParams;

.field private final tick:Ljava/lang/Runnable;

.field private touchX:F

.field private touchY:F

.field private windows:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->handler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->noticeKey:Ljava/lang/String;

    new-instance v0, Lru/localscribe/integration/OverlayService$1;

    invoke-direct {v0, p0}, Lru/localscribe/integration/OverlayService$1;-><init>(Lru/localscribe/integration/OverlayService;)V

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/OverlayService;->main:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lru/localscribe/integration/OverlayService;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/OverlayService;->pause:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lru/localscribe/integration/OverlayService;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lru/localscribe/integration/OverlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/OverlayService;->noticeKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lru/localscribe/integration/OverlayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lru/localscribe/integration/OverlayService;->noticeKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lru/localscribe/integration/OverlayService;Lru/localscribe/integration/RecordingBridge$Snapshot;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1}, Lru/localscribe/integration/OverlayService;->notification(Lru/localscribe/integration/RecordingBridge$Snapshot;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lru/localscribe/integration/OverlayService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/localscribe/integration/OverlayService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private attach()V
    .locals 9

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Lru/localscribe/integration/OverlayService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->windows:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, -0x11e8cec5

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/integration/OverlayService;)V

    const-string v2, "\u25cf LocalScribe"

    invoke-direct {p0, v2, v0}, Lru/localscribe/integration/OverlayService;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->main:Landroid/widget/Button;

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->main:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/integration/OverlayService;)V

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    invoke-direct {p0, v2, v0}, Lru/localscribe/integration/OverlayService;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/integration/OverlayService;->pause:Landroid/widget/Button;

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->pause:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    new-instance v2, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda2;-><init>(Lru/localscribe/integration/OverlayService;)V

    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    invoke-direct {p0, v3, v2}, Lru/localscribe/integration/OverlayService;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v4

    const/16 v7, 0x8

    const/4 v8, -0x3

    const/4 v5, -0x2

    const/16 v6, 0x7f6

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v3, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "overlay"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lru/localscribe/integration/OverlayService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v5

    const-string v6, "x"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lru/localscribe/integration/OverlayService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-direct {p0, v3}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v3

    const-string v4, "y"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->main:Landroid/widget/Button;

    new-instance v2, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/integration/OverlayService;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->windows:Landroid/view/WindowManager;

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lru/localscribe/integration/OverlayService;->attached:Z

    invoke-static {v1}, Lru/localscribe/ux/UxPatch;->overlayAttached(Z)V

    invoke-direct {p0}, Lru/localscribe/integration/OverlayService;->clamp()V

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 1

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance p1, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lru/localscribe/integration/OverlayService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x2c

    invoke-direct {p0, p1}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    return-object v0
.end method

.method private clamp()V
    .locals 7

    iget-boolean v0, p0, Lru/localscribe/integration/OverlayService;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->windows:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v3

    iget-object v4, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/16 v5, 0x38

    invoke-direct {p0, v5}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v5

    iget-object v6, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-direct {p0, v2}, Lru/localscribe/integration/OverlayService;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->windows:Landroid/view/WindowManager;

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lru/localscribe/integration/OverlayService;->stopSelf()V

    :goto_0
    return-void
.end method

.method private command(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/OverlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Lru/localscribe/integration/OverlayService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic lambda$button$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private notification(Lru/localscribe/integration/RecordingBridge$Snapshot;)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/ControlsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0xc000000

    const/16 v2, 0x2c7

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "localscribe_overlay"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10800a4

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "LocalScribe"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p1, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz v3, :cond_0

    const-string v3, "\u041f\u0430\u0443\u0437\u0430 "

    goto :goto_0

    :cond_0
    const-string v3, "\u25cf \u0417\u0430\u043f\u0438\u0441\u044c "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lru/localscribe/integration/RecordingBridge$Snapshot;->timer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "\u041f\u043b\u0430\u0432\u0430\u044e\u0449\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p1, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-boolean v3, p1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz v3, :cond_2

    const-string v3, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    goto :goto_2

    :cond_2
    const-string v3, "\u041f\u0430\u0443\u0437\u0430"

    :goto_2
    iget-boolean p1, p1, Lru/localscribe/integration/RecordingBridge$Snapshot;->paused:Z

    if-eqz p1, :cond_3

    const-string p1, "RESUME"

    goto :goto_3

    :cond_3
    const-string p1, "PAUSE"

    :goto_3
    const/16 v4, 0x2c8

    invoke-direct {p0, p1, v4}, Lru/localscribe/integration/OverlayService;->command(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v2, v1, v3, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance p1, Landroid/app/Notification$Action$Builder;

    const-string v2, "STOP"

    const/16 v3, 0x2c9

    invoke-direct {p0, v2, v3}, Lru/localscribe/integration/OverlayService;->command(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    invoke-direct {p1, v1, v3, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_4
    new-instance p1, Landroid/app/Notification$Action$Builder;

    const-string v2, "CLOSE"

    const/16 v3, 0x2ca

    invoke-direct {p0, v2, v3}, Lru/localscribe/integration/OverlayService;->command(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "\u0421\u043a\u0440\u044b\u0442\u044c \u043a\u043d\u043e\u043f\u043a\u0443"

    invoke-direct {p1, v1, v3, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private toast(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$attach$1$ru-localscribe-integration-OverlayService()V
    .locals 2

    :try_start_0
    invoke-static {}, Lru/localscribe/integration/RecordingBridge;->snapshot()Lru/localscribe/integration/RecordingBridge$Snapshot;

    move-result-object v0

    iget-object v0, v0, Lru/localscribe/integration/RecordingBridge$Snapshot;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/localscribe/integration/ControlsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/localscribe/integration/OverlayService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lru/localscribe/integration/OverlayService;->clamp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lru/localscribe/integration/OverlayService;->toast(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method synthetic lambda$attach$2$ru-localscribe-integration-OverlayService()V
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

    invoke-direct {p0, v0}, Lru/localscribe/integration/OverlayService;->toast(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$attach$3$ru-localscribe-integration-OverlayService()V
    .locals 2

    :try_start_0
    const-string v0, "STOP"

    invoke-static {p0, v0}, Lru/localscribe/integration/RecordingBridge;->control(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->actions:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lru/localscribe/integration/OverlayService;->toast(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$attach$4$ru-localscribe-integration-OverlayService(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lru/localscribe/integration/OverlayService;->touchX:F

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lru/localscribe/integration/OverlayService;->touchY:F

    sub-float/2addr p2, v0

    float-to-double v0, p1

    float-to-double v3, p2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v0, v0, v3

    if-lez v0, :cond_0

    iput-boolean v2, p0, Lru/localscribe/integration/OverlayService;->dragged:Z

    :cond_0
    iget-boolean v0, p0, Lru/localscribe/integration/OverlayService;->dragged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lru/localscribe/integration/OverlayService;->originX:I

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lru/localscribe/integration/OverlayService;->originY:I

    float-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lru/localscribe/integration/OverlayService;->clamp()V

    :cond_1
    return v2

    :pswitch_2
    iget-boolean p2, p0, Lru/localscribe/integration/OverlayService;->dragged:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    const-string p1, "overlay"

    invoke-virtual {p0, p1, v1}, Lru/localscribe/integration/OverlayService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v0, "x"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "y"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v2

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lru/localscribe/integration/OverlayService;->touchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lru/localscribe/integration/OverlayService;->touchY:F

    iget-object p1, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lru/localscribe/integration/OverlayService;->originX:I

    iget-object p1, p0, Lru/localscribe/integration/OverlayService;->position:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lru/localscribe/integration/OverlayService;->originY:I

    iput-boolean v1, p0, Lru/localscribe/integration/OverlayService;->dragged:Z

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lru/localscribe/integration/OverlayService;->clamp()V

    return-void
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lru/localscribe/integration/OverlayService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "LocalScribe \u2014 \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430"

    const/4 v3, 0x2

    const-string v4, "localscribe_overlay"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lru/localscribe/integration/OverlayService;->attached:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lru/localscribe/integration/OverlayService;->windows:Landroid/view/WindowManager;

    iget-object v1, p0, Lru/localscribe/integration/OverlayService;->panel:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/localscribe/integration/OverlayService;->attached:Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lru/localscribe/integration/OverlayService;->stopForeground(I)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lru/localscribe/ux/UxPatch;->overlayAttached(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 p2, 0x2

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p3}, Lru/localscribe/integration/OverlayService;->notification(Lru/localscribe/integration/RecordingBridge$Snapshot;)Landroid/app/Notification;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/16 v3, 0x2c6

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v3, v0, v1}, Lru/localscribe/integration/OverlayService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v0}, Lru/localscribe/integration/OverlayService;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    :goto_1
    const-string p1, "CLOSE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lru/localscribe/integration/OverlayService;->stopSelf()V

    return p2

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p0, p3}, Lru/localscribe/integration/RecordingBridge;->control(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lru/localscribe/integration/OverlayService;->attached:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lru/localscribe/integration/OverlayService;->attach()V

    :cond_4
    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    const-string p3, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u0435 \u043f\u043e\u043a\u0430\u0437 \u043f\u043e\u0432\u0435\u0440\u0445 \u0434\u0440\u0443\u0433\u0438\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lru/localscribe/integration/RecordingBridge;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lru/localscribe/integration/OverlayService;->stopSelf()V

    :goto_2
    return p2
.end method
