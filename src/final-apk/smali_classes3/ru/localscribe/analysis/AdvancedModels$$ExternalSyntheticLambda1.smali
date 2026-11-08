.class public final synthetic Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lru/localscribe/analysis/AdvancedModels;->$r8$lambda$KVWcPQ4zssqFkb_Ni7ZkclZtLMU(Ljava/lang/String;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
