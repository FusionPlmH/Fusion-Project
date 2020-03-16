.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$5;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->setListeners()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    sget-boolean v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->isLoadMessagesFromNativeOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$600(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$700(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)V

    :goto_0
    return-void
.end method
