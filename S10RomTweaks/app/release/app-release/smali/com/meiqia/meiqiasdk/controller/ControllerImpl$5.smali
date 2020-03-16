.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnClientOnlineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->setCurrentClientOnline(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$onClientOnlineCallback:Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;->val$onClientOnlineCallback:Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;->val$onClientOnlineCallback:Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/meiqia/core/bean/MQAgent;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQAgent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQAgentToAgent(Lcom/meiqia/core/bean/MQAgent;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object p1

    invoke-static {p3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQMessageToChatBaseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$5;->val$onClientOnlineCallback:Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;->onSuccess(Lcom/meiqia/meiqiasdk/model/Agent;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
