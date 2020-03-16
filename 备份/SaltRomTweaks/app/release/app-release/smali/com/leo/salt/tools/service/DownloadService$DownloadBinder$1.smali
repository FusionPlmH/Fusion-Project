.class Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;
.super Lcom/leo/salt/down/callback/SimpleDownloadCallback;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$notifyId:I


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->this$1:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iput-object p2, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->val$notifyId:I

    invoke-direct {p0}, Lcom/leo/salt/down/callback/SimpleDownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/io/File;)V
    .locals 3

    iget v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->val$notifyId:I

    invoke-static {v0}, Lcom/leo/salt/tools/service/NotificationUtil;->cancelNotification(I)V

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->this$1:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->onDownloadFinish(Ljava/io/File;)V

    return-void
.end method

.method public onProgress(JJF)V
    .locals 6

    iget v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->val$notifyId:I

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/leo/salt/tools/service/NotificationUtil;->updateNotification(IJJF)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->onDownloadProgress(JJF)V

    return-void
.end method

.method public onStart(JJF)V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->this$1:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->val$name:Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;->val$notifyId:I

    const-string v3, "Leo ROM"

    const v4, 0x7f080081

    invoke-static {v0, v1, v3, v4, v2}, Lcom/leo/salt/tools/service/NotificationUtil;->createProgressNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->onDownloadStart(JJF)V

    return-void
.end method

.method public onWait()V
    .locals 0

    return-void
.end method
