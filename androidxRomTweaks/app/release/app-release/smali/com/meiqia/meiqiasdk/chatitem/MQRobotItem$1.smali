.class Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;
.super Ljava/lang/Object;
.source "MQRobotItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addMenuItem(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->access$000(Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;)Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->val$text:Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->val$text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->access$000(Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;)Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    move-result-object p1

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;->onClickRobotMenuItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->access$000(Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;)Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;->val$text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;->onClickRobotMenuItem(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
