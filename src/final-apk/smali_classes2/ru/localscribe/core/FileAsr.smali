.class public final enum Lru/localscribe/core/FileAsr;
.super Ljava/lang/Enum;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/FileAsr$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/localscribe/core/FileAsr;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0087\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0008\u001a\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lru/localscribe/core/FileAsr;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "GIGAAM_V3",
        "WHISPER_EN",
        "ZIPFORMER",
        "WHISPER_RU",
        "current",
        "getCurrent",
        "()Lru/localscribe/core/FileAsr;",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lru/localscribe/core/FileAsr;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/localscribe/core/FileAsr$Companion;

.field public static final enum GIGAAM_V3:Lru/localscribe/core/FileAsr;

.field public static final enum WHISPER_EN:Lru/localscribe/core/FileAsr;

.field public static final enum WHISPER_RU:Lru/localscribe/core/FileAsr;

.field public static final enum ZIPFORMER:Lru/localscribe/core/FileAsr;


# direct methods
.method public static synthetic $r8$lambda$YTfAm61z5PERD7l0jrM3C2lYSWs()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/FileAsr;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic $values()[Lru/localscribe/core/FileAsr;
    .locals 4

    sget-object v0, Lru/localscribe/core/FileAsr;->GIGAAM_V3:Lru/localscribe/core/FileAsr;

    sget-object v1, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    sget-object v2, Lru/localscribe/core/FileAsr;->ZIPFORMER:Lru/localscribe/core/FileAsr;

    sget-object v3, Lru/localscribe/core/FileAsr;->WHISPER_RU:Lru/localscribe/core/FileAsr;

    filled-new-array {v0, v1, v2, v3}, [Lru/localscribe/core/FileAsr;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/core/FileAsr;

    const-string v1, "GIGAAM_V3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/localscribe/core/FileAsr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/localscribe/core/FileAsr;->GIGAAM_V3:Lru/localscribe/core/FileAsr;

    new-instance v0, Lru/localscribe/core/FileAsr;

    const-string v1, "WHISPER_EN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lru/localscribe/core/FileAsr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    new-instance v0, Lru/localscribe/core/FileAsr;

    const-string v1, "ZIPFORMER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lru/localscribe/core/FileAsr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/localscribe/core/FileAsr;->ZIPFORMER:Lru/localscribe/core/FileAsr;

    new-instance v0, Lru/localscribe/core/FileAsr;

    const-string v1, "WHISPER_RU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lru/localscribe/core/FileAsr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/localscribe/core/FileAsr;->WHISPER_RU:Lru/localscribe/core/FileAsr;

    invoke-static {}, Lru/localscribe/core/FileAsr;->$values()[Lru/localscribe/core/FileAsr;

    move-result-object v0

    sput-object v0, Lru/localscribe/core/FileAsr;->$VALUES:[Lru/localscribe/core/FileAsr;

    sget-object v0, Lru/localscribe/core/FileAsr;->$VALUES:[Lru/localscribe/core/FileAsr;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lru/localscribe/core/FileAsr;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lru/localscribe/core/FileAsr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/FileAsr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/FileAsr;->Companion:Lru/localscribe/core/FileAsr$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lru/localscribe/core/FileAsr$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lru/localscribe/core/FileAsr$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/localscribe/core/FileAsr;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    invoke-static {}, Lru/localscribe/core/FileAsr;->values()[Lru/localscribe/core/FileAsr;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const-string v1, "ru.localscribe.core.FileAsr"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lru/localscribe/core/FileAsr;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lru/localscribe/core/FileAsr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lru/localscribe/core/FileAsr;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/localscribe/core/FileAsr;
    .locals 1

    const-class v0, Lru/localscribe/core/FileAsr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lru/localscribe/core/FileAsr;

    return-object v0
.end method

.method public static values()[Lru/localscribe/core/FileAsr;
    .locals 1

    sget-object v0, Lru/localscribe/core/FileAsr;->$VALUES:[Lru/localscribe/core/FileAsr;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/localscribe/core/FileAsr;

    return-object v0
.end method


# virtual methods
.method public final getCurrent()Lru/localscribe/core/FileAsr;
    .locals 1

    sget-object v0, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne p0, v0, :cond_0

    sget-object v0, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    goto :goto_0

    :cond_0
    sget-object v0, Lru/localscribe/core/FileAsr;->GIGAAM_V3:Lru/localscribe/core/FileAsr;

    :goto_0
    return-object v0
.end method
