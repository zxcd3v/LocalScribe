.class public final Lru/localscribe/audio/WaveformDiarization;
.super Ljava/lang/Object;
.source "WaveformPeaks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/audio/WaveformDiarization$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaveformPeaks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveformPeaks.kt\nru/localscribe/audio/WaveformDiarization\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1011#2,2:91\n*S KotlinDebug\n*F\n+ 1 WaveformPeaks.kt\nru/localscribe/audio/WaveformDiarization\n*L\n64#1:91,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000bR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lru/localscribe/audio/WaveformDiarization;",
        "",
        "<init>",
        "()V",
        "events",
        "Ljava/util/ArrayList;",
        "Lru/localscribe/audio/WaveformDiarization$Event;",
        "Lkotlin/collections/ArrayList;",
        "add",
        "",
        "startMs",
        "",
        "endMs",
        "speaker",
        "",
        "overlap",
        "",
        "build",
        "",
        "Lru/localscribe/audio/WaveformInterval;",
        "durationMs",
        "Event",
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


# instance fields
.field private final events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/localscribe/audio/WaveformDiarization$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/audio/WaveformDiarization;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final add(JJLjava/lang/String;Z)V
    .locals 14

    move-wide v0, p1

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    new-instance v3, Lru/localscribe/audio/WaveformDiarization$Event;

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    const/4 v7, 0x1

    move-object/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lru/localscribe/audio/WaveformDiarization$Event;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    new-instance v8, Lru/localscribe/audio/WaveformDiarization$Event;

    if-eqz p6, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v13, v3

    const/4 v12, -0x1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v13}, Lru/localscribe/audio/WaveformDiarization$Event;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final build(J)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lru/localscribe/audio/WaveformInterval;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lru/localscribe/audio/WaveformDiarization$build$$inlined$sortBy$1;

    invoke-direct {v3}, Lru/localscribe/audio/WaveformDiarization$build$$inlined$sortBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    nop

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v13, v8

    move-wide v7, v6

    :goto_0
    iget-object v6, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_9

    iget-object v6, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/localscribe/audio/WaveformDiarization$Event;

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getAt()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    move-wide/from16 v18, p1

    invoke-static/range {v14 .. v19}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v21

    cmp-long v6, v21, v7

    const/4 v14, 0x0

    if-lez v6, :cond_5

    if-lez v3, :cond_5

    if-gt v3, v4, :cond_2

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v12, v14

    goto :goto_2

    :cond_2
    :goto_1
    move v12, v4

    :goto_2
    if-eqz v12, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v9, "<get-keys>(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_3
    move-object v11, v6

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Lru/localscribe/audio/WaveformInterval;

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/audio/WaveformInterval;->getEndMs()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_4

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/audio/WaveformInterval;->getSpeakerId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/audio/WaveformInterval;->getOverlap()Z

    move-result v6

    if-ne v6, v12, :cond_4

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    const/16 v25, 0xd

    const/16 v26, 0x0

    const-wide/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v26}, Lru/localscribe/audio/WaveformInterval;->copy$default(Lru/localscribe/audio/WaveformInterval;JJLjava/lang/String;ZILjava/lang/Object;)Lru/localscribe/audio/WaveformInterval;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    new-instance v6, Lru/localscribe/audio/WaveformInterval;

    move-wide/from16 v9, v21

    invoke-direct/range {v6 .. v12}, Lru/localscribe/audio/WaveformInterval;-><init>(JJLjava/lang/String;Z)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    iget-object v6, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/localscribe/audio/WaveformDiarization$Event;

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getAt()J

    move-result-wide v9

    :goto_5
    iget-object v6, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_8

    iget-object v6, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/localscribe/audio/WaveformDiarization$Event;

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getAt()J

    move-result-wide v11

    cmp-long v6, v11, v9

    if-nez v6, :cond_8

    iget-object v6, v0, Lru/localscribe/audio/WaveformDiarization;->events:Ljava/util/ArrayList;

    add-int/lit8 v11, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v12, "get(...)"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lru/localscribe/audio/WaveformDiarization$Event;

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getSpeaker()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_6

    :cond_6
    move v12, v14

    :goto_6
    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getDelta()I

    move-result v13

    add-int/2addr v12, v13

    if-nez v12, :cond_7

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getSpeaker()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    move-object v13, v2

    check-cast v13, Ljava/util/Map;

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getSpeaker()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getDelta()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v6}, Lru/localscribe/audio/WaveformDiarization$Event;->getOverlap()I

    move-result v4

    add-int/2addr v5, v4

    move v13, v11

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    move-wide/from16 v7, v21

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    return-object v4
.end method
