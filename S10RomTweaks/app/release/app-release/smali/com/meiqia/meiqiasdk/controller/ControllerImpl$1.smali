.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->sendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$message:Lcom/meiqia/meiqiasdk/model/BaseMessage;

.field final synthetic val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$message:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$message:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQMessageIntoBaseMessage(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$message:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-interface {p1, v0, p2, p3}, Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$message:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQMessageIntoBaseMessage(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$1;->val$message:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-interface {p1, v0, p2}, Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;->onSuccess(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V

    :cond_0
    return-void
.end method
