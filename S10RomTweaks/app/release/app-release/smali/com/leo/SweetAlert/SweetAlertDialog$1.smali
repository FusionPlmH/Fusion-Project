.class Lcom/leo/SweetAlert/SweetAlertDialog$1;
.super Ljava/lang/Object;
.source "SweetAlertDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/SweetAlert/SweetAlertDialog;


# direct methods
.method constructor <init>(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$SweetAlertDialog$1()V
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$100(Lcom/leo/SweetAlert/SweetAlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$201(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$301(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$000(Lcom/leo/SweetAlert/SweetAlertDialog;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$000(Lcom/leo/SweetAlert/SweetAlertDialog;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/leo/SweetAlert/-$$Lambda$SweetAlertDialog$1$sPkvQilGtYRXFCRGgeeA0skIYok;

    invoke-direct {v0, p0}, Lcom/leo/SweetAlert/-$$Lambda$SweetAlertDialog$1$sPkvQilGtYRXFCRGgeeA0skIYok;-><init>(Lcom/leo/SweetAlert/SweetAlertDialog$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
