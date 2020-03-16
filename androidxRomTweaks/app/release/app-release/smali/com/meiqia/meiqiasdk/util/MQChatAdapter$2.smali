.class Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;
.super Ljava/lang/Object;
.source "MQChatAdapter.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->downloadAndNotifyDataSetChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

.field final synthetic val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;Lcom/meiqia/meiqiasdk/model/VoiceMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->setVoiceMessageDuration(Lcom/meiqia/meiqiasdk/model/VoiceMessage;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->access$100(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$2;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->access$000(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
