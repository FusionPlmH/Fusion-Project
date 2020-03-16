.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;
.super Ljava/lang/Object;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Lcom/meiqia/core/callback/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->submitData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->access$300(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Z)V

    const/16 p2, 0x190

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->refreshAuthCode()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_error_auth_code_wrong:I

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x4e1f

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_title_net_not_work:I

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    sget p2, Lcom/meiqia/meiqiasdk/R$string;->mq_error_submit_form:I

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->access$200(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    return-void
.end method
