.class public final Lru/localscribe/data/ModelStore$Companion;
.super Ljava/lang/Object;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/localscribe/data/ModelStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lru/localscribe/data/ModelStore$Companion;",
        "",
        "<init>",
        "()V",
        "GIGAAM_FILES",
        "",
        "",
        "MAX_PACK_BYTES",
        "",
        "sha",
        "file",
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


# direct methods
.method public static synthetic $r8$lambda$QlQq0OT8astMGJw9VwSzSlvBYu4(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lru/localscribe/data/ModelStore$Companion;->sha$lambda$1(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/localscribe/data/ModelStore$Companion;-><init>()V

    return-void
.end method

.method private static final sha$lambda$1(B)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "it"    # B

    .line 337
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
.method public final sha(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "d":Ljava/security/MessageDigest;
    new-instance v0, Ljava/io/FileInputStream;

    .line 329
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    .local v0, "it\\1":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 330
    .local v3, "$i$a$-use-ModelStore$Companion$sha$1\\1\\329\\0":I
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 331
    .local v4, "b\\1":[B
    :goto_0
    nop

    .line 332
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 333
    .local v5, "n\\1":I
    if-ltz v5, :cond_0

    .line 334
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    .end local v5    # "n\\1":I
    goto :goto_0

    .line 336
    :cond_0
    nop

    .end local v0    # "it\\1":Ljava/io/FileInputStream;
    .end local v3    # "$i$a$-use-ModelStore$Companion$sha$1\\1\\329\\0":I
    .end local v4    # "b\\1":[B
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 337
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v0, "digest(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v9, Lru/localscribe/data/ModelStore$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lru/localscribe/data/ModelStore$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    move-object v3, v0

    .end local v1    # "d":Ljava/security/MessageDigest;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "d":Ljava/security/MessageDigest;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
