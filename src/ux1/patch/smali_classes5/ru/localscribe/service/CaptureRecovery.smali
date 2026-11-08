.class public final Lru/localscribe/service/CaptureRecovery;
.super Ljava/lang/Object;
.source "CaptureRecovery.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lru/localscribe/service/CaptureRecovery;",
        "",
        "<init>",
        "()V",
        "resumeAt",
        "",
        "checkpoint",
        "available",
        "(Ljava/lang/Long;J)J",
        "isOverloaded",
        "",
        "position",
        "written",
        "initialSamples",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lru/localscribe/service/CaptureRecovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/service/CaptureRecovery;

    invoke-direct {v0}, Lru/localscribe/service/CaptureRecovery;-><init>()V

    sput-object v0, Lru/localscribe/service/CaptureRecovery;->INSTANCE:Lru/localscribe/service/CaptureRecovery;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isOverloaded(JJJ)Z
    .locals 4
    .param p1, "position"    # J
    .param p3, "written"    # J
    .param p5, "initialSamples"    # J

    .line 17
    cmp-long v0, p1, p5

    if-ltz v0, :cond_0

    sub-long v0, p3, p1

    const-wide/32 v2, 0x1d4c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final resumeAt(Ljava/lang/Long;J)J
    .locals 7
    .param p1, "checkpoint"    # Ljava/lang/Long;
    .param p2, "available"    # J

    .line 6
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_4

    .line 7
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, p2

    .line 8
    .local v5, "position":J
    :goto_1
    cmp-long v0, v0, v5

    if-gtz v0, :cond_2

    cmp-long v0, v5, p2

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    .line 11
    return-wide v5

    .line 8
    :cond_3
    const/4 v0, 0x0

    .line 9
    .local v0, "$i$a$-require-CaptureRecovery$resumeAt$1\\2\\8\\0":I
    nop

    .line 8
    .end local v0    # "$i$a$-require-CaptureRecovery$resumeAt$1\\2\\8\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0410\u0443\u0434\u0438\u043e\u0444\u0430\u0439\u043b \u043a\u043e\u0440\u043e\u0447\u0435 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d\u043d\u043e\u0439 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u043e\u0439 \u0442\u043e\u0447\u043a\u0438 \u0438\u043b\u0438 \u043f\u043e\u0432\u0440\u0435\u0436\u0434\u0451\u043d. \u0417\u0430\u043f\u0438\u0441\u044c \u043d\u0435 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0430."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    .end local v5    # "position":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
