.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;
.super Ljava/lang/Object;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->refreshAuthCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/util/HttpUtils;->getInstance()Lcom/meiqia/meiqiasdk/util/HttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/HttpUtils;->getAuthCode()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    const-string v2, "captcha_image_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->access$602(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    const-string v2, "captcha_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->access$702(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$2;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$2;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    iget-object v1, v1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    new-instance v2, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$2;

    invoke-direct {v2, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$2;)V

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0
.end method
