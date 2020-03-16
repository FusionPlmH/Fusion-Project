.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$onClientPositionInQueueCallback:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;->val$onClientPositionInQueueCallback:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;->val$onClientPositionInQueueCallback:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$13;->val$onClientPositionInQueueCallback:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;->onSuccess(I)V

    :cond_0
    return-void
.end method
