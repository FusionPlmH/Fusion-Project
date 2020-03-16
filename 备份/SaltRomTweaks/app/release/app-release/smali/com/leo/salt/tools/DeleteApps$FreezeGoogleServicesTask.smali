.class Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;
.super Landroid/os/AsyncTask;
.source "DeleteApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/DeleteApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeGoogleServicesTask"
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
.field FrozenStartup:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/leo/salt/tools/DeleteApps;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tools/DeleteApps;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->FrozenStartup:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "com.google.android.gsf.login"

    const-string v2, "com.google.android.syncadapters.contacts"

    const-string v3, "com.google.android.syncadapters.calendar"

    const-string v4, "com.google.android.partnersetup"

    const-string v5, "com.google.android.gsf"

    const-string v6, "com.google.android.backuptransport"

    const-string v7, "com.android.vending"

    const-string v8, "com.google.android.gms"

    const-string v9, "com.google.android.onetimeinitializer"

    const-string v10, "com.google.android.feedback"

    const-string v11, "com.google.android.configupdater"

    const-string v12, "com.google.android.tts"

    const-string v13, "com.google.android.apps.restore"

    iget-object v14, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    :try_start_0
    iget-boolean v15, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->FrozenStartup:Z

    move-object/from16 p1, v13

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x2

    :goto_0
    iget-object v13, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v0, v12}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v14, v12, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_1
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v12, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v12, v11}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v14, v11, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_2
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v11, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11, v10}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v10, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_3
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v10, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v9}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v14, v9, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_4
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v9, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9, v8}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v14, v8, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_5
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v8, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v7}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14, v7, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_6
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v7, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v6}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v6, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_7
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v6, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v5}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v14, v5, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_8
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v5, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v4}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v14, v4, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_9
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v4, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v14, v3, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_a
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v3, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v14, v2, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_b
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    move-object/from16 v3, v16

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v14, v3, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_c
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v14, v3, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_d
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    const-string v4, "com.google.android.apps.pdfviewer"

    invoke-virtual {v0, v2, v4}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v14, v3, v15, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_e
    const/4 v0, 0x1

    if-ne v15, v0, :cond_f

    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v0}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "freeze_yes"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "google_services"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_f
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v0}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "freeze_no"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "google_services"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {p1}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v0}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
