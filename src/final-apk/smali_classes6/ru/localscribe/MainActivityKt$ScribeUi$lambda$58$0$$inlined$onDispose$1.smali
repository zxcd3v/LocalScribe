.class public final Lru/localscribe/MainActivityKt$ScribeUi$lambda$58$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->ScribeUi(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 MainActivity.kt\nru/localscribe/MainActivityKt\n*L\n1#1,69:1\n208#2:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime"
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
.field final synthetic $vm$inlined:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public constructor <init>(Lru/localscribe/ui/ScribeViewModel;)V
    .locals 0

    iput-object p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$58$0$$inlined$onDispose$1;->$vm$inlined:Lru/localscribe/ui/ScribeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lru/localscribe/MainActivityKt$ScribeUi$lambda$58$0$$inlined$onDispose$1;->$vm$inlined:Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v1}, Lru/localscribe/ui/ScribeViewModel;->stopPlayback()V

    nop

    return-void
.end method
