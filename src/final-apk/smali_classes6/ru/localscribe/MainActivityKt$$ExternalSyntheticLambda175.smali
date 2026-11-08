.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda175;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ui/ScribeViewModel;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ui/ScribeViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda175;->f$0:Lru/localscribe/ui/ScribeViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda175;->f$0:Lru/localscribe/ui/ScribeViewModel;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {v0, p1}, Lru/localscribe/MainActivityKt;->$r8$lambda$Fqv0Ro_QUusk5pYDZLp4mEJArMk(Lru/localscribe/ui/ScribeViewModel;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
