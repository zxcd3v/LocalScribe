.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda189;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;

.field public final synthetic f$1:Lru/localscribe/core/Transcript;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/core/Transcript;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda189;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda189;->f$1:Lru/localscribe/core/Transcript;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda189;->f$0:Lru/localscribe/ui/ScribeViewModel;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda189;->f$1:Lru/localscribe/core/Transcript;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lru/localscribe/MainActivityKt;->$r8$lambda$bKVD3T1pyQSKsKzHPMOq3i0OkRU(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/core/Transcript;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
