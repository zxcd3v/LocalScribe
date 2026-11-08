.class public final Lru/localscribe/core/Recording;
.super Ljava/lang/Object;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Recording$$serializer;,
        Lru/localscribe/core/Recording$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008/\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 [2\u00020\u0001:\u0002Z[B\u00b3\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aB\u00bd\u0001\u0008\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u0019\u0010\u001fJ\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0006H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0006H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u000cH\u00c6\u0003J\t\u0010B\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003\u00a2\u0006\u0002\u0010.J\u000b\u0010E\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\t\u0010F\u001a\u00020\u0014H\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\t\u0010H\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010I\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00c2\u0001\u0010K\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010LJ\u0013\u0010M\u001a\u00020N2\u0008\u0010O\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010P\u001a\u00020\u001cH\u00d6\u0001J\t\u0010Q\u001a\u00020\u0003H\u00d6\u0001J%\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0001\u00a2\u0006\u0002\u0008YR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010!R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010!R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010!R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010$R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010!R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010$R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010!R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\n\n\u0002\u0010/\u001a\u0004\u0008-\u0010.R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010!R\u0011\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010!R\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u00108\u001a\u0004\u00086\u00107R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010!\u00a8\u0006\\"
    }
    d2 = {
        "Lru/localscribe/core/Recording;",
        "",
        "id",
        "",
        "title",
        "createdAt",
        "",
        "audioPath",
        "pcmPath",
        "durationMs",
        "state",
        "progress",
        "",
        "checkpointSamples",
        "error",
        "rtf",
        "",
        "modelInfo",
        "Lru/localscribe/core/ModelInfo;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "source",
        "analysisMode",
        "liveCheckpointSamples",
        "enrollmentProfileId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId",
        "()Ljava/lang/String;",
        "getTitle",
        "getCreatedAt",
        "()J",
        "getAudioPath",
        "getPcmPath",
        "getDurationMs",
        "getState",
        "getProgress",
        "()F",
        "getCheckpointSamples",
        "getError",
        "getRtf",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getModelInfo",
        "()Lru/localscribe/core/ModelInfo;",
        "getSettings",
        "()Lru/localscribe/core/Settings;",
        "getSource",
        "getAnalysisMode",
        "getLiveCheckpointSamples",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getEnrollmentProfileId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lru/localscribe/core/Recording;",
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
.field public static final Companion:Lru/localscribe/core/Recording$Companion;


# instance fields
.field private final analysisMode:Ljava/lang/String;

.field private final audioPath:Ljava/lang/String;

.field private final checkpointSamples:J

.field private final createdAt:J

.field private final durationMs:J

.field private final enrollmentProfileId:Ljava/lang/String;

.field private final error:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final liveCheckpointSamples:Ljava/lang/Long;

.field private final modelInfo:Lru/localscribe/core/ModelInfo;

.field private final pcmPath:Ljava/lang/String;

.field private final progress:F

.field private final rtf:Ljava/lang/Double;

.field private final settings:Lru/localscribe/core/Settings;

.field private final source:Ljava/lang/String;

.field private final state:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/core/Recording$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/Recording$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/Recording;->Companion:Lru/localscribe/core/Recording$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    and-int/lit8 v2, v1, 0xf

    const/16 v3, 0xf

    if-eq v3, v2, :cond_0

    sget-object v2, Lru/localscribe/core/Recording$$serializer;->INSTANCE:Lru/localscribe/core/Recording$$serializer;

    invoke-virtual {v2}, Lru/localscribe/core/Recording$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    move-wide/from16 v4, p4

    iput-wide v4, v0, Lru/localscribe/core/Recording;->createdAt:J

    move-object/from16 v6, p6

    iput-object v6, v0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    and-int/lit8 v7, v1, 0x10

    if-nez v7, :cond_1

    nop

    const-string v7, ""

    iput-object v7, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    move-object/from16 v7, p7

    goto :goto_0

    :cond_1
    move-object/from16 v7, p7

    iput-object v7, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    :goto_0
    and-int/lit8 v8, v1, 0x20

    const-wide/16 v9, 0x0

    if-nez v8, :cond_2

    nop

    iput-wide v9, v0, Lru/localscribe/core/Recording;->durationMs:J

    move-wide/from16 v11, p8

    goto :goto_1

    :cond_2
    move-wide/from16 v11, p8

    iput-wide v11, v0, Lru/localscribe/core/Recording;->durationMs:J

    :goto_1
    and-int/lit8 v8, v1, 0x40

    if-nez v8, :cond_3

    nop

    const-string v8, "imported"

    iput-object v8, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    move-object/from16 v8, p10

    goto :goto_2

    :cond_3
    move-object/from16 v8, p10

    iput-object v8, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    :goto_2
    and-int/lit16 v13, v1, 0x80

    if-nez v13, :cond_4

    nop

    const/4 v13, 0x0

    iput v13, v0, Lru/localscribe/core/Recording;->progress:F

    move/from16 v13, p11

    goto :goto_3

    :cond_4
    move/from16 v13, p11

    iput v13, v0, Lru/localscribe/core/Recording;->progress:F

    :goto_3
    and-int/lit16 v14, v1, 0x100

    if-nez v14, :cond_5

    nop

    iput-wide v9, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    move-wide/from16 v9, p12

    goto :goto_4

    :cond_5
    move-wide/from16 v9, p12

    iput-wide v9, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    :goto_4
    and-int/lit16 v14, v1, 0x200

    const/4 v15, 0x0

    if-nez v14, :cond_6

    nop

    iput-object v15, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    move-object/from16 v14, p14

    goto :goto_5

    :cond_6
    move-object/from16 v14, p14

    iput-object v14, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    :goto_5
    and-int/lit16 v15, v1, 0x400

    if-nez v15, :cond_7

    nop

    const/4 v15, 0x0

    iput-object v15, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    move-object/from16 v15, p15

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    move-object/from16 v15, p15

    iput-object v15, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    :goto_6
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_8

    nop

    const/4 v2, 0x0

    iput-object v2, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    move-object/from16 v2, p16

    goto :goto_7

    :cond_8
    move-object/from16 v2, p16

    iput-object v2, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    :goto_7
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_9

    new-instance v16, Lru/localscribe/core/Settings;

    const/16 v28, 0x7ff

    const/16 v29, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v16 .. v29}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v16

    iput-object v2, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    move-object/from16 v2, p17

    goto :goto_8

    :cond_9
    move-object/from16 v2, p17

    iput-object v2, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    :goto_8
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_a

    nop

    const-string v2, "file"

    iput-object v2, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    move-object/from16 v2, p18

    goto :goto_9

    :cond_a
    move-object/from16 v2, p18

    iput-object v2, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    :goto_9
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_c

    nop

    iget-object v2, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    const-string v1, "microphone"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "streaming"

    goto :goto_a

    :cond_b
    const-string v1, "offline"

    :goto_a
    iput-object v1, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    move-object/from16 v1, p19

    goto :goto_b

    :cond_c
    move-object/from16 v1, p19

    iput-object v1, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    :goto_b
    const v2, 0x8000

    and-int v2, p1, v2

    if-nez v2, :cond_d

    nop

    const/4 v2, 0x0

    iput-object v2, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    move-object/from16 v2, p20

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v2, p20

    iput-object v2, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    :goto_c
    const/high16 v16, 0x10000

    and-int v16, p1, v16

    if-nez v16, :cond_e

    nop

    const/4 v1, 0x0

    iput-object v1, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    move-object/from16 v1, p21

    goto :goto_d

    :cond_e
    move-object/from16 v1, p21

    iput-object v1, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    :goto_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    const-string v9, "id"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "title"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "audioPath"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "pcmPath"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "settings"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "source"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "analysisMode"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    iput-object v2, v0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    move-wide/from16 v9, p3

    iput-wide v9, v0, Lru/localscribe/core/Recording;->createdAt:J

    iput-object v3, v0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    iput-object v4, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    move-wide/from16 v11, p7

    iput-wide v11, v0, Lru/localscribe/core/Recording;->durationMs:J

    iput-object v5, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    move/from16 v13, p10

    iput v13, v0, Lru/localscribe/core/Recording;->progress:F

    move-wide/from16 v14, p11

    iput-wide v14, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    move-object/from16 v1, p15

    iput-object v1, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    iput-object v6, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    iput-object v7, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    iput-object v8, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    move-object/from16 v1, p20

    iput-object v1, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 32

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    move-wide v9, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const-string v1, "imported"

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v12, v1

    goto :goto_3

    :cond_3
    move/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-wide v13, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p13

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, p14

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object/from16 v17, v2

    goto :goto_7

    :cond_7
    move-object/from16 v17, p15

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    new-instance v18, Lru/localscribe/core/Settings;

    const/16 v30, 0x7ff

    const/16 v31, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v18 .. v31}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_8
    move-object/from16 v18, p16

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    const-string v1, "file"

    goto :goto_9

    :cond_9
    move-object/from16 v1, p17

    :goto_9
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_b

    const-string v3, "microphone"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "streaming"

    goto :goto_a

    :cond_a
    const-string v3, "offline"

    :goto_a
    move-object/from16 v20, v3

    goto :goto_b

    :cond_b
    move-object/from16 v20, p18

    :goto_b
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    move-object/from16 v21, v2

    goto :goto_c

    :cond_c
    move-object/from16 v21, p19

    :goto_c
    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    move-object/from16 v22, v2

    goto :goto_d

    :cond_d
    move-object/from16 v22, p20

    :goto_d
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v19, v1

    invoke-direct/range {v2 .. v22}, Lru/localscribe/core/Recording;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Recording;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lru/localscribe/core/Recording;->createdAt:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lru/localscribe/core/Recording;->durationMs:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget v11, v0, Lru/localscribe/core/Recording;->progress:F

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p15

    :goto_b
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p16

    :goto_c
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p17

    :goto_d
    move-object/from16 p4, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p18

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p19

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p21, v16

    if-eqz v16, :cond_10

    move-object/from16 p5, v1

    iget-object v1, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    move-object/from16 p20, p5

    move-object/from16 p21, v1

    goto :goto_10

    :cond_10
    move-object/from16 p21, p20

    move-object/from16 p20, v1

    :goto_10
    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, v2

    move-object/from16 p3, v3

    move-wide/from16 p4, v4

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-wide/from16 p8, v8

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-wide/from16 p12, v12

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p21}, Lru/localscribe/core/Recording;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lru/localscribe/core/Recording;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$core(Lru/localscribe/core/Recording;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v3, v0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v3, 0x2

    iget-wide v6, v0, Lru/localscribe/core/Recording;->createdAt:J

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v3, 0x3

    iget-object v6, v0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    nop

    const-string v7, ""

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_1
    if-eqz v6, :cond_2

    iget-object v6, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_2
    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_3

    :goto_2
    move v6, v5

    goto :goto_3

    :cond_3
    iget-wide v9, v0, Lru/localscribe/core/Recording;->durationMs:J

    nop

    cmp-long v6, v9, v7

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_3
    if-eqz v6, :cond_5

    iget-wide v9, v0, Lru/localscribe/core/Recording;->durationMs:J

    invoke-interface {v1, v2, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_5
    const/4 v3, 0x6

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_6
    iget-object v6, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    nop

    const-string v9, "imported"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_5
    if-eqz v6, :cond_8

    iget-object v6, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_8
    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_6
    move v6, v5

    goto :goto_7

    :cond_9
    iget v6, v0, Lru/localscribe/core/Recording;->progress:F

    nop

    const/4 v9, 0x0

    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v4

    :goto_7
    if-eqz v6, :cond_b

    iget v6, v0, Lru/localscribe/core/Recording;->progress:F

    invoke-interface {v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_b
    const/16 v3, 0x8

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_8
    move v6, v5

    goto :goto_9

    :cond_c
    iget-wide v9, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    nop

    cmp-long v6, v9, v7

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    move v6, v4

    :goto_9
    if-eqz v6, :cond_e

    iget-wide v6, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_e
    const/16 v3, 0x9

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_f

    :goto_a
    move v6, v5

    goto :goto_b

    :cond_f
    iget-object v6, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    if-eqz v6, :cond_10

    goto :goto_a

    :cond_10
    move v6, v4

    :goto_b
    if-eqz v6, :cond_11

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    iget-object v7, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_12

    :goto_c
    move v6, v5

    goto :goto_d

    :cond_12
    iget-object v6, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    if-eqz v6, :cond_13

    goto :goto_c

    :cond_13
    move v6, v4

    :goto_d
    if-eqz v6, :cond_14

    sget-object v6, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    iget-object v7, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    const/16 v3, 0xb

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_15

    :goto_e
    move v6, v5

    goto :goto_f

    :cond_15
    iget-object v6, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    if-eqz v6, :cond_16

    goto :goto_e

    :cond_16
    move v6, v4

    :goto_f
    if-eqz v6, :cond_17

    sget-object v6, Lru/localscribe/core/ModelInfo$$serializer;->INSTANCE:Lru/localscribe/core/ModelInfo$$serializer;

    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    iget-object v7, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v3, 0xc

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_18

    :goto_10
    move v6, v5

    goto :goto_11

    :cond_18
    iget-object v6, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    new-instance v7, Lru/localscribe/core/Settings;

    const/16 v19, 0x7ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v20}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_10

    :cond_19
    move v6, v4

    :goto_11
    if-eqz v6, :cond_1a

    sget-object v6, Lru/localscribe/core/Settings$$serializer;->INSTANCE:Lru/localscribe/core/Settings$$serializer;

    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    iget-object v7, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    const/16 v3, 0xd

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_1b

    :goto_12
    move v6, v5

    goto :goto_13

    :cond_1b
    iget-object v6, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    nop

    const-string v7, "file"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_12

    :cond_1c
    move v6, v4

    :goto_13
    if-eqz v6, :cond_1d

    iget-object v6, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1d
    const/16 v3, 0xe

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_1e

    :goto_14
    move v6, v5

    goto :goto_16

    :cond_1e
    iget-object v6, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    nop

    iget-object v7, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    const-string v8, "microphone"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "streaming"

    goto :goto_15

    :cond_1f
    const-string v7, "offline"

    :goto_15
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_14

    :cond_20
    move v6, v4

    :goto_16
    if-eqz v6, :cond_21

    iget-object v6, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_21
    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_22

    :goto_17
    move v6, v5

    goto :goto_18

    :cond_22
    iget-object v6, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    if-eqz v6, :cond_23

    goto :goto_17

    :cond_23
    move v6, v4

    :goto_18
    if-eqz v6, :cond_24

    sget-object v6, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    iget-object v7, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    invoke-interface {v1, v2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_24
    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_25

    :goto_19
    move v4, v5

    goto :goto_1a

    :cond_25
    iget-object v6, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    if-eqz v6, :cond_26

    goto :goto_19

    :cond_26
    :goto_1a
    if-eqz v4, :cond_27

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    return-object v0
.end method

.method public final component12()Lru/localscribe/core/ModelInfo;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    return-object v0
.end method

.method public final component13()Lru/localscribe/core/Settings;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Recording;->createdAt:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Recording;->durationMs:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()F
    .locals 1

    iget v0, p0, Lru/localscribe/core/Recording;->progress:F

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Recording;->checkpointSamples:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lru/localscribe/core/Recording;
    .locals 22

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioPath"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pcmPath"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v4, p17

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analysisMode"

    move-object/from16 v5, p18

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/core/Recording;

    move-wide/from16 v8, p7

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v21}, Lru/localscribe/core/Recording;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;FJLjava/lang/String;Ljava/lang/Double;Lru/localscribe/core/ModelInfo;Lru/localscribe/core/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/Recording;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/Recording;

    iget-object v3, p0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lru/localscribe/core/Recording;->createdAt:J

    iget-wide v5, v1, Lru/localscribe/core/Recording;->createdAt:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lru/localscribe/core/Recording;->durationMs:J

    iget-wide v5, v1, Lru/localscribe/core/Recording;->durationMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lru/localscribe/core/Recording;->progress:F

    iget v4, v1, Lru/localscribe/core/Recording;->progress:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lru/localscribe/core/Recording;->checkpointSamples:J

    iget-wide v5, v1, Lru/localscribe/core/Recording;->checkpointSamples:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    iget-object v4, v1, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    iget-object v4, v1, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    iget-object v4, v1, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    iget-object v1, v1, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getAnalysisMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getCheckpointSamples()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Recording;->checkpointSamples:J

    return-wide v0
.end method

.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Recording;->createdAt:J

    return-wide v0
.end method

.method public final getDurationMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Recording;->durationMs:J

    return-wide v0
.end method

.method public final getEnrollmentProfileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveCheckpointSamples()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    return-object v0
.end method

.method public final getModelInfo()Lru/localscribe/core/ModelInfo;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    return-object v0
.end method

.method public final getPcmPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    iget v0, p0, Lru/localscribe/core/Recording;->progress:F

    return v0
.end method

.method public final getRtf()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSettings()Lru/localscribe/core/Settings;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Recording;->createdAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Recording;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/core/Recording;->progress:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Recording;->checkpointSamples:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    invoke-virtual {v2}, Lru/localscribe/core/ModelInfo;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v2}, Lru/localscribe/core/Settings;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/core/Recording;->id:Ljava/lang/String;

    iget-object v2, v0, Lru/localscribe/core/Recording;->title:Ljava/lang/String;

    iget-wide v3, v0, Lru/localscribe/core/Recording;->createdAt:J

    iget-object v5, v0, Lru/localscribe/core/Recording;->audioPath:Ljava/lang/String;

    iget-object v6, v0, Lru/localscribe/core/Recording;->pcmPath:Ljava/lang/String;

    iget-wide v7, v0, Lru/localscribe/core/Recording;->durationMs:J

    iget-object v9, v0, Lru/localscribe/core/Recording;->state:Ljava/lang/String;

    iget v10, v0, Lru/localscribe/core/Recording;->progress:F

    iget-wide v11, v0, Lru/localscribe/core/Recording;->checkpointSamples:J

    iget-object v13, v0, Lru/localscribe/core/Recording;->error:Ljava/lang/String;

    iget-object v14, v0, Lru/localscribe/core/Recording;->rtf:Ljava/lang/Double;

    iget-object v15, v0, Lru/localscribe/core/Recording;->modelInfo:Lru/localscribe/core/ModelInfo;

    move-object/from16 v16, v15

    iget-object v15, v0, Lru/localscribe/core/Recording;->settings:Lru/localscribe/core/Settings;

    move-object/from16 v17, v15

    iget-object v15, v0, Lru/localscribe/core/Recording;->source:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lru/localscribe/core/Recording;->analysisMode:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lru/localscribe/core/Recording;->liveCheckpointSamples:Ljava/lang/Long;

    move-object/from16 v20, v15

    iget-object v15, v0, Lru/localscribe/core/Recording;->enrollmentProfileId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    const-string v15, "Recording(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pcmPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkpointSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rtf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analysisMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liveCheckpointSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enrollmentProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
