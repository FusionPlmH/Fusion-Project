.class final Lcom/leo/service/plug/Utils$3;
.super Lcom/leo/service/plug/Utils$RestartSystemUITask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/service/plug/Utils;->showrestartDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic val$a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 715
    iput-object p3, p0, Lcom/leo/service/plug/Utils$3;->val$a:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/leo/service/plug/Utils$RestartSystemUITask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 715
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/Utils$3;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .registers 4

    const-wide/16 v0, 0x5dc

    .line 730
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_5

    .line 736
    :catch_5
    invoke-super {p0, p1}, Lcom/leo/service/plug/Utils$RestartSystemUITask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 715
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/service/plug/Utils$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 741
    invoke-super {p0, p1}, Lcom/leo/service/plug/Utils$RestartSystemUITask;->onPostExecute(Ljava/lang/Object;)V

    .line 742
    iget-object p1, p0, Lcom/leo/service/plug/Utils$3;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .line 719
    invoke-super {p0}, Lcom/leo/service/plug/Utils$RestartSystemUITask;->onPreExecute()V

    .line 720
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/service/plug/Utils$3;->val$a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/service/plug/Utils$3;->dialog:Landroid/app/ProgressDialog;

    .line 721
    iget-object v0, p0, Lcom/leo/service/plug/Utils$3;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/service/plug/Utils$3;->val$a:Landroid/content/Context;

    const-string v2, "execute_wait"

    invoke-static {v1, v2}, Lcom/leo/service/plug/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, p0, Lcom/leo/service/plug/Utils$3;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 723
    iget-object v0, p0, Lcom/leo/service/plug/Utils$3;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 724
    iget-object v0, p0, Lcom/leo/service/plug/Utils$3;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
