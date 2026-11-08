.class public final Lru/localscribe/core/Transcript;
.super Ljava/lang/Object;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Transcript$$serializer;,
        Lru/localscribe/core/Transcript$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 52\u00020\u0001:\u000245BU\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t\u0012\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010Bm\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\t\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u000f\u0010\u0014J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J\u000f\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH\u00c6\u0003J\u0015\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000eH\u00c6\u0003J]\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t2\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000eH\u00c6\u0001J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001J\t\u0010+\u001a\u00020\u0005H\u00d6\u0001J%\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0001\u00a2\u0006\u0002\u00083R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u00066"
    }
    d2 = {
        "Lru/localscribe/core/Transcript;",
        "",
        "schemaVersion",
        "",
        "language",
        "",
        "recording",
        "Lru/localscribe/core/Recording;",
        "speakers",
        "",
        "Lru/localscribe/core/Speaker;",
        "segments",
        "Lru/localscribe/core/Segment;",
        "capabilities",
        "",
        "<init>",
        "(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getSchemaVersion",
        "()I",
        "getLanguage",
        "()Ljava/lang/String;",
        "getRecording",
        "()Lru/localscribe/core/Recording;",
        "getSpeakers",
        "()Ljava/util/List;",
        "getSegments",
        "getCapabilities",
        "()Ljava/util/Map;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$core",
        "$serializer",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/localscribe/core/Transcript$Companion;


# instance fields
.field private final capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final language:Ljava/lang/String;

.field private final recording:Lru/localscribe/core/Recording;

.field private final schemaVersion:I

.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final speakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3M5WFVvs2afgSporaews8_882Bw()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Transcript;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LRgTCuUl5tlnxOoLcjlgMBpw4Vs()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Transcript;->_childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VSnb1DqhfF1M0U2RlFCMpr8cDSw()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Transcript;->_childSerializers$_anonymous_$1()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/core/Transcript$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/Transcript$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/Transcript;->Companion:Lru/localscribe/core/Transcript$Companion;

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/Lazy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lru/localscribe/core/Transcript$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/localscribe/core/Transcript$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lru/localscribe/core/Transcript$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lru/localscribe/core/Transcript$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lru/localscribe/core/Transcript$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lru/localscribe/core/Transcript$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lru/localscribe/core/Transcript;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    and-int/lit8 v2, v1, 0x1c

    const/16 v3, 0x1c

    if-eq v3, v2, :cond_0

    sget-object v2, Lru/localscribe/core/Transcript$$serializer;->INSTANCE:Lru/localscribe/core/Transcript$$serializer;

    invoke-virtual {v2}, Lru/localscribe/core/Transcript$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    if-nez v2, :cond_1

    nop

    iput v3, v0, Lru/localscribe/core/Transcript;->schemaVersion:I

    move/from16 v2, p2

    goto :goto_0

    :cond_1
    move/from16 v2, p2

    iput v2, v0, Lru/localscribe/core/Transcript;->schemaVersion:I

    :goto_0
    and-int/lit8 v4, v1, 0x2

    const-string v5, "offline"

    if-nez v4, :cond_3

    nop

    nop

    iget-object v4, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getAnalysisMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v4

    invoke-virtual {v4}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v4

    sget-object v6, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne v4, v6, :cond_2

    const-string v4, "en"

    goto :goto_1

    :cond_2
    const-string v4, "ru"

    :goto_1
    iput-object v4, v0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    move-object/from16 v4, p3

    goto :goto_2

    :cond_3
    move-object/from16 v4, p3

    iput-object v4, v0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    :goto_2
    move-object/from16 v6, p4

    iput-object v6, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    move-object/from16 v7, p5

    iput-object v7, v0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    move-object/from16 v8, p6

    iput-object v8, v0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    and-int/lit8 v9, v1, 0x20

    if-nez v9, :cond_d

    const/4 v9, 0x6

    new-array v9, v9, [Lkotlin/Pair;

    nop

    iget-object v10, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v10}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v13, "advanced/emo.int8.onnx"

    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v12, :cond_4

    move v10, v12

    goto :goto_3

    :cond_4
    move v10, v11

    :goto_3
    const-string v13, "disabled"

    const-string v14, "unavailable"

    if-eqz v10, :cond_6

    nop

    iget-object v10, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v10}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v10

    invoke-virtual {v10}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "model_estimate_uncalibrated"

    goto :goto_4

    :cond_5
    move-object v10, v13

    goto :goto_4

    :cond_6
    move-object v10, v14

    :goto_4
    const-string v15, "emotion"

    invoke-static {v15, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v11

    const-string v10, "accent"

    invoke-static {v10, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v12

    nop

    nop

    nop

    nop

    iget-object v10, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v10}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_7

    const-string v15, "advanced/segmentation.int8.onnx"

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    nop

    if-ne v10, v12, :cond_7

    move v10, v12

    goto :goto_5

    :cond_7
    move v10, v11

    :goto_5
    if-eqz v10, :cond_8

    const-string v10, "neural_detection"

    goto :goto_6

    :cond_8
    move-object v10, v14

    :goto_6
    const-string v15, "overlap"

    invoke-static {v15, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v3

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v10, "advanced/mossformer2.onnx"

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v12, :cond_9

    move v11, v12

    :cond_9
    if-nez v11, :cond_a

    move-object v13, v14

    goto :goto_7

    :cond_a
    nop

    iget-object v3, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lru/localscribe/core/Settings;->getRunSeparation()Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    nop

    iget-object v3, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v3}, Lru/localscribe/core/Recording;->getAnalysisMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v13, "requires_offline_pass"

    goto :goto_7

    :cond_c
    const-string v13, "offline_two_sources_estimate"

    :goto_7
    const-string v3, "source_separation"

    invoke-static {v3, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v9, v5

    nop

    const-string v3, "word_end_times"

    invoke-static {v3, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v9, v5

    nop

    const-string v3, "intonation_classification"

    invoke-static {v3, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v9, v5

    nop

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    move-object/from16 v3, p7

    goto :goto_8

    :cond_d
    move-object/from16 v3, p7

    iput-object v3, v0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    :goto_8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lru/localscribe/core/Recording;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recording"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speakers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segments"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    iput-object p2, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    iput-object p3, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    iput-object p4, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    iput-object p5, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    iput-object p6, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x2

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-string v1, "offline"

    if-eqz p8, :cond_2

    nop

    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getAnalysisMode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object p2

    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object p2

    sget-object p8, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne p2, p8, :cond_1

    const-string p2, "en"

    goto :goto_0

    :cond_1
    const-string p2, "ru"

    :cond_2
    :goto_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_c

    nop

    const/4 p6, 0x6

    new-array p6, p6, [Lkotlin/Pair;

    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object p7

    const/4 p8, 0x0

    const/4 v2, 0x1

    if-eqz p7, :cond_3

    invoke-virtual {p7}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object p7

    if-eqz p7, :cond_3

    const-string v3, "advanced/emo.int8.onnx"

    invoke-interface {p7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p7

    if-ne p7, v2, :cond_3

    move p7, v2

    goto :goto_1

    :cond_3
    move p7, p8

    :goto_1
    const-string v3, "disabled"

    const-string v4, "unavailable"

    if-eqz p7, :cond_5

    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object p7

    invoke-virtual {p7}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result p7

    if-eqz p7, :cond_4

    const-string p7, "model_estimate_uncalibrated"

    goto :goto_2

    :cond_4
    move-object p7, v3

    goto :goto_2

    :cond_5
    move-object p7, v4

    :goto_2
    const-string v5, "emotion"

    invoke-static {v5, p7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    aput-object p7, p6, p8

    const-string p7, "accent"

    invoke-static {p7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    aput-object p7, p6, v2

    nop

    nop

    nop

    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object p7

    if-eqz p7, :cond_6

    invoke-virtual {p7}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object p7

    if-eqz p7, :cond_6

    const-string v5, "advanced/segmentation.int8.onnx"

    invoke-interface {p7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p7

    nop

    if-ne p7, v2, :cond_6

    move p7, v2

    goto :goto_3

    :cond_6
    move p7, p8

    :goto_3
    if-eqz p7, :cond_7

    const-string p7, "neural_detection"

    goto :goto_4

    :cond_7
    move-object p7, v4

    :goto_4
    const-string v5, "overlap"

    invoke-static {v5, p7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    aput-object p7, p6, v0

    nop

    nop

    nop

    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object p7

    if-eqz p7, :cond_8

    invoke-virtual {p7}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object p7

    if-eqz p7, :cond_8

    const-string v0, "advanced/mossformer2.onnx"

    invoke-interface {p7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p7

    if-ne p7, v2, :cond_8

    move p8, v2

    :cond_8
    if-nez p8, :cond_9

    move-object v3, v4

    goto :goto_5

    :cond_9
    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object p7

    invoke-virtual {p7}, Lru/localscribe/core/Settings;->getRunSeparation()Z

    move-result p7

    if-nez p7, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p3}, Lru/localscribe/core/Recording;->getAnalysisMode()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_b

    const-string v3, "requires_offline_pass"

    goto :goto_5

    :cond_b
    const-string v3, "offline_two_sources_estimate"

    :goto_5
    const-string p7, "source_separation"

    invoke-static {p7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    const/4 p8, 0x3

    aput-object p7, p6, p8

    nop

    const-string p7, "word_end_times"

    invoke-static {p7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    const/4 p8, 0x4

    aput-object p7, p6, p8

    nop

    const-string p7, "intonation_classification"

    invoke-static {p7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    const/4 p8, 0x5

    aput-object p7, p6, p8

    nop

    invoke-static {p6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p6

    move-object p7, p6

    goto :goto_6

    :cond_c
    move-object p7, p6

    :goto_6
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lru/localscribe/core/Transcript;-><init>(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/Speaker$$serializer;->INSTANCE:Lru/localscribe/core/Speaker$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/Segment$$serializer;->INSTANCE:Lru/localscribe/core/Segment$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$1()Lkotlinx/serialization/KSerializer;
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lru/localscribe/core/Transcript;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lru/localscribe/core/Transcript;ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;ILjava/lang/Object;)Lru/localscribe/core/Transcript;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lru/localscribe/core/Transcript;->copy(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lru/localscribe/core/Transcript;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$core(Lru/localscribe/core/Transcript;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lru/localscribe/core/Transcript;->$childSerializers:[Lkotlin/Lazy;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    :goto_0
    move v5, v7

    goto :goto_1

    :cond_0
    iget v5, v0, Lru/localscribe/core/Transcript;->schemaVersion:I

    nop

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    iget v5, v0, Lru/localscribe/core/Transcript;->schemaVersion:I

    invoke-interface {v1, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2
    invoke-interface {v1, v2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    const-string v8, "offline"

    if-eqz v5, :cond_3

    :goto_2
    move v5, v7

    goto :goto_4

    :cond_3
    iget-object v5, v0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    nop

    nop

    iget-object v9, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getAnalysisMode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v9}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v9

    invoke-virtual {v9}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v9

    sget-object v10, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne v9, v10, :cond_4

    const-string v9, "en"

    goto :goto_3

    :cond_4
    const-string v9, "ru"

    :goto_3
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_4
    if-eqz v5, :cond_6

    iget-object v5, v0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    invoke-interface {v1, v2, v7, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_6
    sget-object v5, Lru/localscribe/core/Recording$$serializer;->INSTANCE:Lru/localscribe/core/Recording$$serializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v9, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-interface {v1, v2, v6, v5, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aget-object v9, v3, v5

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/SerializationStrategy;

    iget-object v10, v0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    invoke-interface {v1, v2, v5, v9, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v9, 0x4

    aget-object v10, v3, v9

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/SerializationStrategy;

    iget-object v11, v0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    invoke-interface {v1, v2, v9, v10, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v10, 0x5

    invoke-interface {v1, v2, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_5
    move v4, v7

    goto/16 :goto_c

    :cond_7
    iget-object v11, v0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    const/4 v12, 0x6

    new-array v12, v12, [Lkotlin/Pair;

    nop

    iget-object v13, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v13}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_8

    const-string v14, "advanced/emo.int8.onnx"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-ne v13, v7, :cond_8

    move v13, v7

    goto :goto_6

    :cond_8
    move v13, v4

    :goto_6
    const-string v14, "disabled"

    const-string v15, "unavailable"

    if-eqz v13, :cond_a

    nop

    iget-object v13, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v13}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v13

    invoke-virtual {v13}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "model_estimate_uncalibrated"

    goto :goto_7

    :cond_9
    move-object v13, v14

    goto :goto_7

    :cond_a
    move-object v13, v15

    :goto_7
    move/from16 v16, v4

    const-string v4, "emotion"

    invoke-static {v4, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v12, v16

    const-string v4, "accent"

    invoke-static {v4, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v12, v7

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v13, "advanced/segmentation.int8.onnx"

    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-ne v4, v7, :cond_b

    move v4, v7

    goto :goto_8

    :cond_b
    move/from16 v4, v16

    :goto_8
    if-eqz v4, :cond_c

    const-string v4, "neural_detection"

    goto :goto_9

    :cond_c
    move-object v4, v15

    :goto_9
    const-string v13, "overlap"

    invoke-static {v13, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v12, v6

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getModelInfo()Lru/localscribe/core/ModelInfo;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lru/localscribe/core/ModelInfo;->getSha256()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v6, "advanced/mossformer2.onnx"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_d

    move v4, v7

    goto :goto_a

    :cond_d
    move/from16 v4, v16

    :goto_a
    if-nez v4, :cond_e

    move-object v14, v15

    goto :goto_b

    :cond_e
    nop

    iget-object v4, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getSettings()Lru/localscribe/core/Settings;

    move-result-object v4

    invoke-virtual {v4}, Lru/localscribe/core/Settings;->getRunSeparation()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_b

    :cond_f
    nop

    iget-object v4, v0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getAnalysisMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v14, "requires_offline_pass"

    goto :goto_b

    :cond_10
    const-string v14, "offline_two_sources_estimate"

    :goto_b
    const-string v4, "source_separation"

    invoke-static {v4, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v12, v5

    nop

    const-string v4, "word_end_times"

    invoke-static {v4, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v12, v9

    nop

    const-string v4, "intonation_classification"

    invoke-static {v4, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v12, v10

    nop

    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_5

    :cond_11
    move/from16 v4, v16

    :goto_c
    if-eqz v4, :cond_12

    aget-object v3, v3, v10

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, v0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    invoke-interface {v1, v2, v10, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lru/localscribe/core/Recording;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lru/localscribe/core/Transcript;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lru/localscribe/core/Recording;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lru/localscribe/core/Transcript;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recording"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speakers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segments"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/core/Transcript;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lru/localscribe/core/Transcript;-><init>(ILjava/lang/String;Lru/localscribe/core/Recording;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/Transcript;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/Transcript;

    iget v3, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    iget v4, v1, Lru/localscribe/core/Transcript;->schemaVersion:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    iget-object v4, v1, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    iget-object v1, v1, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCapabilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecording()Lru/localscribe/core/Recording;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    return-object v0
.end method

.method public final getSchemaVersion()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    return v0
.end method

.method public final getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final getSpeakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    invoke-virtual {v2}, Lru/localscribe/core/Recording;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lru/localscribe/core/Transcript;->schemaVersion:I

    iget-object v1, p0, Lru/localscribe/core/Transcript;->language:Ljava/lang/String;

    iget-object v2, p0, Lru/localscribe/core/Transcript;->recording:Lru/localscribe/core/Recording;

    iget-object v3, p0, Lru/localscribe/core/Transcript;->speakers:Ljava/util/List;

    iget-object v4, p0, Lru/localscribe/core/Transcript;->segments:Ljava/util/List;

    iget-object v5, p0, Lru/localscribe/core/Transcript;->capabilities:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transcript(schemaVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", language="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
