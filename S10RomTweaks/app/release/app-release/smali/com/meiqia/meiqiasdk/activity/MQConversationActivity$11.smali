.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;
.super Lcom/meiqia/core/callback/SuccessCallback;
.source "MQConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->checkIfNeedUpdateClient(Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

.field final synthetic val$onFinishCallback:Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;->val$onFinishCallback:Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;

    invoke-direct {p0}, Lcom/meiqia/core/callback/SuccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;->val$onFinishCallback:Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;->onFinish()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$11;->val$onFinishCallback:Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;->onFinish()V

    return-void
.end method
