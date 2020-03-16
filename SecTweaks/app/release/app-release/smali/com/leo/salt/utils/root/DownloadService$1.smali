.class Lcom/leo/salt/utils/root/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/leo/salt/utils/root/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/root/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Loaddialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/leo/salt/utils/root/DownloadService;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/root/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Startupdate()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/utils/root/DownloadService$1;->Startupdateprompt()V

    return-void
.end method

.method public Startupdateprompt()V
    .locals 7

    new-instance v6, Lcom/leo/salt/utils/root/DownloadService$1$1;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/leo/salt/utils/root/DownloadService$1$1;-><init>(Lcom/leo/salt/utils/root/DownloadService$1;JJ)V

    invoke-virtual {v6}, Lcom/leo/salt/utils/root/DownloadService$1$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public main()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/leo/salt/utils/Constants;->OTAURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LeoGlobal_V8.1.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/leo/salt/utils/Constants;->OTApath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/leo/salt/utils/Constants;->OTAURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Hitomi_OTA_V6.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/leo/salt/utils/Constants;->OTApath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public onCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leo/salt/utils/root/DownloadService;->access$202(Lcom/leo/salt/utils/root/DownloadService;Lcom/leo/salt/utils/root/DownloadTask;)Lcom/leo/salt/utils/root/DownloadTask;

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/root/DownloadService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onFailed()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leo/salt/utils/root/DownloadService;->access$202(Lcom/leo/salt/utils/root/DownloadService;Lcom/leo/salt/utils/root/DownloadTask;)Lcom/leo/salt/utils/root/DownloadTask;

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/root/DownloadService;->stopForeground(Z)V

    iget-object v1, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-static {v1}, Lcom/leo/salt/utils/root/DownloadService;->access$100(Lcom/leo/salt/utils/root/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v4, -0x1

    invoke-static {v3, v0, v4}, Lcom/leo/salt/utils/root/DownloadService;->access$000(Lcom/leo/salt/utils/root/DownloadService;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v2}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100e0

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/leo/salt/utils/root/DownloadService$1$2;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/root/DownloadService$1$2;-><init>(Lcom/leo/salt/utils/root/DownloadService$1;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public onPaused()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leo/salt/utils/root/DownloadService;->access$202(Lcom/leo/salt/utils/root/DownloadService;Lcom/leo/salt/utils/root/DownloadTask;)Lcom/leo/salt/utils/root/DownloadTask;

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onProgress(I)V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-static {v0}, Lcom/leo/salt/utils/root/DownloadService;->access$100(Lcom/leo/salt/utils/root/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v3}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getRomName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/leo/salt/utils/root/DownloadService;->access$000(Lcom/leo/salt/utils/root/DownloadService;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leo/salt/utils/root/DownloadService;->access$202(Lcom/leo/salt/utils/root/DownloadService;Lcom/leo/salt/utils/root/DownloadTask;)Lcom/leo/salt/utils/root/DownloadTask;

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/root/DownloadService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-static {v0}, Lcom/leo/salt/utils/root/DownloadService;->access$100(Lcom/leo/salt/utils/root/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v2}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/leo/salt/utils/root/DownloadService;->access$000(Lcom/leo/salt/utils/root/DownloadService;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/leo/salt/utils/root/DownloadService$1;->main()V

    invoke-virtual {p0}, Lcom/leo/salt/utils/root/DownloadService$1;->Startupdate()V

    return-void
.end method
