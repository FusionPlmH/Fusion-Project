.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getClientPositionInQueue()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$14;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Z)V

    :goto_0
    return-void
.end method
