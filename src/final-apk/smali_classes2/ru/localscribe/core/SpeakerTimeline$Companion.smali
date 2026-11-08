.class public final Lru/localscribe/core/SpeakerTimeline$Companion;
.super Ljava/lang/Object;
.source "SpeakerTimeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/core/SpeakerTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeakerTimeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeakerTimeline.kt\nru/localscribe/core/SpeakerTimeline$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,54:1\n1068#2:55\n488#3,7:56\n*S KotlinDebug\n*F\n+ 1 SpeakerTimeline.kt\nru/localscribe/core/SpeakerTimeline$Companion\n*L\n32#1:55\n33#1:56,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lru/localscribe/core/SpeakerTimeline$Companion;",
        "",
        "<init>",
        "()V",
        "fuse",
        "Lru/localscribe/core/SpeakerTimeline;",
        "primary",
        "secondary",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/core/SpeakerTimeline$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fuse(Lru/localscribe/core/SpeakerTimeline;Lru/localscribe/core/SpeakerTimeline;)Lru/localscribe/core/SpeakerTimeline;
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "primary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "secondary"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/32 v5, 0x7fffffff

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v7

    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v9

    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0, v7, v8, v5}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v6}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v7

    if-ltz v7, :cond_1

    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v7

    if-gez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v10

    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v6}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v10

    invoke-virtual {v4}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    const/4 v8, 0x0

    new-instance v9, Lru/localscribe/core/SpeakerTimeline$Companion$fuse$$inlined$sortedByDescending$1;

    invoke-direct {v9}, Lru/localscribe/core/SpeakerTimeline$Companion$fuse$$inlined$sortedByDescending$1;-><init>()V

    check-cast v9, Ljava/util/Comparator;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Pair;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    move-object v8, v1

    const/4 v12, 0x0

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lkotlin/Pair;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v5, 0x7fffffff

    goto :goto_2

    :cond_5
    const-wide/32 v5, 0x7fffffff

    goto :goto_2

    :cond_6
    move-object v5, v13

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->sumOfLong(Ljava/lang/Iterable;)J

    move-result-wide v5

    const-wide/16 v12, 0x2580

    cmp-long v8, v10, v12

    if-ltz v8, :cond_8

    long-to-double v12, v10

    long-to-double v14, v5

    div-double/2addr v12, v14

    const-wide v14, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v8, v12, v14

    if-ltz v8, :cond_8

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-wide/32 v5, 0x7fffffff

    goto/16 :goto_1

    :cond_7
    const-wide/32 v5, 0x7fffffff

    goto/16 :goto_1

    :cond_8
    const-wide/32 v5, 0x7fffffff

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lru/localscribe/core/SpeakerTimeline;->getTurns()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v8

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v10

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v12

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x7fffffff

    invoke-static {v12, v13, v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v0, v10, v11, v12}, Lru/localscribe/core/SpeakerTimeline;->window(JI)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v17, v8

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v8}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v11

    cmp-long v11, v11, v17

    if-lez v11, :cond_b

    move-object v11, v5

    check-cast v11, Ljava/util/Collection;

    new-instance v16, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v8}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v19

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_a
    move/from16 v21, v9

    const/16 v22, 0x1

    invoke-direct/range {v16 .. v22}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZ)V

    move-object/from16 v9, v16

    move-wide/from16 v12, v17

    invoke-interface {v11, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-wide/from16 v12, v17

    :goto_6
    invoke-virtual {v8}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    const-wide/32 v14, 0x7fffffff

    goto :goto_5

    :cond_c
    move-wide/from16 v12, v17

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v10

    cmp-long v8, v12, v10

    if-gez v8, :cond_e

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    new-instance v16, Lru/localscribe/core/VoiceTurn;

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v19

    invoke-virtual {v7}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_d
    move/from16 v21, v9

    const/16 v22, 0x1

    move-wide/from16 v17, v12

    invoke-direct/range {v16 .. v22}, Lru/localscribe/core/VoiceTurn;-><init>(JJIZ)V

    move-object/from16 v9, v16

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    move-wide/from16 v17, v12

    goto/16 :goto_4

    :cond_f
    new-instance v6, Lru/localscribe/core/SpeakerTimeline;

    invoke-direct {v6, v5}, Lru/localscribe/core/SpeakerTimeline;-><init>(Ljava/util/List;)V

    return-object v6
.end method
