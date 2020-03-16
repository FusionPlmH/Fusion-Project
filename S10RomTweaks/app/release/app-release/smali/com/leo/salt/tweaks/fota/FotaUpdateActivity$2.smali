.class Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;
.super Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;
.source "FotaUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;->showLoadDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;

.field final synthetic val$a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->this$0:Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;

    iput-object p3, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->val$a:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance p1, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2$1;-><init>(Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$HttpNetworkRequestTask;->onPreExecute()V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->val$a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->dialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->dialog:Landroid/app/ProgressDialog;

    const v1, 0x7f10011a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaUpdateActivity$2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
