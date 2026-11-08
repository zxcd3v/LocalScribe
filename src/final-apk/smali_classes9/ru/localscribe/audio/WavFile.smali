.class public final Lru/localscribe/audio/WavFile;
.super Ljava/lang/Object;
.source "WavFile.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/audio/WavFile$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWavFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WavFile.kt\nru/localscribe/audio/WavFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,111:1\n1#2:112\n13840#3,2:113\n*S KotlinDebug\n*F\n+ 1 WavFile.kt\nru/localscribe/audio/WavFile\n*L\n23#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001d\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018J\u0006\u0010\u0019\u001a\u00020\u0010J\u0008\u0010\u001a\u001a\u00020\u0010H\u0002J\u0008\u0010\u001b\u001a\u00020\u0010H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lru/localscribe/audio/WavFile;",
        "Ljava/io/Closeable;",
        "file",
        "Ljava/io/File;",
        "append",
        "",
        "<init>",
        "(Ljava/io/File;Z)V",
        "raf",
        "Ljava/io/RandomAccessFile;",
        "value",
        "",
        "samples",
        "getSamples",
        "()J",
        "write",
        "",
        "x",
        "",
        "writePcm16",
        "bytes",
        "",
        "count",
        "",
        "writePcm16$app_debug",
        "checkpoint",
        "header",
        "close",
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

.field public static final Companion:Lru/localscribe/audio/WavFile$Companion;


# instance fields
.field private final raf:Ljava/io/RandomAccessFile;

.field private samples:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/audio/WavFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/audio/WavFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/audio/WavFile;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    nop

    const/4 v0, 0x2

    const/16 v1, 0x2c

    const-wide/16 v2, 0x2c

    if-eqz p2, :cond_0

    iget-object v4, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    iget-object v2, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    int-to-long v4, v0

    div-long/2addr v2, v4

    iput-wide v2, p0, Lru/localscribe/audio/WavFile;->samples:J

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-direct {p0}, Lru/localscribe/audio/WavFile;->header()V

    iget-object v2, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v3, v1

    iget-wide v5, p0, Lru/localscribe/audio/WavFile;->samples:J

    int-to-long v0, v0

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    nop

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method private final header()V
    .locals 11

    iget-wide v0, p0, Lru/localscribe/audio/WavFile;->samples:J

    const/4 v2, 0x2

    int-to-long v3, v2

    mul-long/2addr v0, v3

    const-wide v5, 0xfffffff0L

    cmp-long v0, v0, v5

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v5, "RIFF"

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "getBytes(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v7, p0, Lru/localscribe/audio/WavFile;->samples:J

    mul-long/2addr v7, v3

    const/16 v5, 0x24

    int-to-long v9, v5

    add-long/2addr v7, v9

    long-to-int v5, v7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string v5, "WAVEfmt "

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x7d00

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-string v1, "data"

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lru/localscribe/audio/WavFile;->samples:J

    mul-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void

    :cond_1
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0414\u043e\u0441\u0442\u0438\u0433\u043d\u0443\u0442 \u043b\u0438\u043c\u0438\u0442 WAV (\u043e\u043a\u043e\u043b\u043e 37 \u0447\u0430\u0441\u043e\u0432 \u043f\u0440\u0438 16 \u043a\u0413\u0446)"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final checkpoint()V
    .locals 3

    iget-object v0, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-direct {p0}, Lru/localscribe/audio/WavFile;->header()V

    iget-object v2, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    iget-object v2, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public close()V
    .locals 2

    nop

    :try_start_0
    invoke-virtual {p0}, Lru/localscribe/audio/WavFile;->checkpoint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public final getSamples()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/audio/WavFile;->samples:J

    return-wide v0
.end method

.method public final write([F)V
    .locals 10

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lru/localscribe/audio/WavFile;->samples:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x2

    int-to-long v3, v2

    mul-long/2addr v0, v3

    const-wide v3, 0xfffffff0L

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    array-length v0, p1

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, p1

    const/4 v3, 0x0

    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget v5, v2, v1

    move v6, v5

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v6, v8, v9}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    const/16 v9, 0x7fff

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    iget-object v1, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-wide v1, p0, Lru/localscribe/audio/WavFile;->samples:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lru/localscribe/audio/WavFile;->samples:J

    return-void

    :cond_2
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0414\u043e\u0441\u0442\u0438\u0433\u043d\u0443\u0442 \u043b\u0438\u043c\u0438\u0442 WAV (\u043e\u043a\u043e\u043b\u043e 37 \u0447\u0430\u0441\u043e\u0432)"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writePcm16$app_debug([BI)V
    .locals 6

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    rem-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-wide v2, p0, Lru/localscribe/audio/WavFile;->samples:J

    const/4 v4, 0x2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    int-to-long v4, p2

    add-long/2addr v2, v4

    const-wide v4, 0xfffffff0L

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/localscribe/audio/WavFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v0, p0, Lru/localscribe/audio/WavFile;->samples:J

    div-int/lit8 v2, p2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lru/localscribe/audio/WavFile;->samples:J

    return-void

    :cond_3
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0414\u043e\u0441\u0442\u0438\u0433\u043d\u0443\u0442 \u043b\u0438\u043c\u0438\u0442 WAV"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
