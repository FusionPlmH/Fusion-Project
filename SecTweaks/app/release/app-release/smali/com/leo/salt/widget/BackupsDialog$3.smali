.class Lcom/leo/salt/widget/BackupsDialog$3;
.super Ljava/lang/Object;
.source "BackupsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/widget/BackupsDialog;->getRestoreFileSelectorDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/widget/BackupsDialog;


# direct methods
.method constructor <init>(Lcom/leo/salt/widget/BackupsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$3;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$3;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-static {p1}, Lcom/leo/salt/widget/BackupsDialog;->access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$3;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-static {p1}, Lcom/leo/salt/widget/BackupsDialog;->access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;->onBackupRestoreResult(I)V

    :cond_0
    return-void
.end method
