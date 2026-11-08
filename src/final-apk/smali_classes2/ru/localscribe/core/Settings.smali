.class public final Lru/localscribe/core/Settings;
.super Ljava/lang/Object;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Settings$$serializer;,
        Lru/localscribe/core/Settings$Companion;,
        Lru/localscribe/core/Settings$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 J2\u00020\u0001:\u0002IJBu\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013Bw\u0008\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0017J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0005H\u00c6\u0003J\t\u00102\u001a\u00020\u0007H\u00c6\u0003J\t\u00103\u001a\u00020\u0007H\u00c6\u0003J\t\u00104\u001a\u00020\nH\u00c6\u0003J\t\u00105\u001a\u00020\nH\u00c6\u0003J\t\u00106\u001a\u00020\nH\u00c6\u0003J\t\u00107\u001a\u00020\nH\u00c6\u0003J\t\u00108\u001a\u00020\u000fH\u00c6\u0003J\t\u00109\u001a\u00020\nH\u00c6\u0003J\t\u0010:\u001a\u00020\nH\u00c6\u0003Jw\u0010;\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\nH\u00c6\u0001J\u0013\u0010<\u001a\u00020\n2\u0008\u0010=\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010>\u001a\u00020\u0005H\u00d6\u0001J\t\u0010?\u001a\u00020@H\u00d6\u0001J%\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u00002\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0001\u00a2\u0006\u0002\u0008HR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010 R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010 R\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010 R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010 R\u0011\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010 R\u0011\u0010(\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001dR\u0011\u0010*\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010 R\u0011\u0010,\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010 R\u0011\u0010.\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u001b\u00a8\u0006K"
    }
    d2 = {
        "Lru/localscribe/core/Settings;",
        "",
        "quality",
        "Lru/localscribe/core/Quality;",
        "speakers",
        "",
        "matchThreshold",
        "",
        "newThreshold",
        "prosody",
        "",
        "showInterpretations",
        "separateOverlap",
        "emotions",
        "fileAsr",
        "Lru/localscribe/core/FileAsr;",
        "editRussianText",
        "refineDiarization",
        "<init>",
        "(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZ)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getQuality",
        "()Lru/localscribe/core/Quality;",
        "getSpeakers",
        "()I",
        "getMatchThreshold",
        "()F",
        "getNewThreshold",
        "getProsody",
        "()Z",
        "getShowInterpretations",
        "getSeparateOverlap",
        "getEmotions",
        "getFileAsr",
        "()Lru/localscribe/core/FileAsr;",
        "getEditRussianText",
        "getRefineDiarization",
        "confirmedNewThreshold",
        "getConfirmedNewThreshold",
        "runSeparation",
        "getRunSeparation",
        "runEmotions",
        "getRunEmotions",
        "threads",
        "getThreads",
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
        "copy",
        "equals",
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

.field public static final Companion:Lru/localscribe/core/Settings$Companion;


# instance fields
.field private final editRussianText:Z

.field private final emotions:Z

.field private final fileAsr:Lru/localscribe/core/FileAsr;

.field private final matchThreshold:F

.field private final newThreshold:F

.field private final prosody:Z

.field private final quality:Lru/localscribe/core/Quality;

.field private final refineDiarization:Z

.field private final separateOverlap:Z

.field private final showInterpretations:Z

.field private final speakers:I


# direct methods
.method public static synthetic $r8$lambda$XL1_pctwY_ypN_1OVeAW-6SHXxQ()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Settings;->_childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aFF58Ro2mmuevzHj8cFj6_66d9M()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Settings;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/localscribe/core/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/Settings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/Settings;->Companion:Lru/localscribe/core/Settings$Companion;

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/Lazy;

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Settings$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lru/localscribe/core/Settings$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

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

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lru/localscribe/core/Settings$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lru/localscribe/core/Settings;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lru/localscribe/core/Quality;->BALANCED:Lru/localscribe/core/Quality;

    iput-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    nop

    const/4 v0, 0x0

    iput v0, p0, Lru/localscribe/core/Settings;->speakers:I

    goto :goto_1

    :cond_1
    iput p3, p0, Lru/localscribe/core/Settings;->speakers:I

    :goto_1
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    nop

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    goto :goto_2

    :cond_2
    iput p4, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    :goto_2
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    nop

    const v0, 0x3ed70a3d    # 0.42f

    iput v0, p0, Lru/localscribe/core/Settings;->newThreshold:F

    goto :goto_3

    :cond_3
    iput p5, p0, Lru/localscribe/core/Settings;->newThreshold:F

    :goto_3
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    if-nez v0, :cond_4

    nop

    iput-boolean v1, p0, Lru/localscribe/core/Settings;->prosody:Z

    goto :goto_4

    :cond_4
    iput-boolean p6, p0, Lru/localscribe/core/Settings;->prosody:Z

    :goto_4
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_5

    nop

    iput-boolean v1, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    goto :goto_5

    :cond_5
    iput-boolean p7, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    :goto_5
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_6

    nop

    iput-boolean v1, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    goto :goto_6

    :cond_6
    iput-boolean p8, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    :goto_6
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_7

    nop

    iput-boolean v1, p0, Lru/localscribe/core/Settings;->emotions:Z

    goto :goto_7

    :cond_7
    iput-boolean p9, p0, Lru/localscribe/core/Settings;->emotions:Z

    :goto_7
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_8

    sget-object v0, Lru/localscribe/core/FileAsr;->GIGAAM_V3:Lru/localscribe/core/FileAsr;

    iput-object v0, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    :goto_8
    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_9

    nop

    iput-boolean v1, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    goto :goto_9

    :cond_9
    iput-boolean p11, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    :goto_9
    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_a

    nop

    iput-boolean v1, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    goto :goto_a

    :cond_a
    iput-boolean p12, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    :goto_a
    return-void
.end method

.method public constructor <init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZ)V
    .locals 1

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileAsr"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    iput p2, p0, Lru/localscribe/core/Settings;->speakers:I

    iput p3, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    iput p4, p0, Lru/localscribe/core/Settings;->newThreshold:F

    iput-boolean p5, p0, Lru/localscribe/core/Settings;->prosody:Z

    iput-boolean p6, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    iput-boolean p7, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    iput-boolean p8, p0, Lru/localscribe/core/Settings;->emotions:Z

    iput-object p9, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    iput-boolean p10, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    iput-boolean p11, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    return-void
.end method

.method public synthetic constructor <init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    sget-object p1, Lru/localscribe/core/Quality;->BALANCED:Lru/localscribe/core/Quality;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    const p3, 0x3f266666    # 0.65f

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    const p4, 0x3ed70a3d    # 0.42f

    :cond_3
    and-int/lit8 p13, p12, 0x10

    const/4 v0, 0x1

    if-eqz p13, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    sget-object p9, Lru/localscribe/core/FileAsr;->GIGAAM_V3:Lru/localscribe/core/FileAsr;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    move p13, v0

    goto :goto_0

    :cond_a
    move p13, p11

    :goto_0
    move-object p11, p9

    move p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p13}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZ)V

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 1

    sget-object v0, Lru/localscribe/core/Quality;->Companion:Lru/localscribe/core/Quality$Companion;

    invoke-virtual {v0}, Lru/localscribe/core/Quality$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;
    .locals 1

    sget-object v0, Lru/localscribe/core/FileAsr;->Companion:Lru/localscribe/core/FileAsr$Companion;

    invoke-virtual {v0}, Lru/localscribe/core/FileAsr$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lru/localscribe/core/Settings;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget p2, p0, Lru/localscribe/core/Settings;->speakers:I

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget p3, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget p4, p0, Lru/localscribe/core/Settings;->newThreshold:F

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-boolean p5, p0, Lru/localscribe/core/Settings;->prosody:Z

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-boolean p6, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-boolean p7, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-boolean p8, p0, Lru/localscribe/core/Settings;->emotions:Z

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-boolean p10, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-boolean p11, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    :cond_a
    move p12, p10

    move p13, p11

    move p10, p8

    move-object p11, p9

    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lru/localscribe/core/Settings;->copy(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZ)Lru/localscribe/core/Settings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$core(Lru/localscribe/core/Settings;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lru/localscribe/core/Settings;->$childSerializers:[Lkotlin/Lazy;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    sget-object v4, Lru/localscribe/core/Quality;->BALANCED:Lru/localscribe/core/Quality;

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget v2, p0, Lru/localscribe/core/Settings;->speakers:I

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    iget v2, p0, Lru/localscribe/core/Settings;->speakers:I

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_5
    const/4 v2, 0x2

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_6
    iget v4, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    nop

    const v5, 0x3f266666    # 0.65f

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v1

    :goto_5
    if-eqz v4, :cond_8

    iget v4, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    invoke-interface {p1, p2, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_8
    const/4 v2, 0x3

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_6
    move v4, v3

    goto :goto_7

    :cond_9
    iget v4, p0, Lru/localscribe/core/Settings;->newThreshold:F

    nop

    const v5, 0x3ed70a3d    # 0.42f

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_7
    if-eqz v4, :cond_b

    iget v4, p0, Lru/localscribe/core/Settings;->newThreshold:F

    invoke-interface {p1, p2, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_b
    const/4 v2, 0x4

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_8
    move v4, v3

    goto :goto_9

    :cond_c
    iget-boolean v4, p0, Lru/localscribe/core/Settings;->prosody:Z

    nop

    if-eq v4, v3, :cond_d

    goto :goto_8

    :cond_d
    move v4, v1

    :goto_9
    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lru/localscribe/core/Settings;->prosody:Z

    invoke-interface {p1, p2, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_e
    const/4 v2, 0x5

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_a
    move v4, v3

    goto :goto_b

    :cond_f
    iget-boolean v4, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    nop

    if-eq v4, v3, :cond_10

    goto :goto_a

    :cond_10
    move v4, v1

    :goto_b
    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    invoke-interface {p1, p2, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_11
    const/4 v2, 0x6

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_12
    iget-boolean v4, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    nop

    if-eq v4, v3, :cond_13

    goto :goto_c

    :cond_13
    move v4, v1

    :goto_d
    if-eqz v4, :cond_14

    iget-boolean v4, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    invoke-interface {p1, p2, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_14
    const/4 v2, 0x7

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_e
    move v4, v3

    goto :goto_f

    :cond_15
    iget-boolean v4, p0, Lru/localscribe/core/Settings;->emotions:Z

    nop

    if-eq v4, v3, :cond_16

    goto :goto_e

    :cond_16
    move v4, v1

    :goto_f
    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lru/localscribe/core/Settings;->emotions:Z

    invoke-interface {p1, p2, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_17
    const/16 v2, 0x8

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_10
    move v4, v3

    goto :goto_11

    :cond_18
    iget-object v4, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    sget-object v5, Lru/localscribe/core/FileAsr;->GIGAAM_V3:Lru/localscribe/core/FileAsr;

    if-eq v4, v5, :cond_19

    goto :goto_10

    :cond_19
    move v4, v1

    :goto_11
    if-eqz v4, :cond_1a

    aget-object v0, v0, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    invoke-interface {p1, p2, v2, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_12
    move v2, v3

    goto :goto_13

    :cond_1b
    iget-boolean v2, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    nop

    if-eq v2, v3, :cond_1c

    goto :goto_12

    :cond_1c
    move v2, v1

    :goto_13
    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_1d
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_14
    move v1, v3

    goto :goto_15

    :cond_1e
    iget-boolean v2, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    nop

    if-eq v2, v3, :cond_1f

    goto :goto_14

    :cond_1f
    :goto_15
    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_20
    return-void
.end method


# virtual methods
.method public final component1()Lru/localscribe/core/Quality;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/Settings;->speakers:I

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lru/localscribe/core/Settings;->newThreshold:F

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->prosody:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->emotions:Z

    return v0
.end method

.method public final component9()Lru/localscribe/core/FileAsr;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    return-object v0
.end method

.method public final copy(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZ)Lru/localscribe/core/Settings;
    .locals 13

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileAsr"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/core/Settings;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/Settings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/Settings;

    iget-object v3, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    iget-object v4, v1, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lru/localscribe/core/Settings;->speakers:I

    iget v4, v1, Lru/localscribe/core/Settings;->speakers:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    iget v4, v1, Lru/localscribe/core/Settings;->matchThreshold:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lru/localscribe/core/Settings;->newThreshold:F

    iget v4, v1, Lru/localscribe/core/Settings;->newThreshold:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lru/localscribe/core/Settings;->prosody:Z

    iget-boolean v4, v1, Lru/localscribe/core/Settings;->prosody:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    iget-boolean v4, v1, Lru/localscribe/core/Settings;->showInterpretations:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    iget-boolean v4, v1, Lru/localscribe/core/Settings;->separateOverlap:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lru/localscribe/core/Settings;->emotions:Z

    iget-boolean v4, v1, Lru/localscribe/core/Settings;->emotions:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    iget-object v4, v1, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-boolean v3, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    iget-boolean v4, v1, Lru/localscribe/core/Settings;->editRussianText:Z

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-boolean v3, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    iget-boolean v1, v1, Lru/localscribe/core/Settings;->refineDiarization:Z

    if-eq v3, v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getConfirmedNewThreshold()F
    .locals 3

    iget v0, p0, Lru/localscribe/core/Settings;->newThreshold:F

    iget v1, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    const v2, 0x3cf5c28f    # 0.03f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getEditRussianText()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    return v0
.end method

.method public final getEmotions()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->emotions:Z

    return v0
.end method

.method public final getFileAsr()Lru/localscribe/core/FileAsr;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    return-object v0
.end method

.method public final getMatchThreshold()F
    .locals 1

    iget v0, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    return v0
.end method

.method public final getNewThreshold()F
    .locals 1

    iget v0, p0, Lru/localscribe/core/Settings;->newThreshold:F

    return v0
.end method

.method public final getProsody()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->prosody:Z

    return v0
.end method

.method public final getQuality()Lru/localscribe/core/Quality;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    return-object v0
.end method

.method public final getRefineDiarization()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    return v0
.end method

.method public final getRunEmotions()Z
    .locals 2

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->emotions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    sget-object v1, Lru/localscribe/core/Quality;->FAST:Lru/localscribe/core/Quality;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getRunSeparation()Z
    .locals 2

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    sget-object v1, Lru/localscribe/core/Quality;->FAST:Lru/localscribe/core/Quality;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSeparateOverlap()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    return v0
.end method

.method public final getShowInterpretations()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    return v0
.end method

.method public final getSpeakers()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/Settings;->speakers:I

    return v0
.end method

.method public final getThreads()I
    .locals 2

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    sget-object v1, Lru/localscribe/core/Settings$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lru/localscribe/core/Quality;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    invoke-virtual {v0}, Lru/localscribe/core/Quality;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/core/Settings;->speakers:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lru/localscribe/core/Settings;->newThreshold:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->prosody:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->emotions:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    invoke-virtual {v2}, Lru/localscribe/core/FileAsr;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lru/localscribe/core/Settings;->quality:Lru/localscribe/core/Quality;

    iget v1, p0, Lru/localscribe/core/Settings;->speakers:I

    iget v2, p0, Lru/localscribe/core/Settings;->matchThreshold:F

    iget v3, p0, Lru/localscribe/core/Settings;->newThreshold:F

    iget-boolean v4, p0, Lru/localscribe/core/Settings;->prosody:Z

    iget-boolean v5, p0, Lru/localscribe/core/Settings;->showInterpretations:Z

    iget-boolean v6, p0, Lru/localscribe/core/Settings;->separateOverlap:Z

    iget-boolean v7, p0, Lru/localscribe/core/Settings;->emotions:Z

    iget-object v8, p0, Lru/localscribe/core/Settings;->fileAsr:Lru/localscribe/core/FileAsr;

    iget-boolean v9, p0, Lru/localscribe/core/Settings;->editRussianText:Z

    iget-boolean v10, p0, Lru/localscribe/core/Settings;->refineDiarization:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Settings(quality="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", speakers="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matchThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prosody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showInterpretations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", separateOverlap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emotions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileAsr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editRussianText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refineDiarization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
