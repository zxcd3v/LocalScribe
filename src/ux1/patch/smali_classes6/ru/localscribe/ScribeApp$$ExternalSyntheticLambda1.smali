.class public final synthetic Lru/localscribe/ScribeApp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ScribeApp;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ScribeApp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/ScribeApp;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/ScribeApp;

    invoke-static {v0}, Lru/localscribe/ScribeApp;->$r8$lambda$7P97wSudbWSM3KWlHYNq02QZGzM(Lru/localscribe/ScribeApp;)Lru/localscribe/data/Repository;

    move-result-object v0

    return-object v0
.end method
