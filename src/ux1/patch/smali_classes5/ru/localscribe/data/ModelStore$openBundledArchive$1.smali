.class public final Lru/localscribe/data/ModelStore$openBundledArchive$1;
.super Ljava/io/FilterInputStream;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/data/ModelStore;->openBundledArchive()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "ru/localscribe/data/ModelStore$openBundledArchive$1",
        "Ljava/io/FilterInputStream;",
        "close",
        "",
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


# instance fields
.field final synthetic $apk:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "$apk"    # Ljava/util/zip/ZipFile;
    .param p2, "$super_call_param$1"    # Ljava/io/InputStream;

    iput-object p1, p0, Lru/localscribe/data/ModelStore$openBundledArchive$1;->$apk:Ljava/util/zip/ZipFile;

    .line 110
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 112
    nop

    .line 113
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lru/localscribe/data/ModelStore$openBundledArchive$1;->$apk:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 116
    nop

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lru/localscribe/data/ModelStore$openBundledArchive$1;->$apk:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0
.end method
