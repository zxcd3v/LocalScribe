.class public final synthetic Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/audio/WavFile;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/audio/WavFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda3;->f$0:Lru/localscribe/audio/WavFile;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1$$ExternalSyntheticLambda3;->f$0:Lru/localscribe/audio/WavFile;

    check-cast p1, Lru/localscribe/core/Recording;

    invoke-static {v0, p1}, Lru/localscribe/service/CaptureService$onStartCommand$2$3$3$2$1$capture$1;->$r8$lambda$bSdrC4Ictu7RJDHFVSfrN9ufHm8(Lru/localscribe/audio/WavFile;Lru/localscribe/core/Recording;)Lru/localscribe/core/Recording;

    move-result-object p1

    return-object p1
.end method
