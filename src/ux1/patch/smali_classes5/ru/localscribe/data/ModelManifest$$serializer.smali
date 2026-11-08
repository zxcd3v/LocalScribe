.class public final synthetic Lru/localscribe/data/ModelManifest$$serializer;
.super Ljava/lang/Object;
.source "ModelStore.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/data/ModelManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lru/localscribe/data/ModelManifest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
    message = "This synthesized declaration should not be used directly"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "ru/localscribe/data/ModelManifest.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lru/localscribe/data/ModelManifest;",
        "<init>",
        "()V",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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

.field public static final INSTANCE:Lru/localscribe/data/ModelManifest$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/localscribe/data/ModelManifest$$serializer;

    invoke-direct {v0}, Lru/localscribe/data/ModelManifest$$serializer;-><init>()V

    sput-object v0, Lru/localscribe/data/ModelManifest$$serializer;->INSTANCE:Lru/localscribe/data/ModelManifest$$serializer;

    .line 34
    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    sget-object v1, Lru/localscribe/data/ModelManifest$$serializer;->INSTANCE:Lru/localscribe/data/ModelManifest$$serializer;

    check-cast v1, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/4 v2, 0x3

    const-string v3, "ru.localscribe.data.ModelManifest"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "files"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v0, Lru/localscribe/data/ModelManifest$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 35
    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/ModelManifest$$serializer;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lru/localscribe/data/ModelManifest;->access$get$childSerializers$cp()[Lkotlin/Lazy;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "decoder"    # Lkotlinx/serialization/encoding/Decoder;

    .line 34
    invoke-virtual {p0, p1}, Lru/localscribe/data/ModelManifest$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lru/localscribe/data/ModelManifest;

    move-result-object v0

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lru/localscribe/data/ModelManifest;
    .locals 13
    .param p1, "decoder"    # Lkotlinx/serialization/encoding/Decoder;

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lru/localscribe/data/ModelManifest$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    invoke-static {}, Lru/localscribe/data/ModelManifest;->access$get$childSerializers$cp()[Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v5

    aget-object v2, v2, v4

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v4, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v4, 0x7

    move-object v12, v5

    move-object v5, v2

    move v2, v4

    move-object v4, v12

    goto :goto_1

    :cond_0
    move v10, v5

    move v3, v6

    move-object v8, v7

    move-object v9, v8

    :goto_0
    if-eqz v10, :cond_1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v11}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    aget-object v11, v2, v4

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v4, v11, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v3, v3, 0x2

    goto :goto_0

    :pswitch_2
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_3
    move v10, v6

    goto :goto_0

    :cond_1
    move v2, v3

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    :goto_1
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v1, Lru/localscribe/data/ModelManifest;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lru/localscribe/data/ModelManifest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lru/localscribe/data/ModelManifest$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "encoder"    # Lkotlinx/serialization/encoding/Encoder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 34
    move-object v0, p2

    check-cast v0, Lru/localscribe/data/ModelManifest;

    invoke-virtual {p0, p1, v0}, Lru/localscribe/data/ModelManifest$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lru/localscribe/data/ModelManifest;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lru/localscribe/data/ModelManifest;)V
    .locals 2
    .param p1, "encoder"    # Lkotlinx/serialization/encoding/Encoder;
    .param p2, "value"    # Lru/localscribe/data/ModelManifest;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lru/localscribe/data/ModelManifest$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lru/localscribe/data/ModelManifest;->write$Self$app_debug(Lru/localscribe/data/ModelManifest;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 35
    return-void
.end method

.method public bridge typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lkotlinx/serialization/internal/GeneratedSerializer;->typeParametersSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
