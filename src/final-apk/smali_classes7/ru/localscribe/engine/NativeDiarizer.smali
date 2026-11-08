.class public final Lru/localscribe/engine/NativeDiarizer;
.super Ljava/lang/Object;
.source "NativeDiarizer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/engine/NativeDiarizer$Companion;,
        Lru/localscribe/engine/NativeDiarizer$NativeTurn;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeDiarizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeDiarizer.kt\nru/localscribe/engine/NativeDiarizer\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n222#2:62\n774#3:63\n865#3,2:64\n1563#3:66\n1634#3,3:67\n*S KotlinDebug\n*F\n+ 1 NativeDiarizer.kt\nru/localscribe/engine/NativeDiarizer\n*L\n20#1:62\n21#1:63\n21#1:64,2\n22#1:66\n22#1:67,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001d\u001eB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0013\u001a\u00020\u0014J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J1\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0082 J\u0019\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082 J\u0011\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0082 J\u0011\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\rH\u0082 R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lru/localscribe/engine/NativeDiarizer;",
        "Ljava/io/Closeable;",
        "path",
        "",
        "secondary",
        "",
        "step",
        "",
        "workers",
        "",
        "<init>",
        "(Ljava/lang/String;ZDI)V",
        "handle",
        "",
        "turns",
        "",
        "Lru/localscribe/core/VoiceTurn;",
        "text",
        "accept",
        "samples",
        "",
        "complete",
        "close",
        "",
        "open",
        "runtime",
        "push",
        "finish",
        "release",
        "NativeTurn",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lru/localscribe/engine/NativeDiarizer$Companion;


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/engine/NativeDiarizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/engine/NativeDiarizer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/engine/NativeDiarizer;->Companion:Lru/localscribe/engine/NativeDiarizer$Companion;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/NativeDiarizer;->$stable:I

    nop

    const-string v0, "localscribe_diar_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZDI)V
    .locals 8

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "libonnxruntime.so"

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lru/localscribe/engine/NativeDiarizer;->open(Ljava/lang/String;Ljava/lang/String;ZDI)J

    move-result-wide p1

    iput-wide p1, v1, Lru/localscribe/engine/NativeDiarizer;->handle:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZDIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    move p6, v0

    goto :goto_0

    :cond_2
    move p6, p5

    :goto_0
    move-wide p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lru/localscribe/engine/NativeDiarizer;-><init>(Ljava/lang/String;ZDI)V

    return-void
.end method

.method private final native finish(J)Ljava/lang/String;
.end method

.method private final native open(Ljava/lang/String;Ljava/lang/String;ZDI)J
.end method

.method private final native push(J[F)Ljava/lang/String;
.end method

.method private final native release(J)V
.end method

.method private final turns(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lru/localscribe/engine/NativeDiarizer$NativeTurn;->Companion:Lru/localscribe/engine/NativeDiarizer$NativeTurn$Companion;

    invoke-virtual {v4}, Lru/localscribe/engine/NativeDiarizer$NativeTurn$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/localscribe/engine/NativeDiarizer$NativeTurn;

    const/4 v8, 0x0

    invoke-virtual {v7}, Lru/localscribe/engine/NativeDiarizer$NativeTurn;->getEnd()J

    move-result-wide v9

    invoke-virtual {v7}, Lru/localscribe/engine/NativeDiarizer$NativeTurn;->getStart()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    nop

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    nop

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    move-object v3, v2

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/localscribe/engine/NativeDiarizer$NativeTurn;

    const/4 v8, 0x0

    new-instance v9, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v7}, Lru/localscribe/engine/NativeDiarizer$NativeTurn;->getStart()J

    move-result-wide v10

    invoke-virtual {v7}, Lru/localscribe/engine/NativeDiarizer$NativeTurn;->getEnd()J

    move-result-wide v12

    invoke-virtual {v7}, Lru/localscribe/engine/NativeDiarizer$NativeTurn;->getSpeaker()I

    move-result v14

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    nop

    check-cast v1, Ljava/util/List;

    nop

    return-object v1
.end method


# virtual methods
.method public final accept([F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;"
        }
    .end annotation

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-wide v0, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lru/localscribe/engine/NativeDiarizer;->push(J[F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/localscribe/engine/NativeDiarizer;->turns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    iget-wide v0, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    invoke-direct {p0, v0, v1}, Lru/localscribe/engine/NativeDiarizer;->release(J)V

    iput-wide v2, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    :cond_0
    return-void
.end method

.method public final complete()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-wide v0, p0, Lru/localscribe/engine/NativeDiarizer;->handle:J

    invoke-direct {p0, v0, v1}, Lru/localscribe/engine/NativeDiarizer;->finish(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/localscribe/engine/NativeDiarizer;->turns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
