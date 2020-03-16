.class public abstract Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;
.super Landroid/app/Activity;
.source "MQBaseActivity.java"


# instance fields
.field private mBackIv:Landroid/widget/ImageView;

.field private mBackRl:Landroid/widget/RelativeLayout;

.field private mBackTv:Landroid/widget/TextView;

.field private mTitleRl:Landroid/widget/RelativeLayout;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyCustomUIConfig()V
    .locals 6

    sget v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackIv:Landroid/widget/ImageView;

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    const v1, 0x106000b

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_bg:I

    sget v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleBackgroundResId:I

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITintDrawable(Landroid/view/View;III)V

    sget v0, Lcom/meiqia/meiqiasdk/R$color;->mq_activity_title_textColor:I

    sget v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleTextColorResId:I

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackIv:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mTitleTv:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITextAndImageColor(IILandroid/widget/ImageView;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/meiqia/meiqiasdk/util/MQUtils;->applyCustomUITitleGravity(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutRes()I
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->getLayoutRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->setContentView(I)V

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mTitleRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_rl:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackRl:Landroid/widget/RelativeLayout;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->back_iv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->title_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->applyCustomUIConfig()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mBackRl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->initView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->setListener()V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->processLogic(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract processLogic(Landroid/os/Bundle;)V
.end method

.method protected abstract setListener()V
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQBaseActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
