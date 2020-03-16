.class public Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQRedirectQueueItem.java"


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;

.field private mQueueAnimIv:Landroid/widget/ImageView;

.field private mTipTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->mCallback:Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_item_redirect_queue:I

    return v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->iv_redirect_queue_anim:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->mQueueAnimIv:Landroid/widget/ImageView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_redirect_queue_tip:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->mTipTv:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->mCallback:Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/callback/LeaveMessageCallback;->onClickLeaveMessage()V

    :cond_0
    return-void
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_redirect_queue_leave_msg:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->getViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessage(Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;)V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->mTipTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$string;->mq_queue_leave_msg:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;->getQueueSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQRedirectQueueItem;->mQueueAnimIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
