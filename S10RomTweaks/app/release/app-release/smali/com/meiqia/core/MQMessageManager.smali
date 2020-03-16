.class public Lcom/meiqia/core/MQMessageManager;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_AGENT_CHANGE_EVENT:Ljava/lang/String; = "agent_change_action"

.field public static final ACTION_AGENT_INPUTTING:Ljava/lang/String; = "agent_inputting_action"

.field public static final ACTION_AGENT_STATUS_UPDATE_EVENT:Ljava/lang/String; = "action_agent_status_update_event"

.field public static final ACTION_BLACK_ADD:Ljava/lang/String; = "action_black_add"

.field public static final ACTION_BLACK_DEL:Ljava/lang/String; = "action_black_del"

.field public static final ACTION_END_CONV_AGENT:Ljava/lang/String; = "end_conv_agent"

.field public static final ACTION_END_CONV_TIMEOUT:Ljava/lang/String; = "end_conv_timeout"

.field public static final ACTION_INVITE_EVALUATION:Ljava/lang/String; = "invite_evaluation"

.field public static final ACTION_NEW_MESSAGE_RECEIVED:Ljava/lang/String; = "new_msg_received_action"

.field public static final ACTION_QUEUEING_INIT_CONV:Ljava/lang/String; = "action_queueing_init_conv"

.field public static final ACTION_QUEUEING_REMOVE:Ljava/lang/String; = "action_queueing_remove"

.field public static final ACTION_SOCKET_OPEN:Ljava/lang/String; = "socket_open"

.field private static instance:Lcom/meiqia/core/MQMessageManager;


# instance fields
.field private cacheMQMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;"
        }
    .end annotation
.end field

.field private currentAgent:Lcom/meiqia/core/bean/MQAgent;

.field private preMsgId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/meiqia/core/MQMessageManager;->cacheMQMessageMap:Ljava/util/Map;

    const-string p1, ""

    iput-object p1, p0, Lcom/meiqia/core/MQMessageManager;->preMsgId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQMessageManager;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQMessageManager;->instance:Lcom/meiqia/core/MQMessageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/core/MQMessageManager;

    invoke-direct {v0, p0}, Lcom/meiqia/core/MQMessageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meiqia/core/MQMessageManager;->instance:Lcom/meiqia/core/MQMessageManager;

    :cond_0
    sget-object p0, Lcom/meiqia/core/MQMessageManager;->instance:Lcom/meiqia/core/MQMessageManager;

    return-object p0
.end method


# virtual methods
.method protected addMQMessage(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/MQMessageManager;->cacheMQMessageMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCurrentAgent()Lcom/meiqia/core/bean/MQAgent;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQMessageManager;->currentAgent:Lcom/meiqia/core/bean/MQAgent;

    return-object v0
.end method

.method public getMQMessage(Ljava/lang/String;)Lcom/meiqia/core/bean/MQMessage;
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/MQMessageManager;->cacheMQMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/core/bean/MQMessage;

    iget-object v1, p0, Lcom/meiqia/core/MQMessageManager;->preMsgId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/core/MQMessageManager;->cacheMQMessageMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/meiqia/core/MQMessageManager;->preMsgId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/meiqia/core/MQMessageManager;->preMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentAgent(Lcom/meiqia/core/bean/MQAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQMessageManager;->currentAgent:Lcom/meiqia/core/bean/MQAgent;

    return-void
.end method
