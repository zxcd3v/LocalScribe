.class final Lru/localscribe/MainActivityKt$ScribeUi$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ScribeUi(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "ru.localscribe.MainActivityKt$ScribeUi$2$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xcc
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $message$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbar:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $vm:Lru/localscribe/ui/ScribeViewModel;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/MainActivityKt$ScribeUi$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$snackbar:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$vm:Lru/localscribe/ui/ScribeViewModel;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$message$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$snackbar:Landroidx/compose/material3/SnackbarHostState;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$vm:Lru/localscribe/ui/ScribeViewModel;

    iget-object v3, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$message$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v0, v1, v2, v3, p2}, Lru/localscribe/MainActivityKt$ScribeUi$2$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$message$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lru/localscribe/MainActivityKt;->access$ScribeUi$lambda$20(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 204
    iget-object v3, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$snackbar:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$message$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lru/localscribe/MainActivityKt;->access$ScribeUi$lambda$20(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v4

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 202
    return-object v0

    .line 205
    :cond_1
    :goto_1
    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$vm:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$message$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lru/localscribe/MainActivityKt;->access$ScribeUi$lambda$20(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$2$1;->$vm:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0}, Lru/localscribe/ui/ScribeViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 207
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
