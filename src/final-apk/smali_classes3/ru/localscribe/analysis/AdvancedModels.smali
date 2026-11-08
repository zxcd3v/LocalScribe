.class public final Lru/localscribe/analysis/AdvancedModels;
.super Ljava/lang/Object;
.source "AdvancedModels.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/analysis/AdvancedModels$Companion;,
        Lru/localscribe/analysis/AdvancedModels$Separated;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdvancedModels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdvancedModels.kt\nru/localscribe/analysis/AdvancedModels\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,275:1\n1#2:276\n12837#3,2:277\n12837#3,2:300\n11561#3:302\n11896#3,3:303\n13175#3,3:306\n774#4:279\n865#4,2:280\n1563#4:282\n1634#4,3:283\n774#4:286\n865#4,2:287\n1563#4:289\n1634#4,2:290\n774#4:292\n865#4,2:293\n1563#4:295\n1634#4,3:296\n1636#4:299\n*S KotlinDebug\n*F\n+ 1 AdvancedModels.kt\nru/localscribe/analysis/AdvancedModels\n*L\n93#1:277,2\n151#1:300,2\n188#1:302\n188#1:303,3\n210#1:306,3\n117#1:279\n117#1:280,2\n118#1:282\n118#1:283,3\n120#1:286\n120#1:287,2\n121#1:289\n121#1:290,2\n123#1:292\n123#1:293,2\n126#1:295\n126#1:296,3\n121#1:299\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 22\u00020\u0001:\u000212B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u001a\u0008\u0002\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\nH\u0002J(\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0002J$\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0006\u0010\'\u001a\u00020\u001f2\u000e\u0008\u0002\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000c0)J\u001e\u0010*\u001a\u00020+2\u0006\u0010\'\u001a\u00020\u001f2\u000e\u0008\u0002\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000c0)J*\u0010,\u001a\u00020-2\u0006\u0010\'\u001a\u00020\u001f2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\n2\u000e\u0008\u0002\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000c0)J\u0006\u0010/\u001a\u00020\u000cJ\u0008\u00100\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u00063"
    }
    d2 = {
        "Lru/localscribe/analysis/AdvancedModels;",
        "Ljava/io/Closeable;",
        "directory",
        "Ljava/io/File;",
        "threads",
        "",
        "reuseBuffers",
        "",
        "timing",
        "Lkotlin/Function2;",
        "",
        "",
        "",
        "<init>",
        "(Ljava/io/File;IZLkotlin/jvm/functions/Function2;)V",
        "environment",
        "Lai/onnxruntime/OrtEnvironment;",
        "kotlin.jvm.PlatformType",
        "segmentation",
        "Lai/onnxruntime/OrtSession;",
        "heavy",
        "heavyName",
        "mel",
        "Lru/localscribe/analysis/GigaMel;",
        "getMel",
        "()Lru/localscribe/analysis/GigaMel;",
        "mel$delegate",
        "Lkotlin/Lazy;",
        "session",
        "name",
        "floats",
        "",
        "inputName",
        "samples",
        "shape",
        "",
        "overlaps",
        "",
        "Lru/localscribe/analysis/SampleSpan;",
        "audio",
        "checkCancelled",
        "Lkotlin/Function0;",
        "separate",
        "Lru/localscribe/analysis/AdvancedModels$Separated;",
        "emotion",
        "Lru/localscribe/core/EmotionAssessment;",
        "excludedReason",
        "releaseHeavy",
        "close",
        "Separated",
        "Companion",
        "analysis"
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
.field public static final Companion:Lru/localscribe/analysis/AdvancedModels$Companion;


# instance fields
.field private final directory:Ljava/io/File;

.field private final environment:Lai/onnxruntime/OrtEnvironment;

.field private heavy:Lai/onnxruntime/OrtSession;

.field private heavyName:Ljava/lang/String;

.field private final mel$delegate:Lkotlin/Lazy;

.field private final reuseBuffers:Z

.field private segmentation:Lai/onnxruntime/OrtSession;

.field private final threads:I

.field private final timing:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$G8pLgfv1FbtKk4SPbQiE4xaRPk8()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lru/localscribe/analysis/AdvancedModels;->emotion$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Hzj8_XXlgti128MjgezdG_m4S5s()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lru/localscribe/analysis/AdvancedModels;->overlaps$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KVWcPQ4zssqFkb_Ni7ZkclZtLMU(Ljava/lang/String;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/analysis/AdvancedModels;->_init_$lambda$0(Ljava/lang/String;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Sehic64BdUR8frba4RFQrnHdHE4()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lru/localscribe/analysis/AdvancedModels;->separate$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$whXYphfAAvl29jWqG-MSUc6Rdr4()Lru/localscribe/analysis/GigaMel;
    .locals 1

    invoke-static {}, Lru/localscribe/analysis/AdvancedModels;->mel_delegate$lambda$0()Lru/localscribe/analysis/GigaMel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/analysis/AdvancedModels$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/analysis/AdvancedModels$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/analysis/AdvancedModels;->Companion:Lru/localscribe/analysis/AdvancedModels$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "IZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timing"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/analysis/AdvancedModels;->directory:Ljava/io/File;

    iput p2, p0, Lru/localscribe/analysis/AdvancedModels;->threads:I

    iput-boolean p3, p0, Lru/localscribe/analysis/AdvancedModels;->reuseBuffers:Z

    iput-object p4, p0, Lru/localscribe/analysis/AdvancedModels;->timing:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->environment:Lai/onnxruntime/OrtEnvironment;

    new-instance v0, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->mel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;IZLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    new-instance p4, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda1;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lru/localscribe/analysis/AdvancedModels;-><init>(Ljava/io/File;IZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;J)Lkotlin/Unit;
    .locals 0

    const-string p1, "<unused var>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic emotion$default(Lru/localscribe/analysis/AdvancedModels;[FLjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lru/localscribe/core/EmotionAssessment;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda4;-><init>()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lru/localscribe/analysis/AdvancedModels;->emotion([FLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lru/localscribe/core/EmotionAssessment;

    move-result-object p0

    return-object p0
.end method

.method private static final emotion$lambda$0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final floats(Ljava/lang/String;Ljava/lang/String;[F[J)[F
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lru/localscribe/analysis/AdvancedModels;->environment:Lai/onnxruntime/OrtEnvironment;

    invoke-static/range {p3 .. p3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-static {v0, v2, v3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Lai/onnxruntime/OnnxTensor;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p1}, Lru/localscribe/analysis/AdvancedModels;->session(Ljava/lang/String;)Lai/onnxruntime/OrtSession;

    move-result-object v0

    move-object v6, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v9, p2

    :try_start_1
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v6, v0}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    move-object v0, v10

    check-cast v0, Lai/onnxruntime/OrtSession$Result;

    const/4 v11, 0x0

    iget-object v12, v1, Lru/localscribe/analysis/AdvancedModels;->timing:Lkotlin/jvm/functions/Function2;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "analysis.infer."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v14, p1

    :try_start_3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sub-long/2addr v15, v7

    const v1, 0xf4240

    move-object/from16 v17, v4

    int-to-long v3, v1

    :try_start_4
    div-long/2addr v15, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v13, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type ai.onnxruntime.OnnxTensor"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lai/onnxruntime/OnnxTensor;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxTensor;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [F

    move-object v12, v4

    const/4 v13, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {v10, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {v2, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v4

    :cond_0
    :try_start_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "\u041c\u043e\u0434\u0435\u043b\u044c \u0432\u0435\u0440\u043d\u0443\u043b\u0430 \u043d\u0435 float tensor"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v14, p1

    :goto_0
    move-object/from16 v17, v4

    move-object v1, v0

    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v10, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_2

    :catchall_6
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v9, p2

    :goto_2
    move-object v1, v0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final getMel()Lru/localscribe/analysis/GigaMel;
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->mel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/analysis/GigaMel;

    return-object v0
.end method

.method private static final mel_delegate$lambda$0()Lru/localscribe/analysis/GigaMel;
    .locals 1

    new-instance v0, Lru/localscribe/analysis/GigaMel;

    invoke-direct {v0}, Lru/localscribe/analysis/GigaMel;-><init>()V

    return-object v0
.end method

.method public static synthetic overlaps$default(Lru/localscribe/analysis/AdvancedModels;[FLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/analysis/AdvancedModels;->overlaps([FLkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final overlaps$lambda$0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic separate$default(Lru/localscribe/analysis/AdvancedModels;[FLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lru/localscribe/analysis/AdvancedModels$Separated;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lru/localscribe/analysis/AdvancedModels$$ExternalSyntheticLambda3;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/analysis/AdvancedModels;->separate([FLkotlin/jvm/functions/Function0;)Lru/localscribe/analysis/AdvancedModels$Separated;

    move-result-object p0

    return-object p0
.end method

.method private static final separate$lambda$0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final session(Ljava/lang/String;)Lai/onnxruntime/OrtSession;
    .locals 11

    const-string v0, "segmentation.int8.onnx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/localscribe/analysis/AdvancedModels;->segmentation:Lai/onnxruntime/OrtSession;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lru/localscribe/analysis/AdvancedModels;->heavyName:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/localscribe/analysis/AdvancedModels;->heavy:Lai/onnxruntime/OrtSession;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v1

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lru/localscribe/analysis/AdvancedModels;->heavy:Lai/onnxruntime/OrtSession;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lai/onnxruntime/OrtSession;->close()V

    :cond_2
    iput-object v2, p0, Lru/localscribe/analysis/AdvancedModels;->heavy:Lai/onnxruntime/OrtSession;

    iput-object v2, p0, Lru/localscribe/analysis/AdvancedModels;->heavyName:Ljava/lang/String;

    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lru/localscribe/analysis/AdvancedModels;->directory:Ljava/io/File;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    new-instance v5, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v5}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    check-cast v5, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v6, v5

    check-cast v6, Lai/onnxruntime/OrtSession$SessionOptions;

    const/4 v7, 0x0

    iget v8, p0, Lru/localscribe/analysis/AdvancedModels;->threads:I

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {v8, v10, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    invoke-virtual {v6, v8}, Lai/onnxruntime/OrtSession$SessionOptions;->setIntraOpNumThreads(I)V

    invoke-virtual {v6, v10}, Lai/onnxruntime/OrtSession$SessionOptions;->setInterOpNumThreads(I)V

    iget-boolean v8, p0, Lru/localscribe/analysis/AdvancedModels;->reuseBuffers:Z

    invoke-virtual {v6, v8}, Lai/onnxruntime/OrtSession$SessionOptions;->setCPUArenaAllocator(Z)V

    iget-boolean v8, p0, Lru/localscribe/analysis/AdvancedModels;->reuseBuffers:Z

    invoke-virtual {v6, v8}, Lai/onnxruntime/OrtSession$SessionOptions;->setMemoryPatternOptimization(Z)V

    const-string v8, "session.intra_op.allow_spinning"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Lai/onnxruntime/OrtSession$SessionOptions;->addConfigEntry(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lru/localscribe/analysis/AdvancedModels;->environment:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    nop

    iget-object v2, p0, Lru/localscribe/analysis/AdvancedModels;->timing:Lkotlin/jvm/functions/Function2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysis.load."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const v9, 0xf4240

    int-to-long v9, v9

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v8, p0, Lru/localscribe/analysis/AdvancedModels;->segmentation:Lai/onnxruntime/OrtSession;

    goto :goto_0

    :cond_4
    iput-object v8, p0, Lru/localscribe/analysis/AdvancedModels;->heavy:Lai/onnxruntime/OrtSession;

    iput-object p1, p0, Lru/localscribe/analysis/AdvancedModels;->heavyName:Ljava/lang/String;

    :goto_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v8

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v5, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442 \u043c\u043e\u0434\u0435\u043b\u044c \u0430\u043d\u0430\u043b\u0438\u0437\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/analysis/AdvancedModels;->releaseHeavy()V

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->segmentation:Lai/onnxruntime/OrtSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->segmentation:Lai/onnxruntime/OrtSession;

    return-void
.end method

.method public final emotion([FLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lru/localscribe/core/EmotionAssessment;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lru/localscribe/core/EmotionAssessment;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "audio"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkCancelled"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v4, Lru/localscribe/core/EmotionAssessment;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v12}, Lru/localscribe/core/EmotionAssessment;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_0
    array-length v0, v2

    const/16 v4, 0x3e80

    if-ge v0, v4, :cond_1

    new-instance v5, Lru/localscribe/core/EmotionAssessment;

    const/16 v12, 0x1f

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "too_short"

    invoke-direct/range {v5 .. v13}, Lru/localscribe/core/EmotionAssessment;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_1
    sget-object v0, Lru/localscribe/analysis/AdvancedModels;->Companion:Lru/localscribe/analysis/AdvancedModels$Companion;

    invoke-virtual {v0, v2}, Lru/localscribe/analysis/AdvancedModels$Companion;->rms([F)D

    move-result-wide v4

    const-wide v6, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v0, v4, v6

    if-gez v0, :cond_2

    new-instance v4, Lru/localscribe/core/EmotionAssessment;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "too_quiet"

    invoke-direct/range {v4 .. v12}, Lru/localscribe/core/EmotionAssessment;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_2
    move-object/from16 v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v6, :cond_5

    aget v10, v0, v8

    move v11, v10

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3f7eb852    # 0.995f

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    nop

    int-to-double v4, v5

    array-length v0, v2

    int-to-double v10, v0

    div-double/2addr v4, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v4, v10

    if-lez v0, :cond_6

    new-instance v10, Lru/localscribe/core/EmotionAssessment;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "clipping"

    invoke-direct/range {v10 .. v18}, Lru/localscribe/core/EmotionAssessment;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    array-length v0, v2

    const v5, 0xf9ff

    add-int/2addr v0, v5

    const v5, 0xfa00

    div-int/2addr v0, v5

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v6, 0x5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v6, :cond_9

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    if-ne v6, v9, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    array-length v0, v2

    array-length v10, v2

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v0, v10

    int-to-long v10, v0

    int-to-long v12, v8

    mul-long/2addr v10, v12

    add-int/lit8 v0, v6, -0x1

    int-to-long v12, v0

    div-long/2addr v10, v12

    long-to-int v0, v10

    :goto_3
    nop

    move v10, v0

    array-length v0, v2

    add-int v11, v10, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v10, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    invoke-direct {v1}, Lru/localscribe/analysis/AdvancedModels;->getMel()Lru/localscribe/analysis/GigaMel;

    move-result-object v0

    invoke-virtual {v0, v11}, Lru/localscribe/analysis/GigaMel;->extract([F)[F

    move-result-object v14

    iget-object v0, v1, Lru/localscribe/analysis/AdvancedModels;->timing:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v12

    const v5, 0xf4240

    move/from16 v19, v8

    const/16 v18, 0x0

    int-to-long v7, v5

    div-long/2addr v15, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v15, "emotion.features"

    invoke-interface {v0, v15, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v11

    div-int/lit16 v0, v0, 0xa0

    add-int/lit8 v5, v0, 0x1

    iget-object v0, v1, Lru/localscribe/analysis/AdvancedModels;->environment:Lai/onnxruntime/OrtEnvironment;

    invoke-static {v14}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    move/from16 v16, v9

    move/from16 v20, v10

    int-to-long v9, v5

    const/4 v2, 0x3

    new-array v2, v2, [J

    const-wide/16 v21, 0x1

    aput-wide v21, v2, v18

    const-wide/16 v23, 0x40

    aput-wide v23, v2, v16

    const/4 v3, 0x2

    aput-wide v9, v2, v3

    invoke-static {v0, v15, v2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Lai/onnxruntime/OnnxTensor;

    move-object v9, v0

    const/4 v10, 0x0

    iget-object v0, v1, Lru/localscribe/analysis/AdvancedModels;->environment:Lai/onnxruntime/OrtEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v15, v4

    int-to-long v3, v5

    move-wide/from16 v24, v3

    move/from16 v3, v16

    :try_start_1
    new-array v4, v3, [J

    aput-wide v24, v4, v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    invoke-static {v4}, Ljava/nio/LongBuffer;->wrap([J)Ljava/nio/LongBuffer;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move/from16 v24, v5

    :try_start_3
    new-array v5, v3, [J

    aput-wide v21, v5, v18

    invoke-static {v0, v4, v5}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/AutoCloseable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    move-object v0, v3

    check-cast v0, Lai/onnxruntime/OnnxTensor;

    move-object v4, v0

    const/4 v5, 0x0

    const-string v0, "emo.int8.onnx"

    invoke-direct {v1, v0}, Lru/localscribe/analysis/AdvancedModels;->session(Ljava/lang/String;)Lai/onnxruntime/OrtSession;

    move-result-object v0

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    nop

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    move-object/from16 v22, v0

    const-string v0, "features"

    invoke-static {v0, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v22, v18

    const-string v0, "feature_lengths"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v16, 0x1

    aput-object v0, v22, v16

    invoke-static/range {v22 .. v22}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v22, v4

    move-object/from16 v4, v21

    invoke-virtual {v4, v0}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;

    move-result-object v0

    move-object/from16 v21, v4

    move-object v4, v0

    check-cast v4, Ljava/lang/AutoCloseable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object v0, v4

    check-cast v0, Lai/onnxruntime/OrtSession$Result;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v23, 0x0

    move/from16 v27, v5

    :try_start_6
    iget-object v5, v1, Lru/localscribe/analysis/AdvancedModels;->timing:Lkotlin/jvm/functions/Function2;

    const-string v1, "emotion.infer"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    sub-long v28, v28, v25

    div-long v28, v28, v7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type ai.onnxruntime.OnnxTensor"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lai/onnxruntime/OnnxTensor;

    invoke-virtual {v5}, Lai/onnxruntime/OnnxTensor;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    if-eqz v5, :cond_8

    nop

    move-object v7, v15

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v8

    new-array v8, v8, [F

    move-object/from16 v18, v8

    const/16 v28, 0x0

    move-object/from16 v1, v18

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x0

    :try_start_7
    invoke-static {v4, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    nop

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v3, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    nop

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {v2, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    add-int/lit8 v8, v19, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v4, v15

    move/from16 v9, v16

    const v5, 0xfa00

    goto/16 :goto_2

    :cond_8
    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "\u041c\u043e\u0434\u0435\u043b\u044c \u0432\u0435\u0440\u043d\u0443\u043b\u0430 \u043d\u0435 float tensor"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v27, v5

    move-object v1, v0

    :goto_4
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_b
    invoke-static {v4, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-static {v3, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move/from16 v24, v5

    move-object v1, v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move/from16 v24, v5

    :goto_5
    move-object v1, v0

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v15, v4

    move/from16 v24, v5

    move-object v1, v0

    :goto_6
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    move-object v15, v4

    sget-object v0, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    invoke-virtual {v0, v15}, Lru/localscribe/analysis/AnalysisMath;->emotion(Ljava/util/List;)Lru/localscribe/core/EmotionAssessment;

    move-result-object v0

    return-object v0
.end method

.method public final overlaps([FLkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/analysis/SampleSpan;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "audio"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "checkCancelled"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/16 v3, 0xfa0

    if-lt v1, v3, :cond_1b

    sget-object v1, Lru/localscribe/analysis/AdvancedModels;->Companion:Lru/localscribe/analysis/AdvancedModels$Companion;

    invoke-virtual {v1, v0}, Lru/localscribe/analysis/AdvancedModels$Companion;->rms([F)D

    move-result-wide v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    move-object/from16 v13, p0

    goto/16 :goto_12

    :cond_0
    array-length v1, v0

    const v3, 0x9c400

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v1, v3, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1a

    const/16 v1, 0x140

    array-length v3, v0

    add-int/2addr v3, v1

    sub-int/2addr v3, v5

    div-int/2addr v3, v1

    new-array v3, v3, [D

    array-length v6, v3

    new-array v6, v6, [I

    const/4 v7, 0x0

    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_b

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const v8, 0x27100

    new-array v9, v8, [F

    array-length v10, v0

    array-length v11, v9

    add-int/2addr v11, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v0, v9, v4, v7, v10}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    const/4 v10, 0x3

    new-array v10, v10, [J

    fill-array-data v10, :array_0

    const-string v11, "segmentation.int8.onnx"

    const-string v12, "x"

    move-object/from16 v13, p0

    invoke-direct {v13, v11, v12, v9, v10}, Lru/localscribe/analysis/AdvancedModels;->floats(Ljava/lang/String;Ljava/lang/String;[F[J)[F

    move-result-object v10

    array-length v11, v10

    const/16 v12, 0x101b

    if-ne v11, v12, :cond_5

    move-object v11, v10

    const/4 v12, 0x0

    array-length v14, v11

    move v15, v4

    :goto_2
    if-ge v15, v14, :cond_4

    aget v16, v11, v15

    move/from16 v17, v16

    const/16 v18, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_2

    move/from16 v19, v5

    goto :goto_3

    :cond_2
    move/from16 v19, v4

    :goto_3
    if-nez v19, :cond_3

    move v11, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    move v11, v5

    :goto_4
    if-eqz v11, :cond_5

    move v11, v5

    goto :goto_5

    :cond_5
    move v11, v4

    :goto_5
    if-eqz v11, :cond_a

    const/4 v11, 0x0

    :goto_6
    const/16 v12, 0x24d

    if-ge v11, v12, :cond_9

    mul-int/lit16 v12, v11, 0x10e

    add-int/2addr v12, v7

    add-int/lit16 v12, v12, 0x1ef

    array-length v14, v0

    if-ge v12, v14, :cond_8

    mul-int/lit8 v14, v11, 0x7

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v21, v5

    move-wide v4, v15

    move/from16 v15, v19

    :goto_7
    move/from16 v16, v8

    const/4 v8, 0x7

    if-ge v15, v8, :cond_7

    add-int v8, v14, v15

    aget v8, v10, v8

    move/from16 v19, v1

    float-to-double v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    add-double/2addr v4, v1

    const/4 v8, 0x4

    if-lt v15, v8, :cond_6

    add-double v17, v17, v1

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v8, v16

    move/from16 v1, v19

    goto :goto_7

    :cond_7
    move/from16 v19, v1

    div-int v1, v12, v19

    aget-wide v22, v3, v1

    move v8, v1

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    div-double v1, v17, v1

    add-double v22, v22, v1

    aput-wide v22, v3, v8

    aget v1, v6, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v6, v8

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move/from16 v8, v16

    move/from16 v1, v19

    move/from16 v5, v21

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    move/from16 v19, v1

    move/from16 v21, v5

    move/from16 v16, v8

    goto :goto_8

    :cond_9
    move/from16 v19, v1

    move/from16 v21, v5

    move/from16 v16, v8

    :goto_8
    add-int v8, v7, v16

    array-length v1, v0

    if-ge v8, v1, :cond_c

    const v1, 0x13880

    add-int/2addr v7, v1

    move-object/from16 v2, p2

    move/from16 v1, v19

    move/from16 v5, v21

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_a
    move/from16 v19, v1

    const/4 v1, 0x0

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 \u0432\u044b\u0445\u043e\u0434 \u043c\u043e\u0434\u0435\u043b\u0438 \u043f\u0435\u0440\u0435\u043a\u0440\u044b\u0442\u0438\u044f"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object/from16 v13, p0

    move/from16 v19, v1

    move/from16 v21, v5

    :cond_c
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getIndices([D)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v5, v1

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    const/4 v12, 0x0

    aget v14, v6, v11

    if-lez v14, :cond_d

    aget-wide v14, v3, v11

    move-object/from16 v16, v1

    aget v1, v6, v11

    move/from16 v17, v2

    int-to-double v1, v1

    div-double/2addr v14, v1

    const-wide v1, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v14, v1

    if-ltz v1, :cond_e

    move/from16 v1, v21

    goto :goto_a

    :cond_d
    move-object/from16 v16, v1

    move/from16 v17, v2

    :cond_e
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_f

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_9

    :cond_10
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object v1, v4

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/4 v14, 0x0

    new-instance v22, Lru/localscribe/analysis/SampleSpan;

    mul-int v23, v12, v19

    array-length v15, v0

    add-int/lit8 v16, v12, 0x1

    mul-int v5, v16, v19

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v24

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v27}, Lru/localscribe/analysis/SampleSpan;-><init>(IILjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v22

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    goto :goto_b

    :cond_11
    nop

    check-cast v4, Ljava/util/List;

    nop

    nop

    nop

    sget-object v1, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    const/16 v2, 0x500

    invoke-virtual {v1, v4, v2}, Lru/localscribe/analysis/AnalysisMath;->merge(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lru/localscribe/analysis/SampleSpan;

    const/4 v14, 0x0

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v15

    invoke-virtual {v12}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v16

    sub-int v15, v15, v16

    const/16 v0, 0xc80

    if-lt v15, v0, :cond_12

    move/from16 v0, v21

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_13

    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v0, p1

    goto :goto_c

    :cond_14
    nop

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v22, v10

    check-cast v22, Lru/localscribe/analysis/SampleSpan;

    const/4 v11, 0x0

    invoke-virtual/range {v22 .. v22}, Lru/localscribe/analysis/SampleSpan;->getStart()I

    move-result v12

    div-int v12, v12, v19

    array-length v14, v6

    invoke-virtual/range {v22 .. v22}, Lru/localscribe/analysis/SampleSpan;->getEnd()I

    move-result v15

    add-int v15, v15, v19

    add-int/lit8 v15, v15, -0x1

    div-int v15, v15, v19

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v14}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    const/4 v14, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/Collection;

    move-object/from16 v16, v12

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_17

    move-object/from16 v28, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Number;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->intValue()I

    move-result v24

    const/16 v25, 0x0

    aget v26, v6, v24

    if-lez v26, :cond_15

    move/from16 v24, v21

    goto :goto_10

    :cond_15
    const/16 v24, 0x0

    :goto_10
    if-eqz v24, :cond_16

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object/from16 v0, v28

    goto :goto_f

    :cond_17
    move-object/from16 v28, v0

    move-object v0, v15

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    move-object v12, v0

    check-cast v12, Ljava/lang/Iterable;

    const/4 v14, 0x0

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move/from16 v17, v1

    const/16 v0, 0xa

    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v15

    check-cast v1, Ljava/util/Collection;

    move-object v15, v12

    const/16 v18, 0x0

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_11
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v24

    check-cast v25, Ljava/lang/Number;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->intValue()I

    move-result v25

    const/16 v26, 0x0

    aget-wide v29, v3, v25

    aget v0, v6, v25

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    int-to-double v3, v0

    div-double v29, v29, v3

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    const/16 v0, 0xa

    goto :goto_11

    :cond_18
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfDouble(Ljava/lang/Iterable;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v22 .. v27}, Lru/localscribe/analysis/SampleSpan;->copy$default(Lru/localscribe/analysis/SampleSpan;IILjava/lang/Double;ILjava/lang/Object;)Lru/localscribe/analysis/SampleSpan;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v1, v17

    move-object/from16 v0, v28

    goto/16 :goto_e

    :cond_19
    move-object/from16 v28, v0

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    nop

    return-object v0

    :cond_1a
    move-object/from16 v13, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-object/from16 v13, p0

    :goto_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x1
        0x1
        0x27100
    .end array-data
.end method

.method public final releaseHeavy()V
    .locals 1

    iget-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->heavy:Lai/onnxruntime/OrtSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->heavy:Lai/onnxruntime/OrtSession;

    iput-object v0, p0, Lru/localscribe/analysis/AdvancedModels;->heavyName:Ljava/lang/String;

    return-void
.end method

.method public final separate([FLkotlin/jvm/functions/Function0;)Lru/localscribe/analysis/AdvancedModels$Separated;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lru/localscribe/analysis/AdvancedModels$Separated;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "audio"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "checkCancelled"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const v3, 0x75300

    const/4 v4, 0x0

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_17

    array-length v1, v0

    const/16 v3, 0xfa0

    if-lt v1, v3, :cond_16

    sget-object v1, Lru/localscribe/analysis/AdvancedModels;->Companion:Lru/localscribe/analysis/AdvancedModels$Companion;

    invoke-virtual {v1, v0}, Lru/localscribe/analysis/AdvancedModels$Companion;->rms([F)D

    move-result-wide v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v6, v8

    if-gez v1, :cond_1

    move-object/from16 v5, p0

    goto/16 :goto_11

    :cond_1
    const/4 v1, 0x2

    new-array v3, v1, [[F

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_2

    array-length v7, v0

    new-array v7, v7, [F

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    array-length v6, v0

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    array-length v10, v0

    if-ge v9, v10, :cond_d

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const v10, 0xfa00

    new-array v11, v10, [F

    array-length v12, v11

    array-length v13, v0

    sub-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v9, v12

    invoke-static {v0, v11, v4, v9, v13}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    new-array v13, v1, [J

    fill-array-data v13, :array_0

    const-string v14, "mossformer2.onnx"

    const-string v15, "mix"

    const/16 v16, 0x1

    move-object/from16 v5, p0

    invoke-direct {v5, v14, v15, v11, v13}, Lru/localscribe/analysis/AdvancedModels;->floats(Ljava/lang/String;Ljava/lang/String;[F[J)[F

    move-result-object v13

    array-length v14, v13

    const v15, 0x1f400

    if-ne v14, v15, :cond_6

    move-object v14, v13

    const/16 v17, 0x0

    array-length v1, v14

    move v15, v4

    :goto_3
    if-ge v15, v1, :cond_5

    aget v20, v14, v15

    move/from16 v21, v20

    const/16 v22, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const v24, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_3

    move/from16 v23, v16

    goto :goto_4

    :cond_3
    move/from16 v23, v4

    :goto_4
    if-nez v23, :cond_4

    move v1, v4

    goto :goto_5

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    move/from16 v1, v16

    :goto_5
    if-eqz v1, :cond_6

    move/from16 v1, v16

    goto :goto_6

    :cond_6
    move v1, v4

    :goto_6
    if-eqz v1, :cond_c

    const/4 v1, 0x0

    invoke-static {v13, v4, v10}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v14

    const v15, 0x1f400

    invoke-static {v13, v10, v15}, Lkotlin/collections/ArraysKt;->copyOfRange([FII)[F

    move-result-object v15

    filled-new-array {v14, v15}, [[F

    move-result-object v14

    sget-object v1, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    move-object v15, v14

    check-cast v15, [[F

    invoke-virtual {v1, v11, v15}, Lru/localscribe/analysis/AnalysisMath;->fitMixture([F[[F)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v19, Lru/localscribe/analysis/AdvancedModels$Separated;

    const/16 v24, 0xc

    const/16 v25, 0x0

    const/16 v20, 0x0

    const-string v21, "degenerate_sources"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v25}, Lru/localscribe/analysis/AdvancedModels$Separated;-><init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v19

    :cond_7
    if-eqz v7, :cond_9

    move-object v1, v7

    check-cast v1, [[F

    const/4 v15, 0x0

    sub-int v22, v9, v8

    move/from16 v17, v4

    sub-int v4, v10, v22

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v24

    sget-object v19, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    aget-object v20, v1, v17

    move-object v4, v14

    check-cast v4, [[F

    aget-object v21, v4, v17

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v24}, Lru/localscribe/analysis/AnalysisMath;->correlation([F[FIII)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    sget-object v19, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    aget-object v20, v1, v16

    move-object v4, v14

    check-cast v4, [[F

    aget-object v21, v4, v16

    invoke-virtual/range {v19 .. v24}, Lru/localscribe/analysis/AnalysisMath;->correlation([F[FIII)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    add-double v25, v25, v19

    nop

    sget-object v19, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    aget-object v20, v1, v17

    move-object v4, v14

    check-cast v4, [[F

    aget-object v21, v4, v16

    invoke-virtual/range {v19 .. v24}, Lru/localscribe/analysis/AnalysisMath;->correlation([F[FIII)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v27

    sget-object v19, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    aget-object v20, v1, v16

    move-object v4, v14

    check-cast v4, [[F

    aget-object v21, v4, v17

    invoke-virtual/range {v19 .. v24}, Lru/localscribe/analysis/AnalysisMath;->correlation([F[FIII)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    add-double v27, v27, v19

    nop

    cmpl-double v4, v27, v25

    if-lez v4, :cond_8

    move-object v4, v14

    check-cast v4, [[F

    aget-object v4, v4, v16

    move-object/from16 v19, v14

    check-cast v19, [[F

    aget-object v10, v19, v17

    filled-new-array {v4, v10}, [[F

    move-result-object v4

    move-object v14, v4

    :cond_8
    nop

    goto :goto_7

    :cond_9
    move/from16 v17, v4

    :goto_7
    nop

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v12, :cond_b

    move-object v4, v3

    int-to-double v2, v1

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v21

    const-wide v23, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v23

    move v15, v1

    move-wide/from16 v23, v2

    const v10, 0xfa00

    int-to-double v1, v10

    div-double v2, v23, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v21

    sub-double v1, v21, v1

    move-object v10, v4

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-int v2, v9, v15

    aget v3, v6, v2

    add-float/2addr v3, v1

    aput v3, v6, v2

    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x2

    if-ge v2, v3, :cond_a

    aget-object v3, v10, v2

    add-int v4, v9, v15

    aget v19, v3, v4

    move-object/from16 v21, v14

    check-cast v21, [[F

    aget-object v21, v21, v2

    aget v21, v21, v15

    mul-float v21, v21, v1

    add-float v19, v19, v21

    aput v19, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v1, v15, 0x1

    move-object/from16 v2, p2

    move-object v3, v10

    goto :goto_8

    :cond_b
    move v15, v1

    move-object v10, v3

    move-object v7, v14

    check-cast v7, [[F

    move v8, v9

    const v20, 0xfa00

    add-int v1, v9, v20

    array-length v2, v0

    if-ge v1, v2, :cond_e

    add-int/lit16 v9, v9, 0x7d00

    move-object/from16 v2, p2

    move-object v3, v10

    move/from16 v4, v17

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 \u0432\u044b\u0445\u043e\u0434 \u0440\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u044f \u0440\u0435\u0447\u0438"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object/from16 v5, p0

    move-object v10, v3

    move/from16 v17, v4

    const/16 v16, 0x1

    :cond_e
    const/4 v1, 0x0

    array-length v2, v0

    :goto_a
    if-ge v1, v2, :cond_10

    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x2

    if-ge v3, v4, :cond_f

    aget-object v11, v10, v3

    aget v12, v11, v1

    aget v13, v6, v1

    const v14, 0x358637bd    # 1.0E-6f

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v13

    div-float/2addr v12, v13

    aput v12, v11, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    sget-object v18, Lru/localscribe/analysis/AnalysisMath;->INSTANCE:Lru/localscribe/analysis/AnalysisMath;

    aget-object v19, v10, v17

    aget-object v20, v10, v16

    const/16 v24, 0x1c

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v25}, Lru/localscribe/analysis/AnalysisMath;->correlation$default(Lru/localscribe/analysis/AnalysisMath;[F[FIIIILjava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    array-length v14, v0

    :goto_c
    if-ge v13, v14, :cond_11

    aget v15, v0, v13

    aget-object v18, v10, v17

    aget v18, v18, v13

    sub-float v15, v15, v18

    aget-object v18, v10, v16

    aget v18, v18, v13

    sub-float v15, v15, v18

    mul-float v0, v15, v15

    move-wide/from16 v18, v1

    float-to-double v0, v0

    add-double/2addr v3, v0

    aget v0, p1, v13

    aget v1, p1, v13

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v11, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    goto :goto_c

    :cond_11
    move-wide/from16 v18, v1

    const/16 v0, 0xa

    int-to-double v0, v0

    const-wide v13, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    div-double v20, v20, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log10(D)D

    move-result-wide v13

    mul-double/2addr v0, v13

    move-object v2, v10

    check-cast v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/util/ArrayList;

    array-length v15, v2

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    move-object v15, v2

    const/16 v20, 0x0

    move-wide/from16 v21, v0

    array-length v0, v15

    move/from16 v1, v17

    :goto_d
    if-ge v1, v0, :cond_12

    aget-object v23, v15, v1

    move/from16 v24, v0

    move-object/from16 v0, v23

    check-cast v0, [F

    const/16 v25, 0x0

    move/from16 v26, v1

    sget-object v1, Lru/localscribe/analysis/AdvancedModels;->Companion:Lru/localscribe/analysis/AdvancedModels$Companion;

    invoke-virtual {v1, v0}, Lru/localscribe/analysis/AdvancedModels$Companion;->rms([F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v26, 0x1

    move/from16 v0, v24

    goto :goto_d

    :cond_12
    nop

    move-object v0, v14

    check-cast v0, Ljava/util/List;

    nop

    nop

    const-wide v1, 0x3feb333333333333L    # 0.85

    cmpg-double v1, v18, v1

    if-gez v1, :cond_13

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    cmpl-double v1, v21, v1

    if-ltz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)D

    move-result-wide v1

    const-wide v13, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpl-double v1, v1, v13

    if-lez v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)D

    move-result-wide v1

    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)D

    move-result-wide v13

    div-double/2addr v1, v13

    const-wide v13, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v1, v1, v13

    if-lez v1, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v16, v17

    :goto_e
    nop

    new-instance v1, Lru/localscribe/analysis/AdvancedModels$Separated;

    if-eqz v16, :cond_14

    move-object v2, v10

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    :goto_f
    if-eqz v16, :cond_15

    const-string v13, "estimated"

    goto :goto_10

    :cond_15
    const-string v13, "unreliable_separation"

    :goto_10
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-direct {v1, v2, v13, v14, v15}, Lru/localscribe/analysis/AdvancedModels$Separated;-><init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v1

    :cond_16
    move-object/from16 v5, p0

    :goto_11
    new-instance v23, Lru/localscribe/analysis/AdvancedModels$Separated;

    const/16 v28, 0xc

    const/16 v29, 0x0

    const/16 v24, 0x0

    const-string v25, "insufficient_audio"

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v23 .. v29}, Lru/localscribe/analysis/AdvancedModels$Separated;-><init>([[FLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v23

    :cond_17
    move-object/from16 v5, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x1
        0xfa00
    .end array-data
.end method
