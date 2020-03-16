.class Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebviewclient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebviewclient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebviewclient;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "mqqwpa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebviewclient;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-virtual {p2, p1}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
