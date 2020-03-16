.class public Lcom/leo/salt/widget/BackupsDialog;
.super Landroid/app/DialogFragment;
.source "BackupsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;
    }
.end annotation


# static fields
.field static final DIALOG_REQUEST_CODE_KEY:Ljava/lang/String; = "dialog_request_code"


# instance fields
.field private mOnDialogFragmentListener:Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

.field private mRequestCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/widget/BackupsDialog;)Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/widget/BackupsDialog;->mOnDialogFragmentListener:Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    return-object p0
.end method

.method public static backupRestoreInstance(IZLjava/lang/String;)Lcom/leo/salt/widget/BackupsDialog;
    .locals 3

    new-instance v0, Lcom/leo/salt/widget/BackupsDialog;

    invoke-direct {v0}, Lcom/leo/salt/widget/BackupsDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_request_code"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "is_confirm"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "file_path"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/widget/BackupsDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getBackupRestoreChooserDialog()Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/widget/BackupsDialog$4;

    invoke-direct {v1, p0}, Lcom/leo/salt/widget/BackupsDialog$4;-><init>(Lcom/leo/salt/widget/BackupsDialog;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getRestoreConfirmDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100363

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100364

    invoke-virtual {p0, v1}, Lcom/leo/salt/widget/BackupsDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/widget/BackupsDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/widget/BackupsDialog$1;-><init>(Lcom/leo/salt/widget/BackupsDialog;Ljava/lang/String;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private getRestoreFileSelectorDialog()Landroid/app/Dialog;
    .locals 8

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/leo/salt/utils/Constants;->BACKUP_FOLDER_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_1

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const v6, 0x7f10010d

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    new-instance v4, Lcom/leo/salt/widget/BackupsDialog$2;

    invoke-direct {v4, p0, v1}, Lcom/leo/salt/widget/BackupsDialog$2;-><init>(Lcom/leo/salt/widget/BackupsDialog;[Ljava/io/File;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_2
    const v0, 0x7f1002c3

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1002c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v3, Lcom/leo/salt/widget/BackupsDialog$3;

    invoke-direct {v3, p0}, Lcom/leo/salt/widget/BackupsDialog$3;-><init>(Lcom/leo/salt/widget/BackupsDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(I)Lcom/leo/salt/widget/BackupsDialog;
    .locals 3

    new-instance v0, Lcom/leo/salt/widget/BackupsDialog;

    invoke-direct {v0}, Lcom/leo/salt/widget/BackupsDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_request_code"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/widget/BackupsDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    iput-object p1, p0, Lcom/leo/salt/widget/BackupsDialog;->mOnDialogFragmentListener:Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    iput-object p1, p0, Lcom/leo/salt/widget/BackupsDialog;->mOnDialogFragmentListener:Lcom/leo/salt/widget/BackupsDialog$OnDialogFragmentListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_request_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/widget/BackupsDialog;->mRequestCode:I

    iget v0, p0, Lcom/leo/salt/widget/BackupsDialog;->mRequestCode:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_confirm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/leo/salt/widget/BackupsDialog;->getRestoreFileSelectorDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/widget/BackupsDialog;->getRestoreConfirmDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/leo/salt/widget/BackupsDialog;->getBackupRestoreChooserDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/widget/BackupsDialog;->dismiss()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method
