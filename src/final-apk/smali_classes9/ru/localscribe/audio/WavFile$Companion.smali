.class public final Lru/localscribe/audio/WavFile$Companion;
.super Ljava/lang/Object;
.source "WavFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/audio/WavFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lru/localscribe/audio/WavFile$Companion;",
        "",
        "<init>",
        "()V",
        "isCanonical",
        "",
        "file",
        "Ljava/io/File;",
        "allowUncommittedLength",
        "read",
        "",
        "raf",
        "Ljava/io/RandomAccessFile;",
        "start",
        "",
        "count",
        "",
        "repair",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/audio/WavFile$Companion;-><init>()V

    return-void
.end method

.method public static synthetic isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/audio/WavFile$Companion;->isCanonical(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method private static final isCanonical$lambda$0$text([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public final isCanonical(Ljava/io/File;Z)Z
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "file"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2c

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    const/16 v5, 0x2c

    new-array v6, v5, [B

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v6, v2, v8}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$lambda$0$text([BII)Ljava/lang/String;

    move-result-object v9

    const-string v10, "RIFF"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v6, v9, v9}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$lambda$0$text([BII)Ljava/lang/String;

    move-result-object v10

    const-string v11, "WAVEfmt "

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    if-ne v11, v10, :cond_2

    const/16 v11, 0x14

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/16 v11, 0x16

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    if-ne v11, v12, :cond_2

    const/16 v11, 0x18

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    const/16 v13, 0x3e80

    if-ne v11, v13, :cond_2

    const/16 v11, 0x1c

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    const/16 v13, 0x7d00

    if-ne v11, v13, :cond_2

    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    const/16 v11, 0x22

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    if-ne v11, v10, :cond_2

    const/16 v10, 0x24

    invoke-static {v6, v10, v8}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$lambda$0$text([BII)Ljava/lang/String;

    move-result-object v10

    const-string v11, "data"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez p2, :cond_1

    const/16 v10, 0x28

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide v14, 0xffffffffL

    and-long/2addr v10, v14

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v18, v14

    int-to-long v14, v5

    sub-long v16, v16, v14

    cmp-long v10, v10, v16

    if-nez v10, :cond_2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    int-to-long v10, v8

    and-long v10, v10, v18

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v14

    int-to-long v8, v9

    sub-long/2addr v14, v8

    cmp-long v8, v10, v14

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    int-to-long v10, v5

    sub-long/2addr v8, v10

    int-to-long v10, v13

    rem-long/2addr v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    move v2, v12

    goto :goto_0

    :cond_2
    nop

    :goto_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final read(Ljava/io/RandomAccessFile;JI)[F
    .locals 10

    const-string v0, "raf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/16 v4, 0x2c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const/4 v6, 0x2

    int-to-long v6, v6

    div-long/2addr v2, v6

    sub-long/2addr v2, p2

    const-wide/16 v8, 0x0

    invoke-static {v2, v3, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    nop

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    mul-long/2addr v6, p2

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-array v3, v0, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x47000000    # 32768.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final repair(Ljava/io/File;)V
    .locals 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lru/localscribe/audio/WavFile$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lru/localscribe/audio/WavFile$Companion;->isCanonical(Ljava/io/File;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lru/localscribe/audio/WavFile;

    invoke-direct {v3, p1, v2}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Lru/localscribe/audio/WavFile;->close()V

    :cond_0
    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
