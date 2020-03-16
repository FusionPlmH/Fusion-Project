.class Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;
.super Lcom/leo/floatingtoolbar/FloatingAnimator;
.source "FloatingAnimatorImpl.java"


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/floatingtoolbar/FloatingAnimator;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    invoke-super {p0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->hide()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getAppBar()Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v3, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;

    invoke-direct {v3, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$2;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$3;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$3;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public show()V
    .locals 8

    invoke-super {p0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->show()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->shouldMoveFabX()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sget-object v1, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v3, v2, [F

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getY()F

    move-result v5

    const v6, 0x3f733333    # 0.95f

    mul-float v5, v5, v6

    aput v5, v3, v4

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v2, [F

    aput v6, v7, v4

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v7, v4

    aput-object v1, v7, v2

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    new-array v1, v2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    const-string v2, "scaleX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$1;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorImpl$1;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimatorImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
