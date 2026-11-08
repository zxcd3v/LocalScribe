.class final Lru/localscribe/data/ModelPreparation$prepare$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModelPreparation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/data/ModelPreparation$prepare$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nModelPreparation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelPreparation.kt\nru/localscribe/data/ModelPreparation$prepare$3$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,140:1\n1761#2,3:141\n*S KotlinDebug\n*F\n+ 1 ModelPreparation.kt\nru/localscribe/data/ModelPreparation$prepare$3$1\n*L\n60#1:141,3\n*E\n"
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
    c = "ru.localscribe.data.ModelPreparation$prepare$3$1"
    f = "ModelPreparation.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x48
    }
    m = "invokeSuspend"
    n = {
        "bundle",
        "manifest",
        "installed",
        "bundled",
        "update"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $force:Z

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lru/localscribe/data/ModelPreparation;


# direct methods
.method constructor <init>(Lru/localscribe/data/ModelPreparation;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/localscribe/data/ModelPreparation;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/localscribe/data/ModelPreparation$prepare$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    iput-boolean p2, p0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->$force:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;

    iget-object v1, p0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    iget-boolean v2, p0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->$force:Z

    invoke-direct {v0, v1, v2, p1}, Lru/localscribe/data/ModelPreparation$prepare$3$1;-><init>(Lru/localscribe/data/ModelPreparation;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lru/localscribe/data/ModelPreparation$prepare$3$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lru/localscribe/data/ModelPreparation$prepare$3$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lru/localscribe/data/ModelPreparation$prepare$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v1, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->I$1:I

    .local v1, "update":Z
    iget v2, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->I$0:I

    .local v2, "bundled":Z
    iget-object v3, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "installed":Ljava/lang/String;
    iget-object v4, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lru/localscribe/data/ModelManifest;

    .local v4, "manifest":Lru/localscribe/data/ModelManifest;
    iget-object v5, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lru/localscribe/data/BundledModelInfo;

    .local v5, "bundle":Lru/localscribe/data/BundledModelInfo;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v1    # "update":Z
    .end local v2    # "bundled":Z
    .end local v3    # "installed":Ljava/lang/String;
    .end local v4    # "manifest":Lru/localscribe/data/ModelManifest;
    .end local v5    # "bundle":Lru/localscribe/data/BundledModelInfo;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    iget-object v2, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v2}, Lru/localscribe/data/ModelPreparation;->access$getStore$p(Lru/localscribe/data/ModelPreparation;)Lru/localscribe/data/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->bundledInfo()Lru/localscribe/data/BundledModelInfo;

    move-result-object v5

    .line 54
    .restart local v5    # "bundle":Lru/localscribe/data/BundledModelInfo;
    const/4 v3, 0x0

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 55
    .local v4, "bundled":Z
    :goto_0
    iget-object v6, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v6}, Lru/localscribe/data/ModelPreparation;->access$getStore$p(Lru/localscribe/data/ModelPreparation;)Lru/localscribe/data/ModelStore;

    move-result-object v6

    invoke-virtual {v6}, Lru/localscribe/data/ModelStore;->manifest()Lru/localscribe/data/ModelManifest;

    move-result-object v6

    .line 56
    .local v6, "manifest":Lru/localscribe/data/ModelManifest;
    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lru/localscribe/data/ModelManifest;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    move-object v14, v8

    .line 58
    .local v14, "installed":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 59
    if-eqz v6, :cond_6

    .line 60
    invoke-virtual {v6}, Lru/localscribe/data/ModelManifest;->getFiles()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$any\\1":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 141
    .local v9, "$i$f$any\\1\\60":I
    instance-of v10, v8, Ljava/util/Collection;

    if-eqz v10, :cond_2

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v3

    goto :goto_2

    .line 142
    :cond_2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element\\1":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "it\\2":Ljava/lang/String;
    const/4 v13, 0x0

    .line 60
    .local v13, "$i$a$-any-ModelPreparation$prepare$3$1$update$1\\2\\142\\0":I
    const-string v15, "offline-small/"

    const/4 v2, 0x2

    invoke-static {v12, v15, v3, v2, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    .line 142
    .end local v12    # "it\\2":Ljava/lang/String;
    .end local v13    # "$i$a$-any-ModelPreparation$prepare$3$1$update$1\\2\\142\\0":I
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 143
    .end local v11    # "element\\1":Ljava/lang/Object;
    :cond_4
    move v2, v3

    .line 60
    .end local v8    # "$this$any\\1":Ljava/lang/Iterable;
    .end local v9    # "$i$f$any\\1\\60":I
    :goto_2
    if-nez v2, :cond_5

    .line 61
    invoke-virtual {v6}, Lru/localscribe/data/ModelManifest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lru/localscribe/data/BundledModelInfo;->getManifest()Lru/localscribe/data/ModelManifest;

    move-result-object v7

    invoke-virtual {v7}, Lru/localscribe/data/ModelManifest;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 62
    invoke-virtual {v5}, Lru/localscribe/data/BundledModelInfo;->getManifest()Lru/localscribe/data/ModelManifest;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 63
    iget-object v2, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v2}, Lru/localscribe/data/ModelPreparation;->access$getStore$p(Lru/localscribe/data/ModelPreparation;)Lru/localscribe/data/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lru/localscribe/data/ModelStore;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v7, "manual_models"

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move v2, v3

    .line 57
    :goto_3
    nop

    .line 64
    .local v2, "update":Z
    iget-object v7, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v7}, Lru/localscribe/data/ModelPreparation;->access$getMutableState$p(Lru/localscribe/data/ModelPreparation;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    .line 65
    iget-object v8, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v8}, Lru/localscribe/data/ModelPreparation;->access$getMutableState$p(Lru/localscribe/data/ModelPreparation;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lru/localscribe/data/PreparationState;

    if-eqz v4, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    move v13, v3

    :goto_4
    const/16 v16, 0x27

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lru/localscribe/data/PreparationState;->copy$default(Lru/localscribe/data/PreparationState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/data/PreparationState;

    move-result-object v3

    .line 64
    invoke-interface {v7, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 66
    nop

    .line 67
    if-eqz v4, :cond_b

    .line 68
    iget-boolean v3, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->$force:Z

    if-nez v3, :cond_9

    .line 69
    if-eqz v14, :cond_8

    if-eqz v2, :cond_b

    .line 70
    :cond_8
    iget-object v3, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v3}, Lru/localscribe/data/ModelPreparation;->access$getStore$p(Lru/localscribe/data/ModelPreparation;)Lru/localscribe/data/ModelStore;

    move-result-object v3

    invoke-virtual {v3}, Lru/localscribe/data/ModelStore;->automaticPreparationEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 72
    :cond_9
    iget-object v3, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-static {v3}, Lru/localscribe/data/ModelPreparation;->access$getStore$p(Lru/localscribe/data/ModelPreparation;)Lru/localscribe/data/ModelStore;

    move-result-object v3

    new-instance v7, Lru/localscribe/data/ModelPreparation$prepare$3$1$1;

    iget-object v8, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-direct {v7, v8}, Lru/localscribe/data/ModelPreparation$prepare$3$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->L$1:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->I$0:I

    iput v2, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->I$1:I

    const/4 v9, 0x1

    iput v9, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->label:I

    invoke-virtual {v3, v7, v8}, Lru/localscribe/data/ModelStore;->installBundled(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_a

    .line 52
    return-object v1

    .line 72
    :cond_a
    move v1, v2

    move v2, v4

    move-object v4, v6

    move-object v3, v14

    .line 74
    .end local v6    # "manifest":Lru/localscribe/data/ModelManifest;
    .end local v14    # "installed":Ljava/lang/String;
    .restart local v1    # "update":Z
    .local v2, "bundled":Z
    .restart local v3    # "installed":Ljava/lang/String;
    .local v4, "manifest":Lru/localscribe/data/ModelManifest;
    :goto_5
    move-object v14, v3

    move-object v6, v4

    move v4, v2

    move v2, v1

    .end local v1    # "update":Z
    .end local v3    # "installed":Ljava/lang/String;
    .local v2, "update":Z
    .local v4, "bundled":Z
    .restart local v6    # "manifest":Lru/localscribe/data/ModelManifest;
    .restart local v14    # "installed":Ljava/lang/String;
    :cond_b
    iget-object v1, v0, Lru/localscribe/data/ModelPreparation$prepare$3$1;->this$0:Lru/localscribe/data/ModelPreparation;

    invoke-virtual {v1}, Lru/localscribe/data/ModelPreparation;->refresh()V

    .line 75
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
