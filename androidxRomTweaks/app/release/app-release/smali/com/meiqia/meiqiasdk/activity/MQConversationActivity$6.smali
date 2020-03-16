.class Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;
.super Ljava/lang/Object;
.source "MQConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$contentRes:I


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iput p2, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;->val$contentRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;->this$0:Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    iget v1, p0, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity$6;->val$contentRes:I

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;->popTopTip(I)V

    return-void
.end method
