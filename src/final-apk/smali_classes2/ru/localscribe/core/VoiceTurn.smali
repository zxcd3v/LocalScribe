.class public final Lru/localscribe/core/VoiceTurn;
.super Ljava/lang/Object;
.source "SpeakerTimeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/VoiceTurn$$serializer;,
        Lru/localscribe/core/VoiceTurn$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 )2\u00020\u0001:\u0002()B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB;\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001\u00a2\u0006\u0002\u0008\'R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006*"
    }
    d2 = {
        "Lru/localscribe/core/VoiceTurn;",
        "",
        "start",
        "",
        "end",
        "speaker",
        "",
        "uncertain",
        "",
        "<init>",
        "(JJIZ)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJJIZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getStart",
        "()J",
        "getEnd",
        "getSpeaker",
        "()I",
        "getUncertain",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field public static final Companion:Lru/localscribe/core/VoiceTurn$Companion;


# instance fields
.field private final end:J

.field private final speaker:I

.field private final start:J

.field private final uncertain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/core/VoiceTurn$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/VoiceTurn$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/VoiceTurn;->Companion:Lru/localscribe/core/VoiceTurn$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJJIZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-eq v1, v0, :cond_0

    sget-object v0, Lru/localscribe/core/VoiceTurn$$serializer;->INSTANCE:Lru/localscribe/core/VoiceTurn$$serializer;

    invoke-virtual {v0}, Lru/localscribe/core/VoiceTurn$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lru/localscribe/core/VoiceTurn;->start:J

    iput-wide p4, p0, Lru/localscribe/core/VoiceTurn;->end:J

    iput p6, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_1

    nop

    iput-boolean v1, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    goto :goto_0

    :cond_1
    iput-boolean p7, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    :goto_0
    iget-wide v2, p0, Lru/localscribe/core/VoiceTurn;->start:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Lru/localscribe/core/VoiceTurn;->end:J

    iget-wide v4, p0, Lru/localscribe/core/VoiceTurn;->start:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget v0, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-gt v2, v0, :cond_2

    const/16 v2, 0x40

    if-ge v0, v2, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JJIZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/core/VoiceTurn;->start:J

    iput-wide p3, p0, Lru/localscribe/core/VoiceTurn;->end:J

    iput p5, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    iput-boolean p6, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lru/localscribe/core/VoiceTurn;->end:J

    iget-wide v4, p0, Lru/localscribe/core/VoiceTurn;->start:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget v0, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-gt v2, v0, :cond_0

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(JJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/core/VoiceTurn;JJIZILjava/lang/Object;)Lru/localscribe/core/VoiceTurn;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lru/localscribe/core/VoiceTurn;->start:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lru/localscribe/core/VoiceTurn;->end:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p5, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    :cond_2
    move v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-boolean p6, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    :cond_3
    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lru/localscribe/core/VoiceTurn;->copy(JJIZ)Lru/localscribe/core/VoiceTurn;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$core(Lru/localscribe/core/VoiceTurn;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->start:J

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->end:J

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x2

    iget v1, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    nop

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->start:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->end:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    return v0
.end method

.method public final copy(JJIZ)Lru/localscribe/core/VoiceTurn;
    .locals 7

    new-instance v0, Lru/localscribe/core/VoiceTurn;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/VoiceTurn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/VoiceTurn;

    iget-wide v3, p0, Lru/localscribe/core/VoiceTurn;->start:J

    iget-wide v5, v1, Lru/localscribe/core/VoiceTurn;->start:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lru/localscribe/core/VoiceTurn;->end:J

    iget-wide v5, v1, Lru/localscribe/core/VoiceTurn;->end:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    iget v4, v1, Lru/localscribe/core/VoiceTurn;->speaker:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    iget-boolean v1, v1, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEnd()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->end:J

    return-wide v0
.end method

.method public final getSpeaker()I
    .locals 1

    iget v0, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    return v0
.end method

.method public final getStart()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->start:J

    return-wide v0
.end method

.method public final getUncertain()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->start:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/VoiceTurn;->end:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lru/localscribe/core/VoiceTurn;->start:J

    iget-wide v2, p0, Lru/localscribe/core/VoiceTurn;->end:J

    iget v4, p0, Lru/localscribe/core/VoiceTurn;->speaker:I

    iget-boolean v5, p0, Lru/localscribe/core/VoiceTurn;->uncertain:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoiceTurn(start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uncertain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
