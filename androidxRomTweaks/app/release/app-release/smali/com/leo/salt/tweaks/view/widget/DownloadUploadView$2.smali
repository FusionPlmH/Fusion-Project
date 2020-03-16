.class Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;
.super Ljava/lang/Object;
.source "DownloadUploadView.java"

# interfaces
.implements Lcom/leo/download/provider/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->DownloadTwiceUpload(Landroid/content/Context;Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    const-string v0, "\u591a\u6761\u4e0b\u8f7d\u7ebf\u8def\u5931\u8d25\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->DownloadToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->access$000(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;)V

    return-void
.end method

.method public onFinish(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    const-string v1, "\u6210\u529f\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->DownloadToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->intDownload(Ljava/io/File;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->access$000(Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProgress(JJF)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->val$progressDialog:Landroid/app/ProgressDialog;

    float-to-int p2, p5

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method public onStart(JJF)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->this$0:Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;

    const-string p2, "\u6b63\u5728\u542f\u52a8\u4e0b\u8f7d"

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;->DownloadToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView$2;->val$progressDialog:Landroid/app/ProgressDialog;

    float-to-int p2, p5

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method public onWait()V
    .locals 0

    return-void
.end method
