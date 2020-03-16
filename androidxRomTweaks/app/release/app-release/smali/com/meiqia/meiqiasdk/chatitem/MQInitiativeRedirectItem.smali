.class public Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQInitiativeRedirectItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;

.field private mTipTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_useless_redirect:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_item_redirect_tip:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->mTipTv:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;->onClickForceRedirectHuman()V

    :cond_0
    return-void
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_useless_redirect_redirect_human:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;)V
    .locals 0

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem$Callback;

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQInitiativeRedirectItem;->mTipTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;->getTipResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
