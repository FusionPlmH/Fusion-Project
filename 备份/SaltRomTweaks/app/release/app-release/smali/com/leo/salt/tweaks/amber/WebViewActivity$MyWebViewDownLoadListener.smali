.class Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;Lcom/leo/salt/tweaks/amber/WebViewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;-><init>(Lcom/leo/salt/tweaks/amber/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/leo/salt/tweaks/amber/WebViewActivity$MyWebViewDownLoadListener;->this$0:Lcom/leo/salt/tweaks/amber/WebViewActivity;

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/amber/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
