.class Lcom/leo/SweetAlert/SweetAlertDialog$1$1;
.super Ljava/lang/Object;
.source "SweetAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/SweetAlert/SweetAlertDialog$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/SweetAlert/SweetAlertDialog$1;


# direct methods
.method constructor <init>(Lcom/leo/SweetAlert/SweetAlertDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1$1;->this$1:Lcom/leo/SweetAlert/SweetAlertDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1$1;->this$1:Lcom/leo/SweetAlert/SweetAlertDialog$1;

    iget-object v0, v0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$100(Lcom/leo/SweetAlert/SweetAlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1$1;->this$1:Lcom/leo/SweetAlert/SweetAlertDialog$1;

    iget-object v0, v0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$201(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/SweetAlert/SweetAlertDialog$1$1;->this$1:Lcom/leo/SweetAlert/SweetAlertDialog$1;

    iget-object v0, v0, Lcom/leo/SweetAlert/SweetAlertDialog$1;->this$0:Lcom/leo/SweetAlert/SweetAlertDialog;

    invoke-static {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->access$301(Lcom/leo/SweetAlert/SweetAlertDialog;)V

    :goto_0
    return-void
.end method
