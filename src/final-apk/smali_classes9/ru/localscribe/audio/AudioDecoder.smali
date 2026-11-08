.class public final Lru/localscribe/audio/AudioDecoder;
.super Ljava/lang/Object;
.source "AudioDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioDecoder.kt\nru/localscribe/audio/AudioDecoder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n295#2,2:147\n375#3:149\n1#4:150\n*S KotlinDebug\n*F\n+ 1 AudioDecoder.kt\nru/localscribe/audio/AudioDecoder\n*L\n22#1:147,2\n48#1:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0086@\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lru/localscribe/audio/AudioDecoder;",
        "",
        "<init>",
        "()V",
        "decode",
        "",
        "source",
        "Ljava/io/File;",
        "target",
        "progress",
        "Lkotlin/Function1;",
        "",
        "(Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "channel-count"

    const-string v5, "sample-rate"

    const-string v6, "durationUs"

    const-string v7, "pcm-encoding"

    instance-of v8, v3, Lru/localscribe/audio/AudioDecoder$decode$1;

    if-eqz v8, :cond_0

    move-object v8, v3

    check-cast v8, Lru/localscribe/audio/AudioDecoder$decode$1;

    iget v9, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->label:I

    const/high16 v10, -0x80000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    iget v9, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->label:I

    sub-int/2addr v9, v10

    iput v9, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v8, Lru/localscribe/audio/AudioDecoder$decode$1;

    invoke-direct {v8, v1, v3}, Lru/localscribe/audio/AudioDecoder$decode$1;-><init>(Lru/localscribe/audio/AudioDecoder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v9, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    iget v11, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->label:I

    const/4 v12, 0x1

    packed-switch v11, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v10, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->L$1:Ljava/lang/Object;

    move-object v2, v11

    check-cast v2, Ljava/io/File;

    iget-object v11, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->L$0:Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, Ljava/io/File;

    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v9

    move-object v13, v10

    move-object v10, v2

    move-object v2, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v11, Lru/localscribe/audio/PcmWav;->INSTANCE:Lru/localscribe/audio/PcmWav;

    iput-object v0, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->L$1:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->L$2:Ljava/lang/Object;

    iput v12, v8, Lru/localscribe/audio/AudioDecoder$decode$1;->label:I

    invoke-virtual {v11, v0, v2, v8}, Lru/localscribe/audio/PcmWav;->normalize(Ljava/io/File;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_1

    return-object v10

    :cond_1
    move-object v10, v2

    move-object v2, v0

    :goto_1
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_2
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    move-object v14, v0

    const/4 v15, 0x0

    nop

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v12, 0x0

    invoke-static {v12, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v16, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1c

    const-string v11, "mime"

    if-eqz v18, :cond_6

    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v19

    move/from16 v20, v19

    const/16 v19, 0x0

    nop

    nop

    move/from16 v12, v20

    move-object/from16 v20, v0

    invoke-virtual {v14, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    nop

    const-string v1, "audio/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v0, v1, v8, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v8

    nop

    :cond_4
    const/4 v0, 0x0

    :goto_3
    nop

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v0, v20

    move-object/from16 v2, v22

    move-object/from16 v8, v23

    const/4 v12, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    move-object v1, v0

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_6
    move-object/from16 v20, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    const/16 v18, 0x0

    :goto_4
    :try_start_3
    check-cast v18, Ljava/lang/Integer;

    if-eqz v18, :cond_21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    invoke-virtual {v14, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v14, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "getTrackFormat(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1b

    move v8, v0

    move v3, v1

    if-eqz v8, :cond_7

    :try_start_4
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_7
    const-wide/16 v16, 0x0

    :goto_5
    nop

    move-wide/from16 v18, v16

    :try_start_5
    invoke-virtual {v2, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    const/4 v8, 0x2

    :try_start_6
    invoke-virtual {v2, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_19

    const/4 v8, 0x0

    const/4 v11, 0x0

    :try_start_7
    invoke-virtual {v6, v2, v8, v8, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_18

    :try_start_8
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    const/4 v8, 0x0

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    const/4 v8, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    const/4 v8, 0x0

    const/4 v8, 0x2

    const/4 v15, 0x0

    new-instance v0, Lru/localscribe/core/Resampler;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_19

    move-object/from16 v20, v2

    move/from16 v31, v3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    invoke-direct {v0, v11, v3, v1, v2}, Lru/localscribe/core/Resampler;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_17

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :try_start_a
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v32, v0

    new-instance v0, Lru/localscribe/audio/WavFile;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_19

    move-object/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_b
    invoke-direct {v0, v10, v3, v1, v2}, Lru/localscribe/audio/WavFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_17

    :try_start_c
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_19

    :try_start_d
    move-object v0, v1

    check-cast v0, Lru/localscribe/audio/WavFile;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_14

    move-object v2, v0

    const/4 v3, 0x0

    move/from16 v33, v3

    move v3, v12

    move/from16 v34, v15

    move v12, v8

    move v15, v11

    move-object/from16 v8, v24

    move/from16 v11, v25

    :goto_6
    if-nez v34, :cond_1e

    move-object/from16 v0, v23

    const/16 v24, 0x0

    :try_start_e
    invoke-interface/range {v23 .. v23}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_11

    const/4 v0, 0x0

    const/16 v24, 0x0

    move/from16 v35, v24

    move/from16 v24, v0

    move/from16 v0, v35

    move/from16 v35, v26

    :goto_7
    move-object/from16 v36, v9

    const/16 v9, 0x8

    if-ge v0, v9, :cond_b

    if-nez v35, :cond_a

    move-object/from16 v37, v10

    const-wide/16 v9, 0x0

    :try_start_f
    invoke-virtual {v6, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v25

    move/from16 v9, v25

    if-ltz v9, :cond_9

    const/4 v10, 0x1

    move-object/from16 v24, p0

    check-cast v24, Lru/localscribe/audio/AudioDecoder;

    move-object/from16 v38, v24

    const/16 v39, 0x0

    invoke-virtual {v6, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v40, v24

    move/from16 v41, v0

    move-object/from16 v27, v6

    move-object/from16 v0, v40

    const/4 v6, 0x0

    :try_start_10
    invoke-virtual {v14, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v24
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move/from16 v6, v24

    if-gez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    nop

    const/16 v26, 0x0

    move-object/from16 v24, v27

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x4

    move/from16 v25, v9

    :try_start_11
    invoke-virtual/range {v24 .. v30}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/16 v35, 0x1

    move/from16 v27, v6

    move-object/from16 v6, v24

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v5, v1

    move/from16 v26, v3

    move/from16 v25, v11

    move-wide/from16 v40, v18

    move-object/from16 v6, v24

    move-object/from16 v11, v32

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :cond_8
    move/from16 v25, v9

    move-object/from16 v24, v27

    :try_start_12
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v26, 0x0

    move/from16 v27, v6

    invoke-virtual/range {v24 .. v30}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v6, v24

    :try_start_13
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->advance()Z

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :goto_8
    nop

    nop

    add-int/lit8 v0, v41, 0x1

    move/from16 v24, v10

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v6, v24

    move-object v5, v1

    move/from16 v26, v3

    move/from16 v25, v11

    move-wide/from16 v40, v18

    move-object/from16 v11, v32

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :catchall_4
    move-exception v0

    move-object/from16 v6, v27

    move-object v5, v1

    move/from16 v26, v3

    move/from16 v25, v11

    move-wide/from16 v40, v18

    move-object/from16 v11, v32

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :cond_9
    move/from16 v41, v0

    move/from16 v25, v9

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v5, v1

    move/from16 v26, v3

    move/from16 v25, v11

    move-wide/from16 v40, v18

    move-object/from16 v11, v32

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :cond_a
    move/from16 v41, v0

    move-object/from16 v37, v10

    goto :goto_9

    :cond_b
    move/from16 v41, v0

    move-object/from16 v37, v10

    :goto_9
    if-eqz v24, :cond_c

    const-wide/16 v9, 0x0

    goto :goto_a

    :cond_c
    const-wide/16 v9, 0x2710

    :goto_a
    move/from16 v25, v11

    move-object/from16 v11, v32

    :try_start_14
    invoke-virtual {v6, v11, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    move v9, v0

    const/4 v0, -0x2

    if-ne v9, v0, :cond_15

    :try_start_15
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v10, "getOutputFormat(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    if-eqz v25, :cond_e

    if-ne v10, v15, :cond_d

    goto :goto_b

    :cond_d
    const/16 v27, 0x0

    goto :goto_c

    :cond_e
    :goto_b
    const/16 v27, 0x1

    :goto_c
    if-eqz v27, :cond_14

    move v15, v10

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v27
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move/from16 v3, v27

    nop

    :try_start_16
    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v27
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    if-eqz v27, :cond_f

    :try_start_17
    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v27
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_d

    :cond_f
    const/16 v27, 0x2

    :goto_d
    move/from16 v12, v27

    move-object/from16 v27, v0

    const/4 v0, 0x2

    if-eq v12, v0, :cond_11

    const/4 v0, 0x4

    if-ne v12, v0, :cond_10

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_13

    if-nez v25, :cond_12

    :try_start_18
    new-instance v0, Lru/localscribe/core/Resampler;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    move/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_19
    invoke-direct {v0, v15, v5, v3, v4}, Lru/localscribe/core/Resampler;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v0

    move-object/from16 v32, v11

    move/from16 v11, v25

    move/from16 v3, v26

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move/from16 v26, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_6

    :cond_12
    move/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v32, v11

    move/from16 v11, v25

    move/from16 v26, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_6

    :cond_13
    move/from16 v26, v3

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0414\u0435\u043a\u043e\u0434\u0435\u0440 \u0432\u0435\u0440\u043d\u0443\u043b \u043d\u0435\u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u043c\u044b\u0439 PCM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :catchall_6
    move-exception v0

    move-object v5, v1

    move-wide/from16 v40, v18

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :catchall_7
    move-exception v0

    move/from16 v26, v3

    move-object v5, v1

    move-wide/from16 v40, v18

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :cond_14
    move-object/from16 v27, v0

    const/4 v0, 0x0

    :try_start_1a
    const-string v4, "\u0421\u043c\u0435\u043d\u0430 \u0447\u0430\u0441\u0442\u043e\u0442\u044b \u043f\u043e\u0441\u0440\u0435\u0434\u0438 \u0434\u043e\u0440\u043e\u0436\u043a\u0438 \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :catchall_8
    move-exception v0

    move-object v5, v1

    move/from16 v26, v3

    move-wide/from16 v40, v18

    move/from16 v3, v35

    const/4 v2, 0x0

    move-object v1, v0

    goto/16 :goto_19

    :cond_15
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    if-ltz v9, :cond_1d

    nop

    :try_start_1b
    iget v0, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_1b

    nop

    invoke-virtual {v6, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v4, 0x4

    if-ne v12, v4, :cond_16

    const/4 v4, 0x4

    goto :goto_10

    :cond_16
    const/4 v4, 0x2

    :goto_10
    nop

    iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v10, v4, v3

    div-int/2addr v5, v10

    new-array v10, v5, [F
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    move-object/from16 v27, v0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v5, :cond_19

    const/16 v30, 0x0

    move/from16 v32, v0

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_18

    move/from16 v38, v0

    const/16 v39, 0x0

    nop

    move/from16 v40, v0

    const/4 v0, 0x4

    if-ne v4, v0, :cond_17

    :try_start_1c
    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    goto :goto_13

    :cond_17
    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    int-to-float v0, v0

    const/high16 v41, 0x47000000    # 32768.0f

    div-float v0, v0, v41

    :goto_13
    add-float v30, v30, v0

    nop

    add-int/lit8 v0, v40, 0x1

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v5, v1

    move/from16 v38, v3

    move-wide/from16 v40, v18

    goto/16 :goto_16

    :cond_18
    int-to-float v0, v3

    div-float v0, v30, v0

    move/from16 v38, v3

    const/high16 v3, -0x40800000    # -1.0f

    move/from16 v39, v4

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_1d
    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, v10, v32
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    add-int/lit8 v0, v32, 0x1

    move/from16 v3, v38

    move/from16 v4, v39

    goto :goto_11

    :catchall_a
    move-exception v0

    move-object v5, v1

    move-wide/from16 v40, v18

    goto/16 :goto_16

    :cond_19
    move/from16 v38, v3

    move/from16 v39, v4

    move/from16 v21, v5

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1e
    invoke-static {v8, v10, v4, v0, v3}, Lru/localscribe/core/Resampler;->push$default(Lru/localscribe/core/Resampler;[FZILjava/lang/Object;)[F

    move-result-object v5

    invoke-virtual {v2, v5}, Lru/localscribe/audio/WavFile;->write([F)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    const/4 v3, 0x1

    const-wide/16 v16, 0x0

    cmp-long v4, v18, v16

    if-lez v4, :cond_1a

    nop

    nop

    :try_start_1f
    iget-wide v4, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    long-to-double v4, v4

    move/from16 v25, v3

    move-wide/from16 v40, v4

    move-wide/from16 v3, v18

    move-object v5, v1

    long-to-double v0, v3

    div-double v0, v40, v0

    double-to-float v0, v0

    const/4 v1, 0x0

    move-wide/from16 v40, v3

    const/high16 v3, 0x3f800000    # 1.0f

    :try_start_20
    invoke-static {v0, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :catchall_b
    move-exception v0

    move-object v5, v1

    move/from16 v25, v3

    move-wide/from16 v40, v18

    goto :goto_16

    :cond_1a
    move-object v5, v1

    move/from16 v25, v3

    move-wide/from16 v40, v18

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_14

    :catchall_c
    move-exception v0

    move-object v5, v1

    move-wide/from16 v40, v18

    goto :goto_16

    :cond_1b
    move-object v5, v1

    move/from16 v38, v3

    move-wide/from16 v40, v18

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v16, 0x0

    :goto_14
    nop

    iget v0, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    const/16 v26, 0x4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    :goto_15
    move/from16 v34, v0

    const/4 v4, 0x0

    :try_start_21
    invoke-virtual {v6, v9, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object v1, v5

    move-object/from16 v32, v11

    move/from16 v11, v25

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move/from16 v26, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move/from16 v3, v38

    move-wide/from16 v18, v40

    goto/16 :goto_6

    :catchall_d
    move-exception v0

    goto :goto_16

    :catchall_e
    move-exception v0

    move-object v5, v1

    move/from16 v38, v3

    move-wide/from16 v40, v18

    :goto_16
    move-object v1, v6

    check-cast v1, Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    :catchall_f
    move-exception v0

    move-object v1, v0

    move/from16 v3, v35

    move/from16 v26, v38

    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_1d
    move-object v5, v1

    move/from16 v38, v3

    move-wide/from16 v40, v18

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v16, 0x0

    move-object/from16 v32, v11

    move/from16 v11, v25

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move/from16 v26, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    move/from16 v3, v38

    goto/16 :goto_6

    :catchall_10
    move-exception v0

    move-object v5, v1

    move/from16 v38, v3

    move-wide/from16 v40, v18

    move-object v1, v0

    move/from16 v3, v35

    move/from16 v26, v38

    const/4 v2, 0x0

    goto/16 :goto_19

    :catchall_11
    move-exception v0

    move-object v5, v1

    move/from16 v38, v3

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move/from16 v25, v11

    move-wide/from16 v40, v18

    move-object/from16 v11, v32

    move-object v1, v0

    move/from16 v3, v26

    move/from16 v26, v38

    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_1e
    move-object v5, v1

    move/from16 v38, v3

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move/from16 v25, v11

    move-wide/from16 v40, v18

    move-object/from16 v11, v32

    const/4 v3, 0x0

    :try_start_22
    new-array v0, v3, [F

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lru/localscribe/core/Resampler;->push([FZ)[F

    move-result-object v0

    invoke-virtual {v2, v0}, Lru/localscribe/audio/WavFile;->write([F)V

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    const/4 v2, 0x0

    :try_start_23
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_16

    :try_start_24
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lru/localscribe/audio/AudioDecoder;

    const/4 v1, 0x0

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_17

    :cond_1f
    move-object v11, v2

    :goto_17
    invoke-static {v11}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    :cond_20
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->release()V

    nop

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_13
    move-exception v0

    const/4 v2, 0x0

    move-object v1, v0

    move/from16 v3, v26

    move/from16 v26, v38

    goto :goto_19

    :catchall_14
    move-exception v0

    move-object v5, v1

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move v1, v11

    move-wide/from16 v40, v18

    move-object/from16 v11, v32

    const/4 v2, 0x0

    move/from16 v34, v15

    move/from16 v3, v26

    move v15, v1

    move/from16 v26, v12

    move-object v1, v0

    move v12, v8

    move-object/from16 v8, v24

    :goto_19
    :try_start_25
    throw v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    :catchall_15
    move-exception v0

    :try_start_26
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    :catchall_16
    move-exception v0

    move-object v1, v0

    move-object v15, v6

    goto :goto_1a

    :catchall_17
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v1, v0

    move-object v15, v6

    goto :goto_1a

    :catchall_18
    move-exception v0

    move-object v2, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v1, v0

    move-object v15, v6

    goto :goto_1a

    :catchall_19
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v2, 0x0

    move-object v1, v0

    move-object v15, v6

    goto :goto_1a

    :cond_21
    move-object/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v2, 0x0

    :try_start_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u0410\u0443\u0434\u0438\u043e\u0434\u043e\u0440\u043e\u0436\u043a\u0430 \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u0430"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1a

    :catchall_1a
    move-exception v0

    move-object v1, v0

    goto :goto_1a

    :catchall_1b
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v2, 0x0

    move-object v1, v0

    goto :goto_1a

    :catchall_1c
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v2, 0x0

    move-object v1, v0

    :goto_1a
    :try_start_28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    const/4 v3, 0x0

    move-object v4, v15

    check-cast v4, Landroid/media/MediaCodec;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1b

    :cond_22
    move-object v11, v2

    :goto_1b
    invoke-static {v11}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1d

    goto :goto_1c

    :catchall_1d
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    move-object v0, v15

    check-cast v0, Landroid/media/MediaCodec;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_23
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->release()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
