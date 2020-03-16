.class public Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;
.super Landroid/app/Dialog;
.source "MQLoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$style;->MQDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/meiqia/meiqiasdk/R$layout;->mq_dialog_loading:I

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/dialog/MQLoadingDialog;->setContentView(I)V

    return-void
.end method
