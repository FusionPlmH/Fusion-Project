.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->onEvaluateRobotAnswer(Lcom/meiqia/meiqiasdk/model/RobotMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

.field final synthetic val$robotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

.field final synthetic val$useful:I


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/RobotMessage;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->val$robotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    iput p3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->val$useful:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_evaluate_failure:I

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->val$robotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->setAlreadyFeedback(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->val$useful:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_useless_redirect_tip:I

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;I)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/Agent;->getAvatar()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$19;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    move-result-object v1

    new-instance v2, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-direct {v2, p1, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->addMQMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    :cond_2
    return-void
.end method
