.class final Lru/localscribe/MainActivityKt$ScribeUi$1$1;
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
    c = "ru.localscribe.MainActivityKt$ScribeUi$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dark:Z

.field label:I


# direct methods
.method public static synthetic $r8$lambda$74YhIWdvQg5X7z4zq1E4bQWku1Q(ZLandroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->invokeSuspend$lambda$1(ZLandroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HO1uk1xl8LG7UokdWSZNYfHZil4(ZLandroid/content/res/Resources;)Z
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->invokeSuspend$lambda$0(ZLandroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/MainActivityKt$ScribeUi$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$context:Landroid/content/Context;

    iput-boolean p2, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$dark:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(ZLandroid/content/res/Resources;)Z
    .locals 0

    return p0
.end method

.method private static final invokeSuspend$lambda$1(ZLandroid/content/res/Resources;)Z
    .locals 0

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$context:Landroid/content/Context;

    iget-boolean v2, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$dark:Z

    invoke-direct {v0, v1, v2, p2}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;-><init>(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$context:Landroid/content/Context;

    instance-of v1, v0, Landroidx/activity/ComponentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/activity/ComponentActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    iget-boolean v2, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$dark:Z

    new-instance v3, Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda0;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v3}, Landroidx/activity/SystemBarStyle$Companion;->auto(IILkotlin/jvm/functions/Function1;)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    sget-object v3, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    iget-boolean v4, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$dark:Z

    new-instance v5, Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {v3, v2, v2, v5}, Landroidx/activity/SystemBarStyle$Companion;->auto(IILkotlin/jvm/functions/Function1;)Landroidx/activity/SystemBarStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
