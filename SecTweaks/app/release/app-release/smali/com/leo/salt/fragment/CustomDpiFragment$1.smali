.class Lcom/leo/salt/fragment/CustomDpiFragment$1;
.super Ljava/lang/Object;
.source "CustomDpiFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/CustomDpiFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/CustomDpiFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/CustomDpiFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p2, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    iget-object p2, p2, Lcom/leo/salt/fragment/CustomDpiFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :try_start_0
    const-string v0, "EditText"

    iget-object v1, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    iget-object v1, v1, Lcom/leo/salt/fragment/CustomDpiFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14a

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x1e0

    if-gt p2, v0, :cond_0

    :try_start_1
    new-instance p2, Lcom/stericson/RootShell/execution/Command;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wm density "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    iget-object v3, v3, Lcom/leo/salt/fragment/CustomDpiFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p2, v3, v1}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;

    new-instance p2, Lcom/stericson/RootShell/execution/Command;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "busybox mount -o remount,rw /system"

    aput-object v2, v1, v3

    const-string v2, "cd /system"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sed -i \'/ro.sf.lcd_density/c\\ro.sf.lcd_density="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    iget-object v5, v5, Lcom/leo/salt/fragment/CustomDpiFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' build.prop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p2, v3, v1}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;

    iget-object p2, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    invoke-virtual {p2}, Lcom/leo/salt/fragment/CustomDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/leo/salt/utils/NotificationUtils;->getRebootInfo(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/leo/salt/fragment/IllegalValueFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/IllegalValueFragment;-><init>()V

    iget-object p2, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    iget-object p2, p2, Lcom/leo/salt/fragment/CustomDpiFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/fragment/IllegalValueFragment;->mUpdateText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/leo/salt/fragment/CustomDpiFragment$1;->this$0:Lcom/leo/salt/fragment/CustomDpiFragment;

    invoke-virtual {p2}, Lcom/leo/salt/fragment/CustomDpiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const-string v0, "illegal value fragment"

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
