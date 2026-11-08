.class final Lru/localscribe/ui/ScribeViewModel$persistNote$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ScribeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ui/ScribeViewModel;->persistNote(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "ru.localscribe.ui.ScribeViewModel"
    f = "ScribeViewModel.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x323,
        0xce
    }
    m = "persistNote"
    n = {
        "$this$withLock_u24default\\1",
        "$i$f$withLock\\1\\206",
        "$this$withLock_u24default\\1",
        "$i$f$withLock\\1\\206",
        "$i$a$-withLock$default-ScribeViewModel$persistNote$2\\2\\805\\0"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "I$1"
    }
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/ui/ScribeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/ui/ScribeViewModel$persistNote$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$persistNote$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lru/localscribe/ui/ScribeViewModel$persistNote$1;->result:Ljava/lang/Object;

    iget v0, p0, Lru/localscribe/ui/ScribeViewModel$persistNote$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lru/localscribe/ui/ScribeViewModel$persistNote$1;->label:I

    iget-object v0, p0, Lru/localscribe/ui/ScribeViewModel$persistNote$1;->this$0:Lru/localscribe/ui/ScribeViewModel;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lru/localscribe/ui/ScribeViewModel;->access$persistNote(Lru/localscribe/ui/ScribeViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
