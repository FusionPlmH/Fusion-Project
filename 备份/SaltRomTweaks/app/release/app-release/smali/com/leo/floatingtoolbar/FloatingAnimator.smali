.class abstract Lcom/leo/floatingtoolbar/FloatingAnimator;
.super Ljava/lang/Object;
.source "FloatingAnimator.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_DELAY:I = 0x32

.field public static final CIRCULAR_REVEAL_DURATION:I = 0x12c

.field public static final CIRCULAR_UNREVEAL_DELAY:I = 0x96

.field public static final CIRCULAR_UNREVEAL_DURATION:I = 0xc8

.field public static final DELAY_MAX:I = 0x96

.field public static final DELAY_MAX_WIDTH:I = 0x384

.field public static final DELAY_MIN_WIDTH:I = 0x12c

.field public static final FAB_MORPH_DURATION:I = 0xc8

.field public static final FAB_UNMORPH_DELAY:I = 0x12c

.field public static final FAB_UNMORPH_DURATION:I = 0xc8

.field public static final MENU_ANIMATION_DELAY:I = 0xc8

.field public static final MENU_ANIMATION_DURATION:I = 0x12c

.field public static final TOOLBAR_UNREVEAL_DELAY:I = 0xc8


# instance fields
.field private mAnimationListener:Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

.field private mAppBar:Landroid/support/design/widget/AppBarLayout;

.field private mAppbarOffset:F

.field private mContentView:Landroid/view/View;

.field private mDelay:J

.field private mFab:Landroid/support/design/widget/FloatingActionButton;

.field private mMoveFabX:Z

.field private mRootView:Landroid/view/View;

.field private mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;


# direct methods
.method public constructor <init>(Lcom/leo/floatingtoolbar/FloatingToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mRootView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/floatingtoolbar/FloatingAnimator;)Lcom/leo/floatingtoolbar/FloatingToolbar;
    .locals 0

    iget-object p0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/leo/floatingtoolbar/FloatingAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mMoveFabX:Z

    return p1
.end method

.method static synthetic access$200(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/support/design/widget/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/floatingtoolbar/FloatingAnimator;)Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAnimationListener:Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mContentView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getAnimationListener()Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAnimationListener:Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

    return-object v0
.end method

.method public getAppBar()Landroid/support/design/widget/AppBarLayout;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    return-object v0
.end method

.method public getAppBarOffset()F
    .locals 1

    iget v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAppbarOffset:F

    return v0
.end method

.method public getDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    return-wide v0
.end method

.method public getFab()Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method public getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 6

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mMoveFabX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 0

    int-to-float p1, p2

    iput p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAppbarOffset:F

    return-void
.end method

.method public setAppBarLayout(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAppBar:Landroid/support/design/widget/AppBarLayout;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setFab(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/leo/floatingtoolbar/FloatingAnimator$1;

    invoke-direct {v0, p0}, Lcom/leo/floatingtoolbar/FloatingAnimator$1;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setFloatingAnimatorListener(Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mAnimationListener:Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

    return-void
.end method

.method public shouldMoveFabX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mMoveFabX:Z

    return v0
.end method

.method public show()V
    .locals 7

    iget-boolean v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mMoveFabX:Z

    const-wide/16 v1, 0x12c

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    :goto_0
    int-to-float v0, v0

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    iget-object v4, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setX(F)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x32

    iget-wide v5, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mContentView:Landroid/view/View;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    iget-wide v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/leo/floatingtoolbar/FloatingAnimator$2;

    invoke-direct {v1, p0}, Lcom/leo/floatingtoolbar/FloatingAnimator$2;-><init>(Lcom/leo/floatingtoolbar/FloatingAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method public updateDelay()V
    .locals 5

    iget-object v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->dpToPixels(Landroid/content/Context;I)F

    move-result v0

    iget-object v1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x384

    invoke-static {v1, v2}, Lcom/leo/floatingtoolbar/FloatingToolbar;->dpToPixels(Landroid/content/Context;I)F

    move-result v1

    sub-float v2, v1, v0

    iget-object v3, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mToolbar:Lcom/leo/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v3}, Lcom/leo/floatingtoolbar/FloatingToolbar;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    int-to-float v3, v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, v3, v1

    if-lez v1, :cond_1

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    return-void

    :cond_1
    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v1, v2

    sub-float/2addr v3, v0

    mul-float v1, v1, v3

    float-to-long v0, v1

    iput-wide v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    return-void

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/leo/floatingtoolbar/FloatingAnimator;->mDelay:J

    return-void
.end method
