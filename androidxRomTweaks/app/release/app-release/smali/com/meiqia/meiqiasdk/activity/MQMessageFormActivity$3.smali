.class Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;
.super Ljava/lang/Object;
.source "MQMessageFormActivity.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

.field final synthetic val$submitTimeMillis:J


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;J)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    iput-wide p2, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->val$submitTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->val$submitTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    new-instance p1, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->val$submitTimeMillis:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->runInUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->dismissLoadingDialog()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->val$submitTimeMillis:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x5dc

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance p1, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3$1;

    invoke-direct {p1, p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->val$submitTimeMillis:J

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->runInUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->dismissLoadingDialog()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_submit_leave_msg_success:I

    invoke-static {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->finish()V

    :goto_0
    return-void
.end method
