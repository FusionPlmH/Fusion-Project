.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mBarController:Lcom/android/systemui/bar/BarController;

.field private mBottomLeftRadius:I

.field private mBottomRightRadius:I

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mExtendedAppBarHeight:I

.field private mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeaderBottomMargin:I

.field private mHeaderIconsHeight:I

.field private mHeightOverride:I

.field private mNaviBarHeight:I

.field private mNaviGestureHintHeight:I

.field private mNightModeMask:I

.field mNotificationCount:I

.field private mOrientation:I

.field mPrimaryLabelColor:I

.field private mQSBigTimeContainer:Landroid/view/View;

.field private mQSDetailHeaderContainer:Landroid/view/View;

.field private mQSEmptyButtonsContainer:Landroid/view/View;

.field private mQSHeaderButtonsContaier:Landroid/view/View;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field mQSTileLabelColor:I

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field mSecondaryTextColor:I

.field private mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

.field private mSideMargins:I

.field private final mSizePoint:Landroid/graphics/Point;

.field private mSystemIconsHeight:I

.field private mSystemIconsView:Landroid/view/View;

.field private mTopLeftRadius:I

.field private mTopRightRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    return-void
.end method

.method private getDisplayHeight()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight(Z)I

    move-result v0

    return v0
.end method

.method private getDisplayHeight(Z)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayHeight portrait? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  mSizePoint.y= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSContainerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    return p1
.end method

.method private setMargins()V
    .locals 0

    return-void
.end method

.method private setMargins(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private updateBackgroundRadius()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopLeftRadius:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTopRightRadius:I

    return-void
.end method

.method private updateColors()V
    .locals 2

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSTileLabelColor:I

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mPrimaryLabelColor:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecondaryTextColor:I

    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundColor()I

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public calculateContainerHeight()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/bar/BarController;->getQSBarsTranslation()I

    :cond_1
    return v0
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eq p1, p2, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eqz p2, :cond_1

    const/16 p3, 0x8

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public getSecHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviGestureHintHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNaviBarHeight:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateColors()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundRadius()V

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBarController(Lcom/android/systemui/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/bar/BarController;

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setBottom(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSServiceBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSystemIconsHeight:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSServiceBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
