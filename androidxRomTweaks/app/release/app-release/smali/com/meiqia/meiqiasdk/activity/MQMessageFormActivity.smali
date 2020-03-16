.class public Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;
.super Landroid/app/Activity;
.source "MQMessageFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isPause:Z

.field private mBackIv:Landroid/widget/ImageView;

.field private mBackRl:Landroid/widget/RelativeLayout;

.field private mBackTv:Landroid/widget/TextView;

.field private mCategoryDialog:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

.field private mCurrentCategoryId:Ljava/lang/String;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputContainerLl:Landroid/widget/LinearLayout;

.field private mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

.field private mMessageFormInputLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageFormInputModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageTipTv:Landroid/widget/TextView;

.field private mSubmitTv:Landroid/widget/TextView;

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputLayouts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->isPause:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->handleFormInputLayouts()V

    return-void
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->refreshLeaveMessageIntro()V

    return-void
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->isPause:Z

    return p0
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Lcom/meiqia/meiqiasdk/dialog/MQListDialog;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mCategoryDialog:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;Lcom/meiqia/meiqiasdk/dialog/MQListDialog;)Lcom/meiqia/meiqiasdk/dialog/MQListDialog;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mCategoryDialog:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mCurrentCategoryId:Ljava/lang/String;

    return-object p1
.end method

.method private applyCustomUIConfig()V
    .locals 6

    sget v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackIv:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    const v1, 0x106000b

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_bg:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleBackgroundResId:I

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_textColor:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleTextColorResId:I

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackIv:Landroid/widget/ImageView;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mTitleTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mSubmitTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITitleGravity(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;
    .locals 1

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method private handleFormInputLayouts()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mInputContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;-><init>()V

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_leave_msg:I

    invoke-virtual {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    const-string v1, "content"

    iput-object v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_leave_msg_hint:I

    invoke-virtual {p0, v2}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    iput v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->singleLine:Z

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getQq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "open"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;-><init>()V

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_name:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    const-string v4, "name"

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_name_hint:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    iput v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;-><init>()V

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_phone:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    const-string v4, "tel"

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_phone_hint:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    const/4 v4, 0x3

    iput v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;-><init>()V

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_email:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    const-string v4, "email"

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_email_hint:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    const/16 v4, 0x20

    iput v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getWechat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;-><init>()V

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_wechat:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    const-string v4, "weixin"

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    sget v4, Lcom/meiqia/meiqiasdk/R$string;->mq_wechat_hint:I

    invoke-virtual {p0, v4}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    iput v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getQq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;-><init>()V

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_qq:I

    invoke-virtual {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    const-string v1, "qq"

    iput-object v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_qq_hint:I

    invoke-virtual {p0, v1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    new-instance v2, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;

    invoke-direct {v2, p0, v1}, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;-><init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mInputContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method private handleLeaveMessageIntro()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->refreshLeaveMessageIntro()V

    return-void
.end method

.method private initListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_message_form:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->setContentView(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mBackIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mSubmitTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->message_tip_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageTipTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->input_container_ll:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mInputContainerLl:Landroid/widget/LinearLayout;

    return-void
.end method

.method private popTicketCategoriesChooseDialog()V
    .locals 2

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->getTicketCategories(Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V

    return-void
.end method

.method private processLogic(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->applyCustomUIConfig()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->handleFormInputLayouts()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->handleLeaveMessageIntro()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->refreshEnterpriseConfigAndContent()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->popTicketCategoriesChooseDialog()V

    return-void
.end method

.method private refreshEnterpriseConfigAndContent()V
    .locals 2

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/controller/MQController;->refreshEnterpriseConfig(Lcom/meiqia/meiqiasdk/callback/SimpleCallback;)V

    return-void
.end method

.method private refreshLeaveMessageIntro()V
    .locals 2

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    invoke-interface {v0}, Lcom/meiqia/meiqiasdk/controller/MQController;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getIntro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageTipTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageTipTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageTipTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showLoadingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;->setCancelable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;->show()V

    return-void
.end method

.method private submit()V
    .locals 11

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputLayouts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_param_not_allow_empty:I

    new-array v2, v3, [Ljava/lang/Object;

    sget v3, Lcom/meiqia/meiqiasdk/R$string;->mq_leave_msg:I

    invoke-virtual {p0, v3}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->getContactRule()Ljava/lang/String;

    move-result-object v2

    const-string v4, "single"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v5, :cond_4

    iget-object v8, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputModels:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;

    iget-object v9, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mMessageFormInputLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;

    invoke-virtual {v9}, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v7, 0x0

    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v2, :cond_2

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_param_not_allow_empty:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v8, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, v8, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->key:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    if-eqz v7, :cond_5

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_at_least_one_contact:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->showLoadingDialog()V

    new-instance v3, Lcom/meiqia/core/bean/MQMessage;

    invoke-direct {v3}, Lcom/meiqia/core/bean/MQMessage;-><init>()V

    const-string v5, "text"

    invoke-virtual {v3, v5}, Lcom/meiqia/core/bean/MQMessage;->setContent_type(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mCurrentCategoryId:Ljava/lang/String;

    new-instance v6, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;

    invoke-direct {v6, p0, v1, v2}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$3;-><init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;J)V

    invoke-virtual {v0, v3, v5, v4, v6}, Lcom/meiqia/core/MQManager;->submitTickets(Lcom/meiqia/core/bean/MQMessage;Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mLoadingDialog:Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->submit()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->initView()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->initListener()V

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->processLogic(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->isPause:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mCategoryDialog:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->mCategoryDialog:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->dismiss()V

    :cond_0
    return-void
.end method
