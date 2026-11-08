.class final synthetic Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$20$8$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lru/localscribe/core/Segment;",
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

    const-string v5, "split(Lru/localscribe/core/Segment;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "split"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 473
    move-object v0, p1

    check-cast v0, Lru/localscribe/core/Segment;

    invoke-virtual {p0, v0}, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$20$8$1;->invoke(Lru/localscribe/core/Segment;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lru/localscribe/core/Segment;)V
    .locals 1
    .param p1, "p0"    # Lru/localscribe/core/Segment;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$20$8$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0, p1}, Lru/localscribe/ui/ScribeViewModel;->split(Lru/localscribe/core/Segment;)V

    return-void
.end method
