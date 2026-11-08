.class public final synthetic Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/ModelStore;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/ModelStore;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/data/ModelStore;

    iput-object p2, p0, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;->f$0:Lru/localscribe/data/ModelStore;

    iget-object v1, p0, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lru/localscribe/data/ModelStore;->$r8$lambda$nS_aPi5gN1BWqdXiEeOREmYNmgY(Lru/localscribe/data/ModelStore;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
