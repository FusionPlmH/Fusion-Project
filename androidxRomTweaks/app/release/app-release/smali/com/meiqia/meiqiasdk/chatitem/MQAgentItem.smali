.class public Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;
.super Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;
.source "MQAgentItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_chat_left:I

    return v0
.end method

.method protected initView()V
    .locals 1

    invoke-super {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->initView()V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->unread_view:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;->unreadCircle:Landroid/view/View;

    return-void
.end method

.method protected processLogic()V
    .locals 1

    invoke-super {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->processLogic()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQAgentItem;->applyConfig(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method
