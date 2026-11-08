.class public final Lru/localscribe/data/BundledModelInfo;
.super Ljava/lang/Object;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/data/BundledModelInfo$$serializer;,
        Lru/localscribe/data/BundledModelInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B-\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J%\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0001\u00a2\u0006\u0002\u0008!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lru/localscribe/data/BundledModelInfo;",
        "",
        "unpackedBytes",
        "",
        "manifest",
        "Lru/localscribe/data/ModelManifest;",
        "<init>",
        "(JLru/localscribe/data/ModelManifest;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLru/localscribe/data/ModelManifest;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getUnpackedBytes",
        "()J",
        "getManifest",
        "()Lru/localscribe/data/ModelManifest;",
        "component1",
        "component2",
        "copy",
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
        "write$Self$app_debug",
        "$serializer",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lru/localscribe/data/BundledModelInfo$Companion;


# instance fields
.field private final manifest:Lru/localscribe/data/ModelManifest;

.field private final unpackedBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/data/BundledModelInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/data/BundledModelInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/data/BundledModelInfo;->Companion:Lru/localscribe/data/BundledModelInfo$Companion;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/BundledModelInfo;->$stable:I

    return-void
.end method

.method public synthetic constructor <init>(IJLru/localscribe/data/ModelManifest;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2
    .param p1, "seen0"    # I
    .param p2, "unpackedBytes"    # J
    .param p4, "manifest"    # Lru/localscribe/data/ModelManifest;
    .param p5, "serializationConstructorMarker"    # Lkotlinx/serialization/internal/SerializationConstructorMarker;

    .line 37
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    sget-object v0, Lru/localscribe/data/BundledModelInfo$$serializer;->INSTANCE:Lru/localscribe/data/BundledModelInfo$$serializer;

    invoke-virtual {v0}, Lru/localscribe/data/BundledModelInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    iput-object p4, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    return-void
.end method

.method public constructor <init>(JLru/localscribe/data/ModelManifest;)V
    .locals 1
    .param p1, "unpackedBytes"    # J
    .param p3, "manifest"    # Lru/localscribe/data/ModelManifest;

    const-string v0, "manifest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    iput-object p3, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    return-void
.end method

.method public static synthetic copy$default(Lru/localscribe/data/BundledModelInfo;JLru/localscribe/data/ModelManifest;ILjava/lang/Object;)Lru/localscribe/data/BundledModelInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lru/localscribe/data/BundledModelInfo;->copy(JLru/localscribe/data/ModelManifest;)Lru/localscribe/data/BundledModelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_debug(Lru/localscribe/data/BundledModelInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .param p0, "self"    # Lru/localscribe/data/BundledModelInfo;
    .param p1, "output"    # Lkotlinx/serialization/encoding/CompositeEncoder;
    .param p2, "serialDesc"    # Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 37
    const/4 v0, 0x0

    iget-wide v1, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v0, Lru/localscribe/data/ModelManifest$$serializer;->INSTANCE:Lru/localscribe/data/ModelManifest$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    return-wide v0
.end method

.method public final component2()Lru/localscribe/data/ModelManifest;
    .locals 1

    iget-object v0, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    return-object v0
.end method

.method public final copy(JLru/localscribe/data/ModelManifest;)Lru/localscribe/data/BundledModelInfo;
    .locals 1

    const-string v0, "manifest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/localscribe/data/BundledModelInfo;

    invoke-direct {v0, p1, p2, p3}, Lru/localscribe/data/BundledModelInfo;-><init>(JLru/localscribe/data/ModelManifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/data/BundledModelInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/data/BundledModelInfo;

    iget-wide v3, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    iget-wide v5, v1, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    iget-object v1, v1, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getManifest()Lru/localscribe/data/ModelManifest;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    return-object v0
.end method

.method public final getUnpackedBytes()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    invoke-virtual {v2}, Lru/localscribe/data/ModelManifest;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lru/localscribe/data/BundledModelInfo;->unpackedBytes:J

    iget-object v2, p0, Lru/localscribe/data/BundledModelInfo;->manifest:Lru/localscribe/data/ModelManifest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BundledModelInfo(unpackedBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manifest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
