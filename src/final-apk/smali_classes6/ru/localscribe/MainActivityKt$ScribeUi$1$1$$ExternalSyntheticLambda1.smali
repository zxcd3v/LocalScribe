.class public final synthetic Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/MainActivityKt$ScribeUi$1$1$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lru/localscribe/MainActivityKt$ScribeUi$1$1;->$r8$lambda$74YhIWdvQg5X7z4zq1E4bQWku1Q(ZLandroid/content/res/Resources;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
