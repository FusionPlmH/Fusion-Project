.class public Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQNoAgentItem.java"


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_no_agent:I

    return v0
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;->mCallback:Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;->onClickLeaveMessage()V

    :cond_0
    return-void
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;->mCallback:Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;

    return-void
.end method

.method protected setListener()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_no_agent_leave_msg:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQNoAgentItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
