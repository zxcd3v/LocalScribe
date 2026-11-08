.class public final synthetic Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lru/localscribe/core/VoiceProfile;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/core/VoiceProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda59;->f$0:Lru/localscribe/core/VoiceProfile;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lru/localscribe/MainActivityKt$$ExternalSyntheticLambda59;->f$0:Lru/localscribe/core/VoiceProfile;

    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lru/localscribe/MainActivityKt;->$r8$lambda$Q5gocQbQMICEXtfEwFhOI1qBYzE(Lru/localscribe/core/VoiceProfile;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
