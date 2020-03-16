.class Lcom/leo/salt/widget/BackupsDialog$1;
.super Ljava/lang/Object;
.source "BackupsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/BackupsDialog;->getRestoreConfirmDialog(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/widget/BackupsDialog;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leo/salt/widget/BackupsDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$1;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    iput-object p2, p0, Lcom/leo/salt/widget/BackupsDialog$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$1;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-static {p1}, Lcom/leo/salt/widget/BackupsDialog;->access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$1;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-static {p1}, Lcom/leo/salt/widget/BackupsDialog;->access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/widget/BackupsDialog$1;->val$filePath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;->onRestoreRequested(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
