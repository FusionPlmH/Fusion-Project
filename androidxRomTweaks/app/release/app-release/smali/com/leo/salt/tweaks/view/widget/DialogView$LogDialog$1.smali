.class Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;
.super Landroid/webkit/WebChromeClient;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->initLogDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;

.field final synthetic val$mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;->val$mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;->val$mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;->val$mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;->val$mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
