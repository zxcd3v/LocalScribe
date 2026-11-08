.class public final Lru/localscribe/engine/NeuralDiarizer;
.super Ljava/lang/Object;
.source "NeuralDiarizer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/engine/NeuralDiarizer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeuralDiarizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeuralDiarizer.kt\nru/localscribe/engine/NeuralDiarizer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n11879#2,9:91\n13805#2:100\n13806#2:103\n11888#2:104\n1#3:101\n1#3:102\n*S KotlinDebug\n*F\n+ 1 NeuralDiarizer.kt\nru/localscribe/engine/NeuralDiarizer\n*L\n73#1:91,9\n73#1:100\n73#1:103\n73#1:104\n73#1:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ2\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lru/localscribe/engine/NeuralDiarizer;",
        "Ljava/io/Closeable;",
        "models",
        "Lru/localscribe/data/ModelStore;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "wholeRecording",
        "",
        "<init>",
        "(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Z)V",
        "model",
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;",
        "turns",
        "",
        "Lru/localscribe/engine/NeuralTurn;",
        "audio",
        "",
        "coreStart",
        "",
        "coreSize",
        "isActive",
        "Lkotlin/Function0;",
        "close",
        "",
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
.field private final model:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;


# direct methods
.method public static synthetic $r8$lambda$ab9SOgED2kgLEtyvV0CrDd3ayjE(Lru/localscribe/engine/NeuralTurn;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/NeuralDiarizer;->turns$lambda$1(Lru/localscribe/engine/NeuralTurn;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ugDreYA_lWiLAxihjGbZRnlrWWg(Lru/localscribe/engine/NeuralTurn;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/engine/NeuralDiarizer;->turns$lambda$2(Lru/localscribe/engine/NeuralTurn;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/NeuralDiarizer;->$stable:I

    return-void
.end method

.method public constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Z)V
    .locals 10

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;

    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    new-instance v3, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationPyannoteModelConfig;

    const-string v4, "advanced/segmentation.int8.onnx"

    invoke-virtual {p1, v4}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getQuality()Lru/localscribe/core/Quality;

    move-result-object v5

    sget-object v6, Lru/localscribe/engine/NeuralDiarizer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lru/localscribe/core/Quality;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const v5, 0x3dcccccd    # 0.1f

    goto :goto_0

    :pswitch_1
    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :pswitch_2
    const v5, 0x3e99999a    # 0.3f

    :goto_0
    invoke-direct {v3, v4, v5}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationPyannoteModelConfig;-><init>(Ljava/lang/String;F)V

    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getThreads()I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationPyannoteModelConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    const-string v4, "speaker.onnx"

    invoke-virtual {p1, v4}, Lru/localscribe/data/ModelStore;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getThreads()I

    move-result v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    nop

    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v5

    :goto_2
    nop

    nop

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v6, v7}, Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;-><init>(IFZ)V

    nop

    nop

    const v5, 0x3e19999a    # 0.15f

    const v6, 0x3e19999a    # 0.15f

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v7, v2}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lru/localscribe/engine/NeuralDiarizer;->model:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/localscribe/engine/NeuralDiarizer;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;Z)V

    return-void
.end method

.method private static final turns$lambda$1(Lru/localscribe/engine/NeuralTurn;)Ljava/lang/Comparable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/engine/NeuralTurn;->getBegin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final turns$lambda$2(Lru/localscribe/engine/NeuralTurn;)Ljava/lang/Comparable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/engine/NeuralTurn;->getLocalSpeaker()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lru/localscribe/engine/NeuralDiarizer;->model:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->release()V

    return-void
.end method

.method public final turns([FIILkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FII",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/engine/NeuralTurn;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    const-string v0, "audio"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isActive"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v1

    const v2, 0x9c400

    const/4 v10, 0x0

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    if-eqz v0, :cond_8

    move-object/from16 v11, p0

    iget-object v0, v11, Lru/localscribe/engine/NeuralDiarizer;->model:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;

    new-instance v2, Lru/localscribe/engine/DiarizationCallback;

    invoke-direct {v2, v8}, Lru/localscribe/engine/DiarizationCallback;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->processWithCallback$default(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;[FLkotlin/jvm/functions/Function3;JILjava/lang/Object;)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    move-result-object v0

    nop

    move-object v1, v0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v12, 0x0

    array-length v13, v6

    move v14, v10

    :goto_1
    if-ge v14, v13, :cond_7

    aget-object v15, v6, v14

    move-object/from16 v16, v15

    const/16 v17, 0x0

    move-object/from16 v18, v16

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->getStart()F

    move-result v20

    const/16 v21, 0x1

    const/16 v9, 0x3e80

    int-to-float v9, v9

    mul-float v20, v20, v9

    invoke-static/range {v20 .. v20}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v20

    move-object/from16 v22, v0

    sub-int v0, v20, p2

    invoke-static {v0, v10, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->getEnd()F

    move-result v20

    mul-float v20, v20, v9

    invoke-static/range {v20 .. v20}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v9

    sub-int v9, v9, p2

    invoke-static {v9, v10, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    const/16 v20, 0x0

    if-gt v9, v0, :cond_1

    move-object/from16 v23, v20

    move/from16 v20, v2

    move-object/from16 v2, v23

    move-object/from16 v24, v1

    move/from16 v23, v10

    goto :goto_6

    :cond_1
    nop

    nop

    nop

    move/from16 v23, v10

    invoke-virtual/range {v18 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->getSpeaker()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->getConfidence()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v25, v24

    check-cast v25, Ljava/lang/Number;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->floatValue()F

    move-result v25

    nop

    const/16 v26, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const v28, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v27, v27, v28

    if-gtz v27, :cond_2

    move/from16 v27, v21

    goto :goto_2

    :cond_2
    move/from16 v27, v23

    :goto_2
    if-eqz v27, :cond_4

    const/high16 v27, -0x40800000    # -1.0f

    cmpg-float v27, v27, v25

    if-gtz v27, :cond_3

    const/high16 v27, 0x3f800000    # 1.0f

    cmpg-float v27, v25, v27

    if-gtz v27, :cond_3

    move/from16 v27, v21

    goto :goto_3

    :cond_3
    move/from16 v27, v23

    :goto_3
    if-eqz v27, :cond_4

    move/from16 v25, v21

    goto :goto_4

    :cond_4
    move/from16 v25, v23

    :goto_4
    if-eqz v25, :cond_5

    move-object/from16 v29, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v29

    goto :goto_5

    :cond_5
    move-object/from16 v24, v1

    move-object/from16 v1, v20

    :goto_5
    move/from16 v20, v2

    new-instance v2, Lru/localscribe/engine/NeuralTurn;

    invoke-direct {v2, v0, v9, v10, v1}, Lru/localscribe/engine/NeuralTurn;-><init>(IIILjava/lang/Float;)V

    :goto_6
    nop

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    nop

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v20

    move-object/from16 v0, v22

    move/from16 v10, v23

    move-object/from16 v1, v24

    goto/16 :goto_1

    :cond_7
    move-object/from16 v22, v0

    move-object/from16 v24, v1

    move/from16 v20, v2

    move/from16 v23, v10

    const/16 v21, 0x1

    nop

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/jvm/functions/Function1;

    new-instance v2, Lru/localscribe/engine/NeuralDiarizer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/localscribe/engine/NeuralDiarizer$$ExternalSyntheticLambda0;-><init>()V

    aput-object v2, v1, v23

    new-instance v2, Lru/localscribe/engine/NeuralDiarizer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lru/localscribe/engine/NeuralDiarizer$$ExternalSyntheticLambda1;-><init>()V

    aput-object v2, v1, v21

    invoke-static {v1}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v11, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
