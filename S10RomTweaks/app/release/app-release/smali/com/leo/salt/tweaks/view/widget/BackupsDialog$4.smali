.class Lcom/leo/salt/tweaks/view/widget/BackupsDialog$4;
.super Ljava/lang/Object;
.source "BackupsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/BackupsDialog;->getBackupRestoreChooserDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/BackupsDialog;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/BackupsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/BackupsDialog$4;->this$0:Lcom/leo/salt/tweaks/view/widget/BackupsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/BackupsDialog$4;->this$0:Lcom/leo/salt/tweaks/view/widget/BackupsDialog;

    invoke-static {p2}, Lcom/leo/salt/tweaks/view/widget/BackupsDialog;->access$000(Lcom/leo/salt/tweaks/view/widget/BackupsDialog;)Lcom/leo/salt/tweaks/view/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/tweaks/view/widget/BackupsDialog$4;->this$0:Lcom/leo/salt/tweaks/view/widget/BackupsDialog;

    invoke-static {p2}, Lcom/leo/salt/tweaks/view/widget/BackupsDialog;->access$000(Lcom/leo/salt/tweaks/view/widget/BackupsDialog;)Lcom/leo/salt/tweaks/view/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/leo/salt/tweaks/view/widget/BackupsDialog$OnDialogFragmentListener;->onBackupRestoreResult(I)V

    :cond_0
    return-void
.end method
