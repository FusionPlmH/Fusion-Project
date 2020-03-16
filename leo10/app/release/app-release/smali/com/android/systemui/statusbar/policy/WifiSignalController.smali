.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Ljava/lang/Object;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    }
.end annotation


# instance fields
.field private mActivityIconSet:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/settingslib/salt/SaltIcon;->mLeoStatusBarWIFIActivity:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    return-void
.end method

.method private dlxSetNewWiFi()V
    .locals 11

    invoke-static {}, Lcom/android/settingslib/salt/SaltIcon;->getLeoStatusBarIcons()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/settingslib/salt/SaltIcon;->mLeoStatusBarWifiIconStyle:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const-string v1, "drawable/stat_sys_wifi_signal_null"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v5

    const-string v6, "drawable/ic_qs_wifi_no_network"

    invoke-static {v6}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v7

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v9

    const-string v1, "string/accessibility_no_wifi"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltIcon;->getLeoResource(Ljava/lang/String;)I

    move-result v10

    const-string v1, "Wi-Fi Icons"

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    sget-object v0, Lcom/android/settingslib/salt/SaltIcon;->mLeoStatusBarWIFIActivity:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mActivityIconSet:[I

    return-void
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
