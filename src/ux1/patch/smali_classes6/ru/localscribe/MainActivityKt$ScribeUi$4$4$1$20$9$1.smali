.class final synthetic Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$20$9$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ScribeUi(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+",
        "Lru/localscribe/core/Segment;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lru/localscribe/ui/ScribeViewModel;

    const-string v5, "editTurn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-string v4, "editTurn"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 477
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$20$9$1;->invoke(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "p0"    # Ljava/util/List;
    .param p2, "p1"    # Ljava/lang/String;
    .param p3, "p2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/localscribe/core/Segment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$20$9$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lru/localscribe/ui/ScribeViewModel;->editTurn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
