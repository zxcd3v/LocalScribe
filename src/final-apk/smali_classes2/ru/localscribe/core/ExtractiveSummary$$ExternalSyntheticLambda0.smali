.class public final synthetic Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/ExtractiveSummary$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Lru/localscribe/core/Segment;

    invoke-static {v0, p1}, Lru/localscribe/core/ExtractiveSummary;->$r8$lambda$psk2GMR9sruROx5Gcb3iNA-8IcI(Ljava/util/Map;Lru/localscribe/core/Segment;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
