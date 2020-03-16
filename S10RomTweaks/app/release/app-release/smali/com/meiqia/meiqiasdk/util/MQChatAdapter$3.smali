.class Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;
.super Ljava/lang/Object;
.source "MQChatAdapter.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->startPlayVoiceAndRefreshList(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->access$202(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;I)I

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->access$202(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;I)I

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$3;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method
