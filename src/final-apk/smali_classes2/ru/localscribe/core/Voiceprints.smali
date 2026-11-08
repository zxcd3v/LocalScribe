.class public final Lru/localscribe/core/Voiceprints;
.super Ljava/lang/Object;
.source "Voiceprint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Voiceprints$Match;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoiceprint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Voiceprint.kt\nru/localscribe/core/Voiceprints\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n774#2:83\n865#2,2:84\n1563#2:86\n1634#2,3:87\n1068#2:90\n774#2:91\n865#2,2:92\n1056#2:94\n1563#2:95\n1634#2,3:96\n1761#2,3:99\n1761#2,3:102\n1#3:105\n*S KotlinDebug\n*F\n+ 1 Voiceprint.kt\nru/localscribe/core/Voiceprints\n*L\n35#1:83\n35#1:84,2\n42#1:86\n42#1:87,3\n43#1:90\n54#1:91\n54#1:92,2\n62#1:94\n71#1:95\n71#1:96,3\n73#1:99,3\n75#1:102,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007J\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/localscribe/core/Voiceprints;",
        "",
        "<init>",
        "()V",
        "match",
        "Lru/localscribe/core/Voiceprints$Match;",
        "voice",
        "",
        "",
        "model",
        "",
        "profiles",
        "Lru/localscribe/core/VoiceProfile;",
        "enrollment",
        "segments",
        "Lru/localscribe/core/Segment;",
        "Match",
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


# static fields
.field public static final INSTANCE:Lru/localscribe/core/Voiceprints;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/Voiceprints;

    invoke-direct {v0}, Lru/localscribe/core/Voiceprints;-><init>()V

    sput-object v0, Lru/localscribe/core/Voiceprints;->INSTANCE:Lru/localscribe/core/Voiceprints;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final enrollment(Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "segments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lru/localscribe/core/Segment;

    const/4 v12, 0x0

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getEmbeddingSource()Ljava/lang/String;

    move-result-object v13

    const-string v14, "utterance"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v13

    const-string v14, "preliminary"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v13

    if-nez v13, :cond_1

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getOverlap()Ljava/lang/String;

    move-result-object v13

    const-string v14, "detected"

    const/4 v15, 0x2

    invoke-static {v13, v14, v10, v15, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v13

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x320

    cmp-long v8, v13, v15

    if-ltz v8, :cond_1

    sget-object v8, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v11}, Lru/localscribe/core/Segment;->getEmbedding()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v13

    invoke-virtual {v8, v13}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    nop

    check-cast v3, Ljava/util/List;

    nop

    check-cast v3, Ljava/lang/Iterable;

    nop

    const/4 v1, 0x0

    new-instance v2, Lru/localscribe/core/Voiceprints$enrollment$$inlined$sortedBy$1;

    invoke-direct {v2}, Lru/localscribe/core/Voiceprints$enrollment$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    nop

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Segment;

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v11

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v13

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v11

    add-long/2addr v4, v11

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0xbb8

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    return-object v8

    :cond_4
    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    move-object v12, v6

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lru/localscribe/core/Segment;

    const/16 v17, 0x0

    move-object/from16 v18, v8

    sget-object v8, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/core/Segment;->getEmbedding()Ljava/util/List;

    move-result-object v19

    check-cast v19, Ljava/util/Collection;

    invoke-static/range {v19 .. v19}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v9

    invoke-virtual {v8, v9}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v18

    goto :goto_3

    :cond_5
    move-object/from16 v18, v8

    move-object v8, v11

    check-cast v8, Ljava/util/List;

    nop

    nop

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    array-length v6, v6

    move-object v7, v8

    check-cast v7, Ljava/lang/Iterable;

    const/4 v9, 0x0

    instance-of v11, v7, Ljava/util/Collection;

    if-eqz v11, :cond_6

    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    move v7, v10

    goto :goto_5

    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, [F

    const/4 v14, 0x0

    array-length v15, v13

    if-eq v15, v6, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    move v13, v10

    :goto_4
    if-eqz v13, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    move v7, v10

    :goto_5
    if-eqz v7, :cond_a

    return-object v18

    :cond_a
    move-object v7, v8

    check-cast v7, Ljava/lang/Iterable;

    const/4 v9, 0x0

    instance-of v11, v7, Ljava/util/Collection;

    if-eqz v11, :cond_b

    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v21, v1

    move v9, v10

    goto/16 :goto_a

    :cond_b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, [F

    const/4 v14, 0x0

    move-object v15, v8

    check-cast v15, Ljava/lang/Iterable;

    const/16 v16, 0x0

    instance-of v10, v15, Ljava/util/Collection;

    if-eqz v10, :cond_c

    move-object v10, v15

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    move-object/from16 v21, v1

    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, [F

    const/16 v20, 0x0

    move-object/from16 v21, v1

    sget-object v1, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v1, v13, v0}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v1

    const/high16 v22, 0x3f400000    # 0.75f

    cmpg-float v1, v1, v22

    if-gez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    goto :goto_7

    :cond_f
    move-object/from16 v21, v1

    const/4 v0, 0x0

    :goto_9
    nop

    if-eqz v0, :cond_10

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    const/4 v10, 0x0

    goto :goto_6

    :cond_11
    move-object/from16 v21, v1

    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_12

    return-object v18

    :cond_12
    nop

    sget-object v0, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    new-array v1, v6, [F

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v6, :cond_14

    move-object v7, v8

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v11, 0x0

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    nop

    const/4 v13, 0x0

    aget v14, v9, v10

    float-to-double v13, v14

    add-double/2addr v11, v13

    goto :goto_c

    :cond_13
    double-to-float v7, v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    aput v7, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v0, v1}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v0

    if-eqz v0, :cond_15

    nop

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_15
    move-object/from16 v0, v18

    :goto_d
    return-object v0
.end method

.method public final match(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lru/localscribe/core/Voiceprints$Match;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceProfile;",
            ">;)",
            "Lru/localscribe/core/Voiceprints$Match;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "voice"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "model"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "profiles"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    sget-object v3, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v5

    invoke-virtual {v3, v5}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v3

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    nop

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    move-object v8, v5

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lru/localscribe/core/VoiceProfile;

    const/4 v15, 0x0

    invoke-virtual {v14}, Lru/localscribe/core/VoiceProfile;->getEnabled()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v4

    invoke-virtual {v14}, Lru/localscribe/core/VoiceProfile;->getModelSha256()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v14}, Lru/localscribe/core/VoiceProfile;->getEmbedding()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v12, v3

    if-ne v4, v12, :cond_5

    invoke-virtual {v14}, Lru/localscribe/core/VoiceProfile;->getThreshold()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v14}, Lru/localscribe/core/VoiceProfile;->getThreshold()F

    move-result v4

    const v12, 0x3f266666    # 0.65f

    cmpg-float v12, v12, v4

    if-gtz v12, :cond_3

    const v12, 0x3f733333    # 0.95f

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v16, v4

    :cond_5
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_6

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v4, v16

    goto :goto_0

    :cond_7
    move-object/from16 v16, v4

    move-object v4, v7

    check-cast v4, Ljava/util/List;

    nop

    check-cast v4, Ljava/lang/Iterable;

    nop

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/core/VoiceProfile;

    const/4 v12, 0x0

    new-instance v14, Lru/localscribe/core/Voiceprints$Match;

    sget-object v15, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v11}, Lru/localscribe/core/VoiceProfile;->getEmbedding()Ljava/util/List;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v13

    invoke-virtual {v15, v3, v13}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v13

    invoke-direct {v14, v11, v13}, Lru/localscribe/core/Voiceprints$Match;-><init>(Lru/localscribe/core/VoiceProfile;F)V

    invoke-interface {v6, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    nop

    check-cast v6, Ljava/util/List;

    nop

    check-cast v6, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v5, Lru/localscribe/core/Voiceprints$match$$inlined$sortedByDescending$1;

    invoke-direct {v5}, Lru/localscribe/core/Voiceprints$match$$inlined$sortedByDescending$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/localscribe/core/Voiceprints$Match;

    if-nez v5, :cond_9

    return-object v16

    :cond_9
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6}, Lru/localscribe/core/Voiceprints$Match;->getSimilarity()F

    move-result v8

    invoke-virtual {v6}, Lru/localscribe/core/Voiceprints$Match;->getProfile()Lru/localscribe/core/VoiceProfile;

    move-result-object v9

    invoke-virtual {v9}, Lru/localscribe/core/VoiceProfile;->getThreshold()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    invoke-virtual {v6}, Lru/localscribe/core/Voiceprints$Match;->getSimilarity()F

    move-result v8

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/localscribe/core/Voiceprints$Match;

    invoke-virtual {v10}, Lru/localscribe/core/Voiceprints$Match;->getSimilarity()F

    move-result v10

    sub-float/2addr v8, v10

    const v10, 0x3da3d70a    # 0.08f

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_b

    :cond_a
    move v12, v9

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_c

    move-object/from16 v16, v5

    :cond_c
    return-object v16
.end method
