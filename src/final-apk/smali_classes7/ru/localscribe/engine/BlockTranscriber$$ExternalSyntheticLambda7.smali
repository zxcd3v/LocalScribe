.class public final synthetic Lru/localscribe/engine/BlockTranscriber$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lru/localscribe/core/Segment;

    invoke-static {p1}, Lru/localscribe/engine/BlockTranscriber;->$r8$lambda$5GgnMXGCAaeX97ZctAla12xPyrQ(Lru/localscribe/core/Segment;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
