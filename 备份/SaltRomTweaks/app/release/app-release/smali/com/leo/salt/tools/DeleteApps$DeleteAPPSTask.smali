.class Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;
.super Landroid/os/AsyncTask;
.source "DeleteApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/DeleteApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAPPSTask"
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
.field appName:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/tools/DeleteApps;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tools/DeleteApps;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->uninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {p1}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->this$0:Lcom/leo/salt/tools/DeleteApps;

    invoke-static {v0}, Lcom/leo/salt/tools/DeleteApps;->access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
