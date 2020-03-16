.class public Lcom/android/systemui/bar/SaltBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "SaltBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "SaltBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSaltDeviceInfo:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

.field private mSaltEndAction:Landroid/widget/ImageView;

.field private mSaltStartAction:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBarVisibility()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setColorChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    const-string v1, "color/qs_tile_label"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-boolean v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarColorEnabled:Z

    if-eqz v1, :cond_0

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarDeviceInfoColor:I

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarEndActionColor:I

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarStartActionColor:I

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    const-string v4, "drawable/qs_ripple_drawable"

    invoke-static {v4}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/bar/SaltBar;->mSaltDeviceInfo:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mSaltEndAction:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mSaltStartAction:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mSaltEndAction:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mSaltStartAction:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getBarHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen/salt_qsbar_height"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hideShowingExpandedBar(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/bar/QSBarItem;->hideShowingExpandedBar(Z)V

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->getBarVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "layout/qspanel_salt_bar_layout"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    const-string p2, "salt_qsbar"

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    const-string p2, "salt_qsbar_title"

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    iput-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltDeviceInfo:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    const-string p2, "salt_qsbar_end_icon"

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltEndAction:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    const-string p2, "salt_qsbar_start_icon"

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltStartAction:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/bar/SaltBar;->setSaltBarWithTag()V

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$setSaltDeviceInfoWithTag$0$SaltBar(ILandroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bar/SaltBar;->setLeoClickAction(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarEndActionCollapsePanels:I

    invoke-static {p1, p2}, Lcom/android/settingslib/salt/SaltConfigFrame;->collapsePanel(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$setSaltDeviceInfoWithTag$1$SaltBar(ILandroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bar/SaltBar;->setLeoClickAction(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarStartActionCollapsePanels:I

    invoke-static {p1, p2}, Lcom/android/settingslib/salt/SaltConfigFrame;->collapsePanel(Landroid/content/Context;I)V

    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->setColorChanged()V

    return-void
.end method

.method public refreshQsBar()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bar/SaltBar;->setSaltBarWithTag()V

    return-void
.end method

.method public setLeoClickAction(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/16 p1, 0xd3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0xeb

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/16 p1, 0xe7

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/16 p1, 0xc8

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const/16 p1, 0xc9

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    const/16 p1, 0xca

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    const/16 p1, 0xcb

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    const/16 p1, 0xcc

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    if-ne p1, v1, :cond_8

    const/16 p1, 0x58

    :cond_8
    :goto_0
    invoke-static {v0, p2, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setSaltBarWithTag()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/SaltBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/bar/SaltBar;->setSaltDeviceInfoWithTag()V

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->updateVisibility()V

    return-void
.end method

.method public setSaltDeviceInfoWithTag()V
    .locals 9

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarEndActionStyle:I

    iget-object v1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltEndAction:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarEndActionEnabled:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoQSDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/bar/-$$Lambda$SaltBar$4E2qPFOOWvCvET8vjDEuUrP_VtA;-><init>(Lcom/android/systemui/bar/SaltBar;I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltDeviceInfo:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->updateQsBarDeviceInfo()V

    iget-object v1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltDeviceInfo:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    sget-boolean v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoStatusbar:Z

    sget v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoStatusbarStyle:I

    sget v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoStatusbarSize:I

    sget v8, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoStatusbarFont:I

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->refreshQsBarDeviceInfo(ZIII)V

    iget-object v1, p0, Lcom/android/systemui/bar/SaltBar;->mSaltStartAction:Landroid/widget/ImageView;

    sget v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarStartActionStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-static {v5}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoQSDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/android/systemui/bar/-$$Lambda$SaltBar$6yXuIqAoDKn-qp7BlB2sXiVUn0Q;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/bar/-$$Lambda$SaltBar$6yXuIqAoDKn-qp7BlB2sXiVUn0Q;-><init>(Lcom/android/systemui/bar/SaltBar;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsSaltBarStartActionEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/bar/SaltBar;->setColorChanged()V

    return-void
.end method
