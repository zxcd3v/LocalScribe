.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda231;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    check-cast p1, Lru/localscribe/core/Speaker;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lru/localscribe/MainActivityKt;->$r8$lambda$niilvM47vEmUuE-R7Rz9gl9y6-0(Lru/localscribe/core/Speaker;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
