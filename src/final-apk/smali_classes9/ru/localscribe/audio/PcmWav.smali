.class public final Lru/localscribe/audio/PcmWav;
.super Ljava/lang/Object;
.source "PcmWav.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPcmWav.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PcmWav.kt\nru/localscribe/audio/PcmWav\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,89:1\n1#2:90\n375#3:91\n375#3:92\n*S KotlinDebug\n*F\n+ 1 PcmWav.kt\nru/localscribe/audio/PcmWav\n*L\n33#1:91\n74#1:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lru/localscribe/audio/PcmWav;",
        "",
        "<init>",
        "()V",
        "normalize",
        "",
        "source",
        "Ljava/io/File;",
        "target",
        "(Ljava/io/File;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field public static final INSTANCE:Lru/localscribe/audio/PcmWav;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/audio/PcmWav;

    invoke-direct {v0}, Lru/localscribe/audio/PcmWav;-><init>()V

    sput-object v0, Lru/localscribe/audio/PcmWav;->INSTANCE:Lru/localscribe/audio/PcmWav;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final normalize(Ljava/io/File;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xc

    cmp-long v0, v5, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gez v0, :cond_0

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const/16 v0, 0xc

    :try_start_1
    new-array v9, v0, [B

    invoke-virtual {v3, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    nop

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v12, 0x4

    invoke-direct {v10, v9, v6, v12, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v11, "RIFF"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v13, 0x8

    invoke-direct {v10, v9, v13, v12, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v11, "WAVE"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v7, v3

    move v14, v4

    goto/16 :goto_d

    :cond_1
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    nop

    const-wide v14, 0xffffffffL

    and-long/2addr v10, v14

    move-wide/from16 v16, v7

    int-to-long v7, v13

    add-long/2addr v10, v7

    nop

    cmp-long v16, v16, v10

    move-wide/from16 v17, v14

    if-gtz v16, :cond_2

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    cmp-long v15, v10, v15

    if-gtz v15, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    move v15, v6

    :goto_0
    if-eqz v15, :cond_15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v19, -0x1

    new-instance v21, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct/range {v21 .. v21}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object/from16 v22, v21

    const/16 v21, 0x0

    move-wide/from16 v23, v19

    :goto_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v19

    add-long v19, v19, v7

    cmp-long v19, v19, v10

    const-wide/16 v25, 0x0

    if-gtz v19, :cond_e

    move-object/from16 v19, p3

    const/16 v27, 0x0

    invoke-interface/range {p3 .. p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    add-int/lit8 v0, v21, 0x1

    const/16 v5, 0x400

    if-gt v0, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_d

    new-array v5, v13, [B

    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    int-to-long v13, v13

    nop

    and-long v13, v13, v17

    nop

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v30

    sub-long v32, v10, v30

    cmp-long v21, v13, v32

    if-gtz v21, :cond_4

    const/16 v21, 0x1

    goto :goto_3

    :cond_4
    move/from16 v21, v6

    :goto_3
    if-eqz v21, :cond_c

    new-instance v6, Ljava/lang/String;

    sget-object v12, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    move/from16 v21, v0

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-direct {v6, v5, v2, v0, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v0, "fmt "

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v15, :cond_5

    const-wide/16 v25, 0x10

    cmp-long v0, v13, v25

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    const/16 v0, 0x10

    new-array v2, v0, [B

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_6

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    const/16 v0, 0x3e80

    if-ne v12, v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    const/16 v0, 0x7d00

    if-ne v12, v0, :cond_6

    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v12

    const/4 v0, 0x2

    if-ne v12, v0, :cond_6

    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v12, 0x10

    if-ne v0, v12, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    nop

    const/4 v2, 0x1

    move/from16 v16, v0

    move v15, v2

    move v2, v4

    move-object v0, v5

    move-object/from16 v6, v22

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    const-string v2, "\u041f\u043e\u0432\u0440\u0435\u0436\u0434\u0451\u043d \u0444\u043e\u0440\u043c\u0430\u0442 WAV"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "data"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    move-object v0, v5

    move-wide/from16 v4, v23

    cmp-long v6, v4, v25

    if-gez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_a

    move-wide/from16 v4, v30

    move-object/from16 v6, v22

    iput-wide v13, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v23, v4

    goto :goto_7

    :cond_a
    move-object/from16 v6, v22

    const/4 v7, 0x0

    const-string v8, "\u041d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u0441\u0435\u043a\u0446\u0438\u0439 \u0430\u0443\u0434\u0438\u043e WAV \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u044e\u0442\u0441\u044f"

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    move v2, v4

    move-object v0, v5

    move-object/from16 v6, v22

    move-wide/from16 v4, v23

    :goto_7
    add-long v4, v30, v13

    move-wide/from16 v25, v4

    const/4 v12, 0x2

    int-to-long v4, v12

    rem-long v4, v13, v4

    add-long v4, v25, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move v4, v2

    move-object/from16 v22, v6

    const/16 v0, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x4

    const/16 v13, 0x8

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_c
    move/from16 v21, v0

    move v2, v4

    move-object v0, v5

    move-object/from16 v6, v22

    move-wide/from16 v4, v23

    const/4 v7, 0x0

    const-string v8, "\u041e\u0431\u0440\u0435\u0437\u0430\u043d\u0430 \u0441\u0435\u043a\u0446\u0438\u044f WAV"

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_d
    move/from16 v21, v0

    move v2, v4

    move-object/from16 v6, v22

    move-wide/from16 v4, v23

    const/4 v0, 0x0

    const-string v7, "\u0421\u043b\u0438\u0448\u043a\u043e\u043c \u043c\u043d\u043e\u0433\u043e \u0441\u0435\u043a\u0446\u0438\u0439 WAV"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v2, v4

    move-object/from16 v6, v22

    move-wide/from16 v4, v23

    if-eqz v15, :cond_f

    cmp-long v0, v4, v25

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_14

    if-nez v16, :cond_10

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_10
    :try_start_2
    iget-wide v7, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v7, v25

    if-lez v0, :cond_11

    iget-wide v7, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v0, 0x2

    int-to-long v12, v0

    rem-long/2addr v7, v12

    cmp-long v0, v7, v25

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_13

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    nop

    :try_start_3
    new-instance v0, Lru/localscribe/audio/WavFile;

    move-object/from16 v7, p2

    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {v0, v7, v13, v12, v8}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    move-object v0, v8

    check-cast v0, Lru/localscribe/audio/WavFile;

    const/4 v12, 0x0

    const/high16 v13, 0x10000

    new-array v13, v13, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-wide/from16 v17, v4

    :try_start_5
    iget-wide v4, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :goto_a
    cmp-long v14, v4, v25

    if-lez v14, :cond_12

    move-object/from16 v14, p3

    const/16 v19, 0x0

    invoke-interface/range {p3 .. p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    array-length v14, v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v19, v6

    int-to-long v6, v14

    :try_start_6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v13, v7, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v0, v13, v6}, Lru/localscribe/audio/WavFile;->writePcm16$app_debug([BI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v14, v2

    move-object v7, v3

    int-to-long v2, v6

    sub-long/2addr v4, v2

    move-object v3, v7

    move v2, v14

    move-object/from16 v6, v19

    move-object/from16 v7, p2

    goto :goto_a

    :catchall_0
    move-exception v0

    move v14, v2

    move-object v7, v3

    move-object v2, v0

    goto :goto_b

    :cond_12
    move v14, v2

    move-object v7, v3

    move-object/from16 v19, v6

    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/16 v29, 0x1

    :try_start_9
    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move v14, v2

    move-object v7, v3

    move-object/from16 v19, v6

    move-object v2, v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move v14, v2

    move-object v7, v3

    move-wide/from16 v17, v4

    move-object/from16 v19, v6

    move-object v2, v0

    :goto_b
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_c

    :catchall_6
    move-exception v0

    move v14, v2

    move-object v7, v3

    move-wide/from16 v17, v4

    move-object/from16 v19, v6

    :goto_c
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    nop

    throw v0

    :cond_13
    move v14, v2

    move-object v7, v3

    move-wide/from16 v17, v4

    move-object/from16 v19, v6

    const/4 v0, 0x0

    const-string v2, "\u041f\u0443\u0441\u0442\u043e\u0435 \u0438\u043b\u0438 \u043e\u0431\u0440\u0435\u0437\u0430\u043d\u043d\u043e\u0435 \u0430\u0443\u0434\u0438\u043e WAV"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v14, v2

    move-object v7, v3

    move-wide/from16 v17, v4

    move-object/from16 v19, v6

    const/4 v0, 0x0

    const-string v2, "WAV \u043d\u0435 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u0442 \u0444\u043e\u0440\u043c\u0430\u0442 \u0438\u043b\u0438 \u0430\u0443\u0434\u0438\u043e"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v7, v3

    move v14, v4

    const/4 v0, 0x0

    const-string v2, "\u041f\u043e\u0432\u0440\u0435\u0436\u0434\u0451\u043d \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a WAV"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object v7, v3

    move v14, v4

    :goto_d
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
