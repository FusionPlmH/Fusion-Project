.class public Lcom/leo/salt/tweaks/amber/WebViewActivity;
.super Lcom/leo/salt/tweaks/base/BaseActivity;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebviewclient;,
        Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "WebView"


# instance fields
.field private mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private progressDialog:Landroid/widget/ProgressBar;

.field private webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

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

.method static synthetic access$100(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->progressDialog:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/tweaks/amber/WebViewActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method private getToolbarViews()V
    .locals 2

    const v0, 0x7f090225

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

.method private initWebView()V
    .locals 7

    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->progressDialog:Landroid/widget/ProgressBar;

    const v0, 0x7f090266

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewTitle:Ljava/lang/String;

    const v3, 0x7f090265

    invoke-virtual {p0, v3}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    iput-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/leo/salt/tweaks/amber/-$$Lambda$WebViewActivity$zy6bSqdJbnhBvjZMIlJ3TXqv-Ls;

    invoke-direct {v4, p0}, Lcom/leo/salt/tweaks/amber/-$$Lambda$WebViewActivity$zy6bSqdJbnhBvjZMIlJ3TXqv-Ls;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v2}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v4}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-static {p0}, Lcom/leo/salt/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v3}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->newWin(Landroid/webkit/WebSettings;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    new-instance v2, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity$1;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    new-instance v2, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;Lcom/leo/salt/tweaks/amber/WebViewActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    new-instance v2, Lcom/leo/salt/tweaks/amber/WebViewActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/amber/WebViewActivity$2;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1

    :cond_2
    const-string v0, "WebView"

    const-string v1, "webView is null, please check..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private newWin(Landroid/webkit/WebSettings;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method


# virtual methods
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

.method public synthetic lambda$initWebView$0$WebViewActivity()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->requestFocus()Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->goBack()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->getToolbarViews()V

    iput-object p0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mContext:Landroid/app/Activity;

    const p1, 0x7f090202

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    const/16 v1, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewEndTarget(ZI)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->mSwipeLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->initWebView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f06002d
        0x7f0600de
        0x7f0600be
        0x7f0600bd
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->destroy()V

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
    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->goBack()V

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

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->onPause()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->reload()V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->initWebView()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity;->webView:Lcom/leo/salt/tweaks/view/widget/LeoWebView;

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/LeoWebView;->onResume()V

    return-void
.end method
