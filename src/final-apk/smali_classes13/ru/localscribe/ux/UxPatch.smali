.class public final Lru/localscribe/ux/UxPatch;
.super Ljava/lang/Object;
.source "UxPatch.java"


# static fields
.field private static final estimate:Lru/localscribe/ux/ProgressEstimate;

.field private static manualUntil:J

.field private static overlayButton:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile overlayVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/ux/ProgressEstimate;

    invoke-direct {v0}, Lru/localscribe/ux/ProgressEstimate;-><init>()V

    sput-object v0, Lru/localscribe/ux/UxPatch;->estimate:Lru/localscribe/ux/ProgressEstimate;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lru/localscribe/ux/UxPatch;->overlayButton:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lru/localscribe/ux/UxPatch;->overlayVisible:Z

    return v0
.end method

.method public static following(Z)Z
    .locals 4

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lru/localscribe/ux/UxPatch;->manualUntil:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static overlayAttached(Z)V
    .locals 0

    sput-boolean p0, Lru/localscribe/ux/UxPatch;->overlayVisible:Z

    invoke-static {}, Lru/localscribe/ux/UxPatch;->refreshOverlay()V

    return-void
.end method

.method public static overlayButton(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u043f\u043b\u0430\u0432\u0430\u044e\u0449"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0441\u043a\u0440\u044b\u0442\u044c"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setMinHeight(I)V

    const-string p2, "localscribe-overlay-toggle"

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lru/localscribe/ux/UxPatch$1;

    invoke-direct {p2, p0, p3}, Lru/localscribe/ux/UxPatch$1;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lru/localscribe/ux/UxPatch;->overlayButton:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lru/localscribe/ux/UxPatch;->refreshOverlay()V

    return-object v0
.end method

.method public static pauseFollowing()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    sput-wide v0, Lru/localscribe/ux/UxPatch;->manualUntil:J

    return-void
.end method

.method public static progressLabel(Ljava/lang/String;F)Ljava/lang/String;
    .locals 3

    sget-object v0, Lru/localscribe/ux/UxPatch;->estimate:Lru/localscribe/ux/ProgressEstimate;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p0, p1, v1, v2}, Lru/localscribe/ux/ProgressEstimate;->format(Ljava/lang/String;FJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static refreshOverlay()V
    .locals 2

    sget-object v0, Lru/localscribe/ux/UxPatch;->overlayButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lru/localscribe/ux/UxPatch$2;

    invoke-direct {v1, v0}, Lru/localscribe/ux/UxPatch$2;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static resetProgress()V
    .locals 1

    sget-object v0, Lru/localscribe/ux/UxPatch;->estimate:Lru/localscribe/ux/ProgressEstimate;

    invoke-virtual {v0}, Lru/localscribe/ux/ProgressEstimate;->reset()V

    return-void
.end method
