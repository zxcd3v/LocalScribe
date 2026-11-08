.class public final Lru/localscribe/data/Demos;
.super Ljava/lang/Object;
.source "DemoAudio.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lru/localscribe/data/Demos;",
        "",
        "<init>",
        "()V",
        "all",
        "",
        "Lru/localscribe/data/DemoAudio;",
        "getAll",
        "()Ljava/util/List;",
        "copy",
        "",
        "context",
        "Landroid/content/Context;",
        "demo",
        "destination",
        "Ljava/io/File;",
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

.field public static final INSTANCE:Lru/localscribe/data/Demos;

.field private static final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/data/DemoAudio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$rSnfQyfEVeYgWv8IRgpkuVgxrmg(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lru/localscribe/data/Demos;->copy$lambda$1(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lru/localscribe/data/Demos;

    invoke-direct {v0}, Lru/localscribe/data/Demos;-><init>()V

    sput-object v0, Lru/localscribe/data/Demos;->INSTANCE:Lru/localscribe/data/Demos;

    .line 11
    nop

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lru/localscribe/data/DemoAudio;

    new-instance v1, Lru/localscribe/data/DemoAudio;

    .line 13
    nop

    .line 14
    nop

    .line 15
    nop

    .line 16
    nop

    .line 12
    const-string v2, "client"

    const-string v3, "\u0421\u043e\u0437\u0432\u043e\u043d \u0441 \u043a\u043b\u0438\u0435\u043d\u0442\u043e\u043c"

    const-wide/16 v4, 0x578b

    const-string v6, "10cb145d573043645acf4e069efb39006d00bce19f365c0945826282144e7da5"

    invoke-direct/range {v1 .. v6}, Lru/localscribe/data/DemoAudio;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    new-instance v3, Lru/localscribe/data/DemoAudio;

    .line 19
    nop

    .line 20
    nop

    .line 21
    nop

    .line 22
    nop

    .line 18
    const-string v4, "clinic"

    const-string v5, "\u041f\u0440\u0438\u0451\u043c \u0443 \u0432\u0440\u0430\u0447\u0430"

    const-wide/16 v6, 0x5f92

    const-string v8, "c632f1b4b4bff9eb0e592ee0dcbfc4fbc5b643ab0a18fe53ea2c83724f756403"

    invoke-direct/range {v3 .. v8}, Lru/localscribe/data/DemoAudio;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 12
    nop

    .line 24
    new-instance v4, Lru/localscribe/data/DemoAudio;

    .line 25
    nop

    .line 26
    nop

    .line 27
    nop

    .line 28
    nop

    .line 24
    const-string v5, "interview"

    const-string v6, "\u0418\u043d\u0442\u0435\u0440\u0432\u044c\u044e"

    const-wide/16 v7, 0x5569

    const-string v9, "82d1a6e741cbd6fbe0ca00a284601b431fedb43eba189cfaaca11897e979e69d"

    invoke-direct/range {v4 .. v9}, Lru/localscribe/data/DemoAudio;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v1, 0x2

    aput-object v4, v0, v1

    .line 12
    nop

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/localscribe/data/Demos;->all:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/Demos;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final copy$lambda$1(B)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "it"    # B

    .line 47
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final copy(Landroid/content/Context;Lru/localscribe/data/DemoAudio;Ljava/io/File;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "demo"    # Lru/localscribe/data/DemoAudio;
    .param p3, "destination"    # Ljava/io/File;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "demo"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lru/localscribe/data/Demos;->all:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 35
    .local v4, "digest":Ljava/security/MessageDigest;
    nop

    .line 36
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v1}, Lru/localscribe/data/DemoAudio;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "demos/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".wav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    move-object v6, v0

    .local v6, "input\\2":Ljava/io/InputStream;
    const/4 v7, 0x0

    .local v7, "$i$a$-use-Demos$copy$1\\2\\36\\0":I
    new-instance v0, Ljava/io/FileOutputStream;

    .line 37
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "output\\3":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 38
    .local v9, "$i$a$-use-Demos$copy$1$1\\3\\37\\2":I
    const/high16 v10, 0x10000

    new-array v10, v10, [B

    .line 39
    .local v10, "buffer\\3":[B
    :goto_0
    nop

    .line 40
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 41
    .local v11, "n\\3":I
    if-ltz v11, :cond_0

    .line 42
    const/4 v12, 0x0

    invoke-virtual {v4, v10, v12, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 43
    invoke-virtual {v0, v10, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .end local v11    # "n\\3":I
    goto :goto_0

    .line 45
    :cond_0
    nop

    .end local v0    # "output\\3":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-Demos$copy$1$1\\3\\37\\2":I
    .end local v10    # "buffer\\3":[B
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    nop

    .end local v6    # "input\\2":Ljava/io/InputStream;
    .end local v7    # "$i$a$-use-Demos$copy$1\\2\\36\\0":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 36
    :try_start_4
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const-string v0, "digest(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v13, Lru/localscribe/data/Demos$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lru/localscribe/data/Demos$$ExternalSyntheticLambda0;-><init>()V

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lru/localscribe/data/DemoAudio;->getSha256()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    .local v0, "$i$a$-check-Demos$copy$3\\4\\47\\0":I
    const-string v5, "\u041f\u043e\u0432\u0440\u0435\u0436\u0434\u0435\u043d\u0430 \u0434\u0435\u043c\u043e-\u0437\u0430\u043f\u0438\u0441\u044c"

    .line 47
    .end local v0    # "$i$a$-check-Demos$copy$3\\4\\47\\0":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .end local p3    # "destination":Ljava/io/File;
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    .restart local v4    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "input\\2":Ljava/io/InputStream;
    .restart local v7    # "$i$a$-use-Demos$copy$1\\2\\36\\0":I
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .restart local p3    # "destination":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v9, v0

    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "input\\2":Ljava/io/InputStream;
    .end local v7    # "$i$a$-use-Demos$copy$1\\2\\36\\0":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .end local p3    # "destination":Ljava/io/File;
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v4    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "input\\2":Ljava/io/InputStream;
    .restart local v7    # "$i$a$-use-Demos$copy$1\\2\\36\\0":I
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .restart local p3    # "destination":Ljava/io/File;
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .end local p3    # "destination":Ljava/io/File;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 36
    .end local v6    # "input\\2":Ljava/io/InputStream;
    .end local v7    # "$i$a$-use-Demos$copy$1\\2\\36\\0":I
    .restart local v4    # "digest":Ljava/security/MessageDigest;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .restart local p3    # "destination":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v6, v0

    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .end local p3    # "destination":Ljava/io/File;
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .restart local v4    # "digest":Ljava/security/MessageDigest;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .restart local p3    # "destination":Ljava/io/File;
    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .end local p3    # "destination":Ljava/io/File;
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 50
    .restart local v4    # "digest":Ljava/security/MessageDigest;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "demo":Lru/localscribe/data/DemoAudio;
    .restart local p3    # "destination":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 52
    throw v0

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "digest":Ljava/security/MessageDigest;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed requirement."

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/data/DemoAudio;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lru/localscribe/data/Demos;->all:Ljava/util/List;

    return-object v0
.end method
