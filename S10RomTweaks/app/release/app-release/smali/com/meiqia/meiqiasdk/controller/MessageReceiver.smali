.class public abstract Lcom/meiqia/meiqiasdk/controller/MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReceiver.java"


# instance fields
.field private mConversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDirectAgentMessageTip(Ljava/lang/String;)V
.end method

.method public abstract blackAdd()V
.end method

.method public abstract blackDel()V
.end method

.method public abstract changeTitleToInputting()V
.end method

.method public abstract inviteEvaluation()V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/meiqia/core/MQMessageManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQMessageManager;

    move-result-object p1

    const-string v1, "new_msg_received_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "msgId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meiqia/core/MQMessageManager;->getMQMessage(Ljava/lang/String;)Lcom/meiqia/core/bean/MQMessage;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQMessageToBaseMessage(Lcom/meiqia/core/bean/MQMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->receiveNewMsg(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "agent_inputting_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->changeTitleToInputting()V

    goto/16 :goto_0

    :cond_1
    const-string v1, "agent_change_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "conversation_id"

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/meiqia/core/MQMessageManager;->getCurrentAgent()Lcom/meiqia/core/bean/MQAgent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "client_is_redirected"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->addDirectAgentMessageTip(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQAgentToAgent(Lcom/meiqia/core/bean/MQAgent;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->mConversationId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->setNewConversationId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "invite_evaluation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->inviteEvaluation()V

    goto :goto_0

    :cond_4
    const-string p1, "action_agent_status_update_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->updateAgentOnlineOfflineStatus()V

    goto :goto_0

    :cond_5
    const-string p1, "action_black_add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->blackAdd()V

    goto :goto_0

    :cond_6
    const-string p1, "action_black_del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->blackDel()V

    goto :goto_0

    :cond_7
    const-string p1, "action_queueing_remove"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->removeQueue()V

    goto :goto_0

    :cond_8
    const-string p1, "action_queueing_init_conv"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->queueingInitConv()V

    goto :goto_0

    :cond_9
    const-string p1, "socket_open"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->socketOpen()V

    :cond_a
    :goto_0
    return-void
.end method

.method public abstract queueingInitConv()V
.end method

.method public abstract receiveNewMsg(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
.end method

.method public abstract removeQueue()V
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public abstract setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V
.end method

.method public abstract setNewConversationId(Ljava/lang/String;)V
.end method

.method public abstract socketOpen()V
.end method

.method public abstract updateAgentOnlineOfflineStatus()V
.end method
