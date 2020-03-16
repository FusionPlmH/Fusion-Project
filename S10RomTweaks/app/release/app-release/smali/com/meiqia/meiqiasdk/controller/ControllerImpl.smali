.class public Lcom/meiqia/meiqiasdk/controller/ControllerImpl;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/controller/MQController;


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQManager;->cancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method public closeService()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->closeMeiqiaService()V

    return-void
.end method

.method public downloadFile(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;)V
    .locals 2

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseBaseMessageToMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/core/bean/MQMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/MQManager;->downloadFile(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnProgressCallback;)V

    return-void
.end method

.method public evaluateRobotAnswer(JJILcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v1

    new-instance v7, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;

    invoke-direct {v7, p0, p6}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$12;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/meiqia/core/MQManager;->evaluateRobotAnswer(JJILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V

    return-void
.end method

.method public executeEvaluate(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$8;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$8;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/MQManager;->executeEvaluate(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V

    return-void
.end method

.method public getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getCurrentAgent()Lcom/meiqia/core/bean/MQAgent;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQAgentToAgent(Lcom/meiqia/core/bean/MQAgent;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getCurrentClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method public getIsWaitingInQueue()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getIsWaitingInQueue()Z

    move-result v0

    return v0
.end method

.method public getMessageFromService(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/MQManager;->getMQMessageFromService(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public getMessagesFromDatabase(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$4;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$4;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/MQManager;->getMQMessageFromDatabase(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public onConversationClose()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->onConversationClose()V

    return-void
.end method

.method public onConversationOpen()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->onConversationOpen()V

    return-void
.end method

.method public openService()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->openMeiqiaService()V

    return-void
.end method

.method public refreshEnterpriseConfig(Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$11;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$11;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->refreshEnterpriseConfig(Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
    .locals 3

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;J)V

    invoke-virtual {p0, p1, v2}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public saveConversationLastMessageTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/MQManager;->saveConversationLastMessageTime(J)V

    return-void
.end method

.method public saveConversationOnStopTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/MQManager;->saveConversationOnStopTime(J)V

    return-void
.end method

.method public sendClientInputtingWithContent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQManager;->sendClientInputtingWithContent(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
    .locals 2

    new-instance v0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "text"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/meiqia/core/MQManager;->sendMQTextMessage(Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "photo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    check-cast p1, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/meiqia/core/MQManager;->sendMQPhotoMessage(Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "audio"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    check-cast p1, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/meiqia/core/MQManager;->sendMQVoiceMessage(Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setClientInfo(Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/meiqiasdk/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$6;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$6;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/MQManager;->setClientInfo(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method public setCurrentClientOnline(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;)V
    .locals 1

    new-instance v0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;

    invoke-direct {v0, p0, p3}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/meiqia/core/MQManager;->setClientOnlineWithClientId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/meiqia/core/MQManager;->setClientOnlineWithCustomizedId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/meiqia/core/MQManager;->setCurrentClientOnline(Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    :goto_0
    return-void
.end method

.method public setForceRedirectHuman(Z)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQManager;->setForceRedirectHuman(Z)V

    return-void
.end method

.method public submitMessageForm(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/meiqiasdk/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$10;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$10;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/MQManager;->submitMessageForm(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public updateClientInfo(Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/meiqiasdk/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$7;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$7;-><init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/MQManager;->updateClientInfo(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method public updateMessage(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/meiqia/core/MQManager;->updateMessage(JZ)V

    return-void
.end method
