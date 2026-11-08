.class public final Lru/localscribe/core/ExtractiveSummary;
.super Ljava/lang/Object;
.source "ExtractiveSummary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/ExtractiveSummary$Quote;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtractiveSummary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtractiveSummary.kt\nru/localscribe/core/ExtractiveSummary\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1788#2,4:35\n1761#2,2:39\n1763#2:43\n1563#2:45\n1634#2,3:46\n1669#2,8:49\n1088#3,2:41\n1#4:44\n*S KotlinDebug\n*F\n+ 1 ExtractiveSummary.kt\nru/localscribe/core/ExtractiveSummary\n*L\n15#1:35,4\n17#1:39,2\n17#1:43\n24#1:45\n24#1:46,3\n24#1:49,8\n17#1:41,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u001a\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lru/localscribe/core/ExtractiveSummary;",
        "",
        "durationMs",
        "",
        "<init>",
        "(J)V",
        "picks",
        "",
        "Lru/localscribe/core/ExtractiveSummary$Quote;",
        "[Lru/localscribe/core/ExtractiveSummary$Quote;",
        "decisions",
        "Lkotlin/text/Regex;",
        "words",
        "add",
        "",
        "segment",
        "Lru/localscribe/core/Segment;",
        "render",
        "",
        "names",
        "",
        "Quote",
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
.field private final decisions:Lkotlin/text/Regex;

.field private final durationMs:J

.field private final picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

.field private final words:Lkotlin/text/Regex;


# direct methods
.method public static synthetic $r8$lambda$5JodaD6vHtffTeKP3NBYnZFCYS8(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/ExtractiveSummary;->add$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$psk2GMR9sruROx5Gcb3iNA-8IcI(Ljava/util/Map;Lru/localscribe/core/Segment;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/core/ExtractiveSummary;->render$lambda$2(Ljava/util/Map;Lru/localscribe/core/Segment;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/localscribe/core/ExtractiveSummary;->durationMs:J

    const/4 v0, 0x6

    new-array v0, v0, [Lru/localscribe/core/ExtractiveSummary$Quote;

    iput-object v0, p0, Lru/localscribe/core/ExtractiveSummary;->picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

    new-instance v0, Lkotlin/text/Regex;

    nop

    const-string v1, "(?iu)\\b(?:\u0440\u0435\u0448\u0438\u043b\u0438|\u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0438\u043b\u0438\u0441\u044c|\u0441\u043e\u0433\u043b\u0430\u0441\u043e\u0432\u0430\u043b\u0438|\u043d\u0443\u0436\u043d\u043e|\u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u044e|\u0441\u0440\u043e\u043a\\p{L}*|\u043f\u043b\u0430\u043d\\p{L}*|agreed|decided|deadline|will|need)\\b"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/localscribe/core/ExtractiveSummary;->decisions:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\\p{L}\\p{N}]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/localscribe/core/ExtractiveSummary;->words:Lkotlin/text/Regex;

    return-void
.end method

.method private static final add$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final render$lambda$2(Ljava/util/Map;Lru/localscribe/core/Segment;)Ljava/lang/CharSequence;
    .locals 6

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lru/localscribe/core/Timecode;->INSTANCE:Lru/localscribe/core/Timecode;

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v1

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Lru/localscribe/core/Timecode;->subtitle(JC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v3, v2, v1, v2}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x168

    if-gt v3, v4, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-static {v1, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt;->substringBeforeLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    return-object v4
.end method


# virtual methods
.method public final add(Lru/localscribe/core/Segment;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "segment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "draft"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v2, v0, Lru/localscribe/core/ExtractiveSummary;->words:Lkotlin/text/Regex;

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v3, v5, v6, v4}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    new-instance v3, Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    instance-of v7, v3, Ljava/util/Collection;

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x4

    if-lt v13, v14, :cond_3

    move v11, v8

    goto :goto_1

    :cond_3
    move v11, v5

    :goto_1
    if-eqz v11, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-gez v7, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_4
    nop

    :goto_2
    const/16 v3, 0x10

    invoke-static {v7, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    iget-object v4, v0, Lru/localscribe/core/ExtractiveSummary;->decisions:Lkotlin/text/Regex;

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    add-int/2addr v3, v4

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    const/4 v7, 0x0

    instance-of v9, v4, Ljava/util/Collection;

    if-eqz v9, :cond_6

    move-object v9, v4

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_7

    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    move-object v13, v11

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    move v15, v5

    :goto_5
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v15, v5, :cond_8

    invoke-interface {v13, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move/from16 v16, v5

    const/16 v17, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_7

    move v5, v8

    goto :goto_6

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_6
    nop

    if-eqz v5, :cond_9

    move v5, v8

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_b

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    add-int/2addr v3, v6

    nop

    invoke-virtual {v1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v4

    long-to-double v4, v4

    iget-wide v6, v0, Lru/localscribe/core/ExtractiveSummary;->durationMs:J

    const-wide/16 v9, 0x1

    invoke-static {v6, v7, v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    iget-object v6, v0, Lru/localscribe/core/ExtractiveSummary;->picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

    array-length v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, v0, Lru/localscribe/core/ExtractiveSummary;->picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/ClosedRange;

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result v4

    nop

    iget-object v5, v0, Lru/localscribe/core/ExtractiveSummary;->picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

    aget-object v5, v5, v4

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lru/localscribe/core/ExtractiveSummary$Quote;->getScore()I

    move-result v5

    const/4 v6, 0x0

    if-lt v5, v3, :cond_c

    move v5, v8

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    if-ne v5, v8, :cond_d

    move v5, v8

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_e

    iget-object v5, v0, Lru/localscribe/core/ExtractiveSummary;->picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

    new-instance v6, Lru/localscribe/core/ExtractiveSummary$Quote;

    invoke-direct {v6, v1, v3}, Lru/localscribe/core/ExtractiveSummary$Quote;-><init>(Lru/localscribe/core/Segment;I)V

    aput-object v6, v5, v4

    :cond_e
    return-void

    :cond_f
    :goto_b
    return-void
.end method

.method public final render(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/localscribe/core/ExtractiveSummary;->picks:[Lru/localscribe/core/ExtractiveSummary$Quote;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/localscribe/core/ExtractiveSummary$Quote;

    const/4 v8, 0x0

    invoke-virtual {v7}, Lru/localscribe/core/ExtractiveSummary$Quote;->getSegment()Lru/localscribe/core/Segment;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    nop

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    nop

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lru/localscribe/core/Segment;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toLowerCase(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "\n\n"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
