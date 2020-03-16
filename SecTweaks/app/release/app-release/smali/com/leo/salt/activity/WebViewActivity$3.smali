.class Lcom/leo/salt/activity/WebViewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/activity/WebViewActivity;->https()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/activity/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/activity/WebViewActivity$3;->this$0:Lcom/leo/salt/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
