.class public Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQRobotItem.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;
    }
.end annotation


# instance fields
.field private mAlreadyFeedbackTv:Landroid/widget/TextView;

.field private mAvatarIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field private mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

.field private mContainerLl:Landroid/widget/LinearLayout;

.field private mContentLl:Landroid/widget/LinearLayout;

.field private mEvaluateLl:Landroid/widget/LinearLayout;

.field private mMenuTipTv:Landroid/widget/TextView;

.field private mPadding:I

.field private mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

.field private mRobotRichTextFl:Landroid/widget/TextView;

.field private mTextSize:I

.field private mTextTipSize:I

.field private mUsefulTv:Landroid/widget/TextView;

.field private mUselessTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;)Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    return-object p0
.end method

.method private addMenuItem(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_robot_menu:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_robot_menu_item_textColor:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotMenuItemTextColorResId:I

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v2, v4}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private addMenuList(Lorg/json/JSONArray;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContainerLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mMenuTipTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addMenuItem(Lorg/json/JSONObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addMenuList(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mTextTipSize:I

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_robot_menu_tip_textColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mPadding:I

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_robot_menu_tip_textColor:I

    sget v2, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotMenuTipTextColorResId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/TextView;

    aput-object v0, v4, v1

    invoke-static {p2, v2, v3, v4}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addMenuList(Lorg/json/JSONArray;)V

    return-void
.end method

.method private addNormalTextView(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContainerLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_textColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mPadding:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_textColor:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatTextColorResId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/widget/TextView;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/util/RichText;-><init>()V

    invoke-virtual {v1, p1}, Lcom/meiqia/meiqiasdk/util/RichText;->fromHtml(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/RichText;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meiqia/meiqiasdk/util/RichText;->setOnImageClickListener(Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;)Lcom/meiqia/meiqiasdk/util/RichText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/RichText;->into(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private addRichText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContainerLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotRichTextFl:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/meiqia/meiqiasdk/util/RichText;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/util/RichText;-><init>()V

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/util/RichText;->fromHtml(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/RichText;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meiqia/meiqiasdk/util/RichText;->setOnImageClickListener(Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;)Lcom/meiqia/meiqiasdk/util/RichText;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotRichTextFl:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/RichText;->into(Landroid/widget/TextView;)V

    return-void
.end method

.method private fillContentLl()V
    .locals 10

    const-string v0, "rich_text"

    :try_start_0
    const-string v1, "unknown"

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_unknown_msg_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addNormalTextView(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getContentRobot()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->isRelated(Lorg/json/JSONArray;)Z

    move-result v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "items"

    const-string v7, "type"

    const-string v8, "text"

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {p0, v4}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addNormalTextView(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v5, "related"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "text_before"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addMenuList(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->isRichText(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v5}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addRichText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addNormalTextView(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v5}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addRichText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v5, "menu"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->addMenuList(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method private handleEvaluateStatus()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "evaluate"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mEvaluateLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->isAlreadyFeedback()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUselessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUsefulTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUselessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUsefulTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isRelated(Lorg/json/JSONArray;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "related"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private isRichText(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "evaluate"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "menu"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContainerLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mEvaluateLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mMenuTipTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotRichTextFl:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_robot:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->iv_robot_avatar:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mAvatarIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ll_robot_container:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContainerLl:Landroid/widget/LinearLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->mq_robot_rich_text_container:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotRichTextFl:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ll_robot_content:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContentLl:Landroid/widget/LinearLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ll_robot_evaluate:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mEvaluateLl:Landroid/widget/LinearLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useful:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUsefulTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useless:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUselessTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_menu_tip:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mMenuTipTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_already_feedback:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useful:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;->onEvaluateRobotAnswer(Lcom/meiqia/meiqiasdk/model/RobotMessage;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useless:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;->onEvaluateRobotAnswer(Lcom/meiqia/meiqiasdk/model/RobotMessage;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImageClicked(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getImageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->newIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected processLogic()V
    .locals 7

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mContainerLl:Landroid/widget/LinearLayout;

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_bubble_final:I

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_bubble:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatBubbleColorResId:I

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_robot_menu_tip_textColor:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotMenuTipTextColorResId:I

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mMenuTipTv:Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_robot_evaluate_textColor:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotEvaluateTextColorResId:I

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUsefulTv:Landroid/widget/TextView;

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUselessTv:Landroid/widget/TextView;

    aput-object v5, v3, v2

    invoke-static {v0, v1, v4, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$dimen;->mq_size_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mPadding:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$dimen;->mq_textSize_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mTextSize:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$dimen;->mq_textSize_level1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mTextTipSize:I

    return-void
.end method

.method protected setListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUsefulTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mUselessTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/RobotMessage;Landroid/app/Activity;)V
    .locals 8

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->reset()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mAvatarIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->mRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getAvatar()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_avatar:I

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_avatar:I

    const/16 v5, 0x64

    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->handleEvaluateStatus()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem;->fillContentLl()V

    return-void
.end method
