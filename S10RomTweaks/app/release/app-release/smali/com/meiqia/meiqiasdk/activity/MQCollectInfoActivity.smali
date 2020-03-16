.class public Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;
.super Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;,
        Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;,
        Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;,
        Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;,
        Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;
    }
.end annotation


# static fields
.field public static final AGENT_ID:Ljava/lang/String; = "agent_id"

.field private static final AUTO_DISMISS_TOP_TIP_TIME:J = 0x7d0L

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final TYPE_MULTIPLE_CHOICE:Ljava/lang/String; = "multiple_choice"

.field private static final TYPE_SINGLE_CHOICE:Ljava/lang/String; = "single_choice"

.field private static final TYPE_TEXT:Ljava/lang/String; = "text"


# instance fields
.field private isDestroy:Z

.field private mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

.field private mBaseItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBodyRl:Landroid/widget/RelativeLayout;

.field private mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

.field private mContainerLl:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

.field private mLoadingProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mScrollView:Landroid/view/View;

.field private mSubmitTv:Landroid/widget/TextView;

.field private mTopTipViewTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->isDestroy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mRootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->goToChatActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->submitState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Lcom/meiqia/core/bean/MQInquireForm;
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->isDestroy:Z

    return p0
.end method

.method private checkData()Z
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->checkValid()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getMQInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

    return-object v0
.end method

.method private goToChatActivity()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/meiqiasdk/activity/MQConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "agent_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "group_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "preSendText"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/meiqia/core/MQManager;->setScheduledAgentOrGroupWithId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->onBackPressed()V

    return-void
.end method

.method private hookField(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "gender"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "type"

    const-string v0, "single_choice"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_inquire_gender_choice:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "choices"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private isSubmitAndAllReturnedCustomer()Z
    .locals 6

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQInquireForm;->isSubmitForm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQInquireForm;->getInputs()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "fields"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ignore_returned_customer"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return v3
.end method

.method private submitData()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;

    instance-of v3, v2, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->getCaptcha_token()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Captcha-Token"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Captcha-Value"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->finish()V

    :cond_4
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "clientId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "customizedId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meiqia/core/MQManager;->getCurrentClientId()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meiqia/core/bean/MQInquireForm;->isCaptcha()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->submitState(Z)V

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v2

    new-instance v4, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;

    invoke-direct {v4, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$3;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/meiqia/core/MQManager;->submitInquireForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    goto :goto_3

    :cond_7
    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/meiqia/core/MQManager;->submitInquireForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->goToChatActivity()V

    :goto_3
    return-void
.end method

.method private submitState(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mScrollView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mScrollView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_collect_info:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->progressbar:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mSubmitTv:Landroid/widget/TextView;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->container_ll:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mContainerLl:Landroid/widget/LinearLayout;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mRootView:Landroid/widget/RelativeLayout;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->body_rl:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBodyRl:Landroid/widget/RelativeLayout;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->content_sv:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->submit_tv:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->checkData()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->submitData()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->popInvalidTip()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    invoke-super {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->isDestroy:Z

    invoke-super {p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->onDestroy()V

    return-void
.end method

.method public popInvalidTip()V
    .locals 7

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/meiqia/meiqiasdk/R$layout;->mq_top_pop_tip:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    sget v3, Lcom/meiqia/meiqiasdk/R$string;->mq_tip_required_before_submit:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meiqia/meiqiasdk/R$color;->mq_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meiqia/meiqiasdk/R$dimen;->mq_top_tip_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    sget v5, Lcom/meiqia/meiqiasdk/R$id;->content_sv:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mAutoDismissTopTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mTopTipViewTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v3, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$2;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 14

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQInquireForm;->getInputs()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->isSubmitAndAllReturnedCustomer()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->goToChatActivity()V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQInquireForm;->getInputs()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "fields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "field_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->hookField(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "choices"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "optional"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "ignore_returned_customer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x36452d

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v11, :cond_3

    const v11, 0x6380c2b0

    if-eq v10, v11, :cond_2

    const v11, 0x698cf578

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const-string v10, "single_choice"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v10, "multiple_choice"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    const-string v10, "text"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v5, 0x0

    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v13, :cond_6

    if-eq v5, v12, :cond_5

    move-object v12, v4

    goto :goto_2

    :cond_5
    new-instance v12, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;

    move-object v4, v12

    move-object v5, p0

    move v10, v3

    move v11, v2

    invoke-direct/range {v4 .. v11}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$MultipleChoiceItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_6
    new-instance v12, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;

    move-object v4, v12

    move-object v5, p0

    move v10, v3

    move v11, v2

    invoke-direct/range {v4 .. v11}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$SingleChoiceItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_7
    new-instance v11, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;

    move-object v4, v11

    move-object v5, p0

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v12, v11

    :goto_2
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQInquireForm;->isCaptcha()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    invoke-direct {p1, p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mBaseItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mCodeAuthItem:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mContainerLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->refreshAuthCode()V

    :cond_a
    return-void
.end method

.method protected setListener()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->mSubmitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
