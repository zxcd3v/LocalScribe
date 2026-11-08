.class Lru/localscribe/ux/UxPatch$2;
.super Ljava/lang/Object;
.source "UxPatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/localscribe/ux/UxPatch;->refreshOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/localscribe/ux/UxPatch$2;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lru/localscribe/ux/UxPatch;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    goto :goto_0

    :cond_0
    const-string v0, "\u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    :goto_0
    const-string v1, "\u041f\u043b\u0430\u0432\u0430\u044e\u0449\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/localscribe/ux/UxPatch$2;->val$button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lru/localscribe/ux/UxPatch$2;->val$button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
