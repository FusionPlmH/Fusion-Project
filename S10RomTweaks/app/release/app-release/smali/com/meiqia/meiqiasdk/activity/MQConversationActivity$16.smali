.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->resendMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILjava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p3, p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V

    return-void
.end method

.method public onSuccess(Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3900(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/BaseMessage;I)V

    const/16 p1, 0x4e1e

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$16;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addLeaveMessageTip()V

    :cond_0
    return-void
.end method
