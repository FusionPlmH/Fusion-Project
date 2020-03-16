.class Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;
.super Landroid/os/AsyncTask;
.source "DeleteApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/DeleteApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteGoogleServicesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/DeleteApps;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tools/DeleteApps;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/app/GoogleContactsSyncAdapter"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/app/GoogleCalendarSyncAdapter"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/app/GooglePrintRecommendationService"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/app/ChromeCustomizations"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/app/Chrome"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/CallLogBackup"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/ConfigUpdater"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GmsCore"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GoogleBackupTransport"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GoogleOneTimeInitializer"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GoogleLoginService"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GooglePartnerSetup"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GoogleServicesFramework"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GoogleRestore"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GooglePlayServicesUpdater"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/Phonesky/Phonesky.apk"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/GoogleFeedback"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/priv-app/Velvet"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/preload/GoogleCalendarSyncAdapter"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "system/preload/GoogleContactsSyncAdapter"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/app/com.android.vending"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/app/com.google.android.syncadapters.calendar*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/app/com.google.android.syncadapters.contacts*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.tts*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.configupdater*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.feedback*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.onetimeinitializer*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.gms*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.android.vending*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.backuptransport*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.gsf*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.partnersetup*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.syncadapters.calendar*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.syncadapters.contacts*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.gsf.login*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.apps.restore*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    const-string v0, "data/data/com.google.android.apps.pdfviewer*"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v0, "sleep 2s"

    invoke-virtual {p1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "G97"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "reboot recovery"

    goto :goto_0

    :cond_0
    const-string p1, "reboot"

    :goto_0
    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {p1}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v0}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
