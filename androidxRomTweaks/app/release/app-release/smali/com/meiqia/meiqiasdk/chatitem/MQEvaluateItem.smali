.class public Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQEvaluateItem.java"


# instance fields
.field private mContentTv:Landroid/widget/TextView;

.field private mLevelBg:Landroid/view/View;

.field private mLevelImg:Landroid/widget/ImageView;

.field private mLevelTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_msg_evaluate:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_msg_evaluate_level:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->view_msg_evaluate_level:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelBg:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ic_msg_evaluate_level:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelImg:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_msg_evaluate_content:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mContentTv:Landroid/widget/TextView;

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

.method public setMessage(Lcom/meiqia/meiqiasdk/model/EvaluateMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;->getLevel()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_smiling_face:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelTv:Landroid/widget/TextView;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_evaluate_good:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelBg:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_evaluate_smiling:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_neutral_face:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelTv:Landroid/widget/TextView;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_evaluate_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelBg:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_evaluate_neutral:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelImg:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_angry_face:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelTv:Landroid/widget/TextView;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_evaluate_bad:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mLevelBg:Landroid/view/View;

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_shape_evaluate_angry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mContentTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQEvaluateItem;->mContentTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
