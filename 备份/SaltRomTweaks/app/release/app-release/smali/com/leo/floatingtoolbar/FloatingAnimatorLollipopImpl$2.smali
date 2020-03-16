.class Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingAnimatorLollipopImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getAppBar()Landroid/support/design/widget/AppBarLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setY(F)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getAnimationListener()Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;->onAnimationFinished()V

    return-void
.end method
