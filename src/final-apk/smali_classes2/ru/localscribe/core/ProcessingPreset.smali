.class public final enum Lru/localscribe/core/ProcessingPreset;
.super Ljava/lang/Enum;
.source "ProcessingPreset.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/ProcessingPreset$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/localscribe/core/ProcessingPreset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lru/localscribe/core/ProcessingPreset;",
        "",
        "title",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "CONFERENCE",
        "QUIET",
        "NOISY",
        "FAST",
        "ACCURATE",
        "apply",
        "Lru/localscribe/core/Settings;",
        "s",
        "matches",
        "",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lru/localscribe/core/ProcessingPreset;

.field public static final enum ACCURATE:Lru/localscribe/core/ProcessingPreset;

.field public static final enum CONFERENCE:Lru/localscribe/core/ProcessingPreset;

.field public static final enum FAST:Lru/localscribe/core/ProcessingPreset;

.field public static final enum NOISY:Lru/localscribe/core/ProcessingPreset;

.field public static final enum QUIET:Lru/localscribe/core/ProcessingPreset;


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lru/localscribe/core/ProcessingPreset;
    .locals 5

    sget-object v0, Lru/localscribe/core/ProcessingPreset;->CONFERENCE:Lru/localscribe/core/ProcessingPreset;

    sget-object v1, Lru/localscribe/core/ProcessingPreset;->QUIET:Lru/localscribe/core/ProcessingPreset;

    sget-object v2, Lru/localscribe/core/ProcessingPreset;->NOISY:Lru/localscribe/core/ProcessingPreset;

    sget-object v3, Lru/localscribe/core/ProcessingPreset;->FAST:Lru/localscribe/core/ProcessingPreset;

    sget-object v4, Lru/localscribe/core/ProcessingPreset;->ACCURATE:Lru/localscribe/core/ProcessingPreset;

    filled-new-array {v0, v1, v2, v3, v4}, [Lru/localscribe/core/ProcessingPreset;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/localscribe/core/ProcessingPreset;

    const/4 v1, 0x0

    const-string v2, "\u041a\u043e\u043d\u0444\u0435\u0440\u0435\u043d\u0446\u0438\u044f"

    const-string v3, "CONFERENCE"

    invoke-direct {v0, v3, v1, v2}, Lru/localscribe/core/ProcessingPreset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->CONFERENCE:Lru/localscribe/core/ProcessingPreset;

    new-instance v0, Lru/localscribe/core/ProcessingPreset;

    const/4 v1, 0x1

    const-string v2, "\u0422\u0438\u0445\u0430\u044f \u043a\u043e\u043c\u043d\u0430\u0442\u0430"

    const-string v3, "QUIET"

    invoke-direct {v0, v3, v1, v2}, Lru/localscribe/core/ProcessingPreset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->QUIET:Lru/localscribe/core/ProcessingPreset;

    new-instance v0, Lru/localscribe/core/ProcessingPreset;

    const/4 v1, 0x2

    const-string v2, "\u0428\u0443\u043c\u043d\u043e\u0435 \u043f\u043e\u043c\u0435\u0449\u0435\u043d\u0438\u0435"

    const-string v3, "NOISY"

    invoke-direct {v0, v3, v1, v2}, Lru/localscribe/core/ProcessingPreset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->NOISY:Lru/localscribe/core/ProcessingPreset;

    new-instance v0, Lru/localscribe/core/ProcessingPreset;

    const/4 v1, 0x3

    const-string v2, "\u0411\u044b\u0441\u0442\u0440\u043e"

    const-string v3, "FAST"

    invoke-direct {v0, v3, v1, v2}, Lru/localscribe/core/ProcessingPreset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->FAST:Lru/localscribe/core/ProcessingPreset;

    new-instance v0, Lru/localscribe/core/ProcessingPreset;

    const/4 v1, 0x4

    const-string v2, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0442\u043e\u0447\u043d\u043e\u0441\u0442\u044c"

    const-string v3, "ACCURATE"

    invoke-direct {v0, v3, v1, v2}, Lru/localscribe/core/ProcessingPreset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->ACCURATE:Lru/localscribe/core/ProcessingPreset;

    invoke-static {}, Lru/localscribe/core/ProcessingPreset;->$values()[Lru/localscribe/core/ProcessingPreset;

    move-result-object v0

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->$VALUES:[Lru/localscribe/core/ProcessingPreset;

    sget-object v0, Lru/localscribe/core/ProcessingPreset;->$VALUES:[Lru/localscribe/core/ProcessingPreset;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lru/localscribe/core/ProcessingPreset;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lru/localscribe/core/ProcessingPreset;->title:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lru/localscribe/core/ProcessingPreset;",
            ">;"
        }
    .end annotation

    sget-object v0, Lru/localscribe/core/ProcessingPreset;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/localscribe/core/ProcessingPreset;
    .locals 1

    const-class v0, Lru/localscribe/core/ProcessingPreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/ProcessingPreset;

    return-object v0
.end method

.method public static values()[Lru/localscribe/core/ProcessingPreset;
    .locals 1

    sget-object v0, Lru/localscribe/core/ProcessingPreset;->$VALUES:[Lru/localscribe/core/ProcessingPreset;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/localscribe/core/ProcessingPreset;

    return-object v0
.end method


# virtual methods
.method public final apply(Lru/localscribe/core/Settings;)Lru/localscribe/core/Settings;
    .locals 15

    const-string v0, "s"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lru/localscribe/core/ProcessingPreset$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lru/localscribe/core/ProcessingPreset;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v2, Lru/localscribe/core/Quality;->ACCURATE:Lru/localscribe/core/Quality;

    const/16 v13, 0x33e

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v2, Lru/localscribe/core/Quality;->FAST:Lru/localscribe/core/Quality;

    const/16 v13, 0x33e

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v2, Lru/localscribe/core/Quality;->ACCURATE:Lru/localscribe/core/Quality;

    const/16 v13, 0x33e

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v2, Lru/localscribe/core/Quality;->BALANCED:Lru/localscribe/core/Quality;

    const/16 v13, 0x33e

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v2, Lru/localscribe/core/Quality;->BALANCED:Lru/localscribe/core/Quality;

    const/16 v13, 0x33e

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/ProcessingPreset;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final matches(Lru/localscribe/core/Settings;)Z
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/localscribe/core/ProcessingPreset;->apply(Lru/localscribe/core/Settings;)Lru/localscribe/core/Settings;

    move-result-object v0

    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getQuality()Lru/localscribe/core/Quality;

    move-result-object v1

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getQuality()Lru/localscribe/core/Quality;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getRefineDiarization()Z

    move-result v1

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getRefineDiarization()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getSeparateOverlap()Z

    move-result v1

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getSeparateOverlap()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getEmotions()Z

    move-result v1

    invoke-virtual {v0}, Lru/localscribe/core/Settings;->getEmotions()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
