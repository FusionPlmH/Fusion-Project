.class Lcom/leo/salt/utils/root/DownloadService$1$1;
.super Landroid/os/CountDownTimer;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/root/DownloadService$1;->Startupdateprompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/utils/root/DownloadService$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/root/DownloadService$1;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, v0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v2}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v1, v1, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v1}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/utils/root/DownloadService$1$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/root/DownloadService$1$1$1;-><init>(Lcom/leo/salt/utils/root/DownloadService$1$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->Loaddialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v0, v0, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v0}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object v2, v2, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {v2}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double p1, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/leo/salt/utils/root/DownloadService$1$1;->this$1:Lcom/leo/salt/utils/root/DownloadService$1;

    iget-object p1, p1, Lcom/leo/salt/utils/root/DownloadService$1;->this$0:Lcom/leo/salt/utils/root/DownloadService;

    invoke-virtual {p1}, Lcom/leo/salt/utils/root/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100374

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
