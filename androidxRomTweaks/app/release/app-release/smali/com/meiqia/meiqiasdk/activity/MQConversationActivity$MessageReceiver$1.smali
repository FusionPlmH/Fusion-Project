.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver$1;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->changeTitleToInputting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    iget-object v0, v0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;

    iget-object v1, v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$MessageReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    return-void
.end method
