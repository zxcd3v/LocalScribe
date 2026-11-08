.class public final Lru/localscribe/integration/IntegrationProvider;
.super Landroid/content/ContentProvider;
.source "IntegrationProvider.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/integration/IntegrationProvider$FileRecovery;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityResumed$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 53
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lru/localscribe/integration/ControlsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 66
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method synthetic lambda$onCreate$0$ru-localscribe-integration-IntegrationProvider()V
    .locals 5

    .line 22
    const-string v0, "LocalScribe"

    :try_start_0
    invoke-virtual {p0}, Lru/localscribe/integration/IntegrationProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lru/localscribe/integration/RecordingBridge;->awaitReady(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lru/localscribe/integration/IntegrationProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getRepository"

    invoke-static {v1, v2}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    const-string v2, "recordings"

    invoke-static {v1, v2}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    const-string v3, "playback"

    const-string v4, "getSource"

    invoke-static {v2, v4}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "interrupted"

    const-string v4, "getState"

    .line 26
    invoke-static {v2, v4}, Lru/localscribe/integration/RecordingBridge;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lru/localscribe/integration/IntegrationProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lru/localscribe/integration/IntegrationProvider$FileRecovery;->recover(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Playback recovery failed"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 30
    :goto_2
    goto :goto_0

    .line 31
    :cond_2
    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "Storage initialization failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 64
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 61
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru.localscribe.MainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    const-string v1, "localscribe-controls"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-void

    .line 48
    :cond_1
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 50
    const-string v1, "\u25cf"

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const-string v1, "\u0417\u0430\u043f\u0438\u0441\u044c \u0438 \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430 LocalScribe"

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    const v1, -0xf78175

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    new-instance v1, Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800055

    invoke-direct {v1, p1, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 56
    div-int/lit8 v3, p1, 0x4

    mul-int/lit8 p1, p1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 60
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 62
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .line 19
    invoke-virtual {p0}, Lru/localscribe/integration/IntegrationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/integration/IntegrationProvider;)V

    const-string v2, "LocalScribe-recovery"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 65
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
