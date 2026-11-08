.class public final synthetic Lru/localscribe/core/SpeakerTimeline$$ExternalSyntheticLambda4;
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

    check-cast p1, Lru/localscribe/core/VoiceTurn;

    invoke-static {p1}, Lru/localscribe/core/SpeakerTimeline;->$r8$lambda$GvZKB99m_vEqXHqDR0fOxQtW5nU(Lru/localscribe/core/VoiceTurn;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
