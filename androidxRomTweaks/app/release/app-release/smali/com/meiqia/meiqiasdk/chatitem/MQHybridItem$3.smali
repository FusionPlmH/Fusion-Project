.class Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;
.super Ljava/lang/Object;
.source "MQHybridItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->addPhotoCardView(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;

.field final synthetic val$target_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;->val$target_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;->val$target_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_title_unknown_error:I

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
