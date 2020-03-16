.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnClientOnlineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setClientOnline(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

.field final synthetic val$isForceRedirectHuman:Z


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iput-boolean p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->val$isForceRedirectHuman:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1702(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    const/4 v0, 0x1

    const/16 v2, 0x4e1e

    const/16 v3, 0x4e1f

    if-ne v3, p1, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNetErrorState()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-ne v2, p1, :cond_2

    iget-boolean p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->val$isForceRedirectHuman:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2, v3}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x4e24

    if-ne v4, p1, :cond_3

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2, v3}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3002(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    goto :goto_0

    :cond_3
    const/16 v3, 0x4e2a

    if-ne v3, p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToUnknownErrorState()V

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nmessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    :cond_5
    if-ne v2, p1, :cond_6

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    :cond_6
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2702(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    return-void
.end method

.method public onSuccess(Lcom/meiqia/meiqiasdk/model/Agent;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/meiqiasdk/model/Agent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1702(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1902(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->setConversationId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2, p3}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Ljava/util/List;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->val$isForceRedirectHuman:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-virtual {p2}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "welcome"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;

    invoke-direct {p2}, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;-><init>()V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/Agent;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;->setAgentNickname(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/controller/MQController;->getIsWaitingInQueue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2400(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToQueue()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    :goto_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$10;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2702(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)Z

    return-void
.end method
