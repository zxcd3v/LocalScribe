.class public final Lru/localscribe/MainActivityKt$ResultScreen$scrollObserver$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ResultScreen(Lru/localscribe/core/Transcript;ZLru/localscribe/service/LiveState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lru/localscribe/data/TranscriptPage;Lru/localscribe/data/TranscriptQuery;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lru/localscribe/ui/PlaybackState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lru/localscribe/audio/WaveformPeaks;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lru/localscribe/ui/SummaryState$Running;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt$ResultScreen$scrollObserver$1$1\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,1414:1\n69#2:1415\n70#3:1416\n22#4:1417\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nru/localscribe/MainActivityKt$ResultScreen$scrollObserver$1$1\n*L\n965#1:1415\n965#1:1416\n965#1:1417\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "ru/localscribe/MainActivityKt$ResultScreen$scrollObserver$1$1",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "onPreScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "available",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPreScroll-OzD1aCk",
        "(JI)J",
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


# instance fields
.field final synthetic $following$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .param p1, "$following$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ResultScreen$scrollObserver$1$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0"    # J
    .param p3, "$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 963
    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge onPostScroll-DzOQY0M(JJI)J
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-consumed$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-available$0"    # J
    .param p5, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 963
    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 963
    invoke-super {p0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-available$0"    # J
    .param p3, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 965
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, p1

    .local v0, "arg0\\1":J
    const/4 v2, 0x0

    .line 1415
    .local v2, "$i$f$getY-impl\\1\\965":I
    move-wide v3, v0

    .local v3, "value\\2":J
    const/4 v5, 0x0

    .line 1416
    .local v5, "$i$f$unpackFloat2\\2\\1415":I
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v3

    long-to-int v6, v6

    .local v6, "bits\\3":I
    const/4 v7, 0x0

    .line 1417
    .local v7, "$i$f$floatFromBits\\3\\1416":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 1416
    .end local v6    # "bits\\3":I
    .end local v7    # "$i$f$floatFromBits\\3\\1416":I
    nop

    .line 1415
    .end local v3    # "value\\2":J
    .end local v5    # "$i$f$unpackFloat2\\2\\1415":I
    nop

    .line 965
    .end local v0    # "arg0\\1":J
    .end local v2    # "$i$f$getY-impl\\1\\965":I
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ResultScreen$scrollObserver$1$1;->$following$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->access$ResultScreen$lambda$66(Landroidx/compose/runtime/MutableState;Z)V

    .line 966
    :cond_1
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    return-wide v0
.end method
