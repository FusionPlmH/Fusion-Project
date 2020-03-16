.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILjava/lang/String;)V
    .locals 0

    const/16 p1, 0x4e24

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_blacklist_tips:I

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addBlacklistTip(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x4e28

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/Agent;->isRobot()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2802(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)Lcom/meiqia/meiqiasdk/model/Agent;

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_allocate_queue_tip:I

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToQueue()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSuccess(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    const/16 p1, 0x4e1e

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addLeaveMessageTip()V

    :cond_0
    sget-boolean p1, Lcom/meiqia/meiqiasdk/util/MQConfig;->isSoundSwitchOpen:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$15;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$raw;->mq_send_message:I

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQSoundPoolManager;->playSound(I)V

    :cond_1
    return-void
.end method
