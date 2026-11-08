.class public final Lru/localscribe/core/SpeakerTimeline;
.super Ljava/lang/Object;
.source "SpeakerTimeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/SpeakerTimeline$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lru/localscribe/core/SpeakerTimeline;",
        "",
        "input",
        "",
        "Lru/localscribe/core/VoiceTurn;",
        "<init>",
        "(Ljava/util/List;)V",
        "turns",
        "getTurns",
        "()Ljava/util/List;",
        "window",
        "start",
        "",
        "size",
        "",
        "Companion",
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
.field public static final Companion:Lru/localscribe/core/SpeakerTimeline$Companion;


# instance fields
.field private final turns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Da0Anut4eTMB3Pi1Qm6vNwcqyzA(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/SpeakerTimeline;->turns$lambda$0(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GvZKB99m_vEqXHqDR0fOxQtW5nU(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/SpeakerTimeline;->turns$lambda$2(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JBU45WsB2AAeOl7i9-CvUyQ8950(JILru/localscribe/core/VoiceTurn;)Lru/localscribe/core/VoiceTurn;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/core/SpeakerTimeline;->window$lambda$1(JILru/localscribe/core/VoiceTurn;)Lru/localscribe/core/VoiceTurn;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pb37Q64DU0A70XP-C8hcvxFa5z8(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lru/localscribe/core/SpeakerTimeline;->turns$lambda$1(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycVz5uNdwiXNTEMnML65Nc2eVww(JILru/localscribe/core/VoiceTurn;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/core/SpeakerTimeline;->window$lambda$0(JILru/localscribe/core/VoiceTurn;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/core/SpeakerTimeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/SpeakerTimeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/SpeakerTimeline;->Companion:Lru/localscribe/core/SpeakerTimeline$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/jvm/functions/Function1;

    new-instance v2, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda2;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda4;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/core/SpeakerTimeline;->turns:Ljava/util/List;

    return-void
.end method

.method private static final turns$lambda$0(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final turns$lambda$1(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final turns$lambda$2(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/VoiceTurn;->getSpeaker()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final window$lambda$0(JILru/localscribe/core/VoiceTurn;)Z
    .locals 4

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v2, p0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p3}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final window$lambda$1(JILru/localscribe/core/VoiceTurn;)Lru/localscribe/core/VoiceTurn;
    .locals 11

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lru/localscribe/core/VoiceTurn;->getStart()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {p3}, Lru/localscribe/core/VoiceTurn;->getEnd()J

    move-result-wide v0

    int-to-long v5, p2

    add-long/2addr v5, p0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v10}, Lru/localscribe/core/VoiceTurn;->copy$default(Lru/localscribe/core/VoiceTurn;JJIZILjava/lang/Object;)Lru/localscribe/core/VoiceTurn;

    move-result-object p3

    return-object p3
.end method


# virtual methods
.method public final getTurns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/SpeakerTimeline;->turns:Ljava/util/List;

    return-object v0
.end method

.method public final window(JI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lru/localscribe/core/VoiceTurn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/SpeakerTimeline;->turns:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda0;-><init>(JI)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda1;-><init>(JI)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
