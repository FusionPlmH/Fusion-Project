.class abstract Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;
.super Ljava/lang/Object;
.source "MQCollectInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseItem"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public fieldName:Ljava/lang/String;

.field public ignoreReturnCustomer:Z

.field public optional:Z

.field public rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

.field public titleTv:Landroid/widget/TextView;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->optional:Z

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->init()V

    return-void
.end method

.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->displayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->fieldName:Ljava/lang/String;

    iput-object p4, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->type:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->optional:Z

    iput-boolean p6, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->ignoreReturnCustomer:Z

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->init()V

    return-void
.end method


# virtual methods
.method public checkValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->optional:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->invalidState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->validState()V

    :goto_0
    return v0
.end method

.method abstract findViews()V
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->ignoreReturnCustomer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->access$500(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQInquireForm;->isSubmitForm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->rootView:Landroid/view/View;

    return-object v0
.end method

.method protected init()V
    .locals 0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->findViews()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->initTitle()V

    return-void
.end method

.method public initTitle()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->optional:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meiqia/meiqiasdk/R$color;->mq_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected invalidState()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public abstract isValid()Z
.end method

.method protected validState()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$BaseItem;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meiqia/meiqiasdk/R$color;->mq_form_tip_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
