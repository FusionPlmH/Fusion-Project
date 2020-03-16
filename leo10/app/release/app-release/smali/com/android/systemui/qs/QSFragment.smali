.class public Lcom/android/systemui/qs/QSFragment;
.super Landroid/app/Fragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mBarController:Lcom/android/systemui/bar/BarController;

.field public mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mCurrentOrientation:I

.field public mDelay:J

.field private mExpandButtonContainer:Landroid/view/View;

.field protected mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderAnimating:Z

.field public mInitDraw:Z

.field private final mInitDrawListerner:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mKeyguardShowing:Z

.field public mLastQSExpansion:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInitDraw:Z

    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mInitDrawListerner:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 0

    return-void
.end method

.method public closeDetail()V
    .locals 0

    return-void
.end method

.method public disable(IIZ)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getContainer()Lcom/android/systemui/qs/QSContainerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/bar/BarController;->getOnTopQSBarsHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public getServiceBox()Lcom/android/systemui/qs/QSServiceBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    return-object v0
.end method

.method public hideImmediately()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return v0
.end method

.method public isListening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyCustomizeChanged()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mCurrentOrientation:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isShowingDetail()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPanelHeightUpdated(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQsMinExpansionHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/bar/BarController;->onPanelHeightUpdated(FI)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setBarController(Lcom/android/systemui/bar/BarController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bar/BarController;->setQSPanel(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bar/BarController;->setHeader(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/bar/BarController;->setQSBarCallback(Lcom/android/systemui/bar/BarController$QSBarCallback;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setBarController(Lcom/android/systemui/bar/BarController;)V

    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 0

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mInitDraw:Z

    if-eqz v2, :cond_2

    if-eq p2, v1, :cond_5

    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float p2, p1, v0

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getBottom()I

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getPaddingBottom()I

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/bar/BarController;->getQSBarsTranslation()I

    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :cond_4
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/systemui/bar/BarController;->setPosition(F)V

    :cond_5
    return-void
.end method

.method public updateQsState()V
    .locals 0

    return-void
.end method
