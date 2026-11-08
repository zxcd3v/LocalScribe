.class public final Lru/localscribe/core/Acoustics;
.super Ljava/lang/Object;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Acoustics$$serializer;,
        Lru/localscribe/core/Acoustics$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 A2\u00020\u0001:\u0002@AB}\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B\u007f\u0008\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0010\u0010\u0016J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\t\u0010-\u001a\u00020\u000bH\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u00c6\u0003J\u0084\u0001\u00100\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u00c6\u0001\u00a2\u0006\u0002\u00101J\u0013\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00105\u001a\u00020\u0013H\u00d6\u0001J\t\u00106\u001a\u000207H\u00d6\u0001J%\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00002\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0001\u00a2\u0006\u0002\u0008?R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0018R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u0018R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u0018R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008 \u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006B"
    }
    d2 = {
        "Lru/localscribe/core/Acoustics;",
        "",
        "f0MedianHz",
        "",
        "f0RangeSemitones",
        "finalRiseSemitones",
        "rmsDbfs",
        "relativeDb",
        "relativeF0Semitones",
        "wordsPerMinute",
        "pauseBeforeMs",
        "",
        "unvoicedFraction",
        "pitch",
        "",
        "Lru/localscribe/core/PitchPoint;",
        "<init>",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getF0MedianHz",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getF0RangeSemitones",
        "getFinalRiseSemitones",
        "getRmsDbfs",
        "()D",
        "getRelativeDb",
        "getRelativeF0Semitones",
        "getWordsPerMinute",
        "getPauseBeforeMs",
        "()J",
        "getUnvoicedFraction",
        "getPitch",
        "()Ljava/util/List;",
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
        "copy",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)Lru/localscribe/core/Acoustics;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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

.field public static final Companion:Lru/localscribe/core/Acoustics$Companion;


# instance fields
.field private final f0MedianHz:Ljava/lang/Double;

.field private final f0RangeSemitones:Ljava/lang/Double;

.field private final finalRiseSemitones:Ljava/lang/Double;

.field private final pauseBeforeMs:J

.field private final pitch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/PitchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final relativeDb:Ljava/lang/Double;

.field private final relativeF0Semitones:Ljava/lang/Double;

.field private final rmsDbfs:D

.field private final unvoicedFraction:D

.field private final wordsPerMinute:Ljava/lang/Double;


# direct methods
.method public static synthetic $r8$lambda$lSBwFVYAZwYKPbuKghqRnVdso-w()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Acoustics;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/core/Acoustics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/Acoustics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/Acoustics;->Companion:Lru/localscribe/core/Acoustics$Companion;

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/Lazy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lru/localscribe/core/Acoustics$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/localscribe/core/Acoustics$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lru/localscribe/core/Acoustics;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x3ff

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lru/localscribe/core/Acoustics;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    nop

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    nop

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    move-object/from16 v2, p3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    iput-object v2, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    :goto_1
    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_2

    nop

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    move-object/from16 v3, p4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    iput-object v3, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    :goto_2
    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_3

    nop

    const-wide/high16 v4, -0x3fa2000000000000L    # -120.0

    iput-wide v4, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    move-wide/from16 v4, p5

    goto :goto_3

    :cond_3
    move-wide/from16 v4, p5

    iput-wide v4, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    :goto_3
    and-int/lit8 v6, p1, 0x10

    if-nez v6, :cond_4

    nop

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    move-object/from16 v6, p7

    goto :goto_4

    :cond_4
    move-object/from16 v6, p7

    iput-object v6, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    :goto_4
    and-int/lit8 v7, p1, 0x20

    if-nez v7, :cond_5

    nop

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    move-object/from16 v7, p8

    goto :goto_5

    :cond_5
    move-object/from16 v7, p8

    iput-object v7, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    :goto_5
    and-int/lit8 v8, p1, 0x40

    if-nez v8, :cond_6

    nop

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    move-object/from16 v1, p9

    goto :goto_6

    :cond_6
    move-object/from16 v1, p9

    iput-object v1, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    :goto_6
    and-int/lit16 v8, p1, 0x80

    if-nez v8, :cond_7

    nop

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    move-wide/from16 v8, p10

    goto :goto_7

    :cond_7
    move-wide/from16 v8, p10

    iput-wide v8, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    :goto_7
    and-int/lit16 v10, p1, 0x100

    if-nez v10, :cond_8

    nop

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iput-wide v10, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    move-wide/from16 v10, p12

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p12

    iput-wide v10, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    :goto_8
    and-int/lit16 v12, p1, 0x200

    if-nez v12, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    move-object/from16 v12, p14

    goto :goto_9

    :cond_9
    move-object/from16 v12, p14

    iput-object v12, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    :goto_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "D",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "JD",
            "Ljava/util/List<",
            "Lru/localscribe/core/PitchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pitch"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    iput-object p2, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    iput-object p3, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    iput-wide p4, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    iput-object p6, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    iput-object p7, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    iput-object p8, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    iput-wide p9, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    iput-wide p11, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    iput-object p13, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object p2, v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, p3

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    const-wide/high16 v3, -0x3fa2000000000000L    # -120.0

    goto :goto_1

    :cond_3
    move-wide v3, p4

    :goto_1
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_2

    :cond_4
    move-object/from16 v5, p6

    :goto_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_3

    :cond_5
    move-object/from16 v6, p7

    :goto_3
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v2, p8

    :goto_4
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_7
    move-wide/from16 v7, p9

    :goto_5
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_8
    move-wide/from16 v9, p11

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object/from16 v0, p13

    :goto_7
    move-object p3, p2

    move-object/from16 p14, v0

    move-object p4, v1

    move-object/from16 p9, v2

    move-wide/from16 p5, v3

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-wide/from16 p10, v7

    move-wide/from16 p12, v9

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p14}, Lru/localscribe/core/Acoustics;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)V

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/PitchPoint$$serializer;->INSTANCE:Lru/localscribe/core/PitchPoint$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lru/localscribe/core/Acoustics;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lru/localscribe/core/Acoustics;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Acoustics;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    goto :goto_2

    :cond_3
    move-wide/from16 v3, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    iget-object v5, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    goto :goto_3

    :cond_4
    move-object/from16 v5, p6

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    iget-object v6, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    goto :goto_4

    :cond_5
    move-object/from16 v6, p7

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    iget-object v7, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    goto :goto_5

    :cond_6
    move-object/from16 v7, p8

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    iget-wide v8, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    goto :goto_6

    :cond_7
    move-wide/from16 v8, p9

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    iget-wide v10, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    goto :goto_7

    :cond_8
    move-wide/from16 v10, p11

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    move-object/from16 p15, v0

    goto :goto_8

    :cond_9
    move-object/from16 p15, p13

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-wide/from16 p6, v3

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-wide/from16 p11, v8

    move-wide/from16 p13, v10

    invoke-virtual/range {p2 .. p15}, Lru/localscribe/core/Acoustics;->copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)Lru/localscribe/core/Acoustics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$core(Lru/localscribe/core/Acoustics;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lru/localscribe/core/Acoustics;->$childSerializers:[Lkotlin/Lazy;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    sget-object v2, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    sget-object v2, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    invoke-interface {p1, p2, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x2

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v1

    :goto_5
    if-eqz v4, :cond_8

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    const/4 v2, 0x3

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_6
    move v4, v3

    goto :goto_7

    :cond_9
    iget-wide v4, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    nop

    const-wide/high16 v6, -0x3fa2000000000000L    # -120.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_7
    if-eqz v4, :cond_b

    iget-wide v4, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_b
    const/4 v2, 0x4

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_8
    move v4, v3

    goto :goto_9

    :cond_c
    iget-object v4, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    if-eqz v4, :cond_d

    goto :goto_8

    :cond_d
    move v4, v1

    :goto_9
    if-eqz v4, :cond_e

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    const/4 v2, 0x5

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_a
    move v4, v3

    goto :goto_b

    :cond_f
    iget-object v4, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    if-eqz v4, :cond_10

    goto :goto_a

    :cond_10
    move v4, v1

    :goto_b
    if-eqz v4, :cond_11

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/4 v2, 0x6

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_12
    iget-object v4, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    if-eqz v4, :cond_13

    goto :goto_c

    :cond_13
    move v4, v1

    :goto_d
    if-eqz v4, :cond_14

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    const/4 v2, 0x7

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_e
    move v4, v3

    goto :goto_f

    :cond_15
    iget-wide v4, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    nop

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    move v4, v1

    :goto_f
    if-eqz v4, :cond_17

    iget-wide v4, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_17
    const/16 v2, 0x8

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_10
    move v4, v3

    goto :goto_11

    :cond_18
    iget-wide v4, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    nop

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_10

    :cond_19
    move v4, v1

    :goto_11
    if-eqz v4, :cond_1a

    iget-wide v4, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    invoke-interface {p1, p2, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_1a
    const/16 v2, 0x9

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :goto_12
    move v1, v3

    goto :goto_13

    :cond_1b
    iget-object v4, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_12

    :cond_1c
    :goto_13
    if-eqz v1, :cond_1d

    aget-object v0, v0, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/PitchPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    return-object v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    return-wide v0
.end method

.method public final component5()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    return-object v0
.end method

.method public final component6()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    return-object v0
.end method

.method public final component7()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    return-object v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    return-wide v0
.end method

.method public final component9()D
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    return-wide v0
.end method

.method public final copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)Lru/localscribe/core/Acoustics;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "D",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "JD",
            "Ljava/util/List<",
            "Lru/localscribe/core/PitchPoint;",
            ">;)",
            "Lru/localscribe/core/Acoustics;"
        }
    .end annotation

    const-string v0, "pitch"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/core/Acoustics;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v1 .. v14}, Lru/localscribe/core/Acoustics;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;JDLjava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/Acoustics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/Acoustics;

    iget-object v3, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    iget-wide v5, v1, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    iget-wide v5, v1, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    iget-wide v5, v1, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    iget-object v1, v1, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getF0MedianHz()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    return-object v0
.end method

.method public final getF0RangeSemitones()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    return-object v0
.end method

.method public final getFinalRiseSemitones()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPauseBeforeMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    return-wide v0
.end method

.method public final getPitch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/PitchPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    return-object v0
.end method

.method public final getRelativeDb()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRelativeF0Semitones()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRmsDbfs()D
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    return-wide v0
.end method

.method public final getUnvoicedFraction()D
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    return-wide v0
.end method

.method public final getWordsPerMinute()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    invoke-static {v3, v4}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lru/localscribe/core/Acoustics;->f0MedianHz:Ljava/lang/Double;

    iget-object v1, p0, Lru/localscribe/core/Acoustics;->f0RangeSemitones:Ljava/lang/Double;

    iget-object v2, p0, Lru/localscribe/core/Acoustics;->finalRiseSemitones:Ljava/lang/Double;

    iget-wide v3, p0, Lru/localscribe/core/Acoustics;->rmsDbfs:D

    iget-object v5, p0, Lru/localscribe/core/Acoustics;->relativeDb:Ljava/lang/Double;

    iget-object v6, p0, Lru/localscribe/core/Acoustics;->relativeF0Semitones:Ljava/lang/Double;

    iget-object v7, p0, Lru/localscribe/core/Acoustics;->wordsPerMinute:Ljava/lang/Double;

    iget-wide v8, p0, Lru/localscribe/core/Acoustics;->pauseBeforeMs:J

    iget-wide v10, p0, Lru/localscribe/core/Acoustics;->unvoicedFraction:D

    iget-object v12, p0, Lru/localscribe/core/Acoustics;->pitch:Ljava/util/List;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Acoustics(f0MedianHz="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", f0RangeSemitones="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalRiseSemitones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rmsDbfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relativeDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relativeF0Semitones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wordsPerMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pauseBeforeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unvoicedFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
