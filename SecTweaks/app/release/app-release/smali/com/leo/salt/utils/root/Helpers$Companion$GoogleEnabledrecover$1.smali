.class final Lcom/leo/salt/utils/root/Helpers$Companion$GoogleEnabledrecover$1;
.super Ljava/lang/Object;
.source "Helpers.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/root/Helpers$Companion;->GoogleEnabledrecover(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $mydialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/Helpers$Companion$GoogleEnabledrecover$1;->$mydialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "mount -o rw,remount /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk.bak /system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk.bak /system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk.bak /system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/CallLogBackup/CallLogBackup.apk.bak  /system/priv-app/CallLogBackup/CallLogBackup.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/ConfigUpdater/ConfigUpdater.apk.bak /system/priv-app/ConfigUpdater/ConfigUpdater.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GmsCore/GmsCore.apk.bak /system/priv-app/GmsCore/GmsCore.apk "

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk.bak /system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk.bak /system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk "

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GoogleLoginService/GoogleLoginService.apk.bak /system/priv-app/GoogleLoginService/GoogleLoginService.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk.bak /system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk.bak /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk "

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/GooglePlayServicesUpdater/GooglePlayServicesUpdater.apk.bak /system/priv-app/GooglePlayServicesUpdater/GooglePlayServicesUpdater.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /system/priv-app/Phonesky/Phonesky.apk.bak /system/priv-app/Phonesky/Phonesky.apk  "

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /data/app/com.android.vending/base.apk.bak /data/app/com.google.android.gms/base.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mv /data/app/com.google.android.gms/base.apk.bak /data/app/com.android.vending/base.apk"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sleep 5"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "reboot"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$GoogleEnabledrecover$1;->$mydialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method
