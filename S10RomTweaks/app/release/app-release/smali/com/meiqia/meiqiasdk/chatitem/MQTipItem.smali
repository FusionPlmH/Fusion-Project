.class public Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQTipItem.java"


# instance fields
.field private mContentTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setDirectionMessageContent(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_direct_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_direct_agent_nickname_textColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_msg_tip:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->mContentTv:Landroid/widget/TextView;

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
    .locals 1

    instance-of v0, p1, Lcom/meiqia/meiqiasdk/model/AgentChangeMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getAgentNickname()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->setDirectionMessageContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQTipItem;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
