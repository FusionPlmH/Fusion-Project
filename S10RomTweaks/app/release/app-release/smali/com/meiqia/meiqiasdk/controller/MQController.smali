.class public interface abstract Lcom/meiqia/meiqiasdk/controller/MQController;
.super Ljava/lang/Object;
.source "MQController.java"


# static fields
.field public static final ACTION_AGENT_INPUTTING:Ljava/lang/String; = "agent_inputting_action"

.field public static final ACTION_AGENT_STATUS_UPDATE_EVENT:Ljava/lang/String; = "action_agent_status_update_event"

.field public static final ACTION_BLACK_ADD:Ljava/lang/String; = "action_black_add"

.field public static final ACTION_BLACK_DEL:Ljava/lang/String; = "action_black_del"

.field public static final ACTION_CLIENT_IS_REDIRECTED_EVENT:Ljava/lang/String; = "agent_change_action"

.field public static final ACTION_INVITE_EVALUATION:Ljava/lang/String; = "invite_evaluation"

.field public static final ACTION_NEW_MESSAGE_RECEIVED:Ljava/lang/String; = "new_msg_received_action"

.field public static final ACTION_QUEUEING_INIT_CONV:Ljava/lang/String; = "action_queueing_init_conv"

.field public static final ACTION_QUEUEING_REMOVE:Ljava/lang/String; = "action_queueing_remove"


# virtual methods
.method public abstract cancelDownload(Ljava/lang/String;)V
.end method

.method public abstract closeService()V
.end method

.method public abstract downloadFile(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;)V
.end method

.method public abstract evaluateRobotAnswer(JJILcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V
.end method

.method public abstract executeEvaluate(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
.end method

.method public abstract getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
.end method

.method public abstract getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;
.end method

.method public abstract getCurrentClientId()Ljava/lang/String;
.end method

.method public abstract getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;
.end method

.method public abstract getIsWaitingInQueue()Z
.end method

.method public abstract getMessageFromService(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V
.end method

.method public abstract getMessagesFromDatabase(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V
.end method

.method public abstract onConversationClose()V
.end method

.method public abstract onConversationOpen()V
.end method

.method public abstract openService()V
.end method

.method public abstract refreshEnterpriseConfig(Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
.end method

.method public abstract resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
.end method

.method public abstract saveConversationLastMessageTime(J)V
.end method

.method public abstract saveConversationOnStopTime(J)V
.end method

.method public abstract sendClientInputtingWithContent(Ljava/lang/String;)V
.end method

.method public abstract sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
.end method

.method public abstract setClientInfo(Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
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
.end method

.method public abstract setCurrentClientOnline(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;)V
.end method

.method public abstract setForceRedirectHuman(Z)V
.end method

.method public abstract submitMessageForm(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
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
.end method

.method public abstract updateClientInfo(Ljava/util/Map;Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V
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
.end method

.method public abstract updateMessage(JZ)V
.end method
