.class public final Lru/localscribe/core/SessionSpeakers;
.super Ljava/lang/Object;
.source "SessionSpeakers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/SessionSpeakers$Candidate;,
        Lru/localscribe/core/SessionSpeakers$Observation;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionSpeakers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionSpeakers.kt\nru/localscribe/core/SessionSpeakers\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n774#2:105\n865#2,2:106\n1869#2,2:108\n295#2,2:110\n2746#2,3:112\n1563#2:115\n1634#2,3:116\n*S KotlinDebug\n*F\n+ 1 SessionSpeakers.kt\nru/localscribe/core/SessionSpeakers\n*L\n18#1:105\n18#1:106,2\n25#1:108,2\n48#1:110,2\n55#1:112,3\n83#1:115\n83#1:116,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u001f B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014J \u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0010J0\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0014\u0008\u0002\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lru/localscribe/core/SessionSpeakers;",
        "",
        "settings",
        "Lru/localscribe/core/Settings;",
        "cluster",
        "Lru/localscribe/core/SpeakerCluster;",
        "<init>",
        "(Lru/localscribe/core/Settings;Lru/localscribe/core/SpeakerCluster;)V",
        "getCluster",
        "()Lru/localscribe/core/SpeakerCluster;",
        "candidates",
        "",
        "Lru/localscribe/core/SessionSpeakers$Candidate;",
        "trainedThrough",
        "",
        "",
        "",
        "restore",
        "",
        "segments",
        "",
        "Lru/localscribe/core/Segment;",
        "observe",
        "Lru/localscribe/core/SessionSpeakers$Observation;",
        "raw",
        "",
        "start",
        "end",
        "resolve",
        "aliases",
        "",
        "Candidate",
        "Observation",
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


# instance fields
.field private final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/SessionSpeakers$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private final cluster:Lru/localscribe/core/SpeakerCluster;

.field private final settings:Lru/localscribe/core/Settings;

.field private final trainedThrough:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5kK9VIK1xjBMyCXOekVIcKLnCl4([FLru/localscribe/core/SessionSpeakers;Lru/localscribe/core/SessionSpeakers$Candidate;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/core/SessionSpeakers;->observe$lambda$2([FLru/localscribe/core/SessionSpeakers;Lru/localscribe/core/SessionSpeakers$Candidate;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lru/localscribe/core/Settings;Lru/localscribe/core/SpeakerCluster;)V
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cluster"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/SessionSpeakers;->settings:Lru/localscribe/core/Settings;

    iput-object p2, p0, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lru/localscribe/core/SessionSpeakers;->trainedThrough:Ljava/util/Map;

    return-void
.end method

.method private static final observe$lambda$2([FLru/localscribe/core/SessionSpeakers;Lru/localscribe/core/SessionSpeakers$Candidate;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lru/localscribe/core/SessionSpeakers$Candidate;->getVoice()[F

    move-result-object v0

    array-length v0, v0

    array-length v1, p0

    if-ne v0, v1, :cond_0

    sget-object v0, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {p2}, Lru/localscribe/core/SessionSpeakers$Candidate;->getVoice()[F

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v0

    iget-object v1, p1, Lru/localscribe/core/SessionSpeakers;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v1}, Lru/localscribe/core/Settings;->getMatchThreshold()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic resolve$default(Lru/localscribe/core/SessionSpeakers;Ljava/util/List;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/core/SessionSpeakers;->resolve(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCluster()Lru/localscribe/core/SpeakerCluster;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    return-object v0
.end method

.method public final observe([FJJ)Lru/localscribe/core/SessionSpeakers$Observation;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    cmp-long v2, p4, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_18

    new-instance v2, Lru/localscribe/core/SessionSpeakers$Observation;

    new-instance v9, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v9, v4, v5}, Lru/localscribe/core/SessionSpeakers$Observation;-><init>(Lru/localscribe/core/SpeakerCluster$Match;J)V

    move-object v9, v2

    sub-long v6, p4, v4

    const-wide/16 v10, 0x3200

    cmp-long v2, v6, v10

    if-gez v2, :cond_1

    return-object v9

    :cond_1
    sget-object v2, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    if-nez v1, :cond_2

    return-object v9

    :cond_2
    invoke-virtual {v2, v1}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v2

    if-nez v2, :cond_3

    return-object v9

    :cond_3
    move-object v11, v2

    iget-object v2, v0, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v2, v11}, Lru/localscribe/core/SpeakerCluster;->identify([F)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v3, v0, Lru/localscribe/core/SessionSpeakers;->trainedThrough:Ljava/util/Map;

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_4
    const-wide/high16 v6, -0x8000000000000000L

    :goto_1
    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    iget-object v3, v0, Lru/localscribe/core/SessionSpeakers;->trainedThrough:Ljava/util/Map;

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lru/localscribe/core/SessionSpeakers$Observation;

    iget-object v10, v0, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lru/localscribe/core/SpeakerCluster;->assign$default(Lru/localscribe/core/SpeakerCluster;[FZLjava/util/Set;ZILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v6

    invoke-direct {v3, v6, v4, v5}, Lru/localscribe/core/SessionSpeakers$Observation;-><init>(Lru/localscribe/core/SpeakerCluster$Match;J)V

    return-object v3

    :cond_5
    new-instance v3, Lru/localscribe/core/SessionSpeakers$Observation;

    invoke-direct {v3, v2, v4, v5}, Lru/localscribe/core/SessionSpeakers$Observation;-><init>(Lru/localscribe/core/SpeakerCluster$Match;J)V

    return-object v3

    :cond_6
    iget-object v6, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lru/localscribe/core/SessionSpeakers$Candidate;

    const/4 v14, 0x0

    invoke-virtual {v13}, Lru/localscribe/core/SessionSpeakers$Candidate;->getVoice()[F

    move-result-object v15

    array-length v15, v15

    array-length v3, v11

    if-ne v15, v3, :cond_8

    sget-object v3, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v13}, Lru/localscribe/core/SessionSpeakers$Candidate;->getVoice()[F

    move-result-object v15

    invoke-virtual {v3, v15, v11}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v3

    iget-object v15, v0, Lru/localscribe/core/SessionSpeakers;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v15}, Lru/localscribe/core/Settings;->getMatchThreshold()F

    move-result v15

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerCluster$Match;->getSimilarity()Ljava/lang/Float;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    goto :goto_3

    :cond_7
    const/high16 v17, -0x40800000    # -1.0f

    :goto_3
    const v18, 0x3df5c28f    # 0.12f

    add-float v8, v17, v18

    const v1, 0x3f333333    # 0.7f

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    nop

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v1, p1

    goto :goto_2

    :cond_a
    const/4 v12, 0x0

    :goto_5
    check-cast v12, Lru/localscribe/core/SessionSpeakers$Candidate;

    nop

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lru/localscribe/core/SessionSpeakers$Candidate;->getEnd()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    move/from16 v23, v1

    nop

    iget-object v1, v0, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster;->getSpeakers()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v3, 0x0

    instance-of v6, v1, Ljava/util/Collection;

    if-eqz v6, :cond_c

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lru/localscribe/core/Speaker;

    const/4 v10, 0x0

    invoke-virtual {v8}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_f

    sub-long v6, p4, v4

    const-wide/16 v13, 0x4b00

    cmp-long v1, v6, v13

    if-gez v1, :cond_10

    :cond_f
    if-eqz v23, :cond_15

    :cond_10
    if-nez v12, :cond_11

    move-object/from16 v20, v11

    goto :goto_9

    :cond_11
    sget-object v1, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    array-length v3, v11

    new-array v6, v3, [F

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v3, :cond_12

    aget v7, v11, v8

    invoke-virtual {v12}, Lru/localscribe/core/SessionSpeakers$Candidate;->getVoice()[F

    move-result-object v10

    aget v10, v10, v8

    add-float/2addr v7, v10

    const/4 v10, 0x2

    int-to-float v10, v10

    div-float/2addr v7, v10

    aput v7, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v1, v6}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v20, v1

    :goto_9
    nop

    nop

    iget-object v1, v0, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v19 .. v25}, Lru/localscribe/core/SpeakerCluster;->assign$default(Lru/localscribe/core/SpeakerCluster;[FZLjava/util/Set;ZILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v6, v0, Lru/localscribe/core/SessionSpeakers;->trainedThrough:Ljava/util/Map;

    invoke-virtual {v1}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    new-instance v7, Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3, v0}, Lru/localscribe/core/SessionSpeakers$$ExternalSyntheticLambda0;-><init>([FLru/localscribe/core/SessionSpeakers;)V

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    :cond_13
    new-instance v6, Lru/localscribe/core/SessionSpeakers$Observation;

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lru/localscribe/core/SessionSpeakers$Candidate;->getStart()J

    move-result-wide v7

    goto :goto_a

    :cond_14
    move-wide v7, v4

    :goto_a
    invoke-direct {v6, v1, v7, v8}, Lru/localscribe/core/SessionSpeakers$Observation;-><init>(Lru/localscribe/core/SpeakerCluster$Match;J)V

    return-object v6

    :cond_15
    if-nez v12, :cond_16

    iget-object v1, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    move-object v3, v2

    new-instance v2, Lru/localscribe/core/SessionSpeakers$Candidate;

    move-wide/from16 v6, p4

    move-object v8, v3

    move-object v3, v11

    invoke-direct/range {v2 .. v7}, Lru/localscribe/core/SessionSpeakers$Candidate;-><init>([FJJ)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_17

    iget-object v1, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_16
    move-object v8, v2

    :cond_17
    :goto_b
    new-instance v1, Lru/localscribe/core/SessionSpeakers$Observation;

    invoke-direct {v1, v8, v4, v5}, Lru/localscribe/core/SessionSpeakers$Observation;-><init>(Lru/localscribe/core/SpeakerCluster$Match;J)V

    return-object v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final resolve(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "segments"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "aliases"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/core/Segment;

    const/16 v39, 0x0

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v10

    const-string v11, "corrected"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v9

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v10

    :cond_1
    move-object v12, v10

    nop

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getSpeakerProvisional()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v10, p0

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getEmbedding()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getOverlap()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v13, 0x0

    const-string v14, "detected"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15, v11, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getEmbeddingSource()Ljava/lang/String;

    move-result-object v10

    const-string v11, "clean_window"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v10, p0

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v10, p0

    iget-object v11, v10, Lru/localscribe/core/SessionSpeakers;->cluster:Lru/localscribe/core/SpeakerCluster;

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getEmbedding()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v13

    invoke-virtual {v11, v13}, Lru/localscribe/core/SpeakerCluster;->identify([F)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object v11

    move-object/from16 v40, v12

    goto :goto_4

    :cond_6
    move-object/from16 v10, p0

    :goto_3
    new-instance v11, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getSpeakerSimilarity()Ljava/lang/Float;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v40, v12

    :goto_4
    nop

    move-object/from16 v41, v11

    nop

    invoke-virtual/range {v41 .. v41}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    move-object/from16 v16, v40

    goto :goto_5

    :cond_7
    move-object/from16 v16, v12

    :goto_5
    nop

    invoke-virtual/range {v41 .. v41}, Lru/localscribe/core/SpeakerCluster$Match;->getId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual/range {v41 .. v41}, Lru/localscribe/core/SpeakerCluster$Match;->getSimilarity()Ljava/lang/Float;

    move-result-object v11

    goto :goto_6

    :cond_8
    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getSpeakerSimilarity()Ljava/lang/Float;

    move-result-object v11

    :goto_6
    move-object/from16 v19, v11

    const v37, 0x1ffff6f

    const/16 v38, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v9 .. v38}, Lru/localscribe/core/Segment;->copy$default(Lru/localscribe/core/Segment;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Segment;

    move-result-object v10

    :goto_7
    nop

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    nop

    check-cast v4, Ljava/util/List;

    nop

    return-object v4
.end method

.method public final restore(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "segments"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    nop

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lru/localscribe/core/Segment;

    const/4 v11, 0x0

    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v12

    const-string v13, "corrected"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getSpeakerProvisional()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getOverlap()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-string v15, "detected"

    invoke-static {v12, v15, v9, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v12

    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x320

    cmp-long v12, v12, v14

    if-ltz v12, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    nop

    check-cast v4, Ljava/util/List;

    nop

    const/16 v2, 0x8

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/localscribe/core/Segment;

    const/4 v8, 0x0

    sget-object v10, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getEmbedding()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v11

    invoke-virtual {v10, v11}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v10

    if-eqz v10, :cond_5

    move-object v12, v10

    const/4 v10, 0x0

    iget-object v11, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    check-cast v11, Ljava/util/Collection;

    move-object v13, v11

    new-instance v11, Lru/localscribe/core/SessionSpeakers$Candidate;

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v14

    const/16 v9, 0x10

    move-object/from16 v17, v3

    int-to-long v2, v9

    mul-long/2addr v14, v2

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v18

    mul-long v18, v18, v2

    move-object v2, v13

    move-wide v13, v14

    move-wide/from16 v15, v18

    invoke-direct/range {v11 .. v16}, Lru/localscribe/core/SessionSpeakers$Candidate;-><init>([FJJ)V

    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_4

    iget-object v2, v0, Lru/localscribe/core/SessionSpeakers;->candidates:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    nop

    goto :goto_4

    :cond_5
    move-object/from16 v17, v3

    move v3, v2

    :goto_4
    nop

    nop

    move v2, v3

    move-object/from16 v3, v17

    goto :goto_2

    :cond_6
    nop

    return-void
.end method
