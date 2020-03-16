.class public Lcom/leo/salt/widget/WebDialog;
.super Landroid/app/AlertDialog$Builder;
.source "WebDialog.java"


# instance fields
.field private check:Landroid/support/v7/widget/AppCompatCheckBox;

.field private mDialog:Landroid/app/AlertDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p5}, Lcom/leo/salt/widget/WebDialog;->initWebDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/widget/WebDialog;)Landroid/support/v7/widget/AppCompatCheckBox;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/widget/WebDialog;->check:Landroid/support/v7/widget/AppCompatCheckBox;

    return-object p0
.end method

.method private initWebDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const v0, 0x7f0c0044

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v1, p0, Lcom/leo/salt/widget/WebDialog;->check:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {p0, v0}, Lcom/leo/salt/widget/WebDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p2}, Lcom/leo/salt/widget/WebDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0901c0

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    new-instance p2, Lcom/leo/salt/widget/WebDialog$1;

    invoke-direct {p2, p0, p1, p4, p5}, Lcom/leo/salt/widget/WebDialog$1;-><init>(Lcom/leo/salt/widget/WebDialog;Landroid/content/Context;Ljava/lang/String;Z)V

    const p3, 0x104000a

    invoke-virtual {p0, p3, p2}, Lcom/leo/salt/widget/WebDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "skipMessage"

    const-string p3, "NOT checked"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/widget/WebDialog;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/widget/WebDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string p2, "checked"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/widget/WebDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    :cond_0
    const-string p2, "checked"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/widget/WebDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_1
    return-void
.end method
