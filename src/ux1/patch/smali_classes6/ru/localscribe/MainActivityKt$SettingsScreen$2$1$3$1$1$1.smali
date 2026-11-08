.class final Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/MainActivityKt;->SettingsScreen(Lru/localscribe/core/Settings;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lru/localscribe/data/PreparationState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
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
.field final synthetic $engine:Lru/localscribe/core/FileAsr;

.field final synthetic $onChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/localscribe/core/Settings;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $s:Lru/localscribe/core/Settings;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/core/Settings;Lru/localscribe/core/FileAsr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/localscribe/core/Settings;",
            "Lkotlin/Unit;",
            ">;",
            "Lru/localscribe/core/Settings;",
            "Lru/localscribe/core/FileAsr;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->$onChange:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->$s:Lru/localscribe/core/Settings;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->$engine:Lru/localscribe/core/FileAsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 15

    .line 705
    iget-object v0, p0, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->$onChange:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->$s:Lru/localscribe/core/Settings;

    iget-object v10, p0, Lru/localscribe/MainActivityKt$SettingsScreen$2$1$3$1$1$1;->$engine:Lru/localscribe/core/FileAsr;

    const/16 v13, 0x6ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
