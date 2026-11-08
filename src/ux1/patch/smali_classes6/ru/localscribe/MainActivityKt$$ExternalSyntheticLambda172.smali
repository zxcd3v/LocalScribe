.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lru/localscribe/data/TranscriptPage;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/data/TranscriptPage;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$1:Lru/localscribe/data/TranscriptPage;

    iput-boolean p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$2:Z

    iput-object p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$3:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$1:Lru/localscribe/data/TranscriptPage;

    iget-boolean v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$2:Z

    iget-object v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda172;->f$3:Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lru/localscribe/MainActivityKt;->$r8$lambda$Vk71HYgrqOFIXoro81y5fSVenck(Lkotlin/jvm/functions/Function1;Lru/localscribe/data/TranscriptPage;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
