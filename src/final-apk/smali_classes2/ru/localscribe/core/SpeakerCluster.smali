.class public final Lru/localscribe/core/SpeakerCluster;
.super Ljava/lang/Object;
.source "SpeakerCluster.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/SpeakerCluster$Companion;,
        Lru/localscribe/core/SpeakerCluster$Match;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeakerCluster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeakerCluster.kt\nru/localscribe/core/SpeakerCluster\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,246:1\n1056#2:247\n1374#2:248\n1460#2,2:249\n1563#2:251\n1634#2,3:252\n1462#2,3:255\n774#2:258\n865#2,2:259\n774#2:262\n865#2,2:263\n774#2:265\n865#2,2:266\n1999#2,14:268\n295#2,2:282\n1617#2,9:284\n1869#2:293\n1870#2:295\n1626#2:296\n774#2:297\n865#2,2:298\n1491#2:300\n1516#2,3:301\n1519#2,3:311\n1869#2:314\n1617#2,9:315\n1869#2:324\n1870#2:326\n1626#2:327\n1870#2:328\n774#2:329\n865#2,2:330\n1563#2:332\n1634#2,3:333\n1068#2:336\n1788#2,4:337\n1788#2,4:341\n360#2,7:345\n1617#2,9:352\n1869#2:361\n1870#2:363\n1626#2:364\n774#2:365\n865#2,2:366\n1563#2:368\n1634#2,3:369\n1068#2:372\n774#2:373\n865#2,2:374\n1761#2,3:376\n1563#2:379\n1634#2,3:380\n774#2:383\n865#2,2:384\n774#2:386\n865#2,2:387\n1374#2:389\n1460#2,5:390\n1#3:261\n1#3:294\n1#3:325\n1#3:362\n382#4,7:304\n*S KotlinDebug\n*F\n+ 1 SpeakerCluster.kt\nru/localscribe/core/SpeakerCluster\n*L\n9#1:247\n42#1:248\n42#1:249,2\n42#1:251\n42#1:252,3\n42#1:255,3\n43#1:258\n43#1:259,2\n21#1:262\n21#1:263,2\n24#1:265\n24#1:266,2\n24#1:268,14\n27#1:282,2\n33#1:284,9\n33#1:293\n33#1:295\n33#1:296\n59#1:297\n59#1:298,2\n60#1:300\n60#1:301,3\n60#1:311,3\n62#1:314\n63#1:315,9\n63#1:324\n63#1:326\n63#1:327\n62#1:328\n77#1:329\n77#1:330,2\n78#1:332\n78#1:333,3\n79#1:336\n107#1:337,4\n109#1:341,4\n111#1:345,7\n123#1:352,9\n123#1:361\n123#1:363\n123#1:364\n144#1:365\n144#1:366,2\n145#1:368\n145#1:369,3\n146#1:372\n159#1:373\n159#1:374,2\n165#1:376,3\n216#1:379\n216#1:380,3\n218#1:383\n218#1:384,2\n224#1:386\n224#1:387,2\n224#1:389\n224#1:390,5\n33#1:294\n63#1:325\n123#1:362\n60#1:304,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0004\u0018\u0000 -2\u00020\u0001:\u0002,-B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J.\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0014J\u001a\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0012J\u0014\u0010\u001b\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0005J4\u0010\u001e\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00142\u0008\u0008\u0002\u0010!\u001a\u00020 J\u0010\u0010\"\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0006H\u0002J$\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u00050\u00052\u0006\u0010(\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0010H\u0002J\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120*2\u000e\u0008\u0002\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00140\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lru/localscribe/core/SpeakerCluster;",
        "",
        "settings",
        "Lru/localscribe/core/Settings;",
        "initial",
        "",
        "Lru/localscribe/core/Speaker;",
        "<init>",
        "(Lru/localscribe/core/Settings;Ljava/util/List;)V",
        "speakers",
        "",
        "getSpeakers",
        "()Ljava/util/List;",
        "provisional",
        "Lru/localscribe/core/SpeakerCluster$Match;",
        "raw",
        "",
        "preferredId",
        "",
        "excludedIds",
        "",
        "cannotLink",
        "",
        "keepDistinct",
        "",
        "a",
        "b",
        "restoreConstraints",
        "segments",
        "Lru/localscribe/core/Segment;",
        "assign",
        "allowCreate",
        "",
        "confirmedNewVoice",
        "identify",
        "similarity",
        "",
        "x",
        "speaker",
        "examples",
        "old",
        "refine",
        "",
        "protectedIds",
        "Match",
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
.field public static final Companion:Lru/localscribe/core/SpeakerCluster$Companion;


# instance fields
.field private final cannotLink:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final settings:Lru/localscribe/core/Settings;

.field private final speakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1mKo8oz3R3iaj00VXMYT9X0mG70(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/localscribe/core/SpeakerCluster;->refine$lambda$3(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$am112eMfKU-6vghGEAzy7-6mppM(Lru/localscribe/core/Speaker;Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/localscribe/core/SpeakerCluster;->refine$lambda$2(Lru/localscribe/core/Speaker;Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/core/SpeakerCluster$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/SpeakerCluster$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    return-void
.end method

.method public constructor <init>(Lru/localscribe/core/Settings;Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Settings;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "settings"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "initial"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    nop

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v5, Lru/localscribe/core/SpeakerCluster$special$$inlined$sortedBy$1;

    invoke-direct {v5}, Lru/localscribe/core/SpeakerCluster$special$$inlined$sortedBy$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    nop

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    move-object v6, v3

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lru/localscribe/core/Speaker;

    const/4 v14, 0x0

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getDistinctFrom()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    const/16 v16, 0x0

    const/16 v17, 0x1

    new-instance v10, Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/16 v11, 0xa

    invoke-static {v15, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    move-object v11, v15

    const/16 v19, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v21

    check-cast v22, Ljava/lang/String;

    const/16 v23, 0x0

    new-array v1, v12, [Ljava/lang/String;

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v1, v18

    aput-object v22, v1, v17

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    goto :goto_1

    :cond_0
    nop

    move-object v1, v10

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    nop

    nop

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v1, v5

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/util/Set;

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v11

    if-ne v11, v12, :cond_3

    move/from16 v9, v17

    goto :goto_3

    :cond_3
    move/from16 v9, v18

    :goto_3
    if-eqz v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    nop

    check-cast v4, Ljava/util/List;

    nop

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lru/localscribe/core/Settings;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lru/localscribe/core/SpeakerCluster;-><init>(Lru/localscribe/core/Settings;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic assign$default(Lru/localscribe/core/SpeakerCluster;[FZLjava/util/Set;ZILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/localscribe/core/SpeakerCluster;->assign([FZLjava/util/Set;Z)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object p0

    return-object p0
.end method

.method private final examples(Lru/localscribe/core/Speaker;[F)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/core/Speaker;",
            "[F)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lru/localscribe/core/Speaker;->getVoiceSamples()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    instance-of v3, v1, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    sget-object v9, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    move-object v10, v7

    check-cast v10, Ljava/util/Collection;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v9

    const v10, 0x3f733333    # 0.95f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    move v7, v5

    goto :goto_0

    :cond_3
    move v7, v4

    :goto_0
    if-eqz v7, :cond_2

    move v4, v5

    goto :goto_1

    :cond_4
    nop

    :goto_1
    if-eqz v4, :cond_5

    return-object v0

    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic provisional$default(Lru/localscribe/core/SpeakerCluster;[FLjava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lru/localscribe/core/SpeakerCluster$Match;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lru/localscribe/core/SpeakerCluster;->provisional([FLjava/lang/String;Ljava/util/Set;)Lru/localscribe/core/SpeakerCluster$Match;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic refine$default(Lru/localscribe/core/SpeakerCluster;Ljava/util/Set;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lru/localscribe/core/SpeakerCluster;->refine(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final refine$lambda$2(Lru/localscribe/core/Speaker;Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "v"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    return-object p2
.end method

.method private static final refine$lambda$3(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final similarity([FLru/localscribe/core/Speaker;)F
    .locals 11

    invoke-virtual {p2}, Lru/localscribe/core/Speaker;->getVoiceSamples()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p2}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    array-length v10, p1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    nop

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    sget-object v3, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    sget-object v4, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final assign([FZLjava/util/Set;Z)Lru/localscribe/core/SpeakerCluster$Match;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lru/localscribe/core/SpeakerCluster$Match;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "excludedIds"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    if-nez v1, :cond_0

    new-instance v4, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_0
    invoke-virtual {v3, v1}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v4, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1
    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    nop

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lru/localscribe/core/Speaker;

    const/4 v14, 0x0

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    array-length v11, v3

    if-ne v15, v11, :cond_3

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move v11, v12

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_2

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    nop

    check-cast v6, Ljava/util/List;

    nop

    check-cast v6, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    move-object v7, v6

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/core/Speaker;

    const/4 v13, 0x0

    invoke-direct {v0, v3, v11}, Lru/localscribe/core/SpeakerCluster;->similarity([FLru/localscribe/core/Speaker;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    nop

    check-cast v5, Ljava/util/List;

    nop

    check-cast v5, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v6, Lru/localscribe/core/SpeakerCluster$assign$$inlined$sortedByDescending$1;

    invoke-direct {v6}, Lru/localscribe/core/SpeakerCluster$assign$$inlined$sortedByDescending$1;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    nop

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v7}, Lru/localscribe/core/Settings;->getMatchThreshold()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v12, :cond_6

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x3d75c28f    # 0.06f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    :cond_6
    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Speaker;

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v8

    const/16 v9, 0x32

    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    sget-object v9, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    array-length v10, v3

    new-array v11, v10, [F

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_7

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    int-to-float v15, v8

    mul-float/2addr v14, v15

    aget v15, v3, v13

    add-float/2addr v14, v15

    add-int/lit8 v15, v8, 0x1

    int-to-float v15, v15

    div-float/2addr v14, v15

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v9, v11}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    nop

    iget-object v10, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    nop

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v20

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v11

    add-int/lit8 v21, v11, 0x1

    nop

    invoke-direct {v0, v7, v3}, Lru/localscribe/core/SpeakerCluster;->examples(Lru/localscribe/core/Speaker;[F)Ljava/util/List;

    move-result-object v29

    const/16 v31, 0x17f3

    const/16 v32, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v17 .. v32}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v7

    invoke-interface {v10, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual/range {v17 .. v17}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/Float;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    :cond_8
    nop

    if-eqz p2, :cond_19

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    if-eqz p4, :cond_9

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v7}, Lru/localscribe/core/Settings;->getConfirmedNewThreshold()F

    move-result v7

    goto :goto_4

    :cond_9
    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v7}, Lru/localscribe/core/Settings;->getNewThreshold()F

    move-result v7

    :goto_4
    cmpg-float v6, v6, v7

    if-gez v6, :cond_19

    :cond_a
    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_b

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/core/Speaker;

    const/4 v13, 0x0

    invoke-virtual {v11}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_5

    :cond_d
    nop

    :goto_6
    const/16 v6, 0x40

    if-ge v8, v6, :cond_19

    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v6}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_e

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/core/Speaker;

    const/4 v13, 0x0

    invoke-virtual {v11}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    add-int/lit8 v8, v8, 0x1

    if-gez v8, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_7

    :cond_10
    nop

    :goto_8
    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v6}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v6

    if-ge v8, v6, :cond_19

    :cond_11
    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/core/Speaker;

    const/4 v13, 0x0

    invoke-virtual {v11}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v11}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    move v11, v12

    goto :goto_a

    :cond_12
    const/4 v11, 0x0

    :goto_a
    if-eqz v11, :cond_13

    goto :goto_b

    :cond_13
    nop

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_14
    const/4 v9, -0x1

    move v8, v9

    :goto_b
    nop

    if-ltz v8, :cond_15

    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lru/localscribe/core/Speaker;

    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    nop

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v12

    nop

    nop

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v23, 0x17f3

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    invoke-static/range {v9 .. v24}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v9}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_15
    iget-object v6, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    const/4 v7, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    move-object v10, v6

    const/4 v11, 0x0

    move-object v13, v10

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    move/from16 v18, v12

    const-string v12, "speaker_"

    if-eqz v17, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v17

    const/16 v20, 0x0

    move-object/from16 v21, v19

    check-cast v21, Lru/localscribe/core/Speaker;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v21}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v1, v12}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v12, 0x0

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object/from16 v1, p1

    move/from16 v12, v18

    goto :goto_c

    :cond_17
    nop

    nop

    move-object v1, v9

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_d

    :cond_18
    const/4 v11, 0x0

    :goto_d
    nop

    add-int/lit8 v11, v11, 0x1

    nop

    new-instance v13, Lru/localscribe/core/Speaker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v16

    nop

    nop

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    const/16 v27, 0x17f0

    const/16 v28, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v13 .. v28}, Lru/localscribe/core/Speaker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    nop

    iget-object v1, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v14, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14

    :cond_19
    new-instance v15, Lru/localscribe/core/SpeakerCluster$Match;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    :goto_e
    move-object/from16 v17, v1

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v20}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15
.end method

.method public final getSpeakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Speaker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    return-object v0
.end method

.method public final identify([F)Lru/localscribe/core/SpeakerCluster$Match;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    if-nez v1, :cond_0

    new-instance v3, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_0
    invoke-virtual {v2, v1}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_1
    iget-object v3, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    move-object v6, v3

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lru/localscribe/core/Speaker;

    const/4 v13, 0x0

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    array-length v15, v2

    if-ne v14, v15, :cond_3

    move v10, v11

    :cond_3
    if-eqz v10, :cond_2

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    nop

    check-cast v5, Ljava/util/List;

    nop

    check-cast v5, Ljava/lang/Iterable;

    nop

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    move-object v6, v5

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lru/localscribe/core/Speaker;

    const/4 v13, 0x0

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v2, v12}, Lru/localscribe/core/SpeakerCluster;->similarity([FLru/localscribe/core/Speaker;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    nop

    check-cast v4, Ljava/util/List;

    nop

    check-cast v4, Ljava/lang/Iterable;

    nop

    const/4 v3, 0x0

    new-instance v5, Lru/localscribe/core/SpeakerCluster$identify$$inlined$sortedByDescending$1;

    invoke-direct {v5}, Lru/localscribe/core/SpeakerCluster$identify$$inlined$sortedByDescending$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-nez v4, :cond_6

    new-instance v12, Lru/localscribe/core/SpeakerCluster$Match;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12

    :cond_6
    nop

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v9, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v9}, Lru/localscribe/core/Settings;->getMatchThreshold()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_7

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Pair;

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3d75c28f    # 0.06f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8

    :cond_7
    move v10, v11

    goto :goto_2

    :cond_8
    nop

    :goto_2
    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Float;

    new-instance v6, Lru/localscribe/core/SpeakerCluster$Match;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final keepDistinct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v5, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lru/localscribe/core/Speaker;

    invoke-virtual {v6}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    :goto_1
    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-virtual {v6}, Lru/localscribe/core/Speaker;->getDistinctFrom()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0xfff

    const/16 v21, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v22, v18

    const/16 v18, 0x0

    move-object/from16 v0, v22

    invoke-static/range {v6 .. v21}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final provisional([FLjava/lang/String;Ljava/util/Set;)Lru/localscribe/core/SpeakerCluster$Match;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lru/localscribe/core/SpeakerCluster$Match;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "excludedIds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v3, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    move-object/from16 v4, p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lru/localscribe/core/Speaker;

    const/4 v12, 0x0

    invoke-virtual {v11}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    nop

    check-cast v6, Ljava/util/List;

    nop

    nop

    const/4 v5, 0x1

    if-eqz v3, :cond_a

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    move-object v12, v9

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lru/localscribe/core/Speaker;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    array-length v2, v7

    if-ne v4, v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v11, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    nop

    move-object v2, v11

    check-cast v2, Ljava/util/List;

    nop

    check-cast v2, Ljava/lang/Iterable;

    nop

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_4

    :cond_7
    move-object v11, v10

    check-cast v11, Lru/localscribe/core/Speaker;

    const/4 v12, 0x0

    invoke-direct {v0, v7, v11}, Lru/localscribe/core/SpeakerCluster;->similarity([FLru/localscribe/core/Speaker;)F

    move-result v11

    nop

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lru/localscribe/core/Speaker;

    const/4 v14, 0x0

    invoke-direct {v0, v7, v13}, Lru/localscribe/core/SpeakerCluster;->similarity([FLru/localscribe/core/Speaker;)F

    move-result v13

    nop

    invoke-static {v11, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-gez v14, :cond_9

    move-object v10, v12

    move v11, v13

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    nop

    :goto_4
    move-object v2, v10

    check-cast v2, Lru/localscribe/core/Speaker;

    nop

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    nop

    if-eqz v2, :cond_b

    new-instance v4, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v2}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v3, v2}, Lru/localscribe/core/SpeakerCluster;->similarity([FLru/localscribe/core/Speaker;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v4, v7, v8, v5}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    return-object v4

    :cond_b
    move-object v4, v6

    check-cast v4, Ljava/lang/Iterable;

    const/4 v7, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lru/localscribe/core/Speaker;

    const/4 v11, 0x0

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p2

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_6

    :cond_d
    move-object/from16 v13, p2

    const/4 v9, 0x0

    :goto_6
    check-cast v9, Lru/localscribe/core/Speaker;

    if-nez v9, :cond_e

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lru/localscribe/core/Speaker;

    :cond_e
    if-eqz v9, :cond_f

    new-instance v4, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v9}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v5}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    return-object v4

    :cond_f
    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v7, 0x40

    if-ge v4, v7, :cond_14

    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v4}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v4

    if-lez v4, :cond_10

    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v7}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v7

    if-lt v4, v7, :cond_10

    goto/16 :goto_9

    :cond_10
    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v10

    const/4 v14, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move/from16 v17, v5

    const-string v5, "speaker_"

    if-eqz v16, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v16

    const/16 v21, 0x0

    move-object/from16 v22, v20

    check-cast v22, Lru/localscribe/core/Speaker;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v5, 0x0

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object/from16 v1, p3

    move/from16 v5, v17

    goto :goto_7

    :cond_12
    nop

    nop

    move-object v1, v8

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    nop

    add-int/lit8 v4, v4, 0x1

    nop

    new-instance v19, Lru/localscribe/core/Speaker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0423\u0447\u0430\u0441\u0442\u043d\u0438\u043a "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v33, 0x1ffc

    const/16 v34, 0x0

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

    invoke-direct/range {v19 .. v34}, Lru/localscribe/core/Speaker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v19

    iget-object v5, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v5, Lru/localscribe/core/SpeakerCluster$Match;

    invoke-virtual {v1}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, v17

    const/4 v10, 0x0

    invoke-direct {v5, v7, v10, v8}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    return-object v5

    :cond_14
    :goto_9
    new-instance v1, Lru/localscribe/core/SpeakerCluster$Match;

    iget-object v4, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/localscribe/core/Speaker;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_15
    const/4 v8, 0x0

    :goto_a
    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-direct {v1, v8, v10, v4}, Lru/localscribe/core/SpeakerCluster$Match;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    return-object v1
.end method

.method public final refine(Ljava/util/Set;)Ljava/util/Map;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "protectedIds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    :goto_0
    iget-object v3, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    const/4 v3, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ge v6, v7, :cond_5

    add-int/lit8 v10, v6, 0x1

    iget-object v11, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    :goto_2
    if-ge v10, v11, :cond_4

    iget-object v12, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/localscribe/core/Speaker;

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/localscribe/core/Speaker;

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v12, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    new-array v13, v8, [Ljava/lang/String;

    iget-object v14, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/localscribe/core/Speaker;

    invoke-virtual {v14}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    iget-object v14, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/localscribe/core/Speaker;

    invoke-virtual {v14}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v13}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    nop

    iget-object v12, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/localscribe/core/Speaker;

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/localscribe/core/Speaker;

    invoke-virtual {v12}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iget-object v13, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/localscribe/core/Speaker;

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_1

    goto :goto_3

    :cond_1
    sget-object v12, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    iget-object v13, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/localscribe/core/Speaker;

    invoke-virtual {v13}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v13

    iget-object v14, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/localscribe/core/Speaker;

    invoke-virtual {v14}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lru/localscribe/core/SpeakerCluster$Companion;->cosine([F[F)F

    move-result v12

    nop

    cmpl-float v13, v12, v5

    if-lez v13, :cond_3

    move v5, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    if-nez v3, :cond_6

    move-object/from16 v22, v2

    goto/16 :goto_d

    :cond_6
    move-object v6, v3

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v7}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v10, v0, Lru/localscribe/core/SpeakerCluster;->settings:Lru/localscribe/core/Settings;

    invoke-virtual {v10}, Lru/localscribe/core/Settings;->getSpeakers()I

    move-result v10

    if-gt v7, v10, :cond_8

    :cond_7
    const v7, 0x3f47ae14    # 0.78f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_8

    move-object/from16 v22, v2

    goto/16 :goto_d

    :cond_8
    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lru/localscribe/core/Speaker;

    iget-object v7, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Speaker;

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v11

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v12

    add-int v14, v11, v12

    sget-object v11, Lru/localscribe/core/SpeakerCluster;->Companion:Lru/localscribe/core/SpeakerCluster$Companion;

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v13, v12, [F

    move v15, v9

    :goto_5
    if-ge v15, v12, :cond_9

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getObservations()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v9, v8

    add-float/2addr v4, v9

    int-to-float v8, v14

    div-float/2addr v4, v8

    aput v4, v13, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {v11, v13}, Lru/localscribe/core/SpeakerCluster$Companion;->normalize([F)[F

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    nop

    iget-object v8, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    nop

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v13

    nop

    nop

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getVoiceSamples()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v11, 0x0

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    :cond_a
    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getVoiceSamples()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v12, 0x0

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getCentroid()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    :cond_b
    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    const/4 v12, 0x6

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v22

    const/16 v24, 0x17f3

    const/16 v25, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-static/range {v10 .. v25}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7, v10}, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/core/Speaker;Lru/localscribe/core/Speaker;)V

    new-instance v9, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda1;

    invoke-direct {v9, v8}, Lru/localscribe/core/SpeakerCluster$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2, v9}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    iget-object v8, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    move-object v13, v8

    const/4 v15, 0x0

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v17

    check-cast v18, Ljava/util/Set;

    const/16 v19, 0x0

    move-object/from16 v12, v18

    check-cast v12, Ljava/lang/Iterable;

    const/16 v21, 0x0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v22, v2

    move-object/from16 v20, v3

    const/16 v2, 0xa

    invoke-static {v12, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    move-object v3, v12

    const/16 v23, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v2, v25

    check-cast v2, Ljava/lang/String;

    const/16 v30, 0x0

    move-object/from16 v31, v3

    invoke-virtual {v7}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v10}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :cond_c
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v31

    const/16 v2, 0xa

    goto :goto_7

    :cond_d
    move-object/from16 v31, v3

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move-object/from16 v2, v22

    const/16 v12, 0xa

    goto :goto_6

    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v20, v3

    move-object v1, v11

    check-cast v1, Ljava/util/List;

    nop

    nop

    nop

    iget-object v2, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    move-object v11, v3

    const/4 v12, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Ljava/util/Set;

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v1

    move-object/from16 v19, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_10

    invoke-interface {v9, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_8

    :cond_11
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object v1, v9

    check-cast v1, Ljava/util/List;

    nop

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    iget-object v2, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_15

    iget-object v3, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lru/localscribe/core/Speaker;

    iget-object v3, v0, Lru/localscribe/core/SpeakerCluster;->speakers:Ljava/util/List;

    nop

    iget-object v8, v0, Lru/localscribe/core/SpeakerCluster;->cannotLink:Ljava/util/Set;

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    move-object v12, v8

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move/from16 v16, v2

    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    const/16 v17, 0x0

    move-object/from16 v19, v4

    invoke-virtual/range {v23 .. v23}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, v19

    goto :goto_b

    :cond_13
    move/from16 v16, v2

    move-object/from16 v19, v4

    move-object v0, v11

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/util/Set;

    const/4 v15, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v23 .. v23}, Lru/localscribe/core/Speaker;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, v17

    goto :goto_c

    :cond_14
    move-object/from16 v17, v0

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v36

    const/16 v37, 0xfff

    const/16 v38, 0x0

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

    invoke-static/range {v23 .. v38}, Lru/localscribe/core/Speaker;->copy$default(Lru/localscribe/core/Speaker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/Float;ZLjava/lang/Long;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lru/localscribe/core/Speaker;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, v19

    goto/16 :goto_a

    :cond_15
    move-object/from16 v19, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    goto/16 :goto_0

    :cond_16
    move-object/from16 v22, v2

    :goto_d
    return-object v22
.end method

.method public final restoreConstraints(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "segments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lru/localscribe/core/Segment;

    const/4 v9, 0x0

    invoke-virtual {v8}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    nop

    check-cast v3, Ljava/util/List;

    nop

    check-cast v3, Ljava/lang/Iterable;

    nop

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lru/localscribe/core/Segment;

    const/4 v9, 0x0

    invoke-virtual {v8}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lru/localscribe/core/SeparationInfo;->getGroup()Ljava/lang/String;

    move-result-object v8

    nop

    move-object v9, v8

    move-object v10, v2

    const/4 v11, 0x0

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    const/4 v13, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Ljava/util/List;

    nop

    invoke-interface {v10, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_3

    :cond_3
    move-object v14, v12

    :goto_3
    nop

    move-object v9, v14

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    nop

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    move-object v7, v5

    check-cast v7, Ljava/lang/Iterable;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v10

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    const/16 v17, 0x0

    move-object/from16 v18, v16

    check-cast v18, Lru/localscribe/core/Segment;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, p1

    goto :goto_5

    :cond_6
    nop

    nop

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    nop

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_6
    if-ge v7, v8, :cond_8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    :goto_7
    if-ge v9, v10, :cond_7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v13, p0

    invoke-virtual {v13, v11, v12}, Lru/localscribe/core/SpeakerCluster;->keepDistinct(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v13, p0

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v13, p0

    nop

    move-object/from16 v0, p1

    goto/16 :goto_4

    :cond_9
    move-object/from16 v13, p0

    return-void
.end method
