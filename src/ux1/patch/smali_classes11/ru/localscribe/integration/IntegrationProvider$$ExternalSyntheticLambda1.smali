.class public final synthetic Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/localscribe/integration/IntegrationProvider;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/integration/IntegrationProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/integration/IntegrationProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lru/localscribe/integration/IntegrationProvider$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/integration/IntegrationProvider;

    invoke-virtual {v0}, Lru/localscribe/integration/IntegrationProvider;->lambda$onCreate$0$ru-localscribe-integration-IntegrationProvider()V

    return-void
.end method
