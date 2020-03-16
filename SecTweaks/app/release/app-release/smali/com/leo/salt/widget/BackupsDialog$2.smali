.class Lcom/leo/salt/widget/BackupsDialog$2;
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

.field final synthetic val$backupFiles:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/leo/salt/widget/BackupsDialog;[Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/widget/BackupsDialog$2;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    iput-object p2, p0, Lcom/leo/salt/widget/BackupsDialog$2;->val$backupFiles:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/leo/salt/widget/BackupsDialog$2;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-static {p2}, Lcom/leo/salt/widget/BackupsDialog;->access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/widget/BackupsDialog$2;->this$0:Lcom/leo/salt/widget/BackupsDialog;

    invoke-static {p2}, Lcom/leo/salt/widget/BackupsDialog;->access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/widget/BackupsDialog$2;->val$backupFiles:[Ljava/io/File;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;->onRestoreRequested(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
