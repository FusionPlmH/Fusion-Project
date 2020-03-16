.class public Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;
.super Landroid/app/Dialog;
.source "MQEvaluateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;

.field private mConfirmTv:Landroid/widget/TextView;

.field private mContentEt:Landroid/widget/EditText;

.field private mContentRg:Landroid/widget/RadioGroup;

.field private mTipTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/meiqia/meiqiasdk/R$style;->MQDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/meiqia/meiqiasdk/R$layout;->mq_dialog_evaluate:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->setCancelable(Z)V

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->tv_evaluate_tip:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mTipTv:Landroid/widget/TextView;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->et_evaluate_content:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentEt:Landroid/widget/EditText;

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->rg_evaluate_content:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentRg:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentRg:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->tv_evaluate_cancel:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/meiqia/meiqiasdk/R$id;->tv_evaluate_confirm:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mConfirmTv:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mConfirmTv:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mTipTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Dialog;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->closeKeyboard(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->tv_evaluate_confirm:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mCallback:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentRg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/meiqia/meiqiasdk/R$id;->rb_evaluate_medium:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lcom/meiqia/meiqiasdk/R$id;->rb_evaluate_bad:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mCallback:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;

    invoke-interface {v1, p1, v0}, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;->executeEvaluate(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentEt:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mContentRg:Landroid/widget/RadioGroup;

    sget v0, Lcom/meiqia/meiqiasdk/R$id;->rb_evaluate_good:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public setCallback(Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog;->mCallback:Lcom/meiqia/meiqiasdk/dialog/MQEvaluateDialog$Callback;

    return-void
.end method
