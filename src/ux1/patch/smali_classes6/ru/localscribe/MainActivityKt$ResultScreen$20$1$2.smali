.class final Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt$ResultScreen$20$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt$ResultScreen$20$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1414:1\n1#2:1415\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $clock:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lru/localscribe/ui/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filter:Ljava/lang/String;

.field final synthetic $followPlayback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $following$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $page:Lru/localscribe/data/TranscriptPage;

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $r:Lru/localscribe/core/Recording;

.field final synthetic $t:Lru/localscribe/core/Transcript;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Lru/localscribe/data/TranscriptPage;Lru/localscribe/core/Transcript;Lru/localscribe/core/Recording;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lru/localscribe/ui/PlaybackState;",
            ">;",
            "Lru/localscribe/data/TranscriptPage;",
            "Lru/localscribe/core/Transcript;",
            "Lru/localscribe/core/Recording;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$clock:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$page:Lru/localscribe/data/TranscriptPage;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$t:Lru/localscribe/core/Transcript;

    iput-object p4, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$r:Lru/localscribe/core/Recording;

    iput-object p5, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$query:Ljava/lang/String;

    iput-object p6, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$filter:Ljava/lang/String;

    iput-object p7, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$followPlayback:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$following$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "it"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$clock:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/PlaybackState;

    .line 979
    .local v0, "current":Lru/localscribe/ui/PlaybackState;
    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$page:Lru/localscribe/data/TranscriptPage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/localscribe/data/TranscriptPage;->getHasPrevious()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lru/localscribe/ui/PlaybackState;->getPositionMs()J

    move-result-wide v5

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$t:Lru/localscribe/core/Transcript;

    invoke-virtual {v1}, Lru/localscribe/core/Transcript;->getSegments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v4

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/localscribe/core/Segment;

    .line 1415
    .local v7, "it\\1":Lru/localscribe/core/Segment;
    const/4 v8, 0x0

    .line 979
    .local v8, "$i$a$-minOfOrNull-MainActivityKt$ResultScreen$20$1$2$beforePage$1\\1\\979\\0":I
    invoke-virtual {v7}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v7

    .end local v7    # "it\\1":Lru/localscribe/core/Segment;
    .end local v8    # "$i$a$-minOfOrNull-MainActivityKt$ResultScreen$20$1$2$beforePage$1\\1\\979\\0":I
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    check-cast v7, Ljava/lang/Comparable;

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/localscribe/core/Segment;

    .line 1415
    .local v8, "it\\2":Lru/localscribe/core/Segment;
    const/4 v9, 0x0

    .line 979
    .local v9, "$i$a$-minOfOrNull-MainActivityKt$ResultScreen$20$1$2$beforePage$1\\2\\979\\0":I
    invoke-virtual {v8}, Lru/localscribe/core/Segment;->getStartMs()J

    move-result-wide v8

    .end local v8    # "it\\2":Lru/localscribe/core/Segment;
    .end local v9    # "$i$a$-minOfOrNull-MainActivityKt$ResultScreen$20$1$2$beforePage$1\\2\\979\\0":I
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    invoke-interface {v7, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_2

    move-object v7, v8

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_4
    const-wide/16 v7, 0x0

    :goto_3
    cmp-long v1, v5, v7

    if-gez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    .line 980
    .local v1, "beforePage":Z
    :goto_4
    iget-object v5, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$page:Lru/localscribe/data/TranscriptPage;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lru/localscribe/data/TranscriptPage;->getHasNext()Z

    move-result v5

    if-ne v5, v2, :cond_6

    move v5, v2

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lru/localscribe/ui/PlaybackState;->getPositionMs()J

    move-result-wide v5

    iget-object v7, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$t:Lru/localscribe/core/Transcript;

    invoke-virtual {v7}, Lru/localscribe/core/Transcript;->getSegments()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    goto :goto_7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/localscribe/core/Segment;

    .line 1415
    .local v4, "it\\3":Lru/localscribe/core/Segment;
    const/4 v8, 0x0

    .line 980
    .local v8, "$i$a$-maxOfOrNull-MainActivityKt$ResultScreen$20$1$2$afterPage$1\\3\\980\\0":I
    invoke-virtual {v4}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v8

    .end local v4    # "it\\3":Lru/localscribe/core/Segment;
    .end local v8    # "$i$a$-maxOfOrNull-MainActivityKt$ResultScreen$20$1$2$afterPage$1\\3\\980\\0":I
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/localscribe/core/Segment;

    .line 1415
    .local v8, "it\\4":Lru/localscribe/core/Segment;
    const/4 v9, 0x0

    .line 980
    .local v9, "$i$a$-maxOfOrNull-MainActivityKt$ResultScreen$20$1$2$afterPage$1\\4\\980\\0":I
    invoke-virtual {v8}, Lru/localscribe/core/Segment;->getEndMs()J

    move-result-wide v8

    .end local v8    # "it\\4":Lru/localscribe/core/Segment;
    .end local v9    # "$i$a$-maxOfOrNull-MainActivityKt$ResultScreen$20$1$2$afterPage$1\\4\\980\\0":I
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    invoke-interface {v4, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_9

    move-object v4, v8

    goto :goto_6

    :goto_7
    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_8

    :cond_a
    const-wide v7, 0x7fffffffffffffffL

    :goto_8
    cmp-long v4, v5, v7

    if-ltz v4, :cond_b

    goto :goto_9

    :cond_b
    move v2, v3

    .line 981
    .local v2, "afterPage":Z
    :goto_9
    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$following$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$65(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lru/localscribe/ui/PlaybackState;->getReady()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lru/localscribe/ui/PlaybackState;->getRecordingId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$r:Lru/localscribe/core/Recording;

    invoke-virtual {v4}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$query:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$filter:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 982
    iget-object v3, p0, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->$followPlayback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lru/localscribe/ui/PlaybackState;->getPositionMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_d
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 977
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lru/localscribe/MainActivityKt$ResultScreen$20$1$2;->emit(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
