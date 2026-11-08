.class public final Lru/localscribe/data/ModelStore;
.super Ljava/lang/Object;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/data/ModelStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelStore.kt\nru/localscribe/data/ModelStore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,341:1\n1#2:342\n222#3:343\n205#3:344\n222#3:345\n222#3:346\n222#3:347\n*S KotlinDebug\n*F\n+ 1 ModelStore.kt\nru/localscribe/data/ModelStore\n*L\n48#1:343\n54#1:344\n59#1:345\n93#1:346\n280#1:347\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0014J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bJ\u0006\u0010\u001d\u001a\u00020\u001bJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\u00142\u0008\u0008\u0002\u0010 \u001a\u00020!J\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0006\u0010$\u001a\u00020!J\u0008\u0010%\u001a\u00020&H\u0002J\"\u0010\'\u001a\u00020\u00162\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00160)H\u0086@\u00a2\u0006\u0002\u0010+J*\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020.2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00160)H\u0086@\u00a2\u0006\u0002\u0010/J>\u00100\u001a\u00020\u00162\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020&022\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010#2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00160)H\u0080@\u00a2\u0006\u0004\u00084\u00105J\u0018\u00106\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00142\u0008\u0008\u0002\u0010 \u001a\u00020!J\u0006\u00107\u001a\u00020\u0016J\u000e\u00108\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u00109R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006;"
    }
    d2 = {
        "Lru/localscribe/data/ModelStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "extras",
        "Lru/localscribe/data/ExtraModels;",
        "getExtras",
        "()Lru/localscribe/data/ExtraModels;",
        "root",
        "Ljava/io/File;",
        "getRoot",
        "()Ljava/io/File;",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "settings",
        "Lru/localscribe/core/Settings;",
        "saveSettings",
        "",
        "s",
        "manifest",
        "Lru/localscribe/data/ModelManifest;",
        "file",
        "",
        "name",
        "onlineName",
        "info",
        "Lru/localscribe/core/ModelInfo;",
        "live",
        "",
        "bundledInfo",
        "Lru/localscribe/data/BundledModelInfo;",
        "automaticPreparationEnabled",
        "openBundledArchive",
        "Ljava/io/InputStream;",
        "installBundled",
        "onProgress",
        "Lkotlin/Function1;",
        "Lru/localscribe/data/ModelInstallProgress;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "install",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "installArchive",
        "openArchive",
        "Lkotlin/Function0;",
        "bundled",
        "installArchive$app_debug",
        "(Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verify",
        "recover",
        "delete",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "app_debug"
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
.field public static final $stable:I

.field public static final Companion:Lru/localscribe/data/ModelStore$Companion;

.field private static final GIGAAM_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PACK_BYTES:J = 0xc0000000L


# instance fields
.field private final context:Landroid/content/Context;

.field private final extras:Lru/localscribe/data/ExtraModels;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final root:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$hqW-uIU5URddulPVXcV2wgk2lck(Lru/localscribe/data/ModelStore;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0}, Lru/localscribe/data/ModelStore;->installBundled$lambda$0(Lru/localscribe/data/ModelStore;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nS_aPi5gN1BWqdXiEeOREmYNmgY(Lru/localscribe/data/ModelStore;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/data/ModelStore;->install$lambda$0(Lru/localscribe/data/ModelStore;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/localscribe/data/ModelStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/data/ModelStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/data/ModelStore;->Companion:Lru/localscribe/data/ModelStore$Companion;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/ModelStore;->$stable:I

    .line 320
    nop

    .line 321
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gigaam-v3/encoder.int8.onnx"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gigaam-v3/decoder.onnx"

    aput-object v2, v0, v1

    .line 322
    const-string v1, "gigaam-v3/joiner.onnx"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 321
    nop

    .line 322
    const-string v1, "gigaam-v3/tokens.txt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 321
    nop

    .line 320
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/localscribe/data/ModelStore;->GIGAAM_FILES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Lru/localscribe/data/ExtraModels;

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/localscribe/data/ExtraModels;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    .line 43
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "models"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    .line 44
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method public static final synthetic access$getContext$p(Lru/localscribe/data/ModelStore;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lru/localscribe/data/ModelStore;

    .line 41
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getGIGAAM_FILES$cp()Ljava/util/List;
    .locals 1

    .line 41
    sget-object v0, Lru/localscribe/data/ModelStore;->GIGAAM_FILES:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic info$default(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;ZILjava/lang/Object;)Lru/localscribe/core/ModelInfo;
    .locals 0

    .line 73
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/data/ModelStore;->info(Lru/localscribe/core/Settings;Z)Lru/localscribe/core/ModelInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final install$lambda$0(Lru/localscribe/data/ModelStore;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "this$0"    # Lru/localscribe/data/ModelStore;
    .param p1, "$uri"    # Landroid/net/Uri;

    .line 138
    nop

    .line 139
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u0430\u043a\u0435\u0442 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic installArchive$app_debug$default(Lru/localscribe/data/ModelStore;Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 149
    const/4 p2, 0x0

    .line 147
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/localscribe/data/ModelStore;->installArchive$app_debug(Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final installBundled$lambda$0(Lru/localscribe/data/ModelStore;)Ljava/io/InputStream;
    .locals 1
    .param p0, "this$0"    # Lru/localscribe/data/ModelStore;

    .line 127
    invoke-direct {p0}, Lru/localscribe/data/ModelStore;->openBundledArchive()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private final openBundledArchive()Ljava/io/InputStream;
    .locals 4

    .line 105
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "apk":Ljava/util/zip/ZipFile;
    nop

    .line 108
    :try_start_0
    const-string v1, "assets/models-ru.zip"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    nop

    .line 110
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lru/localscribe/data/ModelStore$openBundledArchive$1;

    invoke-direct {v3, v0, v2}, Lru/localscribe/data/ModelStore$openBundledArchive$1;-><init>(Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/InputStream;

    return-object v3

    .line 108
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 109
    const-string v2, "\u0412 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043e\u0447\u043d\u043e\u043c \u043f\u0430\u043a\u0435\u0442\u0435 \u043e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u044e\u0442 \u043c\u043e\u0434\u0435\u043b\u0438"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v1

    .line 120
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 121
    throw v1
.end method

.method public static synthetic verify$default(Lru/localscribe/data/ModelStore;Lru/localscribe/core/Settings;ZILjava/lang/Object;)V
    .locals 0

    .line 276
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/data/ModelStore;->verify(Lru/localscribe/core/Settings;Z)V

    return-void
.end method


# virtual methods
.method public final automaticPreparationEnabled()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "bundled_models_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bundledInfo()Lru/localscribe/data/BundledModelInfo;
    .locals 10

    .line 89
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundled-models.json"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-nez v0, :cond_1

    return-object v4

    .line 90
    :cond_1
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "open(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    instance-of v0, v5, Ljava/io/BufferedReader;

    if-eqz v0, :cond_2

    check-cast v5, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    :goto_1
    check-cast v5, Ljava/io/Closeable;

    .line 93
    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/io/BufferedReader;

    .line 342
    .local v0, "it\\1":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 93
    .local v1, "$i$a$-use-ModelStore$bundledInfo$1\\1\\93\\0":I
    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Ljava/io/Reader;

    invoke-static {v7}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .local v6, "this_\\2":Lkotlinx/serialization/json/Json;
    .local v7, "string\\2":Ljava/lang/String;
    const/4 v8, 0x0

    .line 346
    .local v8, "$i$f$decodeFromString\\2\\93":I
    invoke-virtual {v6}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v9, Lru/localscribe/data/BundledModelInfo;->Companion:Lru/localscribe/data/BundledModelInfo$Companion;

    invoke-virtual {v9}, Lru/localscribe/data/BundledModelInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v6, v9, v7}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v6    # "this_\\2":Lkotlinx/serialization/json/Json;
    .end local v7    # "string\\2":Ljava/lang/String;
    .end local v8    # "$i$f$decodeFromString\\2\\93":I
    check-cast v9, Lru/localscribe/data/BundledModelInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    nop

    .end local v0    # "it\\1":Ljava/io/BufferedReader;
    .end local v1    # "$i$a$-use-ModelStore$bundledInfo$1\\1\\93\\0":I
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 94
    move-object v0, v9

    .local v0, "it\\3":Lru/localscribe/data/BundledModelInfo;
    const/4 v1, 0x0

    .line 95
    .local v1, "$i$a$-also-ModelStore$bundledInfo$2\\3\\94\\0":I
    invoke-virtual {v0}, Lru/localscribe/data/BundledModelInfo;->getUnpackedBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v6, v6, v4

    if-gtz v6, :cond_3

    const-wide v6, 0xc0000001L

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 98
    nop

    .line 94
    .end local v0    # "it\\3":Lru/localscribe/data/BundledModelInfo;
    .end local v1    # "$i$a$-also-ModelStore$bundledInfo$2\\3\\94\\0":I
    nop

    .line 90
    return-object v9

    .line 95
    .restart local v0    # "it\\3":Lru/localscribe/data/BundledModelInfo;
    .restart local v1    # "$i$a$-also-ModelStore$bundledInfo$2\\3\\94\\0":I
    :cond_4
    const/4 v2, 0x0

    .line 96
    .local v2, "$i$a$-require-ModelStore$bundledInfo$2$1\\4\\95\\3":I
    nop

    .line 95
    .end local v2    # "$i$a$-require-ModelStore$bundledInfo$2$1\\4\\95\\3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 \u0440\u0430\u0437\u043c\u0435\u0440 \u0432\u0441\u0442\u0440\u043e\u0435\u043d\u043d\u044b\u0445 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "it\\3":Lru/localscribe/data/BundledModelInfo;
    .end local v1    # "$i$a$-also-ModelStore$bundledInfo$2\\3\\94\\0":I
    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final delete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 310
    sget-object v0, Lru/localscribe/data/EngineGate;->INSTANCE:Lru/localscribe/data/EngineGate;

    new-instance v1, Lru/localscribe/data/ModelStore$delete$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lru/localscribe/data/ModelStore$delete$2;-><init>(Lru/localscribe/data/ModelStore;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p1}, Lru/localscribe/data/EngineGate;->exclusive(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 317
    return-object v0
.end method

.method public final file(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 342
    :cond_1
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-require-ModelStore$file$1\\1\\65\\0":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430 \u043c\u043e\u0434\u0435\u043b\u044c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-ModelStore$file$1\\1\\65\\0":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getExtras()Lru/localscribe/data/ExtraModels;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    return-object v0
.end method

.method public final getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 44
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getRoot()Ljava/io/File;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    return-object v0
.end method

.method public final info(Lru/localscribe/core/Settings;Z)Lru/localscribe/core/ModelInfo;
    .locals 11
    .param p1, "s"    # Lru/localscribe/core/Settings;
    .param p2, "live"    # Z

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lru/localscribe/data/ModelStore;->manifest()Lru/localscribe/data/ModelManifest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 76
    .local v0, "m":Lru/localscribe/data/ModelManifest;
    invoke-virtual {v0}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v1

    .line 77
    if-eqz p2, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v2

    sget-object v3, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    const-string v3, "Whisper Tiny INT8"

    invoke-virtual {v2, v3}, Lru/localscribe/data/ExtraModels;->hashes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getEditRussianText()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    const-string v3, "Qwen3-0.6B Q8_0 \u00b7 \u043f\u0443\u043d\u043a\u0442\u0443\u0430\u0446\u0438\u044f \u0438 \u0441\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u044f"

    invoke-virtual {v2, v3}, Lru/localscribe/data/ExtraModels;->hashes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 76
    :goto_0
    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 75
    nop

    .line 82
    .local v1, "hashes":Ljava/util/Map;
    if-eqz p2, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    .line 83
    :cond_3
    iget-object v2, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    const-string v3, "Nemotron 3 \u00b7 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u0438"

    invoke-virtual {v2, v3}, Lru/localscribe/data/ExtraModels;->hashes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getRefineDiarization()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    const-string v4, "VBx \u00b7 \u0443\u0442\u043e\u0447\u043d\u0435\u043d\u0438\u0435 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u043e\u0432"

    invoke-virtual {v3, v4}, Lru/localscribe/data/ExtraModels;->hashes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 83
    :goto_1
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 82
    :goto_2
    nop

    .line 85
    .local v2, "diarizationHashes":Ljava/util/Map;
    new-instance v3, Lru/localscribe/core/ModelInfo;

    invoke-virtual {v0}, Lru/localscribe/data/ModelManifest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lru/localscribe/data/ModelManifest;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v8, p1

    .end local p1    # "s":Lru/localscribe/core/Settings;
    .local v8, "s":Lru/localscribe/core/Settings;
    invoke-direct/range {v3 .. v10}, Lru/localscribe/core/ModelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lru/localscribe/core/Settings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 74
    .end local v0    # "m":Lru/localscribe/data/ModelManifest;
    .end local v1    # "hashes":Ljava/util/Map;
    .end local v2    # "diarizationHashes":Ljava/util/Map;
    .end local v8    # "s":Lru/localscribe/core/Settings;
    .restart local p1    # "s":Lru/localscribe/core/Settings;
    :cond_5
    move-object v8, p1

    .end local p1    # "s":Lru/localscribe/core/Settings;
    .restart local v8    # "s":Lru/localscribe/core/Settings;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u0443\u0439\u0442\u0435 \u043f\u0430\u043a\u0435\u0442 \u043c\u043e\u0434\u0435\u043b\u0435\u0439 \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final install(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lru/localscribe/data/ModelStore$install$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lru/localscribe/data/ModelStore$install$1;

    iget v1, v0, Lru/localscribe/data/ModelStore$install$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/data/ModelStore$install$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/data/ModelStore$install$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/data/ModelStore$install$1;

    invoke-direct {v0, p0, p3}, Lru/localscribe/data/ModelStore$install$1;-><init>(Lru/localscribe/data/ModelStore;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lru/localscribe/data/ModelStore$install$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 135
    iget v3, v0, Lru/localscribe/data/ModelStore$install$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lru/localscribe/data/ModelStore$install$1;->L$1:Ljava/lang/Object;

    move-object p2, v2

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lru/localscribe/data/ModelStore$install$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Landroid/net/Uri;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    new-instance v3, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda0;-><init>(Lru/localscribe/data/ModelStore;Landroid/net/Uri;)V

    .line 141
    nop

    .line 142
    nop

    .line 136
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/data/ModelStore$install$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/data/ModelStore$install$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lru/localscribe/data/ModelStore$install$1;->label:I

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, p2, v0}, Lru/localscribe/data/ModelStore;->installArchive$app_debug(Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 135
    return-object v2

    .line 144
    :cond_1
    :goto_1
    iget-object v2, p0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "manual_models"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final installArchive$app_debug(Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "openArchive"    # Lkotlin/jvm/functions/Function0;
    .param p2, "bundled"    # Lru/localscribe/data/BundledModelInfo;
    .param p3, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lru/localscribe/data/BundledModelInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 152
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lru/localscribe/data/ModelStore$installArchive$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "openArchive":Lkotlin/jvm/functions/Function0;
    .end local p2    # "bundled":Lru/localscribe/data/BundledModelInfo;
    .end local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .local v3, "bundled":Lru/localscribe/data/BundledModelInfo;
    .local v4, "onProgress":Lkotlin/jvm/functions/Function1;
    .local v5, "openArchive":Lkotlin/jvm/functions/Function0;
    invoke-direct/range {v1 .. v6}, Lru/localscribe/data/ModelStore$installArchive$2;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 274
    return-object p1
.end method

.method public final installBundled(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lru/localscribe/data/ModelStore$installBundled$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lru/localscribe/data/ModelStore$installBundled$1;

    iget v1, v0, Lru/localscribe/data/ModelStore$installBundled$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lru/localscribe/data/ModelStore$installBundled$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lru/localscribe/data/ModelStore$installBundled$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lru/localscribe/data/ModelStore$installBundled$1;

    invoke-direct {v0, p0, p2}, Lru/localscribe/data/ModelStore$installBundled$1;-><init>(Lru/localscribe/data/ModelStore;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lru/localscribe/data/ModelStore$installBundled$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 125
    iget v3, v0, Lru/localscribe/data/ModelStore$installBundled$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lru/localscribe/data/ModelStore$installBundled$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lru/localscribe/data/BundledModelInfo;

    .local v2, "bundle":Lru/localscribe/data/BundledModelInfo;
    iget-object v3, v0, Lru/localscribe/data/ModelStore$installBundled$1;->L$0:Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "bundle":Lru/localscribe/data/BundledModelInfo;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lru/localscribe/data/ModelStore;->bundledInfo()Lru/localscribe/data/BundledModelInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 127
    .local v3, "bundle":Lru/localscribe/data/BundledModelInfo;
    new-instance v4, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lru/localscribe/data/ModelStore$$ExternalSyntheticLambda1;-><init>(Lru/localscribe/data/ModelStore;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/data/ModelStore$installBundled$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lru/localscribe/data/ModelStore$installBundled$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lru/localscribe/data/ModelStore$installBundled$1;->label:I

    invoke-virtual {p0, v4, v3, p1, v0}, Lru/localscribe/data/ModelStore;->installArchive$app_debug(Lkotlin/jvm/functions/Function0;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 125
    return-object v2

    .line 127
    :cond_1
    move-object v2, v3

    .line 128
    .end local v3    # "bundle":Lru/localscribe/data/BundledModelInfo;
    .restart local v2    # "bundle":Lru/localscribe/data/BundledModelInfo;
    :goto_1
    iget-object v3, p0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    .line 129
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 130
    const-string v4, "bundled_models_disabled"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 131
    const-string v4, "manual_models"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 126
    .end local v2    # "bundle":Lru/localscribe/data/BundledModelInfo;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "\u0412 \u044d\u0442\u043e\u0439 \u0441\u0431\u043e\u0440\u043a\u0435 \u043d\u0435\u0442 \u0432\u0441\u0442\u0440\u043e\u0435\u043d\u043d\u044b\u0445 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final manifest()Lru/localscribe/data/ModelManifest;
    .locals 7

    .line 58
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lru/localscribe/data/ModelStore;

    .local v1, "$this$manifest_u24lambda_u240\\1":Lru/localscribe/data/ModelStore;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-runCatching-ModelStore$manifest$1\\1\\58\\0":I
    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    const-string v6, "manifest.json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v4, v0, v5, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v3, "this_\\2":Lkotlinx/serialization/json/Json;
    .local v4, "string\\2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 345
    .local v5, "$i$f$decodeFromString\\2\\59":I
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v6, Lru/localscribe/data/ModelManifest;->Companion:Lru/localscribe/data/ModelManifest$Companion;

    invoke-virtual {v6}, Lru/localscribe/data/ModelManifest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v3, v6, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v3    # "this_\\2":Lkotlinx/serialization/json/Json;
    .end local v4    # "string\\2":Ljava/lang/String;
    .end local v5    # "$i$f$decodeFromString\\2\\59":I
    check-cast v6, Lru/localscribe/data/ModelManifest;

    .line 59
    nop

    .line 58
    .end local v1    # "$this$manifest_u24lambda_u240\\1":Lru/localscribe/data/ModelStore;
    .end local v2    # "$i$a$-runCatching-ModelStore$manifest$1\\1\\58\\0":I
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    check-cast v0, Lru/localscribe/data/ModelManifest;

    return-object v0
.end method

.method public final onlineName()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    const-string v2, "streaming/model.int8.onnx"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const-string v2, "streaming/model.onnx"

    :goto_0
    return-object v2
.end method

.method public final recover()V
    .locals 3

    .line 304
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "models-backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v0, "backup":Ljava/io/File;
    iget-object v1, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 306
    :cond_0
    iget-object v1, p0, Lru/localscribe/data/ModelStore;->extras:Lru/localscribe/data/ExtraModels;

    invoke-virtual {v1}, Lru/localscribe/data/ExtraModels;->removeRetiredEditor()V

    .line 307
    return-void
.end method

.method public final runtimeContext()Landroid/content/Context;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final saveSettings(Lru/localscribe/core/Settings;)V
    .locals 5
    .param p1, "s"    # Lru/localscribe/core/Settings;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .local v1, "this_\\1":Lkotlinx/serialization/json/Json;
    move-object v2, p1

    .local v2, "value\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 344
    .local v3, "$i$f$encodeToString\\1\\54":I
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lru/localscribe/core/Settings;->Companion:Lru/localscribe/core/Settings$Companion;

    invoke-virtual {v4}, Lru/localscribe/core/Settings$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v1, v4, v2}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .end local v1    # "this_\\1":Lkotlinx/serialization/json/Json;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$encodeToString\\1\\54":I
    const-string v2, "settings"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    return-void
.end method

.method public final settings()Lru/localscribe/core/Settings;
    .locals 16

    .line 47
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lru/localscribe/data/ModelStore;

    .local v0, "$this$settings_u24lambda_u240\\1":Lru/localscribe/data/ModelStore;
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$a$-runCatching-ModelStore$settings$1\\1\\47\\0":I
    iget-object v2, v0, Lru/localscribe/data/ModelStore;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "settings"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    .local v2, "it\\2":Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$a$-let-ModelStore$settings$1$1\\2\\48\\1":I
    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v4

    move-object v5, v2

    .local v4, "this_\\3":Lkotlinx/serialization/json/Json;
    .local v5, "string\\3":Ljava/lang/String;
    const/4 v6, 0x0

    .line 343
    .local v6, "$i$f$decodeFromString\\3\\48":I
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v7, Lru/localscribe/core/Settings;->Companion:Lru/localscribe/core/Settings$Companion;

    invoke-virtual {v7}, Lru/localscribe/core/Settings$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v4, v7, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v4    # "this_\\3":Lkotlinx/serialization/json/Json;
    .end local v5    # "string\\3":Ljava/lang/String;
    .end local v6    # "$i$f$decodeFromString\\3\\48":I
    check-cast v7, Lru/localscribe/core/Settings;

    .line 48
    nop

    .end local v2    # "it\\2":Ljava/lang/String;
    .end local v3    # "$i$a$-let-ModelStore$settings$1$1\\2\\48\\1":I
    if-nez v7, :cond_1

    .line 49
    :cond_0
    new-instance v2, Lru/localscribe/core/Settings;

    const/16 v14, 0x5ff

    const/4 v15, 0x0

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

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v15}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v2

    .line 47
    .end local v0    # "$this$settings_u24lambda_u240\\1":Lru/localscribe/data/ModelStore;
    .end local v1    # "$i$a$-runCatching-ModelStore$settings$1\\1\\47\\0":I
    :cond_1
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    :goto_0
    new-instance v1, Lru/localscribe/core/Settings;

    const/16 v13, 0x5ff

    const/4 v14, 0x0

    const/4 v2, 0x0

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

    invoke-direct/range {v1 .. v14}, Lru/localscribe/core/Settings;-><init>(Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    move-object v1, v0

    check-cast v1, Lru/localscribe/core/Settings;

    .line 342
    .local v1, "it\\4":Lru/localscribe/core/Settings;
    const/4 v0, 0x0

    .line 51
    .local v0, "$i$a$-let-ModelStore$settings$2\\4\\51\\0":I
    invoke-virtual {v1}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/core/FileAsr;->getCurrent()Lru/localscribe/core/FileAsr;

    move-result-object v10

    const/16 v13, 0x6ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v14}, Lru/localscribe/core/Settings;->copy$default(Lru/localscribe/core/Settings;Lru/localscribe/core/Quality;IFFZZZZLru/localscribe/core/FileAsr;ZZILjava/lang/Object;)Lru/localscribe/core/Settings;

    move-result-object v0

    .end local v0    # "$i$a$-let-ModelStore$settings$2\\4\\51\\0":I
    .end local v1    # "it\\4":Lru/localscribe/core/Settings;
    return-object v0
.end method

.method public final verify(Lru/localscribe/core/Settings;Z)V
    .locals 13
    .param p1, "s"    # Lru/localscribe/core/Settings;
    .param p2, "live"    # Z

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lru/localscribe/data/ModelStore;->manifest()Lru/localscribe/data/ModelManifest;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 279
    .local v0, "m":Lru/localscribe/data/ModelManifest;
    iget-object v1, p0, Lru/localscribe/data/ModelStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "licenses/supported-models.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "open(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_0
    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v3

    check-cast v1, Ljava/io/BufferedReader;

    .local v1, "it\\1":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 280
    .local v2, "$i$a$-use-ModelStore$verify$supported$1\\1\\279\\0":I
    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/io/Reader;

    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    .local v4, "this_\\2":Lkotlinx/serialization/json/Json;
    .local v5, "string\\2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 347
    .local v6, "$i$f$decodeFromString\\2\\280":I
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v7, Lru/localscribe/data/ModelManifest;->Companion:Lru/localscribe/data/ModelManifest$Companion;

    invoke-virtual {v7}, Lru/localscribe/data/ModelManifest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v4, v7, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v4    # "this_\\2":Lkotlinx/serialization/json/Json;
    .end local v5    # "string\\2":Ljava/lang/String;
    .end local v6    # "$i$f$decodeFromString\\2\\280":I
    check-cast v7, Lru/localscribe/data/ModelManifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    nop

    .line 279
    .end local v1    # "it\\1":Ljava/io/BufferedReader;
    .end local v2    # "$i$a$-use-ModelStore$verify$supported$1\\1\\279\\0":I
    const/4 v1, 0x0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 278
    nop

    .line 283
    .local v7, "supported":Lru/localscribe/data/ModelManifest;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "speaker.onnx"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "silero.onnx"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "advanced/segmentation.int8.onnx"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 284
    if-eqz p2, :cond_1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lru/localscribe/data/ModelStore;->onlineName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "streaming/tokens.txt"

    aput-object v5, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 285
    :cond_1
    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getFileAsr()Lru/localscribe/core/FileAsr;

    move-result-object v2

    sget-object v5, Lru/localscribe/core/FileAsr;->WHISPER_EN:Lru/localscribe/core/FileAsr;

    if-ne v2, v5, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 286
    :cond_2
    sget-object v2, Lru/localscribe/data/ModelStore;->GIGAAM_FILES:Ljava/util/List;

    :goto_1
    check-cast v2, Ljava/lang/Iterable;

    .line 283
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 287
    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getRunEmotions()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "advanced/emo.int8.onnx"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    check-cast v2, Ljava/lang/Iterable;

    .line 283
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 288
    invoke-virtual {p1}, Lru/localscribe/core/Settings;->getRunSeparation()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_4

    const-string v2, "advanced/mossformer2.onnx"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/lang/Iterable;

    .line 283
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 282
    nop

    .line 291
    .local v1, "needed":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 292
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v7}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 293
    .local v6, "expected":Ljava/lang/String;
    invoke-virtual {v0}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 296
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lru/localscribe/data/ModelStore;->root:Ljava/io/File;

    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    sget-object v9, Lru/localscribe/data/ModelStore;->Companion:Lru/localscribe/data/ModelStore$Companion;

    invoke-virtual {v9, v8}, Lru/localscribe/data/ModelStore$Companion;->sha(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v4

    goto :goto_5

    :cond_5
    move v9, v3

    :goto_5
    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 298
    .local v2, "$i$a$-require-ModelStore$verify$2\\4\\297\\0":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e\u0432\u0440\u0435\u0436\u0434\u0435\u043d\u0430 \u043c\u043e\u0434\u0435\u043b\u044c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". \u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u0432\u0441\u0442\u0440\u043e\u0435\u043d\u043d\u044b\u0435 \u043c\u043e\u0434\u0435\u043b\u0438 \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .end local v2    # "$i$a$-require-ModelStore$verify$2\\4\\297\\0":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v8    # "f":Ljava/io/File;
    :cond_7
    const/4 v2, 0x0

    .line 294
    .local v2, "$i$a$-require-ModelStore$verify$1\\3\\293\\0":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041c\u043e\u0434\u0435\u043b\u044c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u043e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442 \u0438\u043b\u0438 \u043d\u0435\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u0430. \u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u0432\u0441\u0442\u0440\u043e\u0435\u043d\u043d\u044b\u0435 \u043c\u043e\u0434\u0435\u043b\u0438 \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .end local v2    # "$i$a$-require-ModelStore$verify$1\\3\\293\\0":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    .end local v6    # "expected":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0421\u0431\u043e\u0440\u043a\u0430 \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442 \u043c\u043e\u0434\u0435\u043b\u044c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    return-void

    .line 279
    .end local v1    # "needed":Ljava/util/List;
    .end local v7    # "supported":Lru/localscribe/data/ModelManifest;
    :catchall_0
    move-exception v1

    .end local v0    # "m":Lru/localscribe/data/ModelManifest;
    .end local p1    # "s":Lru/localscribe/core/Settings;
    .end local p2    # "live":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "m":Lru/localscribe/data/ModelManifest;
    .restart local p1    # "s":Lru/localscribe/core/Settings;
    .restart local p2    # "live":Z
    :catchall_1
    move-exception v2

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v0    # "m":Lru/localscribe/data/ModelManifest;
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041d\u0435\u0442 manifest.json \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
