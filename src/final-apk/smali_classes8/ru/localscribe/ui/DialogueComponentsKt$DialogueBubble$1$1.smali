.class final Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DialogueComponents.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/DialogueComponentsKt;->DialogueBubble-Wb-XAiA(Lru/localscribe/core/Segment;Ljava/lang/String;JZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/util/List;Lru/localscribe/ui/PlaybackState;ZLandroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "ru.localscribe.ui.DialogueComponentsKt$DialogueBubble$1$1"
    f = "DialogueComponents.kt"
    i = {
        0x1,
        0x1
    }
    l = {
        0x71,
        0x73
    }
    m = "invokeSuspend"
    n = {
        "layout",
        "from"
    }
    s = {
        "L$0",
        "I$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $autoFollow:Z

.field final synthetic $bringIntoView:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $spoken:Lru/localscribe/core/DialogueTurns$SpokenText;

.field final synthetic $textLayout$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $wordIndex$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$Szq35gQKhYiWb9URkIri4zQJSjQ(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    invoke-static {p0}, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(ZLru/localscribe/core/DialogueTurns$SpokenText;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lru/localscribe/core/DialogueTurns$SpokenText;",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$autoFollow:Z

    iput-object p2, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$spoken:Lru/localscribe/core/DialogueTurns$SpokenText;

    iput-object p3, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$bringIntoView:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iput-object p4, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$wordIndex$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$textLayout$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    invoke-static {p0}, Lru/localscribe/ui/DialogueComponentsKt;->access$DialogueBubble_Wb_XAiA$lambda$6(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;

    iget-boolean v1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$autoFollow:Z

    iget-object v2, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$spoken:Lru/localscribe/core/DialogueTurns$SpokenText;

    iget-object v3, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$bringIntoView:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v4, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$wordIndex$delegate:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$textLayout$delegate:Landroidx/compose/runtime/MutableState;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;-><init>(ZLru/localscribe/core/DialogueTurns$SpokenText;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->I$0:I

    iget-object v1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$autoFollow:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$wordIndex$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lru/localscribe/ui/DialogueComponentsKt;->access$DialogueBubble_Wb_XAiA$lambda$2(Landroidx/compose/runtime/State;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$textLayout$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v2, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    check-cast v1, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v2, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$spoken:Lru/localscribe/core/DialogueTurns$SpokenText;

    invoke-virtual {v2}, Lru/localscribe/core/DialogueTurns$SpokenText;->getWords()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$wordIndex$delegate:Landroidx/compose/runtime/State;

    invoke-static {v3}, Lru/localscribe/ui/DialogueComponentsKt;->access$DialogueBubble_Wb_XAiA$lambda$2(Landroidx/compose/runtime/State;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/localscribe/core/DialogueTurns$WordRange;

    invoke-virtual {v2}, Lru/localscribe/core/DialogueTurns$WordRange;->getFrom()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->$bringIntoView:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->I$0:I

    const/4 v6, 0x2

    iput v6, p0, Lru/localscribe/ui/DialogueComponentsKt$DialogueBubble$1$1;->label:I

    invoke-interface {v3, v4, v5}, Landroidx/compose/foundation/relocation/BringIntoViewRequester;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    return-object v0

    :cond_1
    move v0, v2

    :goto_1
    nop

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
