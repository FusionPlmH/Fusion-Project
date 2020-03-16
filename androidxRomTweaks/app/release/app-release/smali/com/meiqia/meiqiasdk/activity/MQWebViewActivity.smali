.class public Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;
.super Landroid/app/Activity;
.source "MQWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;


# instance fields
.field private mAlreadyFeedbackTv:Landroid/widget/TextView;

.field private mBackIv:Landroid/widget/ImageView;

.field private mBackRl:Landroid/widget/RelativeLayout;

.field private mBackTv:Landroid/widget/TextView;

.field private mEvaluateRl:Landroid/widget/RelativeLayout;

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;

.field private mUsefulTv:Landroid/widget/TextView;

.field private mUselessTv:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->handleRobotRichTextMessage()V

    return-void
.end method

.method private applyCustomUIConfig()V
    .locals 6

    sget v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackIv:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    const v1, 0x106000b

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_bg:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleBackgroundResId:I

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_textColor:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleTextColorResId:I

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackIv:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mTitleTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITitleGravity(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private evaluate(I)V
    .locals 7

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;

    move-result-object v0

    sget-object v1, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getId()J

    move-result-wide v1

    sget-object v3, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getQuestionId()J

    move-result-wide v3

    new-instance v6, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity$1;

    invoke-direct {v6, p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;)V

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/meiqia/meiqiasdk/controller/MQController;->evaluateRobotAnswer(JJILcom/meiqia/meiqiasdk/callback/OnEvaluateRobotAnswerCallback;)V

    return-void
.end method

.method private findViews()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mWebView:Landroid/webkit/WebView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->ll_robot_evaluate:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mEvaluateRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useful:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUsefulTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useless:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUselessTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_already_feedback:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    return-void
.end method

.method private handleRobotRichTextMessage()V
    .locals 3

    sget-object v0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "evaluate"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rich_text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mEvaluateRl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->sRobotMessage:Lcom/meiqia/meiqiasdk/model/RobotMessage;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/model/RobotMessage;->isAlreadyFeedback()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUselessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUsefulTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUselessTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUsefulTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private logic()V
    .locals 8

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->handleRobotRichTextMessage()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setListeners()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mBackRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUsefulTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mUselessTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mAlreadyFeedbackTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useful:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->evaluate(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_useless:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->evaluate(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_robot_already_feedback:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->mEvaluateRl:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/meiqia/meiqiasdk/R$layout;->mq_activity_webview:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->findViews()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->setListeners()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->applyCustomUIConfig()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQWebViewActivity;->logic()V

    return-void
.end method
