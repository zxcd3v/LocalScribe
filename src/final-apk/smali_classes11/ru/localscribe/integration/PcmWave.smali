.class public final Lru/localscribe/integration/PcmWave;
.super Ljava/lang/Object;
.source "PcmWave.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final RATE:I = 0x3e80


# instance fields
.field private bytes:J

.field private final output:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    iget-object p1, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {p0}, Lru/localscribe/integration/PcmWave;->checkpoint()V

    return-void
.end method

.method private little(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, v0, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static repair(Ljava/io/File;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x2c

    cmp-long p0, v1, v3

    if-ltz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide v5, 0x100000007L

    cmp-long p0, v1, v5

    if-gtz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    const v1, 0x52494646

    if-ne p0, v1, :cond_3

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    const v1, 0x57415645

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    const v1, 0x666d7420

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    if-ne p0, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    const/16 v2, 0x3e80

    if-ne p0, v2, :cond_1

    const-wide/16 v5, 0x20

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    const v1, 0x64617461

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, v3

    const-wide/16 v5, -0x2

    and-long/2addr v1, v5

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v3, 0x24

    add-long/2addr v3, v1

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v3, 0x28

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x7d00

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Unsupported WAV layout"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Unsupported WAV encoding"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Not canonical WAV"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Not RIFF"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Invalid WAV size"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public checkpoint()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const-string v1, "RIFF"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-wide/16 v0, 0x24

    iget-wide v2, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    add-long/2addr v2, v0

    const/4 v0, 0x4

    invoke-direct {p0, v2, v3, v0}, Lru/localscribe/integration/PcmWave;->little(JI)V

    iget-object v1, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const-string v2, "WAVEfmt "

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-wide/16 v1, 0x10

    invoke-direct {p0, v1, v2, v0}, Lru/localscribe/integration/PcmWave;->little(JI)V

    const-wide/16 v3, 0x1

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, v5}, Lru/localscribe/integration/PcmWave;->little(JI)V

    invoke-direct {p0, v3, v4, v5}, Lru/localscribe/integration/PcmWave;->little(JI)V

    const-wide/16 v3, 0x3e80

    invoke-direct {p0, v3, v4, v0}, Lru/localscribe/integration/PcmWave;->little(JI)V

    const-wide/16 v3, 0x7d00

    invoke-direct {p0, v3, v4, v0}, Lru/localscribe/integration/PcmWave;->little(JI)V

    const-wide/16 v3, 0x2

    invoke-direct {p0, v3, v4, v5}, Lru/localscribe/integration/PcmWave;->little(JI)V

    invoke-direct {p0, v1, v2, v5}, Lru/localscribe/integration/PcmWave;->little(JI)V

    iget-object v1, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-wide v1, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    invoke-direct {p0, v1, v2, v0}, Lru/localscribe/integration/PcmWave;->little(JI)V

    iget-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lru/localscribe/integration/PcmWave;->checkpoint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public durationMs()J
    .locals 4

    iget-wide v0, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7d00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public write([BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide v4, 0xffffffdbL

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x2c

    iget-wide v6, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    add-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lru/localscribe/integration/PcmWave;->output:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lru/localscribe/integration/PcmWave;->bytes:J

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u0414\u043e\u0441\u0442\u0438\u0433\u043d\u0443\u0442 \u043f\u0440\u0435\u0434\u0435\u043b WAV 4 \u0413\u0411; \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u0435 \u0437\u0430\u043f\u0438\u0441\u044c"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid PCM16 byte count"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
