.class public final Lru/localscribe/engine/LocalTextEditor;
.super Ljava/lang/Object;
.source "LocalTextEditor.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/engine/LocalTextEditor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalTextEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalTextEditor.kt\nru/localscribe/engine/LocalTextEditor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003J*\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00112\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0011J\u0006\u0010\u0014\u001a\u00020\u0015J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0011\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\rH\u0082 J\t\u0010\u0018\u001a\u00020\u000bH\u0082 J!\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0082 J)\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u001bH\u0082 J\u0011\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\rH\u0082 R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lru/localscribe/engine/LocalTextEditor;",
        "Ljava/io/Closeable;",
        "path",
        "",
        "instructions",
        "generationThreads",
        "",
        "prefillThreads",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;II)V",
        "accelerated",
        "",
        "handle",
        "",
        "edit",
        "text",
        "editBatch",
        "",
        "texts",
        "previous",
        "cancel",
        "",
        "close",
        "abortInference",
        "avxAvailable",
        "open",
        "model",
        "",
        "threads",
        "batchThreads",
        "generate",
        "release",
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

.field public static final Companion:Lru/localscribe/engine/LocalTextEditor$Companion;


# instance fields
.field private final accelerated:Z

.field private handle:J

.field private final instructions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/localscribe/engine/LocalTextEditor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/engine/LocalTextEditor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/engine/LocalTextEditor;->Companion:Lru/localscribe/engine/LocalTextEditor$Companion;

    const/16 v0, 0x8

    sput v0, Lru/localscribe/engine/LocalTextEditor;->$stable:I

    nop

    const-string v0, "localscribe_llama"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instructions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lru/localscribe/engine/LocalTextEditor;->instructions:Ljava/lang/String;

    invoke-direct {p0}, Lru/localscribe/engine/LocalTextEditor;->avxAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lru/localscribe/engine/LocalTextEditor;

    const/4 v2, 0x0

    sget-object v3, Lru/localscribe/engine/NativeAvxEditor;->INSTANCE:Lru/localscribe/engine/NativeAvxEditor;

    invoke-virtual {v3}, Lru/localscribe/engine/NativeAvxEditor;->load()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lru/localscribe/engine/LocalTextEditor;->accelerated:Z

    iget-boolean v0, p0, Lru/localscribe/engine/LocalTextEditor;->accelerated:Z

    if-eqz v0, :cond_2

    sget-object v0, Lru/localscribe/engine/NativeAvxEditor;->INSTANCE:Lru/localscribe/engine/NativeAvxEditor;

    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lru/localscribe/engine/NativeAvxEditor;->open([BII)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lru/localscribe/engine/LocalTextEditor;->open([BII)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    nop

    nop

    iget-boolean v0, p0, Lru/localscribe/engine/LocalTextEditor;->accelerated:Z

    if-eqz v0, :cond_3

    const-string v0, "AVX"

    goto :goto_2

    :cond_3
    const-string v0, "portable"

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editor.backend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalScribePerf"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x2

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p4

    const/4 p5, 0x1

    invoke-static {p4, p5, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lru/localscribe/engine/LocalTextEditor;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private final native abortInference(J)V
.end method

.method private final native avxAvailable()Z
.end method

.method public static synthetic editBatch$default(Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/localscribe/engine/LocalTextEditor;->editBatch(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final native generate(J[B[B[B)[B
.end method

.method private final native open([BII)J
.end method

.method private final native release(J)V
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lru/localscribe/engine/LocalTextEditor;->accelerated:Z

    if-eqz v0, :cond_0

    sget-object v0, Lru/localscribe/engine/NativeAvxEditor;->INSTANCE:Lru/localscribe/engine/NativeAvxEditor;

    iget-wide v1, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    invoke-virtual {v0, v1, v2}, Lru/localscribe/engine/NativeAvxEditor;->abortInference(J)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    invoke-direct {p0, v0, v1}, Lru/localscribe/engine/LocalTextEditor;->abortInference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lru/localscribe/engine/LocalTextEditor;->accelerated:Z

    if-eqz v0, :cond_1

    sget-object v0, Lru/localscribe/engine/NativeAvxEditor;->INSTANCE:Lru/localscribe/engine/NativeAvxEditor;

    iget-wide v4, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    invoke-virtual {v0, v4, v5}, Lru/localscribe/engine/NativeAvxEditor;->release(J)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    invoke-direct {p0, v0, v1}, Lru/localscribe/engine/LocalTextEditor;->release(J)V

    :goto_0
    iput-wide v2, p0, Lru/localscribe/engine/LocalTextEditor;->handle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final edit(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lru/localscribe/engine/LocalTextEditor;->editBatch$default(Lru/localscribe/engine/LocalTextEditor;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final editBatch(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const-string v1, "texts"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "previous"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    const-string v1, " "

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5dc

    if-gt v1, v3, :cond_5

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v3, 0xd

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "<|"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lru/localscribe/engine/LocalTextEditorKt;->editorHistory(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    nop

    iget-boolean v1, v0, Lru/localscribe/engine/LocalTextEditor;->accelerated:Z

    if-eqz v1, :cond_3

    sget-object v9, Lru/localscribe/engine/NativeAvxEditor;->INSTANCE:Lru/localscribe/engine/NativeAvxEditor;

    iget-wide v10, v0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    iget-object v1, v0, Lru/localscribe/engine/LocalTextEditor;->instructions:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x20

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v8}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Lru/localscribe/engine/NativeAvxEditor;->generate(J[B[B[B)[B

    move-result-object v1

    goto :goto_1

    :cond_3
    nop

    iget-wide v1, v0, Lru/localscribe/engine/LocalTextEditor;->handle:J

    iget-object v3, v0, Lru/localscribe/engine/LocalTextEditor;->instructions:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x20

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v8}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lru/localscribe/engine/LocalTextEditor;->generate(J[B[B[B)[B

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    sget-object v1, Lru/localscribe/core/TranscriptEdits;->INSTANCE:Lru/localscribe/core/TranscriptEdits;

    invoke-virtual {v1, v6, v0}, Lru/localscribe/core/TranscriptEdits;->partition(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v6

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v6

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
