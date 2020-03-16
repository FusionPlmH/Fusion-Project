.class Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->onSuccess(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    iget v1, v1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->isLastItemAndVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->scrollContentToBottom()V

    :cond_0
    return-void
.end method
