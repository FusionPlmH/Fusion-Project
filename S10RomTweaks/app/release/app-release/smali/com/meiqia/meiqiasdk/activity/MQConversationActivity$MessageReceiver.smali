.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;
.super Lcom/meiqia/meiqiasdk/controller/MessageReceiver;
.source "MQConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;


# direct methods
.method private constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method


# virtual methods
.method public addDirectAgentMessageTip(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addDirectAgentMessageTip(Ljava/lang/String;)V

    return-void
.end method

.method public blackAdd()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3002(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNoAgentState()V

    return-void
.end method

.method public blackDel()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3002(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    return-void
.end method

.method public changeTitleToInputting()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToInputting()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public inviteEvaluation()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/meiqia/meiqiasdk/controller/MessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public queueingInitConv()V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->removeQueue()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V

    return-void
.end method

.method public receiveNewMsg(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    return-void
.end method

.method public removeQueue()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method public setCurrentAgent(Lcom/meiqia/meiqiasdk/model/Agent;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    return-void
.end method

.method public setNewConversationId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1902(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public socketOpen()V
    .locals 0

    return-void
.end method

.method public updateAgentOnlineOfflineStatus()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method
