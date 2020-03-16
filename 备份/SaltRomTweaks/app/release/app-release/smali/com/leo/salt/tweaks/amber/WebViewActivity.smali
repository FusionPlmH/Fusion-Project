.class public Lcom/leo/salt/tweaks/amber/WebViewActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "WebView"


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;

.field private webViewTitle:Ljava/lang/String;

.field private webViewUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private getToolbarViews()V
    .locals 2

    const v0, 0x7f0901b0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method


# virtual methods
.method public https()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/leo/salt/tweaks/amber/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity$2;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected initAppBarLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initLayout()I
    .locals 1

    const v0, 0x7f0c002e

    return v0
.end method

.method public synthetic lambda$onCreate$0$WebViewActivity()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getToolbarViews()V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mContext:Landroid/app/Activity;

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mContext:Landroid/app/Activity;

    const-string v1, "load_http"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0901d4

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewTitle:Ljava/lang/String;

    const v2, 0x7f0901d3

    invoke-virtual {p0, v2}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/leo/salt/tweaks/amber/-$$Lambda$WebViewActivity$6m0aIFN0vwdhHUtr_3xBWZqWxLM;

    invoke-direct {v3, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$WebViewActivity$6m0aIFN0vwdhHUtr_3xBWZqWxLM;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-static {p0}, Lcom/leo/salt/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->https()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;Lcom/leo/salt/tweaks/amber/WebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1

    :cond_2
    const-string p1, "WebView"

    const-string v0, "webView is null, please check..."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f090016

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->openLink()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public openLink()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
