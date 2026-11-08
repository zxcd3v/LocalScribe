.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda11;->f$0:Lru/localscribe/ui/ScribeViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda11;->f$0:Lru/localscribe/ui/ScribeViewModel;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lru/localscribe/MainActivityKt;->$r8$lambda$nNmSxaTq4JUz-LeiUgjL54twVPw(Lru/localscribe/ui/ScribeViewModel;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
