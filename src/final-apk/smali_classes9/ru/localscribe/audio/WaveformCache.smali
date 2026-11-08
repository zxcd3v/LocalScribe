.class public final Lru/localscribe/audio/WaveformCache;
.super Ljava/lang/Object;
.source "WaveformPeaks.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaveformPeaks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveformPeaks.kt\nru/localscribe/audio/WaveformCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,90:1\n1#2:91\n375#3:92\n375#3:96\n13920#4,3:93\n13840#4,2:97\n*S KotlinDebug\n*F\n+ 1 WaveformPeaks.kt\nru/localscribe/audio/WaveformCache\n*L\n28#1:92\n38#1:96\n31#1:93,3\n44#1:97,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lru/localscribe/audio/WaveformCache;",
        "",
        "<init>",
        "()V",
        "read",
        "Lru/localscribe/audio/WaveformPeaks;",
        "wav",
        "Ljava/io/File;",
        "cache",
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

.field public static final INSTANCE:Lru/localscribe/audio/WaveformCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/audio/WaveformCache;

    invoke-direct {v0}, Lru/localscribe/audio/WaveformCache;-><init>()V

    sput-object v0, Lru/localscribe/audio/WaveformCache;->INSTANCE:Lru/localscribe/audio/WaveformCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/io/File;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/audio/WaveformPeaks;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Check failed."

    sget-object v0, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v1, v4, v5, v6}, Lru/localscribe/audio/WavFile$Companion;->isCanonical$default(Lru/localscribe/audio/WavFile$Companion;Ljava/io/File;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const/16 v0, 0x2c

    int-to-long v11, v0

    sub-long v11, v7, v11

    int-to-long v13, v5

    div-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const-string v13, "Failed requirement."

    if-eqz v0, :cond_f

    const-wide/16 v14, 0x800

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    const/high16 v18, 0x3f800000    # 1.0f

    const v15, 0x4c535750    # 5.540179E7f

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lru/localscribe/audio/WaveformCache;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/io/DataInputStream;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v5, v15, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v21

    cmp-long v5, v21, v7

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v21

    cmp-long v5, v21, v9

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v14, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-wide/from16 v22, v11

    goto/16 :goto_6

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_6

    move/from16 v22, v15

    const/16 v23, 0x0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v25, v24

    const/16 v26, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const v28, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v27, v27, v28

    if-gtz v27, :cond_2

    const/16 v27, 0x1

    goto :goto_3

    :cond_2
    const/16 v27, 0x0

    :goto_3
    if-eqz v27, :cond_4

    const/16 v27, 0x0

    cmpg-float v27, v27, v25

    if-gtz v27, :cond_3

    cmpg-float v27, v25, v18

    if-gtz v27, :cond_3

    const/16 v27, 0x1

    goto :goto_4

    :cond_3
    const/16 v27, 0x0

    :goto_4
    if-eqz v27, :cond_4

    const/16 v27, 0x1

    goto :goto_5

    :cond_4
    const/16 v27, 0x0

    :goto_5
    if-eqz v27, :cond_5

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v24}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v27

    goto :goto_2

    :cond_5
    move-object/from16 v27, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object/from16 v27, v0

    :try_start_5
    check-cast v5, Ljava/util/List;

    move-object/from16 v31, v5

    new-instance v28, Lru/localscribe/audio/WaveformPeaks;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v22, v11

    const/16 v5, 0x3e8

    int-to-long v11, v5

    mul-long v11, v11, v22

    move-wide/from16 v24, v11

    const/16 v5, 0x3e80

    int-to-long v11, v5

    :try_start_6
    div-long v29, v24, v11

    const/16 v34, 0xc

    const/16 v35, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v28 .. v35}, Lru/localscribe/audio/WaveformPeaks;-><init>(JLjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v5, 0x0

    :try_start_7
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return-object v28

    :cond_7
    move-object/from16 v27, v0

    move-wide/from16 v22, v11

    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-wide/from16 v22, v11

    move-object v5, v0

    :goto_6
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-wide/from16 v22, v11

    :goto_7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v14, [F

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;

    :try_start_b
    move-object v0, v5

    check-cast v0, Ljava/io/RandomAccessFile;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    :goto_8
    cmp-long v13, v11, v22

    if-gez v13, :cond_b

    move-object/from16 v13, p3

    const/4 v15, 0x0

    :try_start_c
    invoke-interface/range {p3 .. p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    sget-object v13, Lru/localscribe/audio/WavFile;->Companion:Lru/localscribe/audio/WavFile$Companion;

    const/16 v15, 0x4000

    invoke-virtual {v13, v0, v11, v12, v15}, Lru/localscribe/audio/WavFile$Companion;->read(Ljava/io/RandomAccessFile;JI)[F

    move-result-object v13

    array-length v15, v13

    if-nez v15, :cond_8

    const/4 v15, 0x1

    goto :goto_9

    :cond_8
    const/4 v15, 0x0

    :goto_9
    if-nez v15, :cond_a

    move-object v15, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v24, v0

    array-length v0, v15

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_9

    aget v25, v15, v1

    add-int/lit8 v26, v20, 0x1

    move/from16 v27, v25

    const/16 v28, 0x0

    move/from16 v29, v0

    move-wide/from16 v30, v11

    move/from16 v0, v20

    int-to-long v11, v0

    add-long v11, v30, v11

    move/from16 v32, v1

    int-to-long v0, v14

    mul-long/2addr v11, v0

    div-long v11, v11, v22

    long-to-int v0, v11

    add-int/lit8 v1, v14, -0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    aget v1, v4, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move/from16 v12, v18

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v4, v0

    nop

    add-int/lit8 v1, v32, 0x1

    move/from16 v18, v12

    move/from16 v20, v26

    move/from16 v0, v29

    move-wide/from16 v11, v30

    goto :goto_a

    :cond_9
    move-wide/from16 v30, v11

    move/from16 v12, v18

    array-length v0, v13

    int-to-long v0, v0

    add-long v0, v30, v0

    move/from16 v18, v12

    move-wide v11, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    goto :goto_8

    :cond_a
    move-object/from16 v24, v0

    move-wide/from16 v30, v11

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v4

    goto/16 :goto_e

    :cond_b
    move-object/from16 v24, v0

    move-wide/from16 v30, v11

    :try_start_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    const/4 v1, 0x0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-interface/range {p3 .. p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".part"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    nop

    :try_start_e
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v5, Ljava/io/OutputStream;

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :try_start_f
    move-object v0, v5

    check-cast v0, Ljava/io/DataOutputStream;

    const/4 v6, 0x0

    const v11, 0x4c535750    # 5.540179E7f

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v11, v4

    const/4 v12, 0x0

    array-length v13, v11

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v13, :cond_d

    aget v16, v11, v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move/from16 v17, v16

    const/16 v18, 0x0

    move-object/from16 v19, v4

    move/from16 v4, v17

    :try_start_10
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v19

    goto :goto_b

    :cond_d
    move-object/from16 v19, v4

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    const/4 v4, 0x0

    :try_start_11
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v24, Lru/localscribe/audio/WaveformPeaks;

    const/16 v5, 0x3e8

    int-to-long v3, v5

    mul-long v11, v22, v3

    const/16 v5, 0x3e80

    int-to-long v3, v5

    div-long v25, v11, v3

    invoke-static/range {v19 .. v19}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v27

    const/16 v30, 0xc

    const/16 v31, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v24 .. v31}, Lru/localscribe/audio/WaveformPeaks;-><init>(JLjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v24

    :cond_e
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v19, v4

    move-object v3, v0

    :goto_c
    :try_start_13
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception v0

    :try_start_14
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object/from16 v19, v4

    :goto_d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    :catchall_c
    move-exception v0

    move-object/from16 v19, v4

    move-object v1, v0

    :goto_e
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0414\u043b\u044f \u0430\u0443\u0434\u0438\u043e\u0432\u043e\u043b\u043d\u044b \u043d\u0443\u0436\u0435\u043d \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u0439 PCM"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
