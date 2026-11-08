.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda233;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->$r8$lambda$pVybdZ3DttRt7bNEIpO8dsPhUIs(J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
