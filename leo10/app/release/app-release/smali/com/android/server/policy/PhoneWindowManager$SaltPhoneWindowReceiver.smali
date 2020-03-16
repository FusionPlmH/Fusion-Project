.class public Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaltPhoneWindowReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public SaltPhoneAction(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mSaltManager:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x58

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    const/16 v3, 0x63

    const/4 v5, 0x1

    if-eq p1, v3, :cond_3

    const/16 p2, 0x104

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2c6

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7cf

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    const/4 v3, 0x3

    const/4 v6, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    const-string p1, "bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/utils/salt/SaltReboot;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "bGVvLmFjdGlvbi5ob3RSZWJvb3Q="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/utils/salt/SaltReboot;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "bGVvLmFjdGlvbi5SZWNvdmVyeQ=="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/utils/salt/SaltReboot;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "bGVvLmFjdGlvbi5Eb3dubG9hZA=="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/utils/salt/SaltReboot;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/server/utils/salt/SaltReboot;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/android/server/utils/salt/SaltReboot;->performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v2, v6}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoSysUiShortcut(Landroid/content/Intent;I)V

    return-void

    :pswitch_7
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoSysUiShortcut(Landroid/content/Intent;I)V

    return-void

    :pswitch_8
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoSysUiShortcut(Landroid/content/Intent;I)V

    return-void

    :pswitch_9
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v2, v5}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoSysUiShortcut(Landroid/content/Intent;I)V

    return-void

    :pswitch_a
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoSysUiShortcut(Landroid/content/Intent;I)V

    return-void

    :pswitch_b
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleWifiAP(Landroid/content/Context;)V

    const-string p1, "hotspot_state"

    invoke-static {v0, p1}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_c
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    sget-object p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mAppsManager:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoComponetURL(Ljava/lang/String;)V

    return-void

    :pswitch_d
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleclearAllNotifications(Landroid/content/Context;)V

    return-void

    :pswitch_e
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->volumePanel(Landroid/content/Context;)V

    return-void

    :pswitch_f
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleMobile()V

    return-void

    :pswitch_10
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->KillRecentAppsAll(Landroid/content/Context;)V

    return-void

    :pswitch_11
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->CleanProcesse()V

    return-void

    :pswitch_12
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleLastApp(Landroid/content/Context;)V

    return-void

    :pswitch_13
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->launchBixbyVoice(Landroid/content/Context;)V

    return-void

    :pswitch_14
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->launchBixbyHome()V

    return-void

    :pswitch_15
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleRingerVIBRATESoundModes(Landroid/content/Context;)V

    return-void

    :pswitch_16
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleRingerSoundModes(Landroid/content/Context;)V

    return-void

    :pswitch_17
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleRingerModes(Landroid/content/Context;)V

    return-void

    :pswitch_18
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->playPause()V

    return-void

    :pswitch_19
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->PreviousPiece()V

    return-void

    :pswitch_1a
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->NextTrack()V

    return-void

    :pswitch_1b
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    const-string p2, "policy_control"

    invoke-virtual {p1, v0, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleExpandedDesktop(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_1c
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->openCamera(Landroid/content/Context;)V

    return-void

    :pswitch_1d
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleMipopModel(Landroid/content/Context;)V

    return-void

    :pswitch_1e
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->isOutdoorModel(Landroid/content/Context;)V

    return-void

    :pswitch_1f
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleFloatingModel(Landroid/content/Context;)V

    return-void

    :pswitch_20
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleAirplane(Landroid/content/Context;)V

    return-void

    :pswitch_21
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleWifi(Landroid/content/Context;)V

    return-void

    :pswitch_22
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleFlashlight()V

    return-void

    :pswitch_23
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleSettingsPanel()V

    return-void

    :pswitch_24
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleNotificationsPanel()V

    return-void

    :pswitch_25
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    sget-object p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mLeoManager:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoManagerService(Ljava/lang/String;)V

    return-void

    :pswitch_26
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    sget-object p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mWIFIManager:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoComponetURL(Ljava/lang/String;)V

    return-void

    :pswitch_27
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    const-string p1, "partial_screenshot"

    invoke-static {v0, p1}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_28
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1, v5}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    return-void

    :pswitch_29
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    sget-object p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mVideoManager:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoComponetURL(Ljava/lang/String;)V

    return-void

    :pswitch_2a
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    sget-object p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mSearch:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoComponetURL(Ljava/lang/String;)V

    return-void

    :pswitch_2b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    return-void

    :pswitch_2c
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->toggleSPlitScreens()V

    return-void

    :pswitch_2d
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getRecentKeyEvent()V

    return-void

    :pswitch_2e
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->screenOff()V

    return-void

    :pswitch_2f
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->triggerVirtualKeypress(I)V

    return-void

    :pswitch_30
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->triggerVirtualKeypress(I)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->ClearMemory(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->WeChatScan(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->wakeUpDevice()V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, p2, v5}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->startAppsActivity(Ljava/lang/String;Z)V

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->getSaltPhoneWindowAction()Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->startAppsActivity(Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->mLeoGlobalService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "bGVvX2FjdGlvbg=="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "bGVvX2FwcA=="

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bGVvX3Byb2Nlc3NOYW1l"

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->SaltPhoneAction(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->updateNavBarHeight()V

    return-void

    :cond_1
    const-string p2, "U0FMVF9VUERBVEVfU1RLUF9TRVRUSU5HUw=="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SaltPhoneWindowReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSkipTracks:Lcom/android/server/policy/PhoneWindowManager$SkipTracks;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$SkipTracks;->updateSkipTracksOptions()V

    :cond_2
    return-void
.end method
