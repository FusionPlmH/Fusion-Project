.class public Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;
.super Landroid/app/AlertDialog;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/widget/DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogDialog"
.end annotation


# instance fields
.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->initLogDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initLogDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0c004f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f0901d5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    const p3, 0x7f090130

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iget-object p3, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    new-instance p3, Landroid/webkit/WebChromeClient;

    invoke-direct {p3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->clearFormData()V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object p3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;->webView:Landroid/webkit/WebView;

    new-instance p3, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogView$LogDialog;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
