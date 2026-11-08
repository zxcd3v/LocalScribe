.class public final Lru/localscribe/engine/TranscriptEditingWindow;
.super Ljava/lang/Object;
.source "TranscriptEditingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranscriptEditingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranscriptEditingWindow.kt\nru/localscribe/engine/TranscriptEditingWindow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1#2:56\n1563#3:57\n1634#3,3:58\n1573#3:61\n1604#3,4:62\n1869#3,2:66\n*S KotlinDebug\n*F\n+ 1 TranscriptEditingWindow.kt\nru/localscribe/engine/TranscriptEditingWindow\n*L\n36#1:57\n36#1:58,3\n38#1:61\n38#1:62,4\n45#1:66,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001BM\u0012*\u0010\u0002\u001a&\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0004\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0008J\u0006\u0010\u0012\u001a\u00020\tJ\u0008\u0010\u0013\u001a\u00020\tH\u0002J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0008H\u0002R2\u0010\u0002\u001a&\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0004\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lru/localscribe/engine/TranscriptEditingWindow;",
        "",
        "edit",
        "Lkotlin/Function2;",
        "",
        "",
        "complete",
        "Lkotlin/Function1;",
        "Lru/localscribe/core/Segment;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "pending",
        "",
        "previous",
        "Lkotlin/collections/ArrayDeque;",
        "push",
        "segment",
        "finish",
        "flush",
        "remember",
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
.field private final complete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final edit:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final previous:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/TranscriptEditingWindow;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "edit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/engine/TranscriptEditingWindow;->edit:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lru/localscribe/engine/TranscriptEditingWindow;->complete:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lru/localscribe/engine/TranscriptEditingWindow;->previous:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method private final flush()V
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/core/Segment;

    const/4 v10, 0x0

    invoke-virtual {v9}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    nop

    check-cast v3, Ljava/util/List;

    nop

    nop

    iget-object v1, v0, Lru/localscribe/engine/TranscriptEditingWindow;->edit:Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Lru/localscribe/engine/TranscriptEditingWindow;->previous:Lkotlin/collections/ArrayDeque;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    if-gez v8, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object v12, v10

    check-cast v12, Lru/localscribe/core/Segment;

    const/16 v42, 0x0

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_3

    invoke-virtual {v12}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v13

    :cond_3
    sget-object v14, Lru/localscribe/core/TranscriptEdits;->INSTANCE:Lru/localscribe/core/TranscriptEdits;

    invoke-virtual {v12}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Lru/localscribe/core/TranscriptEdits;->accept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v43, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v15, v1, :cond_4

    invoke-virtual {v12}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v12}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v39

    const v40, 0xffffdf

    const/16 v41, 0x0

    move-object v1, v13

    const/4 v13, 0x0

    move-object/from16 v20, v14

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

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

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v12 .. v41}, Lru/localscribe/core/Segment;->copy$default(Lru/localscribe/core/Segment;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Segment;

    move-result-object v13

    move-object v12, v13

    goto :goto_2

    :cond_4
    move-object v1, v13

    move-object/from16 v20, v14

    nop

    :goto_2
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v8, v11

    move-object/from16 v1, v43

    goto/16 :goto_1

    :cond_5
    move-object/from16 v43, v1

    move-object v1, v4

    check-cast v1, Ljava/util/List;

    nop

    nop

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lru/localscribe/core/Segment;

    const/4 v8, 0x0

    invoke-direct {v0, v7}, Lru/localscribe/engine/TranscriptEditingWindow;->remember(Lru/localscribe/core/Segment;)V

    nop

    goto :goto_3

    :cond_6
    nop

    iget-object v2, v0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lru/localscribe/engine/TranscriptEditingWindow;->complete:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final remember(Lru/localscribe/core/Segment;)V
    .locals 4

    iget-object v0, p0, Lru/localscribe/engine/TranscriptEditingWindow;->previous:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "\u041d\u0435\u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0451\u043d\u043d\u044b\u0439 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a"

    :cond_0
    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lru/localscribe/engine/TranscriptEditingWindow;->previous:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lru/localscribe/engine/TranscriptEditingWindow;->previous:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/engine/TranscriptEditingWindow;->flush()V

    return-void
.end method

.method public final push(Lru/localscribe/core/Segment;)V
    .locals 8

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "corrected"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getOriginalAsrText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x5dc

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    nop

    if-nez v0, :cond_1

    invoke-direct {p0}, Lru/localscribe/engine/TranscriptEditingWindow;->flush()V

    invoke-direct {p0, p1}, Lru/localscribe/engine/TranscriptEditingWindow;->remember(Lru/localscribe/core/Segment;)V

    iget-object v1, p0, Lru/localscribe/engine/TranscriptEditingWindow;->complete:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v3, p0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/localscribe/core/Segment;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSpeakerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getSpeakerProvisional()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSpeakerProvisional()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getSeparation()Lru/localscribe/core/SeparationInfo;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v4

    invoke-virtual {v3}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v6, v4

    if-gtz v6, :cond_2

    const-wide/16 v6, 0x4b1

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_4

    iget-object v4, p0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/localscribe/core/Segment;

    nop

    const/4 v6, 0x0

    invoke-virtual {v5}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    add-int/2addr v2, v7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lru/localscribe/core/Segment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    const/16 v1, 0x258

    if-le v2, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lru/localscribe/engine/TranscriptEditingWindow;->flush()V

    :cond_5
    iget-object v1, p0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lru/localscribe/engine/TranscriptEditingWindow;->pending:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lru/localscribe/engine/TranscriptEditingWindow;->flush()V

    :cond_6
    return-void
.end method
