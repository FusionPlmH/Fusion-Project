.class Lcom/leo/salt/tweaks/amber/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/amber/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

.field final synthetic val$webViewBar:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    iput-object p2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->val$webViewBar:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->access$100(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->access$100(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->access$100(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->access$100(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;->val$webViewBar:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
