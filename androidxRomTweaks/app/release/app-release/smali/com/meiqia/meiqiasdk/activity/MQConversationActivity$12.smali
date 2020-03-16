.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->getMessageFromServiceAndLoad()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$2300(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$3300()I

    move-result v3

    new-instance v4, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12$1;

    invoke-direct {v4, p0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$12;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meiqia/meiqiasdk/controller/MQController;->getMessageFromService(JILcom/meiqia/meiqiasdk/callback/OnGetMessageListCallBack;)V

    return-void
.end method
