.class public abstract Lcom/android/systemui/bar/QSBarItem;
.super Lcom/android/systemui/bar/BarItem;
.source "QSBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/QSBarItem$QSCallback;
    }
.end annotation


# instance fields
.field protected mBarRootView:Landroid/view/ViewGroup;

.field protected mFraction:F

.field protected mOrientation:I

.field protected mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

.field protected mStatusBarState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/BarItem;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mFraction:F

    return-void
.end method


# virtual methods
.method public abstract getBarHeight()I
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected hideShowingExpandedBar(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bar/QSBarItem;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {p1}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method

.method protected isKeyguardShowing()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/QSBarItem;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/QSBarItem;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowingWhenExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mOrientation:I

    return-void
.end method

.method public abstract refreshQsBar()V
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mFraction:F

    return-void
.end method

.method public setQSCallback(Lcom/android/systemui/bar/QSBarItem$QSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/QSBarItem;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mStatusBarState:I

    return-void
.end method

.method public updateAnimator()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->getView()Landroid/view/View;

    return-void
.end method
