.class public final Lru/localscribe/engine/RecordingDiarization;
.super Ljava/lang/Object;
.source "RecordingDiarization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/engine/RecordingDiarization$RescheduleSecondary;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordingDiarization.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordingDiarization.kt\nru/localscribe/engine/RecordingDiarization\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,111:1\n1617#2,9:112\n1869#2:121\n1870#2:123\n1626#2:124\n1#3:122\n1#3:127\n375#4:125\n375#4:126\n375#4:128\n*S KotlinDebug\n*F\n+ 1 RecordingDiarization.kt\nru/localscribe/engine/RecordingDiarization\n*L\n14#1:112,9\n14#1:121\n14#1:123\n14#1:124\n14#1:122\n41#1:125\n45#1:126\n73#1:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0001)B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\"\u0010\u000e\u001a\u0002H\u000f\"\u0004\u0008\u0000\u0010\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0011H\u0082@\u00a2\u0006\u0002\u0010\u0012J\u001e\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002JF\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0 H\u0086@\u00a2\u0006\u0002\u0010%JF\u0010&\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0 H\u0082@\u00a2\u0006\u0002\u0010\'JF\u0010(\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0 H\u0082@\u00a2\u0006\u0002\u0010\'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006*"
    }
    d2 = {
        "Lru/localscribe/engine/RecordingDiarization;",
        "",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "timing",
        "Lru/localscribe/engine/ProcessingTimings;",
        "<init>",
        "(Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V",
        "resources",
        "Lru/localscribe/engine/PipelineResources;",
        "getResources",
        "()Lru/localscribe/engine/PipelineResources;",
        "setResources",
        "(Lru/localscribe/engine/PipelineResources;)V",
        "load",
        "T",
        "work",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "timeline",
        "Lru/localscribe/core/SpeakerTimeline;",
        "turns",
        "",
        "Lru/localscribe/core/VoiceTurn;",
        "total",
        "",
        "analyze",
        "wav",
        "Ljava/io/File;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "status",
        "Lkotlin/Function1;",
        "",
        "",
        "progress",
        "",
        "(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "primary",
        "(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "secondary",
        "RescheduleSecondary",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final models:Lru/localscribe/data/ModelStore;

.field private resources:Lru/localscribe/engine/PipelineResources;

.field private final timing:Lru/localscribe/engine/ProcessingTimings;


# direct methods
.method public static synthetic $r8$lambda$1d5bJXc5le855WN0e9C40Jozxig(Lru/localscribe/engine/NativeDiarizer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/RecordingDiarization;->secondary$lambda$1$0$1(Lru/localscribe/engine/NativeDiarizer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BzJ6z0IwyZA0gmsc_4fZIcpSoSY(Lru/localscribe/engine/RecordingDiarization;Ljava/lang/String;J)Lru/localscribe/engine/NativeDiarizer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/engine/RecordingDiarization;->secondary$lambda$0(Lru/localscribe/engine/RecordingDiarization;Ljava/lang/String;J)Lru/localscribe/engine/NativeDiarizer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DFEFcK_slAXTc4YXP6uKzWR8LNY(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/RecordingDiarization;->primary$lambda$0(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GjzeLeL62BnhH6rCXkVOVvuFQeI(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/RecordingDiarization;->primary$lambda$0$0(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JbIuntuvF5fLvGqKjtV8EeQma6I(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/RecordingDiarization;->secondary$lambda$1$0$0(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$azvqoy_YWIinJIiMjlC8ctXvytg(Lru/localscribe/engine/NativeDiarizer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/RecordingDiarization;->primary$lambda$1$0$2(Lru/localscribe/engine/NativeDiarizer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$emcYy1yOIwFoTfNgEPUIadPnBj8(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/engine/RecordingDiarization;->primary$lambda$1$0$1(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h6UTXPN3KpjFUGppITRv5iOeu8w(Ljava/lang/String;JLru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/engine/RecordingDiarization;->secondary$lambda$0$0(Ljava/lang/String;JLru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iUPOweZRHv0UgMmNVOwyYm2TiHA(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lru/localscribe/engine/RecordingDiarization;->analyze$lambda$0(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r9z03fp3LIVxv64Lo-6Xt6WOna4(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lru/localscribe/engine/RecordingDiarization;->analyze$lambda$1(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/RecordingDiarization;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V
    .locals 1

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization;->models:Lru/localscribe/data/ModelStore;

    iput-object p2, p0, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    return-void
.end method

.method public synthetic constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lru/localscribe/engine/ProcessingTimings;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, p4}, Lru/localscribe/engine/ProcessingTimings;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lru/localscribe/engine/RecordingDiarization;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/engine/ProcessingTimings;)V

    return-void
.end method

.method public static final synthetic access$getModels$p(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/data/ModelStore;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization;->models:Lru/localscribe/data/ModelStore;

    return-object v0
.end method

.method public static final synthetic access$load(Lru/localscribe/engine/RecordingDiarization;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lru/localscribe/engine/RecordingDiarization;->load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$primary(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lru/localscribe/engine/RecordingDiarization;->primary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$secondary(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lru/localscribe/engine/RecordingDiarization;->secondary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final analyze$lambda$0(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput p4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iget v2, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final analyze$lambda$1(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;F)Lkotlin/Unit;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput p4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iget v2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lru/localscribe/engine/RecordingDiarization$load$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lru/localscribe/engine/RecordingDiarization$load$1;

    iget v1, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/RecordingDiarization$load$1;

    invoke-direct {v0, p0, p2}, Lru/localscribe/engine/RecordingDiarization$load$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, p0, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    if-eqz v3, :cond_2

    iput-object p1, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lru/localscribe/engine/RecordingDiarization$load$1;->label:I

    invoke-virtual {v3, p1, v0}, Lru/localscribe/engine/PipelineResources;->load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    return-object v2

    :cond_1
    :goto_1
    if-nez v3, :cond_3

    :cond_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    :cond_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final primary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/core/SpeakerTimeline;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    instance-of v0, v2, Lru/localscribe/engine/RecordingDiarization$primary$1;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Lru/localscribe/engine/RecordingDiarization$primary$1;

    iget v3, v0, Lru/localscribe/engine/RecordingDiarization$primary$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Lru/localscribe/engine/RecordingDiarization$primary$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Lru/localscribe/engine/RecordingDiarization$primary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/RecordingDiarization$primary$1;

    invoke-direct {v0, v1, v2}, Lru/localscribe/engine/RecordingDiarization$primary$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    iget-object v4, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v5, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->label:I

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v7, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->J$0:J

    iget-object v0, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v5, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    iget-object v9, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v9

    move-object v9, v12

    move-wide v12, v7

    move-object v7, v0

    move-object v8, v4

    goto :goto_1

    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    new-instance v8, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/engine/RecordingDiarization;)V

    move-object/from16 v9, p1

    iput-object v9, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$0:Ljava/lang/Object;

    move-object/from16 v10, p4

    iput-object v10, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$1:Ljava/lang/Object;

    move-object/from16 v11, p5

    iput-object v11, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$3:Ljava/lang/Object;

    iput-object v7, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->L$4:Ljava/lang/Object;

    move-wide/from16 v12, p2

    iput-wide v12, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->J$0:J

    iput v6, v3, Lru/localscribe/engine/RecordingDiarization$primary$1;->label:I

    invoke-direct {v1, v8, v3}, Lru/localscribe/engine/RecordingDiarization;->load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v8

    check-cast v0, Lru/localscribe/engine/NativeDiarizer;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v0, v9, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    move-object v0, v6

    check-cast v0, Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v20, v17

    :goto_2
    cmp-long v17, v20, v12

    if-gez v17, :cond_5

    :try_start_2
    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    nop

    sget-object v2, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    sget-object v19, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :try_start_3
    invoke-static/range {v19 .. v24}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-wide/from16 v7, v20

    move-object/from16 p3, v5

    const/16 v5, 0x2e

    :try_start_4
    invoke-virtual {v2, v3, v4, v5}, Lru/localscribe/core/Timecode;->subtitle(JC)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u0438\u0435 \u0433\u043e\u043b\u043e\u0441\u043e\u0432 \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const v3, 0x27100

    invoke-virtual {v2, v0, v7, v8, v3}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/Collection;

    move-object/from16 p4, v0

    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    move-wide/from16 v19, v3

    const-string v3, "diarization.primary.infer"

    new-instance v4, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda1;

    invoke-direct {v4, v14, v2}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/engine/NativeDiarizer;[F)V

    invoke-virtual {v0, v3, v4}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    if-eqz v0, :cond_3

    const-string v3, "primary"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v19

    move-wide/from16 v21, v7

    array-length v7, v2

    invoke-virtual {v0, v3, v4, v5, v7}, Lru/localscribe/engine/PipelineResources;->observe(Ljava/lang/String;JI)V

    goto :goto_4

    :cond_3
    move-wide/from16 v21, v7

    :goto_4
    array-length v0, v2

    int-to-long v3, v0

    add-long v3, v21, v3

    long-to-float v0, v3

    long-to-float v5, v12

    div-float/2addr v0, v5

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v5, p3

    move-object/from16 v0, p4

    move-object/from16 v2, p6

    move-wide/from16 v20, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_4
    move-object/from16 p4, v0

    move-wide/from16 v21, v7

    const/4 v0, 0x0

    const-string v3, "\u0410\u0443\u0434\u0438\u043e \u043e\u0431\u043e\u0440\u0432\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u0438 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u0438\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v2, v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 p3, v5

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-object v2, v0

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 p3, v5

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-object v2, v0

    goto :goto_5

    :cond_5
    move-object/from16 p4, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 p3, v5

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-wide/from16 v21, v20

    :try_start_5
    invoke-static/range {p3 .. p3}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    iget-object v2, v1, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    const-string v3, "diarization.primary.flush"

    new-instance v4, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda2;

    invoke-direct {v4, v14}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda2;-><init>(Lru/localscribe/engine/NativeDiarizer;)V

    invoke-virtual {v2, v3, v4}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v0, 0x0

    :try_start_6
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object/from16 v7, p1

    invoke-direct {v1, v7, v12, v13}, Lru/localscribe/engine/RecordingDiarization;->timeline(Ljava/util/List;J)Lru/localscribe/core/SpeakerTimeline;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v2, v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v2, v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 p3, v5

    move-object v2, v0

    :goto_5
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_8
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 p3, v5

    move-object v2, v0

    :goto_6
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final primary$lambda$0(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;
    .locals 3

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v1, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda3;-><init>(Lru/localscribe/engine/RecordingDiarization;)V

    const-string v2, "diarization.primary.load"

    invoke-virtual {v0, v2, v1}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/NativeDiarizer;

    return-object v0
.end method

.method private static final primary$lambda$0$0(Lru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;
    .locals 8

    new-instance v0, Lru/localscribe/engine/NativeDiarizer;

    iget-object v1, p0, Lru/localscribe/engine/RecordingDiarization;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v1}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v1

    const-string v2, "nemotron3.onnx"

    invoke-virtual {v1, v2}, Lru/localscribe/data/ExtraModels;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lru/localscribe/engine/NativeDiarizer;-><init>(Ljava/lang/String;ZDIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final primary$lambda$1$0$1(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Lru/localscribe/engine/NativeDiarizer;->accept([F)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final primary$lambda$1$0$2(Lru/localscribe/engine/NativeDiarizer;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/engine/NativeDiarizer;->complete()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final secondary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/core/SpeakerTimeline;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p6

    instance-of v0, v4, Lru/localscribe/engine/RecordingDiarization$secondary$1;

    if-eqz v0, :cond_0

    move-object v0, v4

    check-cast v0, Lru/localscribe/engine/RecordingDiarization$secondary$1;

    iget v5, v0, Lru/localscribe/engine/RecordingDiarization$secondary$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v5, v0, Lru/localscribe/engine/RecordingDiarization$secondary$1;->label:I

    sub-int/2addr v5, v6

    iput v5, v0, Lru/localscribe/engine/RecordingDiarization$secondary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/engine/RecordingDiarization$secondary$1;

    invoke-direct {v0, v1, v4}, Lru/localscribe/engine/RecordingDiarization$secondary$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v0

    iget-object v6, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v7, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->label:I

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v9, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->J$1:J

    iget-wide v2, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->J$0:J

    iget-object v0, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v7, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    iget-object v11, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    move-wide v14, v9

    move-object v9, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-interface {v5}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lru/localscribe/engine/RecordingDiarization;->models:Lru/localscribe/data/ModelStore;

    invoke-virtual {v10}, Lru/localscribe/data/ModelStore;->getExtras()Lru/localscribe/data/ExtraModels;

    move-result-object v10

    const-string v11, "segmentation-3.0.safetensors"

    invoke-virtual {v10, v11}, Lru/localscribe/data/ExtraModels;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/32 v10, 0x1b77400

    add-long v12, v2, v10

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    div-long/2addr v12, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    new-instance v12, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;

    invoke-direct {v12, v1, v9, v10, v11}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda4;-><init>(Lru/localscribe/engine/RecordingDiarization;Ljava/lang/String;J)V

    move-object/from16 v13, p1

    iput-object v13, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$0:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$1:Ljava/lang/Object;

    move-object/from16 v15, p5

    iput-object v15, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$2:Ljava/lang/Object;

    iput-object v7, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$3:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->L$4:Ljava/lang/Object;

    iput-wide v2, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->J$0:J

    iput-wide v10, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->J$1:J

    const/4 v8, 0x1

    iput v8, v5, Lru/localscribe/engine/RecordingDiarization$secondary$1;->label:I

    invoke-direct {v1, v12, v5}, Lru/localscribe/engine/RecordingDiarization;->load(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_1

    return-object v0

    :cond_1
    move-object v12, v14

    move-wide/from16 v27, v10

    move-object v11, v15

    move-wide/from16 v14, v27

    :goto_1
    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v8

    check-cast v0, Lru/localscribe/engine/NativeDiarizer;

    move-object v10, v0

    const/16 v16, 0x0

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v0, v13, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/io/RandomAccessFile;

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-wide/from16 v21, v18

    :goto_2
    cmp-long v18, v21, v2

    if-gez v18, :cond_9

    invoke-static {v7}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v18, v5

    :try_start_2
    iget-object v5, v1, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v19, 0x0

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Lru/localscribe/engine/PipelineResources;->getDiarizersTogether()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v26, v6

    move-object v5, v0

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    goto/16 :goto_7

    :cond_2
    move-object/from16 v26, v6

    :cond_3
    move/from16 v5, v19

    :goto_3
    if-eqz v5, :cond_7

    :try_start_4
    iget-object v5, v1, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lru/localscribe/engine/PipelineResources;->secondaryMustWait()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move/from16 v19, v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x1

    :cond_5
    :goto_4
    if-nez v19, :cond_6

    goto :goto_5

    :cond_6
    new-instance v5, Lru/localscribe/engine/RecordingDiarization$RescheduleSecondary;

    invoke-direct {v5}, Lru/localscribe/engine/RecordingDiarization$RescheduleSecondary;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    goto/16 :goto_7

    :cond_7
    const/4 v6, 0x1

    :goto_5
    nop

    :try_start_5
    sget-object v5, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    sget-object v20, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 p1, v7

    :try_start_6
    invoke-static/range {v20 .. v25}, Lru/localscribe/core/Timecode;->ms$default(Lru/localscribe/core/Timecode;JIILjava/lang/Object;)J

    move-result-wide v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-wide/from16 v13, v21

    const/16 v15, 0x2e

    :try_start_7
    invoke-virtual {v5, v6, v7, v15}, Lru/localscribe/core/Timecode;->subtitle(JC)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0423\u0442\u043e\u0447\u043d\u0435\u043d\u0438\u0435 \u0433\u043e\u043b\u043e\u0441\u043e\u0432 \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const v6, 0x27100

    invoke-virtual {v5, v0, v13, v14, v6}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v15, v1, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    move-object/from16 p4, v0

    const-string v0, "diarization.secondary.infer"

    move-wide/from16 v20, v6

    new-instance v6, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;

    invoke-direct {v6, v10, v5}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda5;-><init>(Lru/localscribe/engine/NativeDiarizer;[F)V

    invoke-virtual {v15, v0, v6}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    if-eqz v0, :cond_8

    const-string v6, "secondary"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    move-wide/from16 v24, v13

    sub-long v13, v22, v20

    array-length v7, v5

    invoke-virtual {v0, v6, v13, v14, v7}, Lru/localscribe/engine/PipelineResources;->observe(Ljava/lang/String;JI)V

    goto :goto_6

    :cond_8
    move-wide/from16 v24, v13

    :goto_6
    const/16 v0, 0x3e80

    int-to-long v6, v0

    mul-long v14, p2, v6

    add-long v6, v24, v14

    invoke-static {v6, v7, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v13

    long-to-float v0, v13

    long-to-float v13, v2

    div-float/2addr v0, v13

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v14, p2

    move-object/from16 v0, p4

    move-wide/from16 v21, v6

    move-object/from16 v5, v18

    move-object/from16 v13, v19

    move-object/from16 v6, v26

    move-object/from16 v7, p1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-object v5, v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-object v5, v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-object v5, v0

    goto :goto_7

    :cond_9
    move-object/from16 p4, v0

    move-object/from16 v18, v5

    move-object/from16 v26, v6

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-wide/from16 v24, v21

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    const-string v0, "\u0421\u043e\u043f\u043e\u0441\u0442\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432 \u0432\u0441\u0435\u0439 \u0437\u0430\u043f\u0438\u0441\u0438"

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    const-string v5, "diarization.secondary.cluster"

    new-instance v6, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda6;

    invoke-direct {v6, v10}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda6;-><init>(Lru/localscribe/engine/NativeDiarizer;)V

    invoke-virtual {v0, v5, v6}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v5, 0x0

    :try_start_8
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    nop

    invoke-static {v8, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    nop

    invoke-direct {v1, v0, v2, v3}, Lru/localscribe/engine/RecordingDiarization;->timeline(Ljava/util/List;J)Lru/localscribe/core/SpeakerTimeline;

    move-result-object v4

    return-object v4

    :catchall_5
    move-exception v0

    move-object v5, v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v26, v6

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-object v5, v0

    :goto_7
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_a
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    goto :goto_8

    :catchall_9
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v26, v6

    move-object/from16 p1, v7

    move-object/from16 v19, v13

    move-wide/from16 p2, v14

    move-object v4, v0

    :goto_8
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final secondary$lambda$0(Lru/localscribe/engine/RecordingDiarization;Ljava/lang/String;J)Lru/localscribe/engine/NativeDiarizer;
    .locals 3

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v1, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3, p0}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;JLru/localscribe/engine/RecordingDiarization;)V

    const-string v2, "diarization.secondary.load"

    invoke-virtual {v0, v2, v1}, Lru/localscribe/engine/ProcessingTimings;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/engine/NativeDiarizer;

    return-object v0
.end method

.method private static final secondary$lambda$0$0(Ljava/lang/String;JLru/localscribe/engine/RecordingDiarization;)Lru/localscribe/engine/NativeDiarizer;
    .locals 7

    new-instance v0, Lru/localscribe/engine/NativeDiarizer;

    nop

    nop

    long-to-double v3, p1

    iget-object v1, p3, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/localscribe/engine/PipelineResources;->getDiarizersTogether()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p3, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lru/localscribe/engine/PipelineResources;->getAsrRunning()Z

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v6, "SUPPORTED_ABIS"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "x86_64"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v5, v2

    :cond_3
    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lru/localscribe/engine/NativeDiarizer;-><init>(Ljava/lang/String;ZDI)V

    return-object v0
.end method

.method private static final secondary$lambda$1$0$0(Lru/localscribe/engine/NativeDiarizer;[F)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Lru/localscribe/engine/NativeDiarizer;->accept([F)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final secondary$lambda$1$0$1(Lru/localscribe/engine/NativeDiarizer;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/engine/NativeDiarizer;->complete()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final timeline(Ljava/util/List;J)Lru/localscribe/core/SpeakerTimeline;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;J)",
            "Lru/localscribe/core/SpeakerTimeline;"
        }
    .end annotation

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    const/4 v10, 0x0

    move-object v11, v9

    check-cast v11, Lru/localscribe/core/VoiceTurn;

    const/16 v20, 0x0

    invoke-virtual {v11}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v12

    move-wide/from16 v14, p2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v11}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v16

    cmp-long v16, v12, v16

    if-lez v16, :cond_0

    const/16 v18, 0xd

    const/16 v19, 0x0

    move-wide v14, v12

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lru/localscribe/core/VoiceTurn;->copy$default(Lru/localscribe/core/VoiceTurn;JJIZILjava/lang/Object;)Lru/localscribe/core/VoiceTurn;

    move-result-object v12

    goto :goto_1

    :cond_0
    move-wide v14, v12

    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_1

    const/4 v11, 0x0

    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    nop

    goto :goto_0

    :cond_2
    nop

    nop

    check-cast v2, Ljava/util/List;

    nop

    new-instance v0, Lru/localscribe/core/SpeakerTimeline;

    invoke-direct {v0, v2}, Lru/localscribe/core/SpeakerTimeline;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final analyze(Ljava/io/File;Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lru/localscribe/core/Settings;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/core/SpeakerTimeline;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p5

    instance-of v2, v9, Lru/localscribe/engine/RecordingDiarization$analyze$1;

    if-eqz v2, :cond_0

    move-object v2, v9

    check-cast v2, Lru/localscribe/engine/RecordingDiarization$analyze$1;

    iget v3, v2, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lru/localscribe/engine/RecordingDiarization$analyze$1;

    invoke-direct {v2, v0, v9}, Lru/localscribe/engine/RecordingDiarization$analyze$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v2

    iget-object v10, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    iget v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->I$0:I

    iget-wide v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iget-object v5, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$9:Ljava/lang/Object;

    iget-object v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$8:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$7:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v11, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$6:Ljava/lang/Object;

    iget-object v12, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v13, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v14, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v15, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object v1, v15

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v15, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lru/localscribe/core/Settings;

    move-object/from16 p3, v1

    iget-object v1, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v0, v10

    move-wide/from16 v18, v3

    move-object/from16 v4, p3

    move-object v3, v7

    move-wide/from16 v7, v18

    goto/16 :goto_7

    :pswitch_1
    iget v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->I$0:I

    iget-wide v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iget-object v5, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$6:Ljava/lang/Object;

    iget-object v12, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v13, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v14, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v15, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object v1, v15

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v15, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lru/localscribe/core/Settings;

    move-object/from16 p3, v1

    iget-object v1, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v2

    move-wide v2, v3

    move-object/from16 v17, v8

    move-object v8, v10

    move-object/from16 v4, p3

    goto/16 :goto_6

    :pswitch_2
    iget v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->I$0:I

    iget-wide v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iget-object v5, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$6:Ljava/lang/Object;

    iget-object v11, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v12, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v13, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iget-object v14, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object v1, v14

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v14, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lru/localscribe/core/Settings;

    iget-object v15, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/io/File;

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v13

    move-object v13, v6

    move-object v6, v0

    move-object v0, v10

    goto/16 :goto_5

    :pswitch_3
    iget-wide v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iget-object v4, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lru/localscribe/core/Settings;

    iget-object v8, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v13, v6

    move-object v14, v7

    move-object v4, v1

    move-wide/from16 v18, v2

    move-object v2, v0

    move-wide/from16 v0, v18

    goto/16 :goto_3

    :pswitch_4
    iget-wide v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iget-object v4, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v5, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lru/localscribe/core/Settings;

    iget-object v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v5

    move-object v13, v6

    move-object v5, v4

    move-wide v3, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_2

    :pswitch_5
    iget-wide v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iget-object v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v12, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object v1, v12

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v12, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lru/localscribe/core/Settings;

    iget-object v13, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_1

    :pswitch_6
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v7

    const/16 v2, 0x2c

    int-to-long v12, v2

    sub-long/2addr v7, v12

    int-to-long v12, v4

    div-long/2addr v7, v12

    const-string v2, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043c\u043e\u0434\u0435\u043b\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v12, Lru/localscribe/engine/RecordingDiarization$analyze$2;

    invoke-direct {v12, v0, v3}, Lru/localscribe/engine/RecordingDiarization$analyze$2;-><init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object/from16 v13, p1

    iput-object v13, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    move-object/from16 v14, p2

    iput-object v14, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    iput-object v1, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    move-object/from16 v15, p4

    iput-object v15, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    iput-wide v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iput v5, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    const-string v5, "diarization.weights"

    invoke-virtual {v2, v5, v12, v6}, Lru/localscribe/engine/ProcessingTimings;->suspendMeasure(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_1

    return-object v11

    :cond_1
    move-object v12, v14

    move-object v5, v15

    move-object v2, v1

    move-object v1, v13

    :goto_1
    invoke-virtual {v12}, Lru/localscribe/core/Settings;->getRefineDiarization()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    iput-wide v7, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iput v4, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    move-object v4, v2

    move-wide v2, v7

    invoke-direct/range {v0 .. v6}, Lru/localscribe/engine/RecordingDiarization;->primary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    move-object v13, v6

    move-wide/from16 v18, v2

    move-object v2, v0

    move-wide/from16 v0, v18

    if-ne v7, v11, :cond_2

    return-object v11

    :cond_2
    move-wide/from16 v18, v0

    move-object v1, v4

    move-wide/from16 v3, v18

    move-object v0, v7

    move-object v7, v8

    :goto_2
    return-object v0

    :cond_3
    move-object v4, v2

    move-object v13, v6

    move-object v2, v0

    move-wide/from16 v18, v7

    move-object v8, v1

    move-wide/from16 v0, v18

    iget-object v6, v2, Lru/localscribe/engine/RecordingDiarization;->timing:Lru/localscribe/engine/ProcessingTimings;

    new-instance v7, Lru/localscribe/engine/RecordingDiarization$analyze$3;

    invoke-direct {v7, v2, v3}, Lru/localscribe/engine/RecordingDiarization$analyze$3;-><init>(Lru/localscribe/engine/RecordingDiarization;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iput-object v8, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    iput-object v4, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    iput-object v5, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    iput-wide v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    const/4 v3, 0x3

    iput v3, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    const-string v3, "diarization.secondary.weights"

    invoke-virtual {v6, v3, v7, v13}, Lru/localscribe/engine/ProcessingTimings;->suspendMeasure(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_4

    return-object v11

    :cond_4
    move-object v14, v12

    move-object v12, v5

    :goto_3
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object v15, v3

    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;

    invoke-direct {v6, v5, v15, v12, v3}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;)V

    new-instance v7, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda9;

    invoke-direct {v7, v5, v3, v12, v15}, Lru/localscribe/engine/RecordingDiarization$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$FloatRef;)V

    move-wide/from16 p1, v0

    iget-object v0, v2, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lru/localscribe/engine/PipelineResources;->canParallelDiarizers()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    new-instance v0, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;

    move-object v2, v8

    const/4 v8, 0x0

    move v9, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v1, p0

    move-object v5, v4

    move-wide/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lru/localscribe/engine/RecordingDiarization$analyze$pair$1;-><init>(Lru/localscribe/engine/RecordingDiarization;Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    iput-object v12, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$7:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$8:Ljava/lang/Object;

    iput-wide v2, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iput v9, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->I$0:I

    const/4 v6, 0x4

    iput v6, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    invoke-static {v0, v13}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_6

    return-object v11

    :cond_6
    move-object v6, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v12

    move-object v12, v15

    move-object/from16 v11, v16

    move-object/from16 v8, v17

    move-object v15, v1

    move-object v1, v4

    move-wide v3, v2

    move v2, v9

    :goto_5
    check-cast v0, Lkotlin/Pair;

    move-object v9, v15

    move-object v15, v14

    move-object v14, v6

    move-object v6, v13

    goto/16 :goto_8

    :cond_7
    move v9, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object v5, v6

    move-object v1, v8

    move-wide/from16 v2, p1

    iput-object v1, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    iput-object v4, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    iput-object v12, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$7:Ljava/lang/Object;

    iput-object v7, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$8:Ljava/lang/Object;

    iput-wide v2, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iput v9, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->I$0:I

    const/4 v0, 0x5

    iput v0, v13, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lru/localscribe/engine/RecordingDiarization;->primary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v11, :cond_8

    return-object v11

    :cond_8
    move-object v13, v7

    move-object v7, v5

    move-object v5, v13

    move-object v13, v15

    move-object v15, v14

    move-object v14, v12

    move-object/from16 v12, v16

    :goto_6
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$2:Ljava/lang/Object;

    iput-object v14, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$4:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$6:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$7:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$8:Ljava/lang/Object;

    iput-object v8, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->L$9:Ljava/lang/Object;

    iput-wide v2, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->J$0:J

    iput v9, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->I$0:I

    const/4 v0, 0x6

    iput v0, v6, Lru/localscribe/engine/RecordingDiarization$analyze$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 p1, v7

    invoke-direct/range {v0 .. v6}, Lru/localscribe/engine/RecordingDiarization;->secondary(Ljava/io/File;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_9

    return-object v11

    :cond_9
    move-object v0, v7

    move-object/from16 v11, v17

    move/from16 v18, v9

    move-object/from16 v9, p1

    move-wide/from16 v19, v2

    move-object v3, v5

    move-object v5, v8

    move/from16 v2, v18

    move-wide/from16 v7, v19

    :goto_7
    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    move-object v5, v3

    move-object/from16 v18, v9

    move-object v9, v1

    move-object v1, v4

    move-wide v3, v7

    move-object/from16 v7, v18

    move-object v8, v11

    move-object v11, v12

    move-object v12, v13

    :goto_8
    nop

    const/4 v13, 0x0

    invoke-interface {v6}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v14, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lru/localscribe/core/SpeakerTimeline;->Companion:Lru/localscribe/core/SpeakerTimeline$Companion;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v0

    move-object/from16 v0, v16

    check-cast v0, Lru/localscribe/core/SpeakerTimeline;

    invoke-virtual/range {p1 .. p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p2, v1

    move-object/from16 v1, v16

    check-cast v1, Lru/localscribe/core/SpeakerTimeline;

    invoke-virtual {v13, v0, v1}, Lru/localscribe/core/SpeakerTimeline$Companion;->fuse(Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/core/SpeakerTimeline;)Lru/localscribe/core/SpeakerTimeline;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getResources()Lru/localscribe/engine/PipelineResources;
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    return-object v0
.end method

.method public final setResources(Lru/localscribe/engine/PipelineResources;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/engine/RecordingDiarization;->resources:Lru/localscribe/engine/PipelineResources;

    return-void
.end method
