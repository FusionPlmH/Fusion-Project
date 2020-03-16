.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# static fields
.field private static final SALT_UPDATE_BATTERY_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfQkFUVEVSWV9TRVRUSU5HUw=="

.field private static final SALT_UPDATE_FLOAT_GESTURE_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="

.field private static final SALT_UPDATE_LOCKCARRIER_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfTE9DS0NBUlJJRVJfU0VUVElOR1M="

.field private static final SALT_UPDATE_LOCK_GESTURE_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfTE9DS19HRVNUVVJFX1NFVFRJTkdT"

.field private static final SALT_UPDATE_MINIPOP_GESTURE_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfTUlOSVBPUF9HRVNUVVJFX1NFVFRJTkdT"

.field private static final SALT_UPDATE_NAV_GESTURE_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M="

.field private static final SALT_UPDATE_PANEL_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfUEFORUxfU0VUVElOR1M="

.field private static final SALT_UPDATE_QSBAR_SALT_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfUVNCQVJfU0FMVF9TRVRUSU5HUw=="

.field private static final SALT_UPDATE_QSDATECLOCK_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfUVNEQVRFQ0xPQ0tfU0VUVElOR1M="

.field private static final SALT_UPDATE_STATUSBARICON_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfU1RBVFVTQkFSSUNPTl9TRVRUSU5HUw=="

.field private static final SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfU1RBVFVTQkFSX0dFU1RVUkVfU0VUVElOR1M="

.field private static final SALT_UPDATE_STATUSBAR_SETTINGS:Ljava/lang/String; = "U0FMVF9VUERBVEVfU1RBVFVTQkFSX1NFVFRJTkdT"

.field private static final leo_flashlight_action:Ljava/lang/String; = "bGVvX2ZsYXNobGlnaHRfYWN0aW9u"


# instance fields
.field private mBarController:Lcom/android/systemui/bar/BarController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field public mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/settingslib/salt/SaltIcon;->getLeoStatusBarIcons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->changeSaltSignalLocation()V

    new-instance v0, Lcom/android/settingslib/salt/SaltSystemUI;

    invoke-direct {v0}, Lcom/android/settingslib/salt/SaltSystemUI;-><init>()V

    invoke-virtual {v0}, Lcom/android/settingslib/salt/SaltSystemUI;->refreshSaltSystemUI()V

    return-void
.end method

.method private changeSaltSignalLocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values4:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v2, Lcom/android/settingslib/salt/SaltValues;->Values5:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v3, Lcom/android/settingslib/salt/SaltValues;->Values6:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarSignalOrientation:I

    if-nez v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private getSecHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "QS"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getContainer()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getSecHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v0

    return-object v0
.end method

.method private setLeoSaltBattery()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const-string v1, "leo_battery_view"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusbarMainBatterySize:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public SaltStaertusBar()V
    .locals 0

    return-void
.end method

.method public disable(IIZ)V
    .locals 0

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getBarState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public intentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "U0FMVF9VUERBVEVfTE9DS0NBUlJJRVJfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfQkFUVEVSWV9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfU1RBVFVTQkFSSUNPTl9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfTUlOSVBPUF9HRVNUVVJFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfU1RBVFVTQkFSX0dFU1RVUkVfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfTE9DS19HRVNUVVJFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfUVNEQVRFQ0xPQ0tfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfU1RBVFVTQkFSX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "bGVvX2ZsYXNobGlnaHRfYWN0aW9u"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfUVNCQVJfU0FMVF9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfUEFORUxfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public makeStatusBarView()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->intentFilter(Landroid/content/IntentFilter;)V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public updateLeoSaltService(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const-string v1, "U0FMVF9VUERBVEVfTE9DS0NBUlJJRVJfU0VUVElOR1M="

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->refreshKeyguardStatusBarView()V

    return-void

    :cond_1
    const-string v1, "U0FMVF9VUERBVEVfQkFUVEVSWV9TRVRUSU5HUw=="

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    const-string p1, "leo_battery_view"

    sget-object v1, Lcom/android/settingslib/salt/SaltValues;->Values7:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BatteryMeterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget-object v3, Lcom/android/settingslib/salt/SaltValues;->Values7:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/salt/SaltMainBattery;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->updateSettings()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->updateSettings()V

    invoke-virtual {v2}, Lcom/android/systemui/BatteryMeterView;->updateSettings()V

    invoke-virtual {v1}, Lcom/android/systemui/BatteryMeterView;->updateSettings()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getSecHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateSecQuickStatusBar()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLeoSaltBattery()V

    return-void

    :cond_2
    const-string v1, "U0FMVF9VUERBVEVfU1RBVFVTQkFSSUNPTl9TRVRUSU5HUw=="

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->changeSaltSignalLocation()V

    invoke-static {}, Lcom/android/settingslib/salt/SaltIcon;->getLeoStatusBarIcons()V

    return-void

    :cond_3
    const-string v1, "U0FMVF9VUERBVEVfTUlOSVBPUF9HRVNUVVJFX1NFVFRJTkdT"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settingslib/salt/SaltSystemUI;

    invoke-direct {p1}, Lcom/android/settingslib/salt/SaltSystemUI;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/salt/SaltSystemUI;->refreshSaltMinipop()V

    return-void

    :cond_4
    const-string v1, "U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settingslib/salt/SaltSystemUI;

    invoke-direct {p1}, Lcom/android/settingslib/salt/SaltSystemUI;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/salt/SaltSystemUI;->refreshSaltFloat()V

    return-void

    :cond_5
    const-string v1, "U0FMVF9VUERBVEVfU1RBVFVTQkFSX0dFU1RVUkVfU0VUVElOR1M="

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLeoStatusBarManager()Lcom/android/systemui/statusbar/salt/SaltStatusBarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->settingSaltStatusBarAction()V

    return-void

    :cond_6
    const-string v0, "U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDoubleTapToSleep()V

    return-void

    :cond_7
    const-string v0, "U0FMVF9VUERBVEVfTE9DS19HRVNUVVJFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshetSaltNotificationPanel()Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->updateLeoDetector()V

    return-void

    :cond_8
    const-string v0, "U0FMVF9VUERBVEVfUEFORUxfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshetSaltNotificationPanel()Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltNotificationPanelController;->updatePanel()V

    return-void

    :cond_9
    const-string v0, "U0FMVF9VUERBVEVfUVNEQVRFQ0xPQ0tfU0VUVElOR1M="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "QS"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFragment;->getServiceBox()Lcom/android/systemui/qs/QSServiceBox;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getSecHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v0

    const-string v1, "header_service_container_clock"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QSClock;

    const-string v2, "header_service_container_date"

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClock()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DateView;->updateDate()V

    const-string v0, "qs_service_box_clock"

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClock;

    const-string v1, "qs_service_box_date"

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClock()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DateView;->updateDate()V

    return-void

    :cond_a
    const-string v0, "U0FMVF9VUERBVEVfU1RBVFVTQkFSX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLeoStatusBarManager()Lcom/android/systemui/statusbar/salt/SaltStatusBarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/salt/SaltStatusBarController;->refreshSaltStatusBar()V

    return-void

    :cond_b
    const-string v0, "bGVvX2ZsYXNobGlnaHRfYWN0aW9u"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ToggleFlashLight()V

    :cond_c
    return-void

    :cond_d
    const-string v0, "U0FMVF9VUERBVEVfUVNCQVJfU0FMVF9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {p1}, Lcom/android/systemui/bar/BarController;->saltQsBarRefresh()V

    :cond_e
    return-void
.end method
