.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->getMessageFromService(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$onGetMessageListCallBack:Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;->val$onGetMessageListCallBack:Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;->val$onGetMessageListCallBack:Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->parseMQMessageToChatBaseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$3;->val$onGetMessageListCallBack:Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
