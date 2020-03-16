.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->executeEvaluate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iput p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->val$level:I

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_evaluate_failure:I

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iget v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->val$level:I

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$18;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->addEvaluateMessageTip(ILjava/lang/String;)V

    return-void
.end method
