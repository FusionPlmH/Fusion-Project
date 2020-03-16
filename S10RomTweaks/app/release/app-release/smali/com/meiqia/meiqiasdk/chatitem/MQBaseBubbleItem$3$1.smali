.class Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->onSuccess(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->getCurrentDownloadingItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    iget v1, v1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->val$position:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    iget-object v1, v1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    iget v2, v2, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->startPlayVoiceAndRefreshList(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    :cond_0
    return-void
.end method
