.class public final synthetic Lru/localscribe/data/Repository$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/io/Writer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda3;->f$1:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lru/localscribe/data/Repository$$ExternalSyntheticLambda3;->f$1:Ljava/io/Writer;

    check-cast p1, Lru/localscribe/core/Transcript;

    check-cast p2, Lkotlin/sequences/Sequence;

    invoke-static {v0, v1, p1, p2}, Lru/localscribe/data/Repository;->$r8$lambda$8VWnLgErYFvGoGdKbhtQEX6t958(Ljava/lang/String;Ljava/io/Writer;Lru/localscribe/core/Transcript;Lkotlin/sequences/Sequence;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
