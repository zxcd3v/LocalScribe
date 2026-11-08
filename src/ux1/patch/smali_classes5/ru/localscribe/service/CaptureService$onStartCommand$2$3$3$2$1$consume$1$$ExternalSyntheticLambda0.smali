.class public final synthetic Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$LongRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$LongRef;

    check-cast p1, Lru/localscribe/core/Recording;

    invoke-static {v0, v1, p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$consume$1;->$r8$lambda$BB9lxWjR4B-UoYbUGDLxqEeAXTg(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p1

    return-object p1
.end method
