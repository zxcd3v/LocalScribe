.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/data/TranscriptPage;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/data/TranscriptPage;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$0:Lru/localscribe/data/TranscriptPage;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$2:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$0:Lru/localscribe/data/TranscriptPage;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$2:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda71;->f$3:Z

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lru/localscribe/MainActivityKt;->$r8$lambda$vPsJYXjOlk4t3liY2ND-q7rauHU(Lru/localscribe/data/TranscriptPage;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
