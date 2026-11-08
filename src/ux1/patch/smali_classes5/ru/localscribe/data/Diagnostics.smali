.class public final Lru/localscribe/data/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiagnostics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Diagnostics.kt\nru/localscribe/data/Diagnostics\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,97:1\n1869#2,2:98\n1068#2:104\n1869#2,2:105\n1#3:100\n3919#4:101\n4434#4,2:102\n*S KotlinDebug\n*F\n+ 1 Diagnostics.kt\nru/localscribe/data/Diagnostics\n*L\n21#1:98,2\n91#1:104\n93#1:105,2\n90#1:101\n90#1:102,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\tJ\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lru/localscribe/data/Diagnostics;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "folder",
        "Ljava/io/File;",
        "failure",
        "",
        "stage",
        "",
        "error",
        "",
        "value",
        "previousExit",
        "write",
        "kind",
        "text",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final folder:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$N3vay6F9XYlzmlXkqyUYCfq7h1c(Landroid/app/ApplicationExitInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lru/localscribe/data/Diagnostics;->previousExit$lambda$0$0$0(Landroid/app/ApplicationExitInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lru/localscribe/data/Diagnostics;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/data/Diagnostics;->context:Landroid/content/Context;

    .line 10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/localscribe/data/Diagnostics;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "diagnostics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    .line 9
    return-void
.end method

.method private static final previousExit$lambda$0$0$0(Landroid/app/ApplicationExitInfo;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "it"    # Landroid/app/ApplicationExitInfo;

    .line 48
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timestamp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pss_kb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rss_kb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private final write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v2, 0x10000

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v2, v4, v5, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 90
    nop

    .line 93
    nop

    .line 92
    nop

    .line 91
    nop

    .line 88
    iget-object v1, v0, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_5

    .line 88
    nop

    .line 90
    nop

    .local v1, "$this$filter\\1":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 101
    .local v2, "$i$f$filter\\1\\90":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination\\2":Ljava/util/Collection;
    move-object v8, v1

    .local v8, "$this$filterTo\\2":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 102
    .local v9, "$i$f$filterTo\\2\\101":I
    array-length v10, v8

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_3

    aget-object v13, v8, v12

    .local v13, "element\\2":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it\\3":Ljava/io/File;
    const/4 v15, 0x0

    .line 90
    .local v15, "$i$a$-filter-Diagnostics$write$1\\3\\102\\0":I
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure-"

    move-object/from16 v17, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    .end local v1    # "$this$filter\\1":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter\\1\\90":I
    .local v16, "$i$f$filter\\1\\90":I
    .local v17, "$this$filter\\1":[Ljava/lang/Object;
    invoke-static {v4, v0, v11, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "system-exit-"

    invoke-static {v0, v4, v11, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v11

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 102
    .end local v14    # "it\\3":Ljava/io/File;
    .end local v15    # "$i$a$-filter-Diagnostics$write$1\\3\\102\\0":I
    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v13    # "element\\2":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object v4, v1

    move v5, v2

    move/from16 v2, v16

    move-object/from16 v1, v17

    goto :goto_0

    .line 103
    .end local v16    # "$i$f$filter\\1\\90":I
    .end local v17    # "$this$filter\\1":[Ljava/lang/Object;
    .restart local v1    # "$this$filter\\1":[Ljava/lang/Object;
    .restart local v2    # "$i$f$filter\\1\\90":I
    :cond_3
    move-object/from16 v17, v1

    move/from16 v16, v2

    .end local v1    # "$this$filter\\1":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter\\1\\90":I
    .end local v7    # "destination\\2":Ljava/util/Collection;
    .end local v8    # "$this$filterTo\\2":[Ljava/lang/Object;
    .end local v9    # "$i$f$filterTo\\2\\101":I
    .restart local v16    # "$i$f$filter\\1\\90":I
    .restart local v17    # "$this$filter\\1":[Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 101
    nop

    .line 90
    .end local v16    # "$i$f$filter\\1\\90":I
    .end local v17    # "$this$filter\\1":[Ljava/lang/Object;
    nop

    .line 91
    nop

    .line 88
    check-cast v0, Ljava/lang/Iterable;

    .line 91
    nop

    .local v0, "$this$sortedByDescending\\4":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 104
    .local v1, "$i$f$sortedByDescending\\4\\91":I
    new-instance v2, Lru/localscribe/data/Diagnostics$write$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lru/localscribe/data/Diagnostics$write$$inlined$sortedByDescending$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 91
    .end local v0    # "$this$sortedByDescending\\4":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedByDescending\\4\\91":I
    nop

    .line 92
    if-eqz v0, :cond_5

    .line 88
    check-cast v0, Ljava/lang/Iterable;

    .line 92
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_5

    .line 88
    check-cast v0, Ljava/lang/Iterable;

    .line 93
    nop

    .local v0, "$this$forEach\\5":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$f$forEach\\5\\93":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element\\5":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/io/File;

    .local v5, "it\\6":Ljava/io/File;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$a$-forEach-Diagnostics$write$3\\6\\105\\0":I
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 105
    .end local v5    # "it\\6":Ljava/io/File;
    .end local v7    # "$i$a$-forEach-Diagnostics$write$3\\6\\105\\0":I
    nop

    .end local v4    # "element\\5":Ljava/lang/Object;
    goto :goto_3

    .line 106
    :cond_4
    nop

    .end local v0    # "$this$forEach\\5":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach\\5\\93":I
    goto :goto_4

    .line 90
    :cond_5
    nop

    .line 94
    :goto_4
    return-void
.end method


# virtual methods
.method public final declared-synchronized failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 20
    .param p1, "stage"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    const-string v0, "stage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lru/localscribe/data/Diagnostics;

    .local v0, "$this$failure_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    const/4 v3, 0x0

    .line 15
    .local v3, "$i$a$-runCatching-Diagnostics$failure$1\\1\\14\\0":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v4

    .local v5, "$this$failure_u24lambda_u240_u240\\2":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 16
    .local v6, "$i$a$-buildString-Diagnostics$failure$1$text$1\\2\\15\\1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v7, "cause\\2":Lkotlin/jvm/internal/Ref$ObjectRef;
    iput-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x6

    if-ge v10, v11, :cond_4

    move v11, v10

    .local v11, "it\\3":I
    const/4 v12, 0x0

    .line 19
    .local v12, "$i$a$-repeat-Diagnostics$failure$1$text$1$1\\3\\18\\2":I
    iget-object v13, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Throwable;

    if-nez v13, :cond_0

    move v1, v8

    goto/16 :goto_4

    .line 20
    .local v13, "t\\3":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const-string v15, "getStackTrace(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, [Ljava/lang/Object;

    const/16 v15, 0x40

    invoke-static {v14, v15}, Lkotlin/collections/ArraysKt;->take([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$forEach\\4":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 98
    .local v15, "$i$f$forEach\\4\\21":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "element\\4":Ljava/lang/Object;
    move-object/from16 v18, v17

    check-cast v18, Ljava/lang/StackTraceElement;

    move-object/from16 v19, v18

    .local v19, "it\\5":Ljava/lang/StackTraceElement;
    const/16 v18, 0x0

    .line 21
    .local v18, "$i$a$-forEach-Diagnostics$failure$1$text$1$1$1\\5\\98\\3":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  at "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, v19

    .end local v19    # "it\\5":Ljava/lang/StackTraceElement;
    .local v9, "it\\5":Ljava/lang/StackTraceElement;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .end local v9    # "it\\5":Ljava/lang/StackTraceElement;
    .end local v18    # "$i$a$-forEach-Diagnostics$failure$1$text$1$1$1\\5\\98\\3":I
    move v8, v1

    move-object/from16 v1, p1

    .end local v17    # "element\\4":Ljava/lang/Object;
    goto :goto_1

    .line 99
    :cond_1
    move v1, v8

    .line 22
    .end local v14    # "$this$forEach\\4":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach\\4\\21":I
    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .line 100
    move-object v9, v8

    .local v9, "it\\6":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 22
    .local v14, "$i$a$-takeUnless-Diagnostics$failure$1$text$1$1$2\\6\\22\\3":I
    if-ne v9, v13, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .end local v9    # "it\\6":Ljava/lang/Throwable;
    .end local v14    # "$i$a$-takeUnless-Diagnostics$failure$1$text$1$1$2\\6\\22\\3":I
    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    nop

    .line 18
    .end local v11    # "it\\3":I
    .end local v12    # "$i$a$-repeat-Diagnostics$failure$1$text$1$1\\3\\18\\2":I
    .end local v13    # "t\\3":Ljava/lang/Throwable;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 24
    :cond_4
    nop

    .line 15
    .end local v5    # "$this$failure_u24lambda_u240_u240\\2":Ljava/lang/StringBuilder;
    .end local v6    # "$i$a$-buildString-Diagnostics$failure$1$text$1\\2\\15\\1":I
    .end local v7    # "cause\\2":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "text\\1":Ljava/lang/String;
    const-string v4, "failure"

    invoke-direct {v0, v4, v1}, Lru/localscribe/data/Diagnostics;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    nop

    .end local v0    # "$this$failure_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v1    # "text\\1":Ljava/lang/String;
    .end local v3    # "$i$a$-runCatching-Diagnostics$failure$1\\1\\14\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :goto_5
    monitor-exit p0

    return-void

    .line 13
    .end local p0    # "this":Lru/localscribe/data/Diagnostics;
    .end local p1    # "stage":Ljava/lang/String;
    .end local p2    # "error":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final previousExit()V
    .locals 25

    .line 38
    move-object/from16 v1, p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    return-void

    .line 39
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lru/localscribe/data/Diagnostics;

    move-object v2, v0

    .local v2, "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    iget-object v0, v2, Lru/localscribe/data/Diagnostics;->context:Landroid/content/Context;

    .line 42
    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 43
    iget-object v4, v2, Lru/localscribe/data/Diagnostics;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v4, "getHistoricalProcessExitReasons(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v4, v0

    .line 44
    .local v4, "exits\\1":Ljava/util/List;
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$a$-synchronized-Diagnostics$previousExit$1$1\\2\\44\\1":I
    nop

    .line 46
    :try_start_1
    const-string v5, "system-exit"

    .line 47
    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    const-string v8, "\n"

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v13, Lru/localscribe/data/Diagnostics$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lru/localscribe/data/Diagnostics$$ExternalSyntheticLambda0;-><init>()V

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-direct {v2, v5, v7}, Lru/localscribe/data/Diagnostics;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    nop

    .end local v0    # "$i$a$-synchronized-Diagnostics$previousExit$1$1\\2\\44\\1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    .line 44
    :try_start_2
    monitor-exit v2

    .line 54
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    move-object v5, v0

    .line 55
    .local v5, "exit\\1":Landroid/app/ApplicationExitInfo;
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    const/4 v0, 0x0

    .line 56
    .local v0, "$i$a$-synchronized-Diagnostics$previousExit$1$2\\3\\55\\1":I
    :try_start_3
    iget-object v7, v2, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 57
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    const-string v9, "system-trace.bin"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 58
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    const-string v9, "system-trace-info.txt"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 55
    .end local v0    # "$i$a$-synchronized-Diagnostics$previousExit$1$2\\3\\55\\1":I
    :try_start_4
    monitor-exit v2

    .line 60
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    :try_start_5
    move-object v8, v7

    check-cast v8, Ljava/io/InputStream;

    .local v8, "input\\4":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 61
    .local v9, "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    const/4 v10, 0x0

    .local v10, "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :try_start_6
    new-instance v11, Ljava/io/FileOutputStream;

    .line 62
    new-instance v12, Ljava/io/File;

    iget-object v13, v2, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    const-string v14, "system-trace.bin"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    move-object v12, v11

    check-cast v12, Ljava/io/FileOutputStream;

    .local v12, "out\\6":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 63
    .local v13, "$i$a$-use-Diagnostics$previousExit$1$3$1$1\\6\\62\\5":I
    const/16 v14, 0x2000

    new-array v14, v14, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 64
    .local v14, "buffer\\6":[B
    const/high16 v15, 0x400000

    .line 65
    .local v15, "limit\\6":I
    move/from16 v16, v15

    move/from16 v0, v16

    .line 66
    .local v0, "remaining\\6":I
    :goto_0
    if-lez v0, :cond_1

    .line 67
    :try_start_8
    array-length v6, v14

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "remaining\\6":I
    .local v17, "remaining\\6":I
    invoke-virtual {v8, v14, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 68
    .local v6, "n\\6":I
    if-ltz v6, :cond_2

    .line 69
    invoke-virtual {v12, v14, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 70
    sub-int v6, v17, v6

    move/from16 v24, v6

    move v6, v0

    move/from16 v0, v24

    .end local v17    # "remaining\\6":I
    .local v6, "remaining\\6":I
    goto :goto_0

    .line 62
    .end local v6    # "remaining\\6":I
    .end local v12    # "out\\6":Ljava/io/FileOutputStream;
    .end local v13    # "$i$a$-use-Diagnostics$previousExit$1$3$1$1\\6\\62\\5":I
    .end local v14    # "buffer\\6":[B
    .end local v15    # "limit\\6":I
    :catchall_0
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v3, v0

    goto/16 :goto_2

    .line 66
    .restart local v0    # "remaining\\6":I
    .restart local v12    # "out\\6":Ljava/io/FileOutputStream;
    .restart local v13    # "$i$a$-use-Diagnostics$previousExit$1$3$1$1\\6\\62\\5":I
    .restart local v14    # "buffer\\6":[B
    .restart local v15    # "limit\\6":I
    :cond_1
    move/from16 v17, v0

    move v0, v6

    .line 72
    .end local v0    # "remaining\\6":I
    .restart local v17    # "remaining\\6":I
    :cond_2
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 73
    .local v6, "truncated\\6":Z
    :goto_1
    new-instance v0, Ljava/io/File;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move/from16 v16, v3

    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .local v16, "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    :try_start_a
    iget-object v3, v2, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v18, v4

    .end local v4    # "exits\\1":Ljava/util/List;
    .local v18, "exits\\1":Ljava/util/List;
    :try_start_b
    const-string v4, "system-trace-info.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v19, v5

    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .local v19, "exit\\1":Landroid/app/ApplicationExitInfo;
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v20, v8

    .end local v8    # "input\\4":Ljava/io/InputStream;
    .local v20, "input\\4":Ljava/io/InputStream;
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 76
    move/from16 v21, v9

    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .local v21, "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    sub-int v9, v15, v17

    move/from16 v22, v10

    .end local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .local v22, "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :try_start_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v12

    .end local v12    # "out\\6":Ljava/io/FileOutputStream;
    .local v23, "out\\6":Ljava/io/FileOutputStream;
    const-string v12, "timestamp="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " truncated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4, v5}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 78
    nop

    .end local v6    # "truncated\\6":Z
    .end local v13    # "$i$a$-use-Diagnostics$previousExit$1$3$1$1\\6\\62\\5":I
    .end local v14    # "buffer\\6":[B
    .end local v15    # "limit\\6":I
    .end local v17    # "remaining\\6":I
    .end local v23    # "out\\6":Ljava/io/FileOutputStream;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 62
    :try_start_f
    invoke-static {v11, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    nop

    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 61
    :try_start_10
    monitor-exit v2

    .line 80
    nop

    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 60
    const/4 v5, 0x0

    :try_start_11
    invoke-static {v7, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    goto/16 :goto_5

    .line 62
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_2
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v3, v0

    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    goto :goto_2

    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v8    # "input\\4":Ljava/io/InputStream;
    .restart local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_3
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v3, v0

    .end local v8    # "input\\4":Ljava/io/InputStream;
    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    goto :goto_2

    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v8    # "input\\4":Ljava/io/InputStream;
    .restart local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_4
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v3, v0

    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v8    # "input\\4":Ljava/io/InputStream;
    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    goto :goto_2

    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v8    # "input\\4":Ljava/io/InputStream;
    .restart local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_5
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v3, v0

    .end local v4    # "exits\\1":Ljava/util/List;
    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v8    # "input\\4":Ljava/io/InputStream;
    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    goto :goto_2

    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v8    # "input\\4":Ljava/io/InputStream;
    .restart local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_6
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v3, v0

    .end local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v4    # "exits\\1":Ljava/util/List;
    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v8    # "input\\4":Ljava/io/InputStream;
    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .end local v10    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :goto_2
    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .restart local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    :catchall_7
    move-exception v0

    :try_start_13
    invoke-static {v11, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 61
    .end local v22    # "$i$a$-synchronized-Diagnostics$previousExit$1$3$1\\5\\61\\4":I
    .restart local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    :catchall_8
    move-exception v0

    goto :goto_3

    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v8    # "input\\4":Ljava/io/InputStream;
    .restart local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    :catchall_9
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v4    # "exits\\1":Ljava/util/List;
    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .end local v8    # "input\\4":Ljava/io/InputStream;
    .end local v9    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v20    # "input\\4":Ljava/io/InputStream;
    .restart local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    :goto_3
    :try_start_14
    monitor-exit v2

    .end local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 60
    .end local v20    # "input\\4":Ljava/io/InputStream;
    .end local v21    # "$i$a$-use-Diagnostics$previousExit$1$3\\4\\60\\1":I
    .restart local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    :catchall_a
    move-exception v0

    move-object v3, v0

    goto :goto_4

    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    :catchall_b
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v3, v0

    .end local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v4    # "exits\\1":Ljava/util/List;
    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    :goto_4
    :try_start_15
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .restart local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    :catchall_c
    move-exception v0

    :try_start_16
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    :cond_4
    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v4    # "exits\\1":Ljava/util/List;
    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    move-object v0, v5

    .line 80
    :goto_5
    nop

    .line 39
    .end local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    .line 55
    .restart local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .restart local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    .restart local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    :catchall_d
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v4    # "exits\\1":Ljava/util/List;
    .end local v5    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    .restart local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    monitor-exit v2

    throw v0

    .line 44
    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    .end local v19    # "exit\\1":Landroid/app/ApplicationExitInfo;
    .restart local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v4    # "exits\\1":Ljava/util/List;
    :catchall_e
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v4

    .end local v3    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v4    # "exits\\1":Ljava/util/List;
    .restart local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .restart local v18    # "exits\\1":Ljava/util/List;
    monitor-exit v2

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 39
    .end local v2    # "$this$previousExit_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v16    # "$i$a$-runCatching-Diagnostics$previousExit$1\\1\\39\\0":I
    .end local v18    # "exits\\1":Ljava/util/List;
    :catchall_f
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 100
    .local v0, "it\\8":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 82
    .local v2, "$i$a$-onFailure-Diagnostics$previousExit$2\\8\\82\\0":I
    const-string v3, "read-exit-info"

    invoke-virtual {v1, v3, v0}, Lru/localscribe/data/Diagnostics;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "it\\8":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-Diagnostics$previousExit$2\\8\\82\\0":I
    :cond_5
    return-void
.end method

.method public final declared-synchronized stage(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lru/localscribe/data/Diagnostics;

    .local v0, "$this$stage_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$a$-runCatching-Diagnostics$stage$1\\1\\31\\0":I
    iget-object v2, v0, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 33
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lru/localscribe/data/Diagnostics;->folder:Ljava/io/File;

    const-string v4, "last-stage.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 34
    nop

    .end local v0    # "$this$stage_u24lambda_u240\\1":Lru/localscribe/data/Diagnostics;
    .end local v1    # "$i$a$-runCatching-Diagnostics$stage$1\\1\\31\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lru/localscribe/data/Diagnostics;
    .end local p1    # "value":Ljava/lang/String;
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
