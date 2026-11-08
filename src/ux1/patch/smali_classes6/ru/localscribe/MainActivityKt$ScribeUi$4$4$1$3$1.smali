.class final synthetic Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$3$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


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
        "Lkotlin/jvm/functions/Function4<",
        "Lru/localscribe/core/VoiceProfile;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Float;",
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

    const-string v5, "updateProfile(Lru/localscribe/core/VoiceProfile;Ljava/lang/String;ZF)V"

    const/4 v6, 0x0

    const/4 v1, 0x4

    const-string v4, "updateProfile"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 250
    move-object v0, p1

    check-cast v0, Lru/localscribe/core/VoiceProfile;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$3$1;->invoke(Lru/localscribe/core/VoiceProfile;Ljava/lang/String;ZF)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lru/localscribe/core/VoiceProfile;Ljava/lang/String;ZF)V
    .locals 1
    .param p1, "p0"    # Lru/localscribe/core/VoiceProfile;
    .param p2, "p1"    # Ljava/lang/String;
    .param p3, "p2"    # Z
    .param p4, "p3"    # F

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$4$4$1$3$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lru/localscribe/ui/ScribeViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lru/localscribe/ui/ScribeViewModel;->updateProfile(Lru/localscribe/core/VoiceProfile;Ljava/lang/String;ZF)V

    return-void
.end method
