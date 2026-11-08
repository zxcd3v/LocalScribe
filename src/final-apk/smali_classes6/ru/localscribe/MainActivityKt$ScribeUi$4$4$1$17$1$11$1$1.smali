.class final Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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


# instance fields
.field final synthetic $r:Lru/localscribe/core/Recording;

.field final synthetic $vm:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method constructor <init>(Lru/localscribe/ui/ScribeViewModel;Lru/localscribe/core/Recording;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;->$vm:Lru/localscribe/ui/ScribeViewModel;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;->$r:Lru/localscribe/core/Recording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;->$vm:Lru/localscribe/ui/ScribeViewModel;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$17$1$11$1$1;->$r:Lru/localscribe/core/Recording;

    invoke-virtual {v1}, Lru/localscribe/core/Recording;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/localscribe/ui/ScribeViewModel;->select(Ljava/lang/String;)V

    return-void
.end method
