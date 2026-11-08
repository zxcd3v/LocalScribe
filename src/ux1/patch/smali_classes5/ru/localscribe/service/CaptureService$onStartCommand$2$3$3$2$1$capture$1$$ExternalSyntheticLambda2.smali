.class public final synthetic Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lru/localscribe/core/Recording;

    invoke-static {p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$r8$lambda$5NAXkRWb5hnqmE5QXElo4x4pej4(Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p1

    return-object p1
.end method
