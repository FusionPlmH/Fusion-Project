.class public Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;
.super Ljava/lang/Object;
.source "SaltNotificationPanelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController$LeoGestureDetector;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLeoAnalogClock:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

.field private mLeoDeviceInfoView:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

.field private mLeoDoubleTapGesture:Landroid/view/GestureDetector;

.field private mLeoDoubleTapToSleepAnywhere:Z

.field private mLeoDoubleTapToSleepEnabled:Z

.field private mLeoPanelCarrierView:Lcom/android/keyguard/CarrierText;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPulldownPanel:Landroid/widget/LinearLayout;

.field private mStatusBarHeaderHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public LeoDetector()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController$LeoGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController$LeoGestureDetector;-><init>(Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Leo Salt"

    const-string v1, "Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->updateLeoDetector()V

    return-void
.end method

.method public intLeoPanelView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values12:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoPanelCarrierView:Lcom/android/keyguard/CarrierText;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values13:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->updatePanel()V

    return-void
.end method

.method public loadLeoDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values14:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mStatusBarHeaderHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapToSleepEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mStatusBarHeaderHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapToSleepAnywhere:Z

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLeoDetector()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardDoubleTapToSleepEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapToSleepEnabled:Z

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardDoubleTapToSleepAnywhere:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDoubleTapToSleepAnywhere:Z

    return-void
.end method

.method public updatePanel()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    const-string v1, "salt_panel_deviceInfo"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mPulldownPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->updateAnalogClock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    sget-boolean v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelAnalogClockShow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->setVisibility(I)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoDeviceInfoView:Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setLeoDeviceInfo()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoAnalogClock:Lcom/android/systemui/statusbar/salt/SaltAnalogClock;

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/android/systemui/statusbar/salt/SaltAnalogClock;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mLeoPanelCarrierView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCarrierColor:I

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrierColor(II)V

    sget v4, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCustomCarrier:I

    sget v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCarrierMulti:I

    sget-object v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCustomCarrierStringA:Ljava/lang/String;

    sget-object v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCustomCarrierStringB:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCarrierSymbol:I

    sget-object v8, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCustomCarrierSymbol:Ljava/lang/String;

    const-string v9, "\uff5c"

    invoke-static {v1, v3, v8, v9}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoSymbolStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBar5Gicon:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier5G(Z)V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCarrierSize:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoTextSize(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoNotificationPanelCarrierFont:I

    const-string v4, "sec-roboto-light"

    invoke-static {v1, v3, v4, v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
