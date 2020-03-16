.class Lcom/leo/floatingtoolbar/FloatingAnimator$1;
.super Ljava/lang/Object;
.source "FloatingAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/floatingtoolbar/FloatingAnimator;->setFab(Landroid/support/design/widget/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$000(Lcom/leo/floatingtoolbar/FloatingAnimator;)Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$200(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v3}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$000(Lcom/leo/floatingtoolbar/FloatingAnimator;)Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double v3, v3, v5

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_1

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$200(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v3}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$000(Lcom/leo/floatingtoolbar/FloatingAnimator;)Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double v3, v3, v5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$102(Lcom/leo/floatingtoolbar/FloatingAnimator;Z)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$200(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {v0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$200(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_2
    return-void
.end method
