.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getMessageDataFromDatabaseAndLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/meiqia/core/bean/MQEnterpriseConfig;->scheduler_after_client_send_msg:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ent_welcome_message:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    new-instance v0, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>()V

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3402(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAvatar(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/meiqia/core/bean/MQEnterpriseConfig;->public_nickname:Ljava/lang/String;

    const-string v0, "null"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_title_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setAgentNickname(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ent_welcome_message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setContent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setItemViewType(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    const-string v0, "arrived"

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->setId(J)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$13;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/BaseMessage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    :cond_2
    return-void
.end method
