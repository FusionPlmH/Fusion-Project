.class Lcom/leo/salt/activity/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/leo/salt/activity/WebViewActivity$1;->this$0:Lcom/leo/salt/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/activity/WebViewActivity$1;->this$0:Lcom/leo/salt/activity/WebViewActivity;

    invoke-static {v0}, Lcom/leo/salt/activity/WebViewActivity;->access$000(Lcom/leo/salt/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/activity/WebViewActivity$1;->this$0:Lcom/leo/salt/activity/WebViewActivity;

    invoke-static {v0}, Lcom/leo/salt/activity/WebViewActivity;->access$000(Lcom/leo/salt/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method
