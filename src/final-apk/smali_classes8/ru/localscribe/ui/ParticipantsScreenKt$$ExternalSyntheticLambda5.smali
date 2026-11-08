.class public final synthetic Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lru/localscribe/core/VoiceSample;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:Lru/localscribe/core/VoiceProfile;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lru/localscribe/core/VoiceSample;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lru/localscribe/core/VoiceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$1:Lru/localscribe/core/VoiceSample;

    iput-boolean p3, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$5:Lru/localscribe/core/VoiceProfile;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$1:Lru/localscribe/core/VoiceSample;

    iget-boolean v2, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lru/localscribe/ui/ParticipantsScreenKt$$ExternalSyntheticLambda5;->f$5:Lru/localscribe/core/VoiceProfile;

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lru/localscribe/ui/ParticipantsScreenKt;->$r8$lambda$t-vteqpUtNkMLgFslcT6EWXvxhI(Lkotlin/jvm/functions/Function1;Lru/localscribe/core/VoiceSample;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lru/localscribe/core/VoiceProfile;Landroidx/compose/foundation/layout/FlowRowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
