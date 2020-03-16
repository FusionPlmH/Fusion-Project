.class public Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;
.super Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;
.source "MQMessageFormInputLayout.java"


# instance fields
.field private mContentEt:Landroid/widget/EditText;

.field private mTipTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQBaseCustomCompositeView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->setFormInputModel(Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;)V

    return-void
.end method

.method private setFormInputModel(Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;)V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mTipTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget v0, p1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    iget v1, p1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->inputType:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    iget-boolean v0, p1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->required:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mTipTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mTipTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mTipTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean p1, p1, Lcom/meiqia/meiqiasdk/model/MessageFormInputModel;->singleLine:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->setSingleLine()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$layout;->mq_layout_form_input:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tip_tv:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mTipTv:Landroid/widget/TextView;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->content_et:I

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQMessageFormInputLayout;->mContentEt:Landroid/widget/EditText;

    return-void
.end method

.method protected processLogic()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method
