.class public Lcom/android/systemui/qs/SecQuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "SecQuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCameraPadding:I

.field private mCameraTopMargin:I

.field mContext:Landroid/content/Context;

.field private mDefaultTextSize:F

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mExpanded:Z

.field private mHeaderServiceContainerView:Landroid/view/View;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mInflated:Z

.field private mIsCenterCutoutDevice:Z

.field private mLeoDeviceInfo:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

.field private mListening:Z

.field private mQsDisabled:Z

.field private mQuickStatusBarAreaView:Landroid/view/View;

.field private mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

.field private mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

.field private mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

.field private mSystemIconsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraPadding:I

    iput p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCameraTopMargin:I

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mInflated:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIsCenterCutoutDevice:Z

    return-void
.end method

.method public static getColorIntensity(I)F
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private getRoundCornerSidePaddingWithDensity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isQsPanelBgColorDark(I)Z
    .locals 7

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p1, 0xff

    mul-int v0, v0, v0

    int-to-double v3, v0

    const-wide v5, 0x3fced916872b020cL    # 0.241

    mul-double v3, v3, v5

    mul-int v1, v1, v1

    int-to-double v0, v1

    const-wide v5, 0x3fe61cac083126e9L    # 0.691

    mul-double v0, v0, v5

    add-double/2addr v3, v0

    mul-int v2, v2, v2

    int-to-double v0, v2

    const-wide v5, 0x3fb16872b020c49cL    # 0.068

    mul-double v0, v0, v5

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQsPanelBgColorDark bgColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0xffffff

    and-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "%06X"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " brightnessValue = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SecQuickStatusBarHeader"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x82

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private updateLeoQSColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result p1

    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values17:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setForceQsTintColor(ZF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateSecQuickStatusBar()V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 5

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result p1

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSmallDate:Lcom/android/systemui/statusbar/policy/DateView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateLeoQSColor(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/BatteryMeterView;->setForceQsTintColor(ZF)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isQsPanelBgColorDark(I)Z

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setForceQsTintColor(ZF)V

    :cond_6
    return-void
.end method

.method public updateSecQuickStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values17:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->updateSettings()V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusbarMainBatterySize:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mSaltMainBattery:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView;->updateSettings()V

    return-void
.end method
