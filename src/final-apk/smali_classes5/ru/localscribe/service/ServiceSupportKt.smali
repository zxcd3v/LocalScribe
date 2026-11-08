.class public final Lru/localscribe/service/ServiceSupportKt;
.super Ljava/lang/Object;
.source "ServiceSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "foreground",
        "",
        "Landroid/app/Service;",
        "capture",
        "",
        "title",
        "",
        "app_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final foreground(Landroid/app/Service;ZLjava/lang/String;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "recording"

    goto :goto_0

    :cond_0
    const-string v0, "processing"

    :goto_0
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    nop

    new-instance v2, Landroid/app/NotificationChannel;

    nop

    if-eqz p1, :cond_1

    const-string v3, "\u0417\u0430\u043f\u0438\u0441\u044c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430"

    goto :goto_1

    :cond_1
    const-string v3, "\u041e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0430 \u0430\u0443\u0434\u0438\u043e"

    :goto_1
    check-cast v3, Ljava/lang/CharSequence;

    nop

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    nop

    new-instance v3, Landroid/content/Intent;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    const-class v6, Lru/localscribe/MainActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    nop

    const/4 v5, 0x0

    const/high16 v6, 0xc000000

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    nop

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    move v4, v5

    :cond_2
    new-instance v7, Landroid/content/Intent;

    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    if-eqz p1, :cond_3

    const-class v9, Lru/localscribe/service/CaptureService;

    goto :goto_2

    :cond_3
    const-class v9, Lru/localscribe/service/ProcessingService;

    :goto_2
    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "STOP"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    nop

    invoke-static {v3, v4, v7, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    nop

    new-instance v4, Landroid/app/Notification$Builder;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v4, v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x10800a4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v6, "\u0417\u0430\u043f\u0438\u0441\u044c \u0440\u0430\u0437\u0433\u043e\u0432\u043e\u0440\u0430"

    goto :goto_3

    :cond_4
    const-string v6, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u0430\u044f \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u043a\u0430"

    :goto_3
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v6, Landroid/app/Notification$Action$Builder;

    const-string v7, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const-string v6, "build(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    if-eqz p1, :cond_5

    const/16 v6, 0xa

    goto :goto_4

    :cond_5
    const/16 v6, 0xb

    :goto_4
    if-eqz p1, :cond_7

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v5, v7, :cond_6

    const/16 v5, 0x80

    invoke-virtual {p0, v6, v4, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v6, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_5

    :cond_7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x23

    if-lt v7, v8, :cond_8

    const/16 v5, 0x2000

    invoke-virtual {p0, v6, v4, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_5

    :cond_8
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_9

    invoke-virtual {p0, v6, v4, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v6, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_5
    return-void
.end method
