.class public final synthetic Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lru/localscribe/ScribeApp;

.field public final synthetic f$1:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lru/localscribe/ScribeApp;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/ScribeApp;

    iput-object p2, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;->f$0:Lru/localscribe/ScribeApp;

    iget-object v1, p0, Lru/localscribe/ScribeApp$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0, v1, p1, p2}, Lru/localscribe/ScribeApp;->$r8$lambda$RbTf2FgdqF11VmPUrYn0gGKkY3o(Lru/localscribe/ScribeApp;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
