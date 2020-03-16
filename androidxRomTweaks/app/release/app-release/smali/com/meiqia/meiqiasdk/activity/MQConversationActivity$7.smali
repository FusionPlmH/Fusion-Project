.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "MQConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1100(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1000(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$7;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->access$1002(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method
