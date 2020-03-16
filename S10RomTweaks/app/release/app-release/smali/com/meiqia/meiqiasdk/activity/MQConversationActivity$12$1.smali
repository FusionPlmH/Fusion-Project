.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12$1;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/model/BaseMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3200(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method
