.class public final Lru/localscribe/core/TranscriptEdits;
.super Ljava/lang/Object;
.source "TranscriptEdits.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranscriptEdits.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranscriptEdits.kt\nru/localscribe/core/TranscriptEdits\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1088#2,2:71\n1088#2,2:84\n1088#2,2:86\n1563#3:73\n1634#3,3:74\n1761#3,3:77\n1740#3,3:81\n1761#3,3:88\n1#4:80\n*S KotlinDebug\n*F\n+ 1 TranscriptEdits.kt\nru/localscribe/core/TranscriptEdits\n*L\n19#1:71,2\n59#1:84,2\n60#1:86,2\n39#1:73\n39#1:74,3\n40#1:77,3\n55#1:81,3\n67#1:88,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005J$\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\r\u001a\u00020\u0005J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lru/localscribe/core/TranscriptEdits;",
        "",
        "<init>",
        "()V",
        "numeric",
        "",
        "tokens",
        "Lkotlin/text/Regex;",
        "russian",
        "endings",
        "",
        "accept",
        "original",
        "candidate",
        "partition",
        "",
        "originals",
        "compatibleEnding",
        "",
        "old",
        "new",
        "first",
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
.field public static final INSTANCE:Lru/localscribe/core/TranscriptEdits;

.field private static final endings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final numeric:Ljava/lang/String;

.field private static final russian:Lkotlin/text/Regex;

.field private static final tokens:Lkotlin/text/Regex;


# direct methods
.method public static synthetic $r8$lambda$t8P6Ar9jrpmYl6AGitV9pcz9JJo(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/TranscriptEdits;->accept$lambda$1(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$un1y0IqCd_GEOF6b2cN-L3q5JpA(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/TranscriptEdits;->accept$lambda$2(Lkotlin/text/MatchResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/core/TranscriptEdits;

    invoke-direct {v0}, Lru/localscribe/core/TranscriptEdits;-><init>()V

    sput-object v0, Lru/localscribe/core/TranscriptEdits;->INSTANCE:Lru/localscribe/core/TranscriptEdits;

    const-string v0, "(?:[\\p{Sc}][ \\u00A0\\u202F]?)?[+\\-\u2212]?\\p{N}+(?:(?:[.:/,\\-\u2212]|[ \\u00A0\\u202F](?=\\p{N}{3}(?!\\p{N})))\\p{N}+)*(?:[ \\u00A0\\u202F]?[\\p{Sc}%])?"

    sput-object v0, Lru/localscribe/core/TranscriptEdits;->numeric:Ljava/lang/String;

    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lru/localscribe/core/TranscriptEdits;->numeric:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|[\\p{L}\\p{M}\\p{N}]+(?:[-_\'\u2019@./:+][\\p{L}\\p{M}\\p{N}]+)*|[^\\s\\p{Z}.,!?;:\u2026\"\u00ab\u00bb\u201e\u201c\u201d()\u2014\u2013]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/localscribe/core/TranscriptEdits;->tokens:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\u0430-\u044f\u0451]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/localscribe/core/TranscriptEdits;->russian:Lkotlin/text/Regex;

    nop

    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0443"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u044e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u044b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u044c"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0439"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u043e\u0432"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0435\u0432"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0435\u0439"

    aput-object v2, v0, v1

    const-string v1, "\u0430\u043c"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044f\u043c"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043e\u043c"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0435\u043c"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0430\u0445"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044f\u0445"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0430\u043c\u0438"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044f\u043c\u0438"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043e\u044e"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0435\u044e"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044b\u0439"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0438\u0439"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043e\u0439"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0430\u044f"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044f\u044f"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043e\u0435"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0435\u0435"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044b\u0435"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0438\u0435"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043e\u0433\u043e"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0435\u0433\u043e"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043e\u043c\u0443"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0435\u043c\u0443"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044b\u043c"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0438\u043c"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0443\u044e"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044e\u044e"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044b\u0445"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0438\u0445"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    nop

    const-string v1, "\u044b\u043c\u0438"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    nop

    const-string v1, "\u0438\u043c\u0438"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043b"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043b\u0430"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043b\u043e"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    nop

    const-string v1, "\u043b\u0438"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    nop

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lru/localscribe/core/TranscriptEdits;->endings:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final accept$lambda$1(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final accept$lambda$2(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final compatibleEnding(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_0
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move v6, v2

    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v8, v7

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_d

    if-nez p3, :cond_3

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_3
    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move v6, v2

    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v8, v7

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v4, :cond_6

    goto/16 :goto_7

    :cond_6
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toLowerCase(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lru/localscribe/core/TranscriptEdits;->russian:Lkotlin/text/Regex;

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lru/localscribe/core/TranscriptEdits;->russian:Lkotlin/text/Regex;

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v7, v2, v8, v9}, Lkotlin/text/StringsKt;->commonPrefixWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v7, Lkotlin/ranges/IntRange;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v7, Ljava/lang/Iterable;

    const/4 v8, 0x0

    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_8

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v10, v9

    check-cast v10, Lkotlin/collections/IntIterator;

    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v10

    move v11, v10

    const/4 v12, 0x0

    sget-object v13, Lru/localscribe/core/TranscriptEdits;->endings:Ljava/util/Set;

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "substring(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    sget-object v13, Lru/localscribe/core/TranscriptEdits;->endings:Ljava/util/Set;

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move v11, v3

    goto :goto_4

    :cond_a
    move v11, v2

    :goto_4
    if-eqz v11, :cond_9

    move v2, v3

    goto :goto_5

    :cond_b
    nop

    :goto_5
    return v2

    :cond_c
    :goto_6
    return v2

    :cond_d
    :goto_7
    return v2
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v6, v4

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "<|"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    sget-object v0, Lru/localscribe/core/TranscriptEdits;->tokens:Lkotlin/text/Regex;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lru/localscribe/core/TranscriptEdits$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lru/localscribe/core/TranscriptEdits$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lru/localscribe/core/TranscriptEdits;->tokens:Lkotlin/text/Regex;

    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v2, v3, v4}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v4, Lru/localscribe/core/TranscriptEdits$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lru/localscribe/core/TranscriptEdits$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v4}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_3

    return-object p1

    :cond_3
    const/4 v4, 0x0

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v7

    add-int/2addr v7, v5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-gt v4, v3, :cond_6

    if-nez v8, :cond_5

    move v11, v5

    goto :goto_2

    :cond_5
    move v11, v2

    :goto_2
    invoke-direct {p0, v9, v10, v11}, Lru/localscribe/core/TranscriptEdits;->compatibleEnding(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_6
    return-object p1

    :cond_7
    return-object p2

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final partition(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "originals"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "candidate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v2, " "

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Lru/localscribe/core/TranscriptEdits;->accept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    move-object v8, v4

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v16, v2

    sget-object v2, Lru/localscribe/core/TranscriptEdits;->tokens:Lkotlin/text/Regex;

    move-object v3, v14

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v13, v12, v5}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    move-object/from16 v2, v16

    goto :goto_0

    :cond_2
    move-object/from16 v16, v2

    move-object v2, v7

    check-cast v2, Ljava/util/List;

    nop

    nop

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    instance-of v6, v3, Ljava/util/Collection;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v13

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_5

    move v9, v7

    goto :goto_1

    :cond_5
    move v9, v13

    :goto_1
    if-eqz v9, :cond_4

    move v3, v7

    goto :goto_2

    :cond_6
    move v3, v13

    :goto_2
    if-eqz v3, :cond_7

    return-object v5

    :cond_7
    sget-object v3, Lru/localscribe/core/TranscriptEdits;->tokens:Lkotlin/text/Regex;

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v13, v12, v5}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "substring(...)"

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v8, v10

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/text/MatchResult;

    invoke-interface {v14}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v14

    invoke-virtual {v14}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v14

    add-int/lit8 v15, v8, -0x1

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/text/MatchResult;

    invoke-interface {v15}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v15

    invoke-virtual {v15}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v15

    add-int/2addr v15, v7

    :goto_4
    if-le v14, v15, :cond_9

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "\u00ab\u201e\u201c("

    check-cast v7, Ljava/lang/CharSequence;

    move-object/from16 v17, v2

    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v7, v2, v13, v12, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_8
    move-object/from16 v17, v2

    :goto_5
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, v17

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v17, v2

    :cond_a
    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v14

    move-object/from16 v2, v17

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v17, v2

    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    const/4 v7, 0x0

    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    const/4 v10, 0x0

    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_c

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v13, 0x1

    goto :goto_7

    :cond_c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object v12, v11

    check-cast v12, Lkotlin/collections/IntIterator;

    invoke-virtual {v12}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v12

    move v14, v12

    const/4 v15, 0x0

    sget-object v5, Lru/localscribe/core/TranscriptEdits;->INSTANCE:Lru/localscribe/core/TranscriptEdits;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v13, v0}, Lru/localscribe/core/TranscriptEdits;->accept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    move-object/from16 v0, p1

    const/4 v5, 0x0

    const/4 v13, 0x0

    goto :goto_6

    :cond_e
    const/4 v13, 0x1

    :goto_7
    nop

    if-eqz v13, :cond_f

    move-object v5, v4

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    return-object v5
.end method
