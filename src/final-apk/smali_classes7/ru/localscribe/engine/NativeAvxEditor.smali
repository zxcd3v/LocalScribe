.class public final Lru/localscribe/engine/NativeAvxEditor;
.super Ljava/lang/Object;
.source "LocalTextEditor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J!\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0086 J)\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0086 J\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u0007H\u0086 J\u0011\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u0007H\u0086 \u00a8\u0006\u0015"
    }
    d2 = {
        "Lru/localscribe/engine/NativeAvxEditor;",
        "",
        "<init>",
        "()V",
        "load",
        "",
        "open",
        "",
        "model",
        "",
        "threads",
        "",
        "batchThreads",
        "generate",
        "handle",
        "instructions",
        "text",
        "previous",
        "release",
        "",
        "abortInference",
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

.field public static final INSTANCE:Lru/localscribe/engine/NativeAvxEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/localscribe/engine/NativeAvxEditor;

    invoke-direct {v0}, Lru/localscribe/engine/NativeAvxEditor;-><init>()V

    sput-object v0, Lru/localscribe/engine/NativeAvxEditor;->INSTANCE:Lru/localscribe/engine/NativeAvxEditor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native abortInference(J)V
.end method

.method public final native generate(J[B[B[B)[B
.end method

.method public final load()Z
    .locals 1

    const-string v0, "localscribe_llama_avx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final native open([BII)J
.end method

.method public final native release(J)V
.end method
