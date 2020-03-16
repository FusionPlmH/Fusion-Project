.class public abstract Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;
    }
.end annotation


# instance fields
.field protected chatBox:Landroid/widget/RelativeLayout;

.field protected chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

.field protected contentImage:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field protected contentText:Landroid/widget/TextView;

.field protected mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mMaxItemWidth:I

.field protected mMinItemWidth:I

.field protected unreadCircle:Landroid/view/View;

.field protected usAvatar:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field protected voiceAnimIv:Landroid/widget/ImageView;

.field protected voiceContainerRl:Landroid/view/View;

.field protected voiceContentTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->handleClickVoiceBtn(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    return-void
.end method

.method private configChatBubbleBg(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_bubble_final:I

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_bubble:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatBubbleColorResId:I

    invoke-static {p1, p2, v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_right_bubble_final:I

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_right_bubble:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->rightChatBubbleColorResId:I

    invoke-static {p1, p2, v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    :goto_0
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

.method private downloadAndPlayVoice(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->setCurrentDownloadingItemPosition(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$3;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->downloadVoice(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;)V

    return-void
.end method

.method private fillContent(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V
    .locals 9

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->usAvatar:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getAvatar()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_avatar:I

    sget v5, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_avatar:I

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v8}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meiqia/meiqiasdk/R$string;->mq_unknown_msg_tip:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    check-cast p1, Lcom/meiqia/meiqiasdk/model/FileMessage;

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->handleBindFileItem(Lcom/meiqia/meiqiasdk/model/FileMessage;)V

    goto :goto_2

    :cond_3
    check-cast p1, Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->handleBindVoiceItem(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    goto :goto_2

    :cond_4
    check-cast p1, Lcom/meiqia/meiqiasdk/model/PhotoMessage;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/PhotoMessage;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v2, p1

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentImage:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v3, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    sget v4, Lcom/meiqia/meiqiasdk/R$drawable;->mq_ic_holder_light:I

    iget v5, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mImageWidth:I

    iget v6, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mImageHeight:I

    new-instance v7, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    invoke-direct {v7, p0, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;I)V

    move-object v0, p3

    invoke-static/range {v0 .. v7}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p3, p1, v0}, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->getEmotionText(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_3
        0x36452d -> :sswitch_2
        0x58d9bd6 -> :sswitch_1
        0x65b3e32 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBindFileItem(Lcom/meiqia/meiqiasdk/model/FileMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {v0, p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->initFileItem(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;Lcom/meiqia/meiqiasdk/model/FileMessage;)V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getFileState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadFailedState()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadInitState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadingState()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadSuccessState()V

    :goto_0
    return-void
.end method

.method private handleBindVoiceItem(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContainerRl:Landroid/view/View;

    new-instance v1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getDuration()I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getDuration()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContentTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContainerRl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getDuration()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContentTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mMinItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContentTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mMinItemWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mMaxItemWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContainerRl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->getCurrentPlayingItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p2, :cond_3

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getItemViewType()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_voice_left_normal:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_left_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_voice_right_normal:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meiqia/meiqiasdk/R$color;->mq_chat_right_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getItemViewType()I

    move-result p2

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_anim_voice_left_playing:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$drawable;->mq_anim_voice_right_playing:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_3
    iget-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->unreadCircle:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->isRead()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->unreadCircle:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->unreadCircle:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method private handleClickVoiceBtn(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/VoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->stopPlayVoice()V

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->downloadAndPlayVoice(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQAudioPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->getCurrentPlayingItemPosition()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->stopPlayVoice()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->startPlayVoiceAndRefreshList(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    :goto_0
    return-void
.end method

.method private handleVisibilityByContentType(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentImage:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContainerRl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {p1, v4}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContainerRl:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentImage:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {p1, v4}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_3
        0x36452d -> :sswitch_2
        0x58d9bd6 -> :sswitch_1
        0x65b3e32 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected applyConfig(Z)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->configChatBubbleBg(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->configChatBubbleTextColor(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContentTv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->configChatBubbleBg(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContentTv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->configChatBubbleTextColor(Landroid/widget/TextView;Z)V

    return-void
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_text:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentText:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_pic:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->contentImage:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_voice_content:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContentTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->iv_voice_anim:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceAnimIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->rl_voice_container:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->voiceContainerRl:Landroid/view/View;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->file_container:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatFileItem:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->us_avatar_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->usAvatar:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->chat_box:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->chatBox:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->notifyDataSetChanged()V

    return-void
.end method

.method public onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->onFileMessageExpired(Lcom/meiqia/meiqiasdk/model/FileMessage;)V

    return-void
.end method

.method protected processLogic()V
    .locals 3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mMaxItemWidth:I

    const v2, 0x3e3851ec    # 0.18f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mMinItemWidth:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mImageWidth:I

    iget v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mImageWidth:I

    iput v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mImageHeight:I

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->handleVisibilityByContentType(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->fillContent(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V

    return-void
.end method
