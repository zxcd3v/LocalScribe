.class public final synthetic Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ScribeApp;

.field public final synthetic f$1:Lru/localscribe/service/ProcessingService;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ScribeApp;Lru/localscribe/service/ProcessingService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/ScribeApp;

    iput-object p2, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;->f$1:Lru/localscribe/service/ProcessingService;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;->f$0:Lru/localscribe/ScribeApp;

    iget-object v1, p0, Lru/localscribe/service/ProcessingService$onStartCommand$2$2$$ExternalSyntheticLambda1;->f$1:Lru/localscribe/service/ProcessingService;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lru/localscribe/service/ProcessingService$onStartCommand$2$2;->$r8$lambda$EhquQvbRvdHhktKvZUBr5QzdYhc(Lru/localscribe/ScribeApp;Lru/localscribe/service/ProcessingService;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
