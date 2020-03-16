.class public Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQRichTextItem.java"


# instance fields
.field private mChatBox:Landroid/view/View;

.field mContent:Ljava/lang/String;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mPicIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field private mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

.field private mSummaryTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private configChatBubbleTextColor(Landroid/widget/TextView;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_textColor:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatTextColorResId:I

    new-array v1, v1, [Landroid/widget/TextView;

    aput-object p1, v1, v0

    invoke-static {p2, v3, v2, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_right_textColor:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->rightChatTextColorResId:I

    new-array v1, v1, [Landroid/widget/TextView;

    aput-object p1, v1, v0

    invoke-static {p2, v3, v2, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_rich_text:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mChatBox:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_summary_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mSummaryTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_pic_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mPicIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->root:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mContent:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    sput-object v0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected processLogic()V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mImageWidth:I

    iget v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mImageWidth:I

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mImageHeight:I

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mSummaryTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->configChatBubbleTextColor(Landroid/widget/TextView;Z)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mChatBox:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/RichTextMessage;Landroid/app/Activity;)V
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RichTextMessage;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "summary"

    invoke-direct {p0, v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-direct {p0, v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mContent:Ljava/lang/String;

    const-string v1, "thumbnail"

    invoke-direct {p0, v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mContent:Ljava/lang/String;

    new-instance v0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mSummaryTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mSummaryTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mPicIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    sget v6, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    iget v7, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mImageWidth:I

    iget v8, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mImageHeight:I

    new-instance v9, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$2;

    invoke-direct {v9, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem$2;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;)V

    move-object v2, p2

    invoke-static/range {v2 .. v9}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mPicIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget p2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setRobotMessage(Lcom/meiqia/meiqiasdk/model/RobotMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRichTextItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    return-void
.end method
