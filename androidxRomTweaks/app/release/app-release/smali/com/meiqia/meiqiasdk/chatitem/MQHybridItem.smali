.class public Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQHybridItem.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/util/RichText$OnImageClickListener;


# instance fields
.field private mAvatarIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field private mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

.field private mContainerLl:Landroid/widget/LinearLayout;

.field private mHybridMessage:Lcom/meiqia/meiqiasdk/model/HybridMessage;

.field private mPadding:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;)Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQRobotItem$Callback;

    return-object p0
.end method

.method private addChoices(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_robot_menu:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_robot_menu_item_textColor:I

    sget v6, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotMenuItemTextColorResId:I

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/widget/TextView;

    aput-object v3, v7, p1

    invoke-static {v4, v6, v5, v7}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$1;

    invoke-direct {v4, p0, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addNormalOrRichTextView(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_textColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mPadding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_textColor:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatTextColorResId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/widget/TextView;

    aput-object v0, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

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

.method private addPhotoCardView(Lorg/json/JSONObject;)V
    .locals 14

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int v8, v0, v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v10, -0x2

    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    sget v2, Lcom/meiqia/meiqiasdk/R$drawable;->mq_bg_card:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "target_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "pic_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v13, 0x1

    invoke-virtual {p1, v13}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    sget v6, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    new-instance v9, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$2;

    invoke-direct {v9, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$2;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;)V

    move-object v3, p1

    move v7, v8

    invoke-static/range {v2 .. v9}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;

    invoke-direct {v2, p0, v12}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem$3;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meiqia/meiqiasdk/R$dimen;->mq_textSize_level3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private fillContentLl(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "choices"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const-string v5, "wait"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "photo_card"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "rich_text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :cond_0
    :goto_1
    const-string v3, "body"

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v9, :cond_2

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$string;->mq_unknown_msg_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->addNormalOrRichTextView(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->addPhotoCardView(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->fillContentLl(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->addChoices(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->addNormalOrRichTextView(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32394150 -> :sswitch_4
        -0x1e48fb03 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x379175 -> :sswitch_1
        0x2cce56f2 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_hybrid:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->iv_robot_avatar:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mAvatarIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ll_robot_container:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onImageClicked(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getImageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->newIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected processLogic()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_bubble_final:I

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_bubble:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatBubbleColorResId:I

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$dimen;->mq_size_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mPadding:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$dimen;->mq_textSize_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mTextSize:I

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/HybridMessage;Landroid/app/Activity;)V
    .locals 9

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mHybridMessage:Lcom/meiqia/meiqiasdk/model/HybridMessage;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mAvatarIv:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mHybridMessage:Lcom/meiqia/meiqiasdk/model/HybridMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/HybridMessage;->getAvatar()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_avatar:I

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_avatar:I

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v8}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->mHybridMessage:Lcom/meiqia/meiqiasdk/model/HybridMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/HybridMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQHybridItem;->fillContentLl(Ljava/lang/String;)V

    return-void
.end method
