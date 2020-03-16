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
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "com.google.android.gsf.login"

    const-string v2, "com.google.android.syncadapters.contacts"

    const-string v3, "com.google.android.syncadapters.calendar"

    const-string v4, "com.google.android.partnersetup"

    const-string v5, "com.google.android.gsf"

    const-string v6, "com.google.android.backuptransport"

    const-string v7, "com.android.vending"

    const-string v8, "com.google.android.gms"

    const-string v9, "com.google.android.feedback"

    const-string v10, "com.google.android.tts"

    const-string v11, "com.google.android.apps.restore"

    iget-object v12, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    :try_start_0
    iget-boolean v13, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->FrozenStartup:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    :goto_0
    iget-object v15, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v14, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v14, v10}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_1

    invoke-virtual {v12, v10, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_1
    iget-object v10, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v14, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v14, v9}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v12, v9, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_2
    iget-object v9, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v10, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v8}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v12, v8, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_3
    iget-object v8, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v9, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v12, v7, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_4
    iget-object v7, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v8, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v12, v6, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_5
    iget-object v6, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v7, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v12, v5, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_6
    iget-object v5, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v6, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v12, v4, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_7
    iget-object v4, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v5, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12, v3, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_8
    iget-object v3, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v4, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v12, v2, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_9
    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v3, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v12, v0, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_a
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v11}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v12, v11, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_b
    iget-object v0, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->mContext:Landroid/content/Context;

    const-string v3, "com.google.android.apps.pdfviewer"

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v12, v11, v13, v15}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    const-string v0, "google_services"

    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    :try_start_1
    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v2}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "freeze_yes"

    invoke-static {v4, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    iget-object v2, v1, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v2}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "freeze_no"

    invoke-static {v4, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

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
