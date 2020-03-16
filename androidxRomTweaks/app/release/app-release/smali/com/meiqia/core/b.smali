.class Lcom/meiqia/core/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnClientBindingCallback;
.implements Lcom/meiqia/core/callback/OnClientInfoCallback;
.implements Lcom/meiqia/core/callback/OnClientOnlineCallback;
.implements Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;
.implements Lcom/meiqia/core/callback/OnEndConversationCallback;
.implements Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;
.implements Lcom/meiqia/core/callback/OnFailureCallBack;
.implements Lcom/meiqia/core/callback/OnGetClientCallback;
.implements Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;
.implements Lcom/meiqia/core/callback/OnGetTrackIdCallback;
.implements Lcom/meiqia/core/callback/OnInitCallback;
.implements Lcom/meiqia/core/callback/OnMessageSendCallback;
.implements Lcom/meiqia/core/callback/OnProgressCallback;
.implements Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;
.implements Lcom/meiqia/core/callback/OnTicketCategoriesCallback;
.implements Lcom/meiqia/core/callback/SimpleCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public onSuccess(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/meiqia/core/bean/MQAgent;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0

    return-void
.end method

.method public onSuccess(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
