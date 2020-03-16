.class public Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;
.super Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;
.source "MQInquiryFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity$FormItem;
    }
.end annotation


# static fields
.field public static final CURRENT_CLIENT:Ljava/lang/String; = "CURRENT_CLIENT"


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

.field private mQuestionTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;)Lcom/meiqia/core/bean/MQInquireForm;
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->isSubmitAndAllReturnedCustomer()Z

    move-result p0

    return p0
.end method

.method private getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getMQInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mInquireForm:Lcom/meiqia/core/bean/MQInquireForm;

    return-object v0
.end method

.method private isSubmitAndAllReturnedCustomer()Z
    .locals 6

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQInquireForm;->isSubmitForm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

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


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_inquiry_form:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->question_title:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mQuestionTitleTv:Landroid/widget/TextView;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->container_ll:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->getInquireForm()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQInquireForm;->getMenus()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mQuestionTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "assignments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target_kind"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "target"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity$FormItem;

    invoke-direct {v4, p0, p0, v2, v3}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity$FormItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity$FormItem;->setContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Lcom/meiqia/meiqiasdk/activity/MQInquiryFormActivity$FormItem;->getItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method
