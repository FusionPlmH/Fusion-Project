.class Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;
.super Ljava/lang/Object;
.source "PermissionUnlock.java"

# interfaces
.implements Lcom/leo/salt/down/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/amber/PermissionUnlock;->DownloadDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$100(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$200(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    const v2, 0x7f10016b

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$100(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$200(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    const v1, 0x7f10016c

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFinish(Ljava/io/File;)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$100(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$200(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    const v1, 0x7f10016d

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Unlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->OTADownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Unlock.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->showUnlockDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProgress(JJF)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$100(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$200(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    const p3, 0x7f100170

    invoke-virtual {p2, p3}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;

    move-result-object p1

    float-to-int p2, p5

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$300(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart(JJF)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$100(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$200(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    const p3, 0x7f10016f

    invoke-virtual {p2, p3}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$000(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/ProgressBar;

    move-result-object p1

    float-to-int p2, p5

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/PermissionUnlock$1;->this$0:Lcom/leo/salt/tweaks/amber/PermissionUnlock;

    invoke-static {p1}, Lcom/leo/salt/tweaks/amber/PermissionUnlock;->access$300(Lcom/leo/salt/tweaks/amber/PermissionUnlock;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWait()V
    .locals 0

    return-void
.end method
