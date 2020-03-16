.class Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->downloadAndPlayVoice(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

.field final synthetic val$position:I

.field final synthetic val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    iput p3, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_download_audio_failure:I

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;I)V

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->setVoiceMessageDuration(Lcom/meiqia/meiqiasdk/model/VoiceMessage;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    new-instance v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;)V

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
