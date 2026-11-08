.class final Lru/localscribe/data/ModelStore$installArchive$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModelStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/data/ModelStore$installArchive$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelStore.kt\nru/localscribe/data/ModelStore$installArchive$2$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 Json.kt\nkotlinx/serialization/json/Json\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,341:1\n1#2:342\n375#3:343\n375#3:344\n375#3:348\n375#3:352\n222#4:345\n1878#5,2:346\n1880#5:349\n1869#5,2:350\n*S KotlinDebug\n*F\n+ 1 ModelStore.kt\nru/localscribe/data/ModelStore$installArchive$2$2\n*L\n180#1:343\n200#1:344\n240#1:348\n260#1:352\n226#1:345\n239#1:346,2\n239#1:349\n255#1:350,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "ru.localscribe.data.ModelStore$installArchive$2$2"
    f = "ModelStore.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $bundled:Lru/localscribe/data/BundledModelInfo;

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $openArchive:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lru/localscribe/data/ModelStore;


# direct methods
.method public static synthetic $r8$lambda$boqWp66BQwfl9G_MIW5PVaMkvtI(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/data/ModelStore$installArchive$2$2;->invokeSuspend$lambda$5(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wzcdNo8ynvkdCq-Fj8wOvAh3WSw(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lru/localscribe/data/ModelStore$installArchive$2$2;->invokeSuspend$lambda$6(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lru/localscribe/data/ModelStore;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/data/ModelStore;",
            "Lru/localscribe/data/BundledModelInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/localscribe/data/ModelInstallProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/data/ModelStore$installArchive$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    iput-object p2, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    iput-object p3, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->$openArchive:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$5(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "$mf"    # Ljava/io/File;
    .param p1, "it"    # Ljava/io/File;

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final invokeSuspend$lambda$6(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "$stage"    # Ljava/io/File;
    .param p1, "it"    # Ljava/io/File;

    .line 236
    invoke-static {p1, p0}, Lkotlin/io/FilesKt;->relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/FilesKt;->getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/localscribe/data/ModelStore$installArchive$2$2;

    iget-object v1, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    iget-object v2, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    iget-object v3, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lru/localscribe/data/ModelStore$installArchive$2$2;->$openArchive:Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lru/localscribe/data/ModelStore$installArchive$2$2;-><init>(Lru/localscribe/data/ModelStore;Lru/localscribe/data/BundledModelInfo;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/data/ModelStore$installArchive$2$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p0, p1}, Lru/localscribe/data/ModelStore$installArchive$2$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/ModelStore$installArchive$2$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/data/ModelStore$installArchive$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    const-string v0, "getName(...)"

    const-string v2, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u0435\u043c \u043c\u043e\u0434\u0435\u043b\u0438 \u0438\u0437 APK \u0438\u043b\u0438 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0433\u043e ZIP \u00b7 \u0431\u0435\u0437 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 156
    iget v3, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-static {v4}, Lru/localscribe/data/ModelStore;->access$getContext$p(Lru/localscribe/data/ModelStore;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "models-stage"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v3, "stage":Ljava/io/File;
    invoke-static {v3}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 159
    iget-object v4, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    if-eqz v4, :cond_2

    .line 160
    iget-object v4, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    invoke-virtual {v4}, Lru/localscribe/data/BundledModelInfo;->getUnpackedBytes()J

    move-result-wide v7

    const-wide/32 v9, 0x4000000

    add-long/2addr v7, v9

    .line 161
    .local v7, "required":J
    new-instance v4, Landroid/os/StatFs;

    iget-object v9, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-static {v9}, Lru/localscribe/data/ModelStore;->access$getContext$p(Lru/localscribe/data/ModelStore;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v9

    cmp-long v4, v9, v7

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 162
    .local v0, "$i$a$-require-ModelStore$installArchive$2$2$2\\2\\161\\0":I
    const/high16 v2, 0x100000

    int-to-long v4, v2

    div-long v4, v7, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0414\u043b\u044f \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0438 \u043d\u0443\u0436\u043d\u043e \u043e\u0441\u0432\u043e\u0431\u043e\u0434\u0438\u0442\u044c \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u041c\u0411 \u043f\u0430\u043c\u044f\u0442\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .end local v0    # "$i$a$-require-ModelStore$installArchive$2$2$2\\2\\161\\0":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v7    # "required":J
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 166
    nop

    .line 167
    const-wide/16 v7, 0x0

    .line 168
    .local v7, "total":J
    const/4 v4, 0x0

    .line 169
    .local v4, "count":I
    :try_start_0
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v9, Ljava/util/Set;

    .line 170
    .local v9, "seen":Ljava/util/Set;
    const-wide/16 v10, 0x0

    .line 171
    .local v10, "reportedAt":J
    iget-object v12, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    .line 172
    new-instance v13, Lru/localscribe/data/ModelInstallProgress;

    .line 173
    nop

    .line 174
    iget-object v14, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_17

    const/16 v16, 0x0

    if-eqz v14, :cond_3

    :try_start_1
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 271
    .end local v4    # "count":I
    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    :catchall_0
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_11

    .line 174
    .restart local v4    # "count":I
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    :cond_3
    const/4 v14, 0x0

    .line 172
    :goto_2
    :try_start_2
    invoke-direct {v13, v2, v14}, Lru/localscribe/data/ModelInstallProgress;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 171
    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v12, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$openArchive:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/Closeable;

    iget-object v13, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    iget-object v14, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_17

    :try_start_3
    move-object/from16 v17, v12

    check-cast v17, Ljava/io/InputStream;

    move-object/from16 v18, v17

    .local v18, "input\\4":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 178
    .local v17, "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    const/16 v19, 0x0

    new-instance v6, Ljava/util/zip/ZipInputStream;

    move-object/from16 v5, v18

    .end local v18    # "input\\4":Ljava/io/InputStream;
    .local v5, "input\\4":Ljava/io/InputStream;
    invoke-direct {v6, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_14

    :try_start_4
    move-object/from16 v18, v6

    check-cast v18, Ljava/util/zip/ZipInputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    move-object/from16 v21, v18

    .local v21, "zip\\5":Ljava/util/zip/ZipInputStream;
    const/16 v18, 0x0

    .line 179
    .local v18, "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    :goto_3
    nop

    .line 180
    move-object/from16 v22, p0

    .local v22, "$completion\\6":Lkotlin/coroutines/Continuation;
    const/16 v23, 0x0

    .line 343
    .local v23, "$i$f$currentCoroutineContext\\6\\180":I
    :try_start_5
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v24

    .line 180
    .end local v22    # "$completion\\6":Lkotlin/coroutines/Continuation;
    .end local v23    # "$i$f$currentCoroutineContext\\6\\180":I
    invoke-static/range {v24 .. v24}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 181
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_10

    const v24, 0x3f4ccccd    # 0.8f

    if-nez v22, :cond_16

    .line 222
    nop

    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 178
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 223
    nop

    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 177
    :try_start_8
    invoke-static {v12, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 224
    new-instance v0, Ljava/io/File;

    const-string v2, "manifest.json"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v0, "mf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-wide/16 v12, 0x1

    cmp-long v2, v12, v5

    if-gtz v2, :cond_4

    const-wide/32 v12, 0x100001

    cmp-long v2, v5, v12

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    move/from16 v2, v19

    :goto_4
    const-string v5, "Failed requirement."

    if-eqz v2, :cond_15

    .line 226
    :try_start_9
    invoke-static {}, Lru/localscribe/core/ContractKt;->getCodec()Lkotlinx/serialization/json/Json;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-static {v0, v6, v12, v6}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v2, "this_\\14":Lkotlinx/serialization/json/Json;
    .local v6, "string\\14":Ljava/lang/String;
    const/4 v12, 0x0

    .line 345
    .local v12, "$i$f$decodeFromString\\14\\226":I
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v13, Lru/localscribe/data/ModelManifest;->Companion:Lru/localscribe/data/ModelManifest$Companion;

    invoke-virtual {v13}, Lru/localscribe/data/ModelManifest$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v13

    check-cast v13, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v13, v6}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 226
    .end local v2    # "this_\\14":Lkotlinx/serialization/json/Json;
    .end local v6    # "string\\14":Ljava/lang/String;
    .end local v12    # "$i$f$decodeFromString\\14\\226":I
    check-cast v13, Lru/localscribe/data/ModelManifest;

    .line 227
    .local v13, "m":Lru/localscribe/data/ModelManifest;
    invoke-virtual {v13}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 228
    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    if-eqz v2, :cond_6

    .line 229
    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$bundled:Lru/localscribe/data/BundledModelInfo;

    invoke-virtual {v2}, Lru/localscribe/data/BundledModelInfo;->getManifest()Lru/localscribe/data/ModelManifest;

    move-result-object v2

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 230
    .local v2, "$i$a$-require-ModelStore$installArchive$2$2$5\\16\\229\\0":I
    const-string v5, "\u0412\u0441\u0442\u0440\u043e\u0435\u043d\u043d\u044b\u0435 \u043c\u043e\u0434\u0435\u043b\u0438 \u043d\u0435 \u0441\u043e\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0443\u044e\u0442 \u0441\u0431\u043e\u0440\u043a\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    .line 229
    .end local v2    # "$i$a$-require-ModelStore$installArchive$2$2$5\\16\\229\\0":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v2

    .line 233
    .restart local v3    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_6
    :goto_5
    nop

    .line 234
    invoke-static {v3}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v2

    check-cast v2, Lkotlin/sequences/Sequence;

    .line 235
    new-instance v6, Lru/localscribe/data/ModelStore$installArchive$2$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lru/localscribe/data/ModelStore$installArchive$2$2$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-static {v2, v6}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 236
    new-instance v6, Lru/localscribe/data/ModelStore$installArchive$2$2$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lru/localscribe/data/ModelStore$installArchive$2$2$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    invoke-static {v2, v6}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 237
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object v2

    .line 232
    nop

    .line 238
    .local v2, "actual":Ljava/util/Set;
    invoke-virtual {v13}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 239
    invoke-virtual {v13}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    iget-object v12, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    .local v6, "$this$forEachIndexed\\18":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 346
    .local v14, "$i$f$forEachIndexed\\18\\239":I
    const/16 v16, 0x0

    .line 347
    .local v16, "index\\18":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "item\\18":Ljava/lang/Object;
    add-int/lit8 v21, v16, 0x1

    .end local v16    # "index\\18":I
    .local v21, "index\\18":I
    if-gez v16, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    move-object/from16 v22, v18

    check-cast v22, Ljava/util/Map$Entry;

    .local v16, "index\\19":I
    const/16 v23, 0x0

    .local v23, "$i$a$-forEachIndexed-ModelStore$installArchive$2$2$7\\19\\347\\0":I
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v26, v25

    .local v26, "name\\19":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v25, v22

    .line 240
    .local v25, "hash\\19":Ljava/lang/String;
    move-object/from16 v22, p0

    .local v22, "$completion\\20":Lkotlin/coroutines/Continuation;
    const/16 v27, 0x0

    .line 348
    .local v27, "$i$f$currentCoroutineContext\\20\\240":I
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v28

    .line 240
    .end local v22    # "$completion\\20":Lkotlin/coroutines/Continuation;
    .end local v27    # "$i$f$currentCoroutineContext\\20\\240":I
    invoke-static/range {v28 .. v28}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 241
    const/16 v27, 0x2

    new-instance v15, Lkotlin/text/Regex;

    move-object/from16 v22, v0

    .end local v0    # "mf":Ljava/io/File;
    .local v22, "mf":Ljava/io/File;
    const-string v0, "[a-f0-9]{64}"

    invoke-direct {v15, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v15, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    nop

    .line 243
    new-instance v0, Lru/localscribe/data/ModelInstallProgress;

    .line 244
    const-string v15, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u0435\u043c \u0433\u043e\u0442\u043e\u0432\u043d\u043e\u0441\u0442\u044c \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    .line 245
    const v28, 0x3e4ccccd    # 0.2f

    move-object/from16 v29, v2

    move/from16 v30, v4

    move/from16 v2, v16

    .end local v4    # "count":I
    .end local v16    # "index\\19":I
    .local v2, "index\\19":I
    .local v29, "actual":Ljava/util/Set;
    .local v30, "count":I
    int-to-float v4, v2

    mul-float v4, v4, v28

    invoke-virtual {v13}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v16

    move/from16 v28, v2

    .end local v2    # "index\\19":I
    .local v28, "index\\19":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    add-float v4, v4, v24

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    .line 243
    invoke-direct {v0, v15, v2}, Lru/localscribe/data/ModelInstallProgress;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 242
    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lru/localscribe/data/ModelStore;->Companion:Lru/localscribe/data/ModelStore$Companion;

    new-instance v2, Ljava/io/File;

    move-object/from16 v4, v26

    .end local v26    # "name\\19":Ljava/lang/String;
    .local v4, "name\\19":Ljava/lang/String;
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lru/localscribe/data/ModelStore$Companion;->sha(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v25

    .end local v25    # "hash\\19":Ljava/lang/String;
    .local v2, "hash\\19":Ljava/lang/String;
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    nop

    .line 347
    .end local v2    # "hash\\19":Ljava/lang/String;
    .end local v4    # "name\\19":Ljava/lang/String;
    .end local v18    # "item\\18":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEachIndexed-ModelStore$installArchive$2$2$7\\19\\347\\0":I
    .end local v28    # "index\\19":I
    move/from16 v16, v21

    move-object/from16 v0, v22

    move-object/from16 v2, v29

    move/from16 v4, v30

    goto/16 :goto_6

    .line 342
    .restart local v2    # "hash\\19":Ljava/lang/String;
    .restart local v4    # "name\\19":Ljava/lang/String;
    .restart local v18    # "item\\18":Ljava/lang/Object;
    .restart local v23    # "$i$a$-forEachIndexed-ModelStore$installArchive$2$2$7\\19\\347\\0":I
    .restart local v28    # "index\\19":I
    :cond_8
    const/4 v0, 0x0

    .line 248
    .local v0, "$i$a$-require-ModelStore$installArchive$2$2$7$1\\21\\248\\19":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u041f\u043e\u0432\u0440\u0435\u0436\u0434\u0435\u043d\u0430 \u043c\u043e\u0434\u0435\u043b\u044c "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0    # "$i$a$-require-ModelStore$installArchive$2$2$7$1\\21\\248\\19":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 241
    .end local v28    # "index\\19":I
    .end local v29    # "actual":Ljava/util/Set;
    .end local v30    # "count":I
    .local v2, "actual":Ljava/util/Set;
    .restart local v3    # "stage":Ljava/io/File;
    .local v4, "count":I
    .restart local v16    # "index\\19":I
    .restart local v25    # "hash\\19":Ljava/lang/String;
    .restart local v26    # "name\\19":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_9
    move-object/from16 v29, v2

    move/from16 v30, v4

    move/from16 v28, v16

    move-object/from16 v2, v25

    move-object/from16 v4, v26

    .end local v16    # "index\\19":I
    .end local v25    # "hash\\19":Ljava/lang/String;
    .end local v26    # "name\\19":Ljava/lang/String;
    .local v2, "hash\\19":Ljava/lang/String;
    .local v4, "name\\19":Ljava/lang/String;
    .restart local v28    # "index\\19":I
    .restart local v29    # "actual":Ljava/util/Set;
    .restart local v30    # "count":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 349
    .end local v18    # "item\\18":Ljava/lang/Object;
    .end local v21    # "index\\18":I
    .end local v22    # "mf":Ljava/io/File;
    .end local v23    # "$i$a$-forEachIndexed-ModelStore$installArchive$2$2$7\\19\\347\\0":I
    .end local v28    # "index\\19":I
    .end local v29    # "actual":Ljava/util/Set;
    .end local v30    # "count":I
    .local v0, "mf":Ljava/io/File;
    .local v2, "actual":Ljava/util/Set;
    .restart local v3    # "stage":Ljava/io/File;
    .local v4, "count":I
    .local v16, "index\\18":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_a
    move-object/from16 v22, v0

    move-object/from16 v29, v2

    move/from16 v30, v4

    const/16 v27, 0x2

    .line 251
    .end local v0    # "mf":Ljava/io/File;
    .end local v2    # "actual":Ljava/util/Set;
    .end local v4    # "count":I
    .end local v6    # "$this$forEachIndexed\\18":Ljava/lang/Iterable;
    .end local v14    # "$i$f$forEachIndexed\\18\\239":I
    .end local v16    # "index\\18":I
    .restart local v22    # "mf":Ljava/io/File;
    .restart local v29    # "actual":Ljava/util/Set;
    .restart local v30    # "count":I
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "silero.onnx"

    aput-object v2, v0, v19

    .line 252
    const-string v2, "speaker.onnx"

    const/16 v20, 0x1

    aput-object v2, v0, v20

    .line 251
    nop

    .line 253
    const-string v2, "streaming/tokens.txt"

    aput-object v2, v0, v27

    .line 251
    nop

    .line 250
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 254
    invoke-static {}, Lru/localscribe/data/ModelStore;->access$getGIGAAM_FILES$cp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 255
    nop

    .local v0, "$this$forEach\\22":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 350
    .local v2, "$i$f$forEach\\22\\255":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element\\22":Ljava/lang/Object;
    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    .local v12, "it\\23":Ljava/lang/String;
    const/4 v14, 0x0

    .line 255
    .local v14, "$i$a$-forEach-ModelStore$installArchive$2$2$8\\23\\350\\0":I
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_b

    .end local v6    # "element\\22":Ljava/lang/Object;
    .end local v12    # "it\\23":Ljava/lang/String;
    .end local v14    # "$i$a$-forEach-ModelStore$installArchive$2$2$8\\23\\350\\0":I
    goto :goto_7

    .line 342
    .restart local v6    # "element\\22":Ljava/lang/Object;
    .restart local v12    # "it\\23":Ljava/lang/String;
    .restart local v14    # "$i$a$-forEach-ModelStore$installArchive$2$2$8\\23\\350\\0":I
    :cond_b
    const/4 v4, 0x0

    .line 255
    .local v4, "$i$a$-require-ModelStore$installArchive$2$2$8$1\\24\\255\\23":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u041e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442 "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v4    # "$i$a$-require-ModelStore$installArchive$2$2$8$1\\24\\255\\23":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4

    .line 351
    .end local v6    # "element\\22":Ljava/lang/Object;
    .end local v12    # "it\\23":Ljava/lang/String;
    .end local v14    # "$i$a$-forEach-ModelStore$installArchive$2$2$8\\23\\350\\0":I
    .restart local v3    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_c
    nop

    .line 257
    .end local v0    # "$this$forEach\\22":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach\\22\\255":I
    new-instance v0, Ljava/io/File;

    const-string v2, "streaming/model.int8.onnx"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_d

    .line 258
    new-instance v0, Ljava/io/File;

    const-string v2, "streaming/model.onnx"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move/from16 v19, v20

    .line 256
    :cond_e
    if-eqz v19, :cond_12

    .line 260
    const/4 v0, 0x0

    .line 352
    .local v0, "$i$f$currentCoroutineContext\\26\\260":I
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 260
    .end local v0    # "$i$f$currentCoroutineContext\\26\\260":I
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 261
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-static {v2}, Lru/localscribe/data/ModelStore;->access$getContext$p(Lru/localscribe/data/ModelStore;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "models-backup"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v0, "backup":Ljava/io/File;
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 263
    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Check failed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v2

    .line 264
    .restart local v3    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_10
    :goto_8
    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 268
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 269
    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v4, Lru/localscribe/data/ModelInstallProgress;

    const-string v5, "\u041c\u043e\u0436\u043d\u043e \u043d\u0430\u0447\u0438\u043d\u0430\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u044c"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lru/localscribe/data/ModelInstallProgress;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 271
    nop

    .end local v0    # "backup":Ljava/io/File;
    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v13    # "m":Lru/localscribe/data/ModelManifest;
    .end local v22    # "mf":Ljava/io/File;
    .end local v29    # "actual":Ljava/util/Set;
    .end local v30    # "count":I
    invoke-static {v3}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 272
    nop

    .line 273
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 265
    .restart local v0    # "backup":Ljava/io/File;
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v13    # "m":Lru/localscribe/data/ModelManifest;
    .restart local v22    # "mf":Ljava/io/File;
    .restart local v29    # "actual":Ljava/util/Set;
    .restart local v30    # "count":I
    :cond_11
    :try_start_a
    iget-object v2, v1, Lru/localscribe/data/ModelStore$installArchive$2$2;->this$0:Lru/localscribe/data/ModelStore;

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 266
    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043c\u043e\u0434\u0435\u043b\u0438"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4

    .line 256
    .end local v0    # "backup":Ljava/io/File;
    .restart local v3    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 342
    .end local v22    # "mf":Ljava/io/File;
    .end local v29    # "actual":Ljava/util/Set;
    .end local v30    # "count":I
    .local v0, "mf":Ljava/io/File;
    .local v2, "actual":Ljava/util/Set;
    .restart local v3    # "stage":Ljava/io/File;
    .local v4, "count":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_13
    move-object/from16 v22, v0

    move-object/from16 v29, v2

    move/from16 v30, v4

    .end local v0    # "mf":Ljava/io/File;
    .end local v2    # "actual":Ljava/util/Set;
    .end local v4    # "count":I
    .restart local v22    # "mf":Ljava/io/File;
    .restart local v29    # "actual":Ljava/util/Set;
    .restart local v30    # "count":I
    const/4 v0, 0x0

    .line 238
    .local v0, "$i$a$-require-ModelStore$installArchive$2$2$6\\17\\238\\0":I
    const-string v2, "\u0421\u043e\u0441\u0442\u0430\u0432 ZIP \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u0435\u0442 \u0441 manifest.json"

    .end local v0    # "$i$a$-require-ModelStore$installArchive$2$2$6\\17\\238\\0":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 227
    .end local v22    # "mf":Ljava/io/File;
    .end local v29    # "actual":Ljava/util/Set;
    .end local v30    # "count":I
    .local v0, "mf":Ljava/io/File;
    .restart local v3    # "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_14
    move-object/from16 v22, v0

    move/from16 v30, v4

    .end local v0    # "mf":Ljava/io/File;
    .end local v4    # "count":I
    .restart local v22    # "mf":Ljava/io/File;
    .restart local v30    # "count":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 225
    .end local v13    # "m":Lru/localscribe/data/ModelManifest;
    .end local v22    # "mf":Ljava/io/File;
    .end local v30    # "count":I
    .restart local v0    # "mf":Ljava/io/File;
    .restart local v3    # "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_15
    move-object/from16 v22, v0

    move/from16 v30, v4

    .end local v0    # "mf":Ljava/io/File;
    .end local v4    # "count":I
    .restart local v22    # "mf":Ljava/io/File;
    .restart local v30    # "count":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 177
    .end local v22    # "mf":Ljava/io/File;
    .end local v30    # "count":I
    .restart local v3    # "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move/from16 v30, v4

    move-object v1, v0

    move-object/from16 v25, v3

    .end local v4    # "count":I
    .restart local v30    # "count":I
    goto/16 :goto_10

    .line 178
    .end local v30    # "count":I
    .restart local v4    # "count":I
    .restart local v5    # "input\\4":Ljava/io/InputStream;
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    :catchall_2
    move-exception v0

    move/from16 v30, v4

    move-object v1, v0

    move-object/from16 v25, v3

    move-object/from16 v28, v5

    .end local v4    # "count":I
    .restart local v30    # "count":I
    goto/16 :goto_f

    .line 181
    .end local v30    # "count":I
    .restart local v4    # "count":I
    .local v18, "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .local v21, "zip\\5":Ljava/util/zip/ZipInputStream;
    :cond_16
    move/from16 v30, v4

    const/16 v20, 0x1

    const/16 v27, 0x2

    .line 182
    .end local v4    # "count":I
    .local v22, "e\\5":Ljava/util/zip/ZipEntry;
    .restart local v30    # "count":I
    add-int/lit8 v4, v30, 0x1

    .end local v30    # "count":I
    .restart local v4    # "count":I
    const/16 v15, 0x40

    if-gt v4, v15, :cond_17

    move/from16 v15, v20

    goto :goto_9

    :cond_17
    move/from16 v15, v19

    :goto_9
    if-eqz v15, :cond_20

    .line 183
    :try_start_b
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v15, "target\\5":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    move-object/from16 v25, v3

    .end local v3    # "stage":Ljava/io/File;
    .local v25, "stage":Ljava/io/File;
    :try_start_c
    const-string v3, "getCanonicalPath(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    move/from16 v26, v4

    .end local v4    # "count":I
    .local v26, "count":I
    :try_start_d
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    move-object/from16 v28, v5

    .end local v5    # "input\\4":Ljava/io/InputStream;
    .local v28, "input\\4":Ljava/io/InputStream;
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 185
    move-wide/from16 v31, v7

    move/from16 v7, v19

    move/from16 v4, v27

    const/4 v5, 0x0

    .end local v7    # "total":J
    .local v31, "total":J
    :try_start_f
    invoke-static {v1, v3, v7, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 187
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "\\"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v3, v7, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v1, v20

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    .line 184
    :goto_a
    if-eqz v1, :cond_1f

    .line 191
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 192
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 193
    move-object/from16 v1, p0

    move-object/from16 v3, v25

    move/from16 v4, v26

    move-object/from16 v5, v28

    move-wide/from16 v7, v31

    const/16 v19, 0x0

    goto/16 :goto_3

    .line 195
    :cond_19
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/FileOutputStream;

    .line 197
    invoke-direct {v1, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    :try_start_10
    move-object v3, v1

    check-cast v3, Ljava/io/FileOutputStream;

    .local v3, "out\\9":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 198
    .local v4, "$i$a$-use-ModelStore$installArchive$2$2$4$1$3\\9\\197\\5":I
    const/high16 v5, 0x10000

    new-array v5, v5, [B
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-wide/from16 v7, v31

    .line 199
    .end local v31    # "total":J
    .local v5, "b\\9":[B
    .restart local v7    # "total":J
    :goto_b
    nop

    .line 200
    move-object/from16 v27, p0

    .local v27, "$completion\\10":Lkotlin/coroutines/Continuation;
    const/16 v29, 0x0

    .line 344
    .local v29, "$i$f$currentCoroutineContext\\10\\200":I
    :try_start_11
    invoke-interface/range {p0 .. p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v30

    .line 200
    .end local v27    # "$completion\\10":Lkotlin/coroutines/Continuation;
    .end local v29    # "$i$f$currentCoroutineContext\\10\\200":I
    invoke-static/range {v30 .. v30}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 201
    move/from16 v27, v4

    move-object/from16 v4, v21

    .end local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .local v4, "zip\\5":Ljava/util/zip/ZipInputStream;
    .local v27, "$i$a$-use-ModelStore$installArchive$2$2$4$1$3\\9\\197\\5":I
    :try_start_12
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v21
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move/from16 v29, v21

    .line 202
    .local v29, "n\\9":I
    if-ltz v29, :cond_1e

    .line 203
    move-object/from16 v21, v0

    move/from16 v0, v29

    move-wide/from16 v29, v7

    .end local v7    # "total":J
    .local v0, "n\\9":I
    .local v29, "total":J
    int-to-long v7, v0

    add-long v7, v29, v7

    .line 204
    .end local v29    # "total":J
    .restart local v7    # "total":J
    const-wide v29, 0xc0000000L

    cmp-long v29, v7, v29

    if-gez v29, :cond_1a

    move/from16 v29, v20

    goto :goto_c

    :cond_1a
    const/16 v29, 0x0

    :goto_c
    if-eqz v29, :cond_1d

    .line 205
    move-object/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .local v33, "zip\\5":Ljava/util/zip/ZipInputStream;
    :try_start_13
    invoke-virtual {v3, v5, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 206
    sub-long v29, v7, v10

    const-wide/32 v31, 0x200000

    cmp-long v19, v29, v31

    if-ltz v19, :cond_1c

    .line 207
    move-wide v10, v7

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    if-eqz v14, :cond_1b

    move-object/from16 v19, v14

    .local v19, "it\\12":Lru/localscribe/data/BundledModelInfo;
    const/16 v29, 0x0

    .line 213
    .local v29, "$i$a$-let-ModelStore$installArchive$2$2$4$1$3$2\\12\\211\\9":I
    nop

    .line 212
    const-wide v30, 0x3fe999999999999aL    # 0.8

    move-object/from16 v34, v5

    .end local v5    # "b\\9":[B
    .local v34, "b\\9":[B
    long-to-double v4, v7

    mul-double v4, v4, v30

    move-object/from16 v35, v3

    move-wide/from16 v30, v4

    .end local v3    # "out\\9":Ljava/io/FileOutputStream;
    .local v35, "out\\9":Ljava/io/FileOutputStream;
    invoke-virtual/range {v19 .. v19}, Lru/localscribe/data/BundledModelInfo;->getUnpackedBytes()J

    move-result-wide v3

    long-to-double v3, v3

    div-double v4, v30, v3

    .line 213
    double-to-float v3, v4

    .line 214
    move/from16 v5, v16

    move/from16 v4, v24

    invoke-static {v3, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .end local v19    # "it\\12":Lru/localscribe/data/BundledModelInfo;
    .end local v29    # "$i$a$-let-ModelStore$installArchive$2$2$4$1$3$2\\12\\211\\9":I
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    .line 211
    goto :goto_d

    .end local v34    # "b\\9":[B
    .end local v35    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v3    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v5    # "b\\9":[B
    :cond_1b
    move-object/from16 v35, v3

    move-object/from16 v34, v5

    move/from16 v5, v16

    move/from16 v4, v24

    .end local v3    # "out\\9":Ljava/io/FileOutputStream;
    .end local v5    # "b\\9":[B
    .restart local v34    # "b\\9":[B
    .restart local v35    # "out\\9":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 209
    :goto_d
    new-instance v4, Lru/localscribe/data/ModelInstallProgress;

    invoke-direct {v4, v2, v3}, Lru/localscribe/data/ModelInstallProgress;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 208
    invoke-interface {v13, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v5

    move-object/from16 v0, v21

    move/from16 v4, v27

    move-object/from16 v21, v33

    move-object/from16 v5, v34

    move-object/from16 v3, v35

    const v24, 0x3f4ccccd    # 0.8f

    goto/16 :goto_b

    .line 206
    .end local v34    # "b\\9":[B
    .end local v35    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v3    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v5    # "b\\9":[B
    :cond_1c
    move-object/from16 v35, v3

    move-object/from16 v34, v5

    move/from16 v5, v16

    .end local v3    # "out\\9":Ljava/io/FileOutputStream;
    .end local v5    # "b\\9":[B
    .restart local v34    # "b\\9":[B
    .restart local v35    # "out\\9":Ljava/io/FileOutputStream;
    move-object/from16 v0, v21

    move/from16 v4, v27

    move-object/from16 v21, v33

    move-object/from16 v5, v34

    const v24, 0x3f4ccccd    # 0.8f

    goto/16 :goto_b

    .line 197
    .end local v0    # "n\\9":I
    .end local v27    # "$i$a$-use-ModelStore$installArchive$2$2$4$1$3\\9\\197\\5":I
    .end local v34    # "b\\9":[B
    .end local v35    # "out\\9":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v0

    move-object v2, v0

    goto/16 :goto_e

    .line 342
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "n\\9":I
    .restart local v3    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "b\\9":[B
    .restart local v27    # "$i$a$-use-ModelStore$installArchive$2$2$4$1$3\\9\\197\\5":I
    :cond_1d
    move-object/from16 v35, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    .end local v3    # "out\\9":Ljava/io/FileOutputStream;
    .end local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .end local v5    # "b\\9":[B
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v34    # "b\\9":[B
    .restart local v35    # "out\\9":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-require-ModelStore$installArchive$2$2$4$1$3$1\\11\\204\\9":I
    const-string v3, "\u041f\u0430\u043a\u0435\u0442 \u0431\u043e\u043b\u044c\u0448\u0435 3 \u0413\u0411"

    .end local v2    # "$i$a$-require-ModelStore$installArchive$2$2$4$1$3$1\\11\\204\\9":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v15    # "target\\5":Ljava/io/File;
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 202
    .end local v0    # "n\\9":I
    .end local v34    # "b\\9":[B
    .end local v35    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v3    # "out\\9":Ljava/io/FileOutputStream;
    .restart local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "b\\9":[B
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v15    # "target\\5":Ljava/io/File;
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .restart local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .restart local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .local v29, "n\\9":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v21, v0

    move-object/from16 v35, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v5, v16

    move/from16 v0, v29

    move-wide/from16 v29, v7

    .line 220
    .end local v3    # "out\\9":Ljava/io/FileOutputStream;
    .end local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .end local v5    # "b\\9":[B
    .end local v7    # "total":J
    .local v29, "total":J
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v34    # "b\\9":[B
    .restart local v35    # "out\\9":Ljava/io/FileOutputStream;
    nop

    .end local v27    # "$i$a$-use-ModelStore$installArchive$2$2$4$1$3\\9\\197\\5":I
    .end local v34    # "b\\9":[B
    .end local v35    # "out\\9":Ljava/io/FileOutputStream;
    :try_start_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 197
    const/4 v0, 0x0

    :try_start_15
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object/from16 v1, p0

    move/from16 v16, v5

    move-object/from16 v0, v21

    move-object/from16 v3, v25

    move/from16 v4, v26

    move-object/from16 v5, v28

    move-wide/from16 v7, v29

    move-object/from16 v21, v33

    const/16 v19, 0x0

    goto/16 :goto_3

    .line 178
    .end local v15    # "target\\5":Ljava/io/File;
    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v0

    move-object v1, v0

    move/from16 v4, v26

    move-wide/from16 v7, v29

    goto/16 :goto_f

    .line 197
    .restart local v15    # "target\\5":Ljava/io/File;
    .restart local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .restart local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    :catchall_5
    move-exception v0

    move-object v2, v0

    move-wide/from16 v7, v29

    goto :goto_e

    .end local v29    # "total":J
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "total":J
    :catchall_6
    move-exception v0

    move-object/from16 v33, v4

    move-wide/from16 v29, v7

    move-object v2, v0

    .end local v4    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .end local v7    # "total":J
    .restart local v29    # "total":J
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    goto :goto_e

    .end local v29    # "total":J
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "total":J
    .restart local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    :catchall_7
    move-exception v0

    move-wide/from16 v29, v7

    move-object/from16 v33, v21

    move-object v2, v0

    .end local v7    # "total":J
    .end local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v29    # "total":J
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    goto :goto_e

    .end local v29    # "total":J
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v31    # "total":J
    :catchall_8
    move-exception v0

    move-object/from16 v33, v21

    move-object v2, v0

    move-wide/from16 v7, v31

    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v15    # "target\\5":Ljava/io/File;
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .end local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_e
    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v15    # "target\\5":Ljava/io/File;
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .restart local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .restart local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    :try_start_17
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 178
    .end local v15    # "target\\5":Ljava/io/File;
    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_a
    move-exception v0

    move-object v1, v0

    move/from16 v4, v26

    goto/16 :goto_f

    .line 184
    .end local v7    # "total":J
    .restart local v15    # "target\\5":Ljava/io/File;
    .restart local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .restart local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .restart local v31    # "total":J
    :cond_1f
    move-object/from16 v33, v21

    .end local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 189
    .local v0, "$i$a$-require-ModelStore$installArchive$2$2$4$1$2\\8\\184\\5":I
    :try_start_18
    const-string v1, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u044b\u0439 \u043f\u0443\u0442\u044c \u0438\u043b\u0438 \u0434\u0443\u0431\u043b\u0438\u043a\u0430\u0442 \u0432 ZIP"

    .line 184
    .end local v0    # "$i$a$-require-ModelStore$installArchive$2$2$4$1$2\\8\\184\\5":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 178
    .end local v15    # "target\\5":Ljava/io/File;
    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_b
    move-exception v0

    move-wide/from16 v31, v7

    move-object v1, v0

    move/from16 v4, v26

    .end local v7    # "total":J
    .restart local v31    # "total":J
    goto :goto_f

    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .local v5, "input\\4":Ljava/io/InputStream;
    .restart local v7    # "total":J
    :catchall_c
    move-exception v0

    move-object/from16 v28, v5

    move-wide/from16 v31, v7

    move-object v1, v0

    move/from16 v4, v26

    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v7    # "total":J
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v31    # "total":J
    goto :goto_f

    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .local v4, "count":I
    .restart local v5    # "input\\4":Ljava/io/InputStream;
    .restart local v7    # "total":J
    :catchall_d
    move-exception v0

    move/from16 v26, v4

    move-object/from16 v28, v5

    move-wide/from16 v31, v7

    move-object v1, v0

    .end local v4    # "count":I
    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v7    # "total":J
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v31    # "total":J
    goto :goto_f

    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .local v3, "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "input\\4":Ljava/io/InputStream;
    .restart local v7    # "total":J
    :catchall_e
    move-exception v0

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v28, v5

    move-wide/from16 v31, v7

    move-object v1, v0

    .end local v3    # "stage":Ljava/io/File;
    .end local v4    # "count":I
    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v7    # "total":J
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v31    # "total":J
    goto :goto_f

    .line 342
    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .restart local v3    # "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "input\\4":Ljava/io/InputStream;
    .restart local v7    # "total":J
    .restart local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .restart local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    :cond_20
    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v28, v5

    move-wide/from16 v31, v7

    move-object/from16 v33, v21

    .end local v3    # "stage":Ljava/io/File;
    .end local v4    # "count":I
    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v7    # "total":J
    .end local v21    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v31    # "total":J
    .restart local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 182
    .local v0, "$i$a$-require-ModelStore$installArchive$2$2$4$1$1\\7\\182\\5":I
    const-string v1, "\u0421\u043b\u0438\u0448\u043a\u043e\u043c \u043c\u043d\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u043e\u0432 \u0432 \u043f\u0430\u043a\u0435\u0442\u0435"

    .end local v0    # "$i$a$-require-ModelStore$installArchive$2$2$4$1$1\\7\\182\\5":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 178
    .end local v18    # "$i$a$-use-ModelStore$installArchive$2$2$4$1\\5\\178\\4":I
    .end local v22    # "e\\5":Ljava/util/zip/ZipEntry;
    .end local v33    # "zip\\5":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v26    # "count":I
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v31    # "total":J
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_f
    move-exception v0

    move-object v1, v0

    move/from16 v4, v26

    move-wide/from16 v7, v31

    goto :goto_f

    .end local v25    # "stage":Ljava/io/File;
    .end local v26    # "count":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v31    # "total":J
    .restart local v3    # "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "input\\4":Ljava/io/InputStream;
    .restart local v7    # "total":J
    :catchall_10
    move-exception v0

    move-object/from16 v25, v3

    move/from16 v30, v4

    move-object/from16 v28, v5

    move-wide/from16 v31, v7

    move-object v1, v0

    .end local v3    # "stage":Ljava/io/File;
    .end local v4    # "count":I
    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v7    # "total":J
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v30    # "count":I
    .restart local v31    # "total":J
    goto :goto_f

    .end local v25    # "stage":Ljava/io/File;
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .end local v30    # "count":I
    .end local v31    # "total":J
    .restart local v3    # "stage":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "input\\4":Ljava/io/InputStream;
    .restart local v7    # "total":J
    :catchall_11
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v28, v5

    move-object v1, v0

    .end local v3    # "stage":Ljava/io/File;
    .end local v4    # "count":I
    .end local v5    # "input\\4":Ljava/io/InputStream;
    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_f
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    .restart local v4    # "count":I
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .restart local v25    # "stage":Ljava/io/File;
    .restart local v28    # "input\\4":Ljava/io/InputStream;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_12
    move-exception v0

    :try_start_1a
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "count":I
    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local v25    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    .line 177
    .end local v17    # "$i$a$-use-ModelStore$installArchive$2$2$4\\4\\177\\0":I
    .end local v28    # "input\\4":Ljava/io/InputStream;
    .restart local v4    # "count":I
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v25    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_13
    move-exception v0

    move-object v1, v0

    goto :goto_10

    .end local v25    # "stage":Ljava/io/File;
    .restart local v3    # "stage":Ljava/io/File;
    :catchall_14
    move-exception v0

    move-object/from16 v25, v3

    move-object v1, v0

    .end local v3    # "stage":Ljava/io/File;
    .end local v4    # "count":I
    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_10
    :try_start_1b
    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    .restart local v4    # "count":I
    .restart local v7    # "total":J
    .restart local v9    # "seen":Ljava/util/Set;
    .restart local v10    # "reportedAt":J
    .restart local v25    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_15
    move-exception v0

    :try_start_1c
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v25    # "stage":Ljava/io/File;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    .line 271
    .end local v4    # "count":I
    .end local v7    # "total":J
    .end local v9    # "seen":Ljava/util/Set;
    .end local v10    # "reportedAt":J
    .restart local v25    # "stage":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_16
    move-exception v0

    goto :goto_11

    .end local v25    # "stage":Ljava/io/File;
    .restart local v3    # "stage":Ljava/io/File;
    :catchall_17
    move-exception v0

    move-object/from16 v25, v3

    .end local v3    # "stage":Ljava/io/File;
    .restart local v25    # "stage":Ljava/io/File;
    :goto_11
    invoke-static/range {v25 .. v25}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    throw v0

    .line 342
    .end local v25    # "stage":Ljava/io/File;
    .restart local v3    # "stage":Ljava/io/File;
    :cond_21
    const/4 v0, 0x0

    .line 165
    .local v0, "$i$a$-check-ModelStore$installArchive$2$2$3\\3\\165\\0":I
    nop

    .end local v0    # "$i$a$-check-ModelStore$installArchive$2$2$3\\3\\165\\0":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u043c\u043e\u0434\u0435\u043b\u0435\u0439"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_22
    const/4 v0, 0x0

    .line 158
    .local v0, "$i$a$-check-ModelStore$installArchive$2$2$1\\1\\158\\0":I
    nop

    .end local v0    # "$i$a$-check-ModelStore$installArchive$2$2$1\\1\\158\\0":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u043d\u0435\u0437\u0430\u0432\u0435\u0440\u0448\u0451\u043d\u043d\u0443\u044e \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0443"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
