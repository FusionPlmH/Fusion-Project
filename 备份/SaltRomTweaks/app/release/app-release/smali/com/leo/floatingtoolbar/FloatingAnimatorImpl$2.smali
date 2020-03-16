.class Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "FloatingAnimatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getAppBar()Landroid/support/design/widget/AppBarLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    :cond_0
    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getAnimationListener()Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;->onAnimationFinished()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method
