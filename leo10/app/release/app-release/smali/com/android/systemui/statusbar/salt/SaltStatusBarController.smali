.class public Lcom/android/systemui/statusbar/salt/SaltStatusBarController;
.super Ljava/lang/Object;
.source "SaltStatusBarController.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCarrierLabelView:Lcom/android/keyguard/CarrierText;

.field private mClockView:Lcom/android/systemui/statusbar/salt/SaltClock;

.field private mContext:Landroid/content/Context;

.field private mGrandParentView:Landroid/view/ViewGroup;

.field private mLOGOView:Lcom/android/systemui/statusbar/salt/SaltLogoView;

.field private mLeftContainer:Landroid/view/ViewGroup;

.field private mLeoAction:Lcom/android/systemui/statusbar/salt/SaltAction;

.field private mLeoCarrierPosition:I

.field private mLeoClockPosition:I

.field private mLeoLOGOPosition:I

.field private mLeoLogoShow:Z

.field private mLeoNetworkTrafficPosition:I

.field private mLeoRightAction:Lcom/android/systemui/statusbar/salt/SaltAction;

.field private mLeoTempPosition:I

.field private mMiddleContainer:Landroid/view/ViewGroup;

.field private mNetworkTrafficView:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

.field private mRightContainer:Landroid/view/ViewGroup;

.field private mTempDisplay:Z

.field private mTempView:Lcom/android/systemui/statusbar/salt/SaltTemp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method private updateCarrierLabel(Lcom/android/keyguard/CarrierText;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierSingleLine:I

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierColor:I

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierCustomColorEnabled:I

    invoke-virtual {p1, v1, v2}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrierColor(II)V

    sget v4, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierCustom:I

    sget v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierSingleLine:I

    sget-object v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierStringA:Ljava/lang/String;

    sget-object v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierStringB:Ljava/lang/String;

    const-string v8, "\n"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierMultiSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierSingleSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierFont:I

    const-string v3, "sec-roboto-light"

    invoke-static {v0, v1, v3, v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierStartPadding:F

    float-to-int v0, v0

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierEndPadding:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/android/keyguard/CarrierText;->setPaddingRelative(IIII)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoCarrierPosition:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBar5Gicon:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier5G(Z)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/android/keyguard/CarrierText;->setGravity(I)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarCarrierShow:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values1:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values2:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mMiddleContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values3:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values18:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltAction;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoAction:Lcom/android/systemui/statusbar/salt/SaltAction;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values19:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltAction;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoRightAction:Lcom/android/systemui/statusbar/salt/SaltAction;

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mClockView:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "leo_statusbar_traffic_view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mNetworkTrafficView:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltLogoView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltLogoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLOGOView:Lcom/android/systemui/statusbar/salt/SaltLogoView;

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltTemp;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltTemp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mTempView:Lcom/android/systemui/statusbar/salt/SaltTemp;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mCarrierLabelView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->refreshSaltStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->settingSaltStatusBarAction()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public refreshSaltStatusBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoUesrStatusbarNetworkPosition:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoNetworkTrafficPosition:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarDarkLogoOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoLOGOPosition:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoLogoShow:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoClockPosition:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoTempPosition:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mTempDisplay:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mNetworkTrafficView:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->refreshSaltNetworkTraffic()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mNetworkTrafficView:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;->refreshSaltNetworkMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mCarrierLabelView:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->updateCarrierLabel(Lcom/android/keyguard/CarrierText;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->updateResources()V

    return-void
.end method

.method public settingSaltStatusBarAction()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureVibratorEnable:I

    sget v8, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureVibratorLevel:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoAction:Lcom/android/systemui/statusbar/salt/SaltAction;

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLeftActionStyle:I

    sget-object v3, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sget-boolean v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLeftAction:Z

    sget v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLeftActionColor:I

    move v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/salt/SaltAction;->setSaltAction(ILjava/lang/String;IIZI)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoRightAction:Lcom/android/systemui/statusbar/salt/SaltAction;

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarRightActionStyle:I

    sget-object v3, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sget-boolean v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarRightAction:Z

    sget v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarRightActionColor:I

    move v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/salt/SaltAction;->setSaltAction(ILjava/lang/String;IIZI)V

    return-void
.end method

.method public updateResources()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v1, "id/system_icon_area"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v3, "id/left_clock_container"

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mCarrierLabelView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v5, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoCarrierPosition:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mNetworkTrafficView:Lcom/android/systemui/statusbar/salt/SaltNetworkTraffic;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v3, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoNetworkTrafficPosition:I

    if-nez v3, :cond_1

    invoke-virtual {v1, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mClockView:Lcom/android/systemui/statusbar/salt/SaltClock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoClockPosition:I

    if-eq v1, v7, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mTempView:Lcom/android/systemui/statusbar/salt/SaltTemp;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoTempPosition:I

    if-eq v1, v7, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mTempDisplay:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setVisibility(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setVisibility(I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLOGOView:Lcom/android/systemui/statusbar/salt/SaltLogoView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoLOGOPosition:I

    if-eq v1, v7, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->mLeoLogoShow:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setVisibility(I)V

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setVisibility(I)V

    :cond_a
    :goto_6
    return-void
.end method
