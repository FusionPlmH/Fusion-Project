.class public Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQTimeItem.java"


# instance fields
.field private mContentTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_chat_time:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;->mContentTv:Landroid/widget/TextView;

    return-void
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQTimeItem;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getCreatedOn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/meiqia/meiqiasdk/util/MQTimeUtils;->parseTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
