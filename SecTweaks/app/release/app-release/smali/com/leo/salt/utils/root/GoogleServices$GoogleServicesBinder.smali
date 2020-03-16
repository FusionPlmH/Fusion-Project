.class public Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;
.super Landroid/os/Binder;
.source "GoogleServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/root/GoogleServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoogleServicesBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/root/GoogleServices;


# direct methods
.method public constructor <init>(Lcom/leo/salt/utils/root/GoogleServices;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/DownloadTask;->cancelDownload()V

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$300(Lcom/leo/salt/utils/root/GoogleServices;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$300(Lcom/leo/salt/utils/root/GoogleServices;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v1}, Lcom/leo/salt/utils/root/GoogleServices;->access$300(Lcom/leo/salt/utils/root/GoogleServices;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$100(Lcom/leo/salt/utils/root/GoogleServices;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/root/GoogleServices;->stopForeground(Z)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    const-string v1, "\u5df2\u7ecf\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public pauseDownload()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/DownloadTask;->pauseDownload()V

    :cond_0
    return-void
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v0, p1}, Lcom/leo/salt/utils/root/GoogleServices;->access$302(Lcom/leo/salt/utils/root/GoogleServices;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    new-instance v0, Lcom/leo/salt/utils/root/DownloadTask;

    invoke-static {p1}, Lcom/leo/salt/utils/root/GoogleServices;->access$400(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/utils/root/DownloadTask;-><init>(Lcom/leo/salt/utils/root/DownloadListener;)V

    invoke-static {p1, v0}, Lcom/leo/salt/utils/root/GoogleServices;->access$202(Lcom/leo/salt/utils/root/GoogleServices;Lcom/leo/salt/utils/root/DownloadTask;)Lcom/leo/salt/utils/root/DownloadTask;

    iget-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {p1}, Lcom/leo/salt/utils/root/GoogleServices;->access$200(Lcom/leo/salt/utils/root/GoogleServices;)Lcom/leo/salt/utils/root/DownloadTask;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-static {v2}, Lcom/leo/salt/utils/root/GoogleServices;->access$300(Lcom/leo/salt/utils/root/GoogleServices;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/leo/salt/utils/root/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;->this$0:Lcom/leo/salt/utils/root/GoogleServices;

    invoke-virtual {p1}, Lcom/leo/salt/utils/root/GoogleServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lcom/leo/salt/utils/root/GoogleServices;->access$000(Lcom/leo/salt/utils/root/GoogleServices;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/leo/salt/utils/root/GoogleServices;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
