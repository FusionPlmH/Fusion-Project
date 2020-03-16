.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

.field final synthetic val$preId:J


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

    iput-wide p3, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->val$preId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p1

    iget-wide p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->val$preId:J

    invoke-virtual {p1, p2, p3}, Lcom/meiqia/core/MQManager;->deleteMessage(J)V

    return-void
.end method

.method public onSuccess(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->val$onMessageSendCallback:Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;->onSuccess(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$2;->val$preId:J

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/MQManager;->deleteMessage(J)V

    return-void
.end method
