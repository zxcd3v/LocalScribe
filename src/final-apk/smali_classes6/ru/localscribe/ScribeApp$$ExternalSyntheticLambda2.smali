.class public final synthetic Lru/localscribe/ScribeApp$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ScribeApp;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ScribeApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda2;->f$0:Lru/localscribe/ScribeApp;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda2;->f$0:Lru/localscribe/ScribeApp;

    invoke-static {v0}, Lru/localscribe/ScribeApp;->$r8$lambda$jNQRZjvJ-3avTTU9gvvarX7spGU(Lru/localscribe/ScribeApp;)Lru/localscribe/data/ModelStore;

    move-result-object v0

    return-object v0
.end method
