.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda240;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda240;->f$0:Ljava/util/List;

    iput-object p2, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda240;->f$1:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda240;->f$0:Ljava/util/List;

    iget-object v1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda240;->f$1:Landroidx/compose/runtime/State;

    invoke-static {v0, v1}, Lru/localscribe/MainActivityKt;->$r8$lambda$i1o5-MzkQL2LuwZI49gxhcw3IOQ(Ljava/util/List;Landroidx/compose/runtime/State;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
