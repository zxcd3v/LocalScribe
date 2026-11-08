.class public final Lru/localscribe/core/TranscriptMerger;
.super Ljava/lang/Object;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Contract.kt\nru/localscribe/core/TranscriptMerger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,283:1\n1208#2,2:284\n1236#2,4:286\n1869#2,2:290\n1869#2,2:292\n*S KotlinDebug\n*F\n+ 1 Contract.kt\nru/localscribe/core/TranscriptMerger\n*L\n261#1:284,2\n261#1:286,4\n262#1:290,2\n270#1:292,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lru/localscribe/core/TranscriptMerger;",
        "",
        "<init>",
        "()V",
        "merge",
        "",
        "Lru/localscribe/core/Segment;",
        "existing",
        "incoming",
        "words",
        "Lru/localscribe/core/WordStamp;",
        "tokens",
        "Lru/localscribe/core/TokenStamp;",
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
.field public static final INSTANCE:Lru/localscribe/core/TranscriptMerger;


# direct methods
.method public static synthetic $r8$lambda$-iMFFg3ZwJ6e7GuA0NEmGwKy2Ac(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/TranscriptMerger;->merge$lambda$4(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gYDGnRawuFumuGQEcsShrUSr4f0(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/TranscriptMerger;->merge$lambda$3(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tGJQWHZUi25cpypbrdqbFrGpN4E(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/TranscriptMerger;->merge$lambda$2(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/core/TranscriptMerger;

    invoke-direct {v0}, Lru/localscribe/core/TranscriptMerger;-><init>()V

    sput-object v0, Lru/localscribe/core/TranscriptMerger;->INSTANCE:Lru/localscribe/core/TranscriptMerger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final merge$lambda$2(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final merge$lambda$3(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final merge$lambda$4(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Segment;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method


# virtual methods
.method public final merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation

    const-string v0, "existing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incoming"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lru/localscribe/core/Segment;

    const/4 v9, 0x0

    invoke-virtual {v8}, Lru/localscribe/core/Segment;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    nop

    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lru/localscribe/core/Segment;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Segment;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    const-string v8, "corrected"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    nop

    goto :goto_1

    :cond_3
    nop

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/jvm/functions/Function1;

    new-instance v3, Lru/localscribe/core/TranscriptMerger$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lru/localscribe/core/TranscriptMerger$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lru/localscribe/core/TranscriptMerger$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lru/localscribe/core/TranscriptMerger$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lru/localscribe/core/TranscriptMerger$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lru/localscribe/core/TranscriptMerger$$ExternalSyntheticLambda2;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final words(Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;)",
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "tokens"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const-string v2, ""

    const-wide/16 v3, 0x0

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v10, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lru/localscribe/core/TokenStamp;

    const/16 v17, 0x0

    invoke-virtual {v4}, Lru/localscribe/core/TokenStamp;->getText()Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v19, 0x2581

    const/16 v20, 0x20

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v12, 0x0

    const-string v13, " "

    const/4 v14, 0x0

    invoke-static {v8, v13, v14, v9, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    move-object v12, v8

    new-instance v8, Lru/localscribe/core/WordStamp;

    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x1c

    const/16 v16, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v19, v9

    move-object v9, v13

    const/4 v13, 0x0

    move/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v0, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v19

    invoke-direct/range {v8 .. v16}, Lru/localscribe/core/WordStamp;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v2, ""

    goto :goto_1

    :cond_0
    move-object/from16 v18, v1

    move-object v0, v8

    move/from16 v20, v14

    :goto_1
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    move/from16 v14, v20

    :goto_2
    if-eqz v14, :cond_2

    invoke-virtual {v4}, Lru/localscribe/core/TokenStamp;->getEmissionMs()J

    move-result-wide v8

    move-wide v10, v8

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    goto/16 :goto_0

    :cond_3
    move-object/from16 v18, v1

    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object/from16 v0, v18

    check-cast v0, Ljava/util/Collection;

    new-instance v8, Lru/localscribe/core/WordStamp;

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x1c

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v16}, Lru/localscribe/core/WordStamp;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v18
.end method
