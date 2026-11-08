.class public final Lru/localscribe/ui/HexTokens;
.super Ljava/lang/Object;
.source "HexTheme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u001f\u001a\u00020\u00052\u0008\u0010 \u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008\"\u0010#R\u0013\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u000c\u0010\u0007R\u0013\u0010\r\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u000e\u0010\u0007R\u0013\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0007R\u0013\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0007R\u0013\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0007R\u0013\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0016\u0010\u0007R\u0013\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0018\u0010\u0007R\u0013\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001a\u0010\u0007R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lru/localscribe/ui/HexTokens;",
        "",
        "<init>",
        "()V",
        "Ink",
        "Landroidx/compose/ui/graphics/Color;",
        "getInk-0d7_KjU",
        "()J",
        "J",
        "Paper",
        "getPaper-0d7_KjU",
        "Panel",
        "getPanel-0d7_KjU",
        "Raised",
        "getRaised-0d7_KjU",
        "Muted",
        "getMuted-0d7_KjU",
        "Red",
        "getRed-0d7_KjU",
        "Purple",
        "getPurple-0d7_KjU",
        "Green",
        "getGreen-0d7_KjU",
        "Orange",
        "getOrange-0d7_KjU",
        "Yellow",
        "getYellow-0d7_KjU",
        "Speakers",
        "",
        "getSpeakers",
        "()Ljava/util/List;",
        "speaker",
        "id",
        "",
        "speaker-vNxB06k",
        "(Ljava/lang/String;)J",
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

.field private static final Green:J

.field public static final INSTANCE:Lru/localscribe/ui/HexTokens;

.field private static final Ink:J

.field private static final Muted:J

.field private static final Orange:J

.field private static final Panel:J

.field private static final Paper:J

.field private static final Purple:J

.field private static final Raised:J

.field private static final Red:J

.field private static final Speakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final Yellow:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/ui/HexTokens;

    invoke-direct {v0}, Lru/localscribe/ui/HexTokens;-><init>()V

    sput-object v0, Lru/localscribe/ui/HexTokens;->INSTANCE:Lru/localscribe/ui/HexTokens;

    const-wide v0, 0xff07070cL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Ink:J

    const-wide v0, 0xfff8f7f2L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Paper:J

    const-wide v0, 0xff171720L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Panel:J

    const-wide v0, 0xff22222fL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Raised:J

    const-wide v0, 0xffa2a2a6L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Muted:J

    const-wide v0, 0xffff1f4dL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Red:J

    const-wide v0, 0xff636de7L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Purple:J

    const-wide v0, 0xffb7e321L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Green:J

    const-wide v0, 0xfff0691cL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Orange:J

    const-wide v0, 0xfffdcf01L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lru/localscribe/ui/HexTokens;->Yellow:J

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/compose/ui/graphics/Color;

    sget-wide v1, Lru/localscribe/ui/HexTokens;->Purple:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-wide v1, Lru/localscribe/ui/HexTokens;->Green:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-wide v1, Lru/localscribe/ui/HexTokens;->Orange:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-wide v1, Lru/localscribe/ui/HexTokens;->Red:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-wide v1, Lru/localscribe/ui/HexTokens;->Yellow:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-wide v1, 0xffd9d9d9L

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/localscribe/ui/HexTokens;->Speakers:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/ui/HexTokens;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGreen-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Green:J

    return-wide v0
.end method

.method public final getInk-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Ink:J

    return-wide v0
.end method

.method public final getMuted-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Muted:J

    return-wide v0
.end method

.method public final getOrange-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Orange:J

    return-wide v0
.end method

.method public final getPanel-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Panel:J

    return-wide v0
.end method

.method public final getPaper-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Paper:J

    return-wide v0
.end method

.method public final getPurple-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Purple:J

    return-wide v0
.end method

.method public final getRaised-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Raised:J

    return-wide v0
.end method

.method public final getRed-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Red:J

    return-wide v0
.end method

.method public final getSpeakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    sget-object v0, Lru/localscribe/ui/HexTokens;->Speakers:Ljava/util/List;

    return-object v0
.end method

.method public final getYellow-0d7_KjU()J
    .locals 2

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Yellow:J

    return-wide v0
.end method

.method public final speaker-vNxB06k(Ljava/lang/String;)J
    .locals 5

    if-nez p1, :cond_0

    sget-wide v0, Lru/localscribe/ui/HexTokens;->Muted:J

    goto :goto_1

    :cond_0
    sget-object v0, Lru/localscribe/ui/HexTokens;->Speakers:Ljava/util/List;

    const-string v1, "speaker_"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    :goto_0
    sget-object v2, Lru/localscribe/ui/HexTokens;->Speakers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    xor-int v3, v1, v2

    neg-int v4, v1

    or-int/2addr v4, v1

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1f

    and-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method
