.class public final Lru/localscribe/core/DialogueTurns;
.super Ljava/lang/Object;
.source "DialogueTurns.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/DialogueTurns$SpokenText;,
        Lru/localscribe/core/DialogueTurns$WordRange;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogueTurns.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogueTurns.kt\nru/localscribe/core/DialogueTurns\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1878#2,3:66\n1878#2,3:69\n774#2:72\n865#2,2:73\n*S KotlinDebug\n*F\n+ 1 DialogueTurns.kt\nru/localscribe/core/DialogueTurns\n*L\n22#1:66,3\n48#1:69,3\n62#1:72\n62#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ \u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000c0\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ\u0014\u0010\u0012\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cJ\u0014\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lru/localscribe/core/DialogueTurns;",
        "",
        "<init>",
        "()V",
        "PAUSE_MS",
        "",
        "joins",
        "",
        "a",
        "Lru/localscribe/core/Segment;",
        "b",
        "groups",
        "",
        "segments",
        "separator",
        "",
        "previous",
        "next",
        "text",
        "parts",
        "spoken",
        "Lru/localscribe/core/DialogueTurns$SpokenText;",
        "WordRange",
        "SpokenText",
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
.field public static final INSTANCE:Lru/localscribe/core/DialogueTurns;

.field public static final PAUSE_MS:J = 0x5dcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/DialogueTurns;

    invoke-direct {v0}, Lru/localscribe/core/DialogueTurns;-><init>()V

    sput-object v0, Lru/localscribe/core/DialogueTurns;->INSTANCE:Lru/localscribe/core/DialogueTurns;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final groups(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "segments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/localscribe/core/Segment;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/core/Segment;

    invoke-virtual {p0, v3, v2}, Lru/localscribe/core/DialogueTurns;->joins(Lru/localscribe/core/Segment;Lru/localscribe/core/Segment;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x1

    new-array v4, v4, [Lru/localscribe/core/Segment;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final joins(Lru/localscribe/core/Segment;Lru/localscribe/core/Segment;)Z
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getRecordingId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lru/localscribe/core/Segment;->getRecordingId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final separator(Lru/localscribe/core/Segment;Lru/localscribe/core/Segment;)Ljava/lang/String;
    .locals 4

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, " \u2026 "

    goto :goto_0

    :cond_0
    const-string v0, " "

    :goto_0
    return-object v0
.end method

.method public final spoken(Ljava/util/List;)Lru/localscribe/core/DialogueTurns$SpokenText;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)",
            "Lru/localscribe/core/DialogueTurns$SpokenText;"
        }
    .end annotation

    const-string v0, "parts"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lru/localscribe/core/DialogueTurns;->text(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/core/Segment;

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v14, 0x3

    new-array v6, v14, [C

    fill-array-data v6, :array_0

    invoke-static {v13, v6}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_8

    new-instance v6, Lkotlin/text/Regex;

    const-string v8, "\\S+"

    invoke-direct {v6, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v8, v13

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v8, v11, v9, v10}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_7

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v10, 0x1

    if-gez v10, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object/from16 v17, v15

    check-cast v17, Lru/localscribe/core/WordStamp;

    const/16 v18, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lkotlin/text/MatchResult;

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/WordStamp;->getEndMs()Ljava/lang/Long;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object v12, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v1, v20

    const/16 v22, 0x1

    move-object/from16 v21, v15

    goto :goto_3

    :cond_1
    move-object/from16 v21, v15

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v14

    const/16 v22, 0x1

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getWords()Ljava/util/List;

    move-result-object v12

    add-int/lit8 v1, v10, 0x1

    invoke-static {v12, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/localscribe/core/WordStamp;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v23

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v23

    :goto_2
    move-object v12, v2

    move-wide/from16 v1, v23

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v23

    move-object/from16 v25, v3

    const/16 v3, 0x5dc

    move-object/from16 v26, v4

    int-to-long v3, v3

    add-long v3, v23, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_3
    move-wide/from16 v32, v1

    invoke-interface/range {v19 .. v19}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-interface/range {v19 .. v19}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_4
    if-ge v1, v2, :cond_3

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    if-le v2, v1, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v3

    cmp-long v3, v32, v3

    if-lez v3, :cond_5

    if-le v2, v1, :cond_5

    move-object v3, v12

    check-cast v3, Ljava/util/Collection;

    new-instance v27, Lru/localscribe/core/DialogueTurns$WordRange;

    add-int v28, v5, v1

    add-int v29, v5, v2

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/WordStamp;->getStartMs()J

    move-result-wide v30

    invoke-direct/range {v27 .. v33}, Lru/localscribe/core/DialogueTurns$WordRange;-><init>(IIJJ)V

    move-object/from16 v4, v27

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    nop

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v10, v16

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    const/4 v14, 0x3

    goto/16 :goto_1

    :cond_6
    move-object v12, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    goto :goto_6

    :cond_7
    move-object v12, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    :goto_6
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v13, v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v7, v5, v1

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, v26

    goto/16 :goto_0

    :cond_8
    move-object v12, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    move-object v12, v2

    const/16 v22, 0x1

    move-object v1, v12

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/core/DialogueTurns$WordRange;

    const/4 v10, 0x0

    invoke-virtual {v9}, Lru/localscribe/core/DialogueTurns$WordRange;->getUntil()I

    move-result v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v13, v14, :cond_b

    move/from16 v9, v22

    goto :goto_8

    :cond_b
    move v9, v11

    :goto_8
    if-eqz v9, :cond_a

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    nop

    check-cast v3, Ljava/util/List;

    nop

    new-instance v1, Lru/localscribe/core/DialogueTurns$SpokenText;

    invoke-direct {v1, v0, v3}, Lru/localscribe/core/DialogueTurns$SpokenText;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :array_0
    .array-data 2
        0x2es
        0x2026s
        0x20s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2es
        0x2026s
        0x20s
    .end array-data
.end method

.method public final text(Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "parts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    if-gez v6, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v10, v8

    check-cast v10, Lru/localscribe/core/Segment;

    const/4 v11, 0x0

    if-lez v6, :cond_3

    sget-object v12, Lru/localscribe/core/DialogueTurns;->INSTANCE:Lru/localscribe/core/DialogueTurns;

    add-int/lit8 v13, v6, -0x1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/localscribe/core/Segment;

    invoke-virtual {v12, v13, v10}, Lru/localscribe/core/DialogueTurns;->separator(Lru/localscribe/core/Segment;Lru/localscribe/core/Segment;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    const/16 v14, 0x2026

    const/4 v15, 0x0

    const/4 v0, 0x2

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v13, v14, v15, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :goto_1
    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    move v13, v15

    :goto_2
    if-eqz v13, :cond_2

    const-string v13, ".\u2026 "

    check-cast v13, Ljava/lang/CharSequence;

    move-object v14, v2

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v14

    invoke-static {v13, v14, v15, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move-object/from16 v16, v1

    :goto_3
    invoke-virtual {v10}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    move-object/from16 v0, p1

    move v6, v9

    move-object/from16 v1, v16

    goto :goto_0

    :cond_4
    move-object/from16 v16, v1

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
