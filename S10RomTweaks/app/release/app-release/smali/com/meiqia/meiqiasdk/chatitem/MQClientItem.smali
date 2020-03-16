.class public Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;
.super Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;
.source "MQClientItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;
    }
.end annotation


# instance fields
.field private sendState:Landroid/widget/ImageView;

.field private sendingProgressBar:Landroid/widget/ProgressBar;

.field private sensitiveWordTipTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_chat_right:I

    return v0
.end method

.method protected initView()V
    .locals 1

    invoke-super {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->initView()V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendingProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->send_state:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->sensitive_words_tip_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sensitiveWordTipTv:Landroid/widget/TextView;

    return-void
.end method

.method protected processLogic()V
    .locals 1

    invoke-super {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->processLogic()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->applyConfig(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V

    sget-boolean p2, Lcom/meiqia/meiqiasdk/util/MQConfig;->isShowClientAvatar:Z

    const/16 p3, 0x8

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->usAvatar:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {p2, p3}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->chatBox:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->chatBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sensitiveWordTipTv:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendingProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getStatus()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4c696bc3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    const v2, -0x2bc31b93

    if-eq v1, v2, :cond_2

    const v2, 0x76033b5a

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "sending"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "arrived"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "failed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x2

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    sget p3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_msg_failed:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    new-instance p3, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;

    invoke-direct {p3, p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of p2, p1, Lcom/meiqia/meiqiasdk/model/TextMessage;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/meiqia/meiqiasdk/model/TextMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->isContainsSensitiveWords()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sensitiveWordTipTv:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->getReplaceContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->contentText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->getReplaceContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->sendState:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method
