.class public final Lru/localscribe/core/TimelineIdentityMap;
.super Ljava/lang/Object;
.source "TimelineIdentityMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/TimelineIdentityMap$Edge;,
        Lru/localscribe/core/TimelineIdentityMap$Previous;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimelineIdentityMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimelineIdentityMap.kt\nru/localscribe/core/TimelineIdentityMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,36:1\n774#2:37\n865#2,2:38\n1869#2,2:40\n774#2:42\n865#2,2:43\n1869#2,2:45\n1056#2:47\n1491#2:49\n1516#2,3:50\n1519#2,3:60\n1252#2,4:65\n1617#2,9:69\n1869#2:78\n1870#2:80\n1626#2:81\n1563#2:82\n1634#2,3:83\n774#2:86\n865#2,2:87\n1869#2,2:89\n1#3:48\n1#3:79\n382#4,7:53\n463#4:63\n413#4:64\n*S KotlinDebug\n*F\n+ 1 TimelineIdentityMap.kt\nru/localscribe/core/TimelineIdentityMap\n*L\n10#1:37\n10#1:38,2\n10#1:40,2\n11#1:42\n11#1:43,2\n11#1:45,2\n12#1:47\n25#1:49\n25#1:50,3\n25#1:60,3\n25#1:65,4\n31#1:69,9\n31#1:78\n31#1:80\n31#1:81\n32#1:82\n32#1:83,3\n32#1:86\n32#1:87,2\n32#1:89,2\n31#1:79\n25#1:53,7\n25#1:63\n25#1:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J6\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00052\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/localscribe/core/TimelineIdentityMap;",
        "",
        "<init>",
        "()V",
        "match",
        "",
        "",
        "",
        "timeline",
        "Lru/localscribe/core/SpeakerTimeline;",
        "previous",
        "",
        "Lru/localscribe/core/TimelineIdentityMap$Previous;",
        "reserved",
        "",
        "Previous",
        "Edge",
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
.field public static final INSTANCE:Lru/localscribe/core/TimelineIdentityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/TimelineIdentityMap;

    invoke-direct {v0}, Lru/localscribe/core/TimelineIdentityMap;-><init>()V

    sput-object v0, Lru/localscribe/core/TimelineIdentityMap;->INSTANCE:Lru/localscribe/core/TimelineIdentityMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final match(Lru/localscribe/core/SpeakerTimeline;Ljava/util/List;Ljava/util/Set;)Ljava/util/Map;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/SpeakerTimeline;",
            "Ljava/util/List<",
            "Lru/localscribe/core/TimelineIdentityMap$Previous;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "timeline"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previous"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reserved"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    move-object v9, v6

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v14, 0x0

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lru/localscribe/core/TimelineIdentityMap$Previous;

    const/16 v16, 0x0

    invoke-virtual {v15}, Lru/localscribe/core/TimelineIdentityMap$Previous;->getEnd()J

    move-result-wide v17

    invoke-virtual {v15}, Lru/localscribe/core/TimelineIdentityMap$Previous;->getStart()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-lez v17, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    move v13, v14

    :goto_1
    if-eqz v13, :cond_0

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    nop

    check-cast v8, Ljava/util/List;

    nop

    check-cast v8, Ljava/lang/Iterable;

    nop

    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lru/localscribe/core/TimelineIdentityMap$Previous;

    const/4 v11, 0x0

    new-instance v15, Lru/localscribe/core/TimelineIdentityMap$Edge;

    invoke-virtual {v10}, Lru/localscribe/core/TimelineIdentityMap$Previous;->getStart()J

    move-result-wide v16

    invoke-virtual {v10}, Lru/localscribe/core/TimelineIdentityMap$Previous;->getSpeakerId()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v15 .. v22}, Lru/localscribe/core/TimelineIdentityMap$Edge;-><init>(JLjava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Lru/localscribe/core/TimelineIdentityMap$Edge;

    invoke-virtual {v10}, Lru/localscribe/core/TimelineIdentityMap$Previous;->getEnd()J

    move-result-wide v17

    invoke-virtual {v10}, Lru/localscribe/core/TimelineIdentityMap$Previous;->getSpeakerId()Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    invoke-direct/range {v16 .. v23}, Lru/localscribe/core/TimelineIdentityMap$Edge;-><init>(JLjava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v16

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_2

    :cond_3
    nop

    invoke-virtual {v3}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    move-object v9, v6

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lru/localscribe/core/VoiceTurn;

    const/16 v16, 0x0

    invoke-virtual {v15}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v17

    if-ltz v17, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    move v15, v14

    :goto_4
    if-eqz v15, :cond_4

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    nop

    check-cast v8, Ljava/util/List;

    nop

    check-cast v8, Ljava/lang/Iterable;

    nop

    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lru/localscribe/core/VoiceTurn;

    const/4 v11, 0x0

    new-instance v15, Lru/localscribe/core/TimelineIdentityMap$Edge;

    invoke-virtual {v10}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v16

    invoke-virtual {v10}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v15 .. v22}, Lru/localscribe/core/TimelineIdentityMap$Edge;-><init>(JLjava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Lru/localscribe/core/TimelineIdentityMap$Edge;

    invoke-virtual {v10}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v17

    invoke-virtual {v10}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v21, -0x1

    invoke-direct/range {v16 .. v23}, Lru/localscribe/core/TimelineIdentityMap$Edge;-><init>(JLjava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v16

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_5

    :cond_7
    nop

    nop

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v5, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$sortedBy$1;

    invoke-direct {v5}, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$sortedBy$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/TimelineIdentityMap$Edge;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getAt()J

    move-result-wide v10

    goto :goto_6

    :cond_8
    move-wide v10, v8

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/localscribe/core/TimelineIdentityMap$Edge;

    invoke-virtual {v12}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getAt()J

    move-result-wide v15

    sub-long/2addr v15, v10

    cmp-long v17, v15, v8

    if-lez v17, :cond_a

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v18

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-wide/from16 v21, v8

    move-object/from16 v8, v20

    check-cast v8, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v20, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    add-long v23, v23, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v8, v21

    goto :goto_9

    :cond_9
    move-wide/from16 v21, v8

    const/16 v20, 0x1

    goto :goto_8

    :cond_a
    move-wide/from16 v21, v8

    const/16 v20, 0x1

    invoke-virtual {v12}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getOld()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v8, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v12}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getDelta()I

    move-result v17

    add-int v13, v13, v17

    if-nez v13, :cond_b

    invoke-interface {v4, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v14

    goto :goto_a

    :cond_b
    move/from16 v17, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    goto :goto_b

    :cond_c
    move/from16 v17, v14

    :goto_b
    invoke-virtual {v12}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getNew()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_e

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v12}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getDelta()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-nez v13, :cond_d

    invoke-interface {v5, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_c
    invoke-virtual {v12}, Lru/localscribe/core/TimelineIdentityMap$Edge;->getAt()J

    move-result-wide v10

    move-object/from16 v0, p2

    move/from16 v14, v17

    move-wide/from16 v8, v21

    goto/16 :goto_7

    :cond_f
    move-wide/from16 v21, v8

    move/from16 v17, v14

    const/16 v20, 0x1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v7, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v12, Ljava/util/Map;

    move-object v13, v8

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/Map$Entry;

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lkotlin/Pair;

    invoke-virtual/range {v19 .. v19}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    nop

    move-object/from16 v18, v16

    move-object/from16 v19, v12

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_10

    const/16 v19, 0x0

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    check-cast v25, Ljava/util/List;

    move-object/from16 v19, v25

    move-object/from16 v25, v4

    move-object/from16 v4, v19

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_e

    :cond_10
    move-object/from16 v25, v4

    move-object/from16 v19, v18

    :goto_e
    nop

    move-object/from16 v2, v19

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move-object/from16 v4, v25

    goto :goto_d

    :cond_11
    move-object/from16 v24, v2

    move-object/from16 v25, v4

    nop

    nop

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    move-object v3, v12

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    move-object v9, v2

    const/4 v13, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Ljava/util/Map$Entry;

    const/16 v18, 0x0

    move/from16 v19, v1

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v15

    check-cast v16, Ljava/util/Map$Entry;

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Iterable;

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-wide/from16 v26, v21

    :goto_10
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    nop

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->longValue()J

    move-result-wide v28

    add-long v26, v26, v28

    goto :goto_10

    :cond_12
    move-object/from16 v16, v2

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    move/from16 v1, v19

    goto :goto_f

    :cond_13
    move/from16 v19, v1

    move-object/from16 v16, v2

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$compareByDescending$1;

    invoke-direct {v2}, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$compareByDescending$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    new-instance v3, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$thenBy$1;

    invoke-direct {v3, v2}, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    check-cast v3, Ljava/util/Comparator;

    new-instance v2, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$thenBy$2;

    invoke-direct {v2, v3}, Lru/localscribe/core/TimelineIdentityMap$match$$inlined$thenBy$2;-><init>(Ljava/util/Comparator;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1f40

    cmp-long v2, v12, v14

    if-ltz v2, :cond_14

    long-to-double v14, v12

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    div-double v14, v14, v18

    const-wide v18, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v2, v14, v18

    if-ltz v2, :cond_14

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_15
    const/4 v1, 0x0

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v8, v2

    const/4 v12, 0x0

    move-object v13, v8

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_12
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move/from16 v18, v1

    const-string v1, "speaker_"

    if-eqz v16, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    const/16 v23, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    move/from16 v1, v18

    move-object/from16 v2, v22

    goto :goto_12

    :cond_17
    move-object/from16 v22, v2

    nop

    move-object v2, v4

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_13

    :cond_18
    move/from16 v2, v17

    :goto_13
    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    move-object v12, v3

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lru/localscribe/core/VoiceTurn;

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v16

    move/from16 v18, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v2, v18

    goto :goto_14

    :cond_19
    move/from16 v18, v2

    move-object v2, v8

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v8, v2

    const/4 v12, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_15
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    const/16 v16, 0x0

    if-ltz v15, :cond_1a

    move-object/from16 v19, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move/from16 v2, v20

    goto :goto_16

    :cond_1a
    move-object/from16 v19, v2

    :cond_1b
    move/from16 v2, v17

    :goto_16
    if-eqz v2, :cond_1c

    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1c
    move-object/from16 v2, v19

    goto :goto_15

    :cond_1d
    move-object/from16 v19, v2

    move-object v2, v4

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    nop

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v8, v18

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    add-int/lit8 v16, v8, 0x1

    move-object/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v16

    move-object/from16 v2, v17

    goto :goto_17

    :cond_1e
    nop

    return-object v0
.end method
