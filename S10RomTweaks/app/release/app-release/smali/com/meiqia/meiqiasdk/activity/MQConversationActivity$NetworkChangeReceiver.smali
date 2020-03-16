.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MQConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field private isFirstReceiveBroadcast:Z

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;


# direct methods
.method private constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->isFirstReceiveBroadcast:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->isFirstReceiveBroadcast:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object p2

    invoke-interface {p2}, Lcom/meiqia/meiqiasdk/controller/MQController;->getCurrentAgent()Lcom/meiqia/meiqiasdk/model/Agent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1800(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Lcom/meiqia/meiqiasdk/model/Agent;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->changeTitleToNetErrorState()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$4500(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$NetworkChangeReceiver;->isFirstReceiveBroadcast:Z

    :cond_2
    :goto_0
    return-void
.end method
