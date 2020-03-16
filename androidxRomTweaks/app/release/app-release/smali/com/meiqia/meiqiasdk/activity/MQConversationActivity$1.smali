.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;
.super Landroid/os/Handler;
.source "MQConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->init()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    :cond_0
    return-void
.end method
