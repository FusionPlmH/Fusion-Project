.class Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;
.super Lcom/leo/floatingtoolbar/FloatingAnimator;
.source "FloatingAnimatorLollipopImpl.java"


# instance fields
.field private mFabDiff:F


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/floatingtoolbar/FloatingAnimator;-><init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V

    return-void
.end method

.method private createPath(Z)Landroid/graphics/Path;
    .locals 7

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getY()F

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->mFabDiff:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v3

    sub-float v3, v2, v3

    :cond_0
    iput v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->mFabDiff:F

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->mFabDiff:F

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getTranslationY()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->mFabDiff:F

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->shouldMoveFabX()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    return-object p1

    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v0, p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    :goto_1
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_6

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v0, v5

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v0, v5

    :goto_2
    invoke-virtual {v4, v0, v1, p1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-object v4
.end method


# virtual methods
.method public hide()V
    .locals 12

    invoke-super {p0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->hide()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    sget-object v1, Landroid/view/View;->X:Landroid/util/Property;

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->createPath(Z)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    const-wide/16 v4, 0xc8

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    const-wide/16 v6, 0x12c

    add-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$2;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v8, v2, [F

    const/4 v9, 0x0

    aput v9, v8, v3

    invoke-static {v0, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v10

    add-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v10

    add-long/2addr v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v6

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    int-to-double v7, v0

    int-to-double v10, v1

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    invoke-static {v6, v0, v1, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$3;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$3;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v6

    const-wide/16 v10, 0x96

    add-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput v9, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    add-long/2addr v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public show()V
    .locals 11

    invoke-super {p0}, Lcom/leo/floatingtoolbar/FloatingAnimator;->show()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    sget-object v1, Landroid/view/View;->X:Landroid/util/Property;

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->createPath(Z)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    const-wide/16 v4, 0xc8

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/4 v8, 0x0

    aput v6, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v2

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-double v5, v0

    int-to-double v9, v1

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v2, v0, v1, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    const-wide/16 v4, 0x12c

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$1;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$1;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    const-wide/16 v9, 0x32

    add-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getDelay()J

    move-result-wide v1

    add-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
