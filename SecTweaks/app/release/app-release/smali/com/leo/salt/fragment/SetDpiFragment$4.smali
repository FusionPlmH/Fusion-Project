.class Lcom/leo/salt/fragment/SetDpiFragment$4;
.super Ljava/lang/Object;
.source "SetDpiFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/fragment/SetDpiFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/fragment/SetDpiFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/leo/salt/fragment/SetDpiFragment;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/SetDpiFragment$4;->this$0:Lcom/leo/salt/fragment/SetDpiFragment;

    iput-object p2, p0, Lcom/leo/salt/fragment/SetDpiFragment$4;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p2, p0, Lcom/leo/salt/fragment/SetDpiFragment$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p2

    iget-object v0, p0, Lcom/leo/salt/fragment/SetDpiFragment$4;->this$0:Lcom/leo/salt/fragment/SetDpiFragment;

    invoke-static {v0, p2}, Lcom/leo/salt/fragment/SetDpiFragment;->access$100(Lcom/leo/salt/fragment/SetDpiFragment;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    :try_start_0
    new-instance p2, Lcom/stericson/RootShell/execution/Command;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wm density "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p2, v4, v2}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;

    new-instance p2, Lcom/stericson/RootShell/execution/Command;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "busybox mount -o remount,rw /system"

    aput-object v3, v2, v4

    const-string v3, "cd /system"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sed -i \'/ro.sf.lcd_density/c\\ ro.sf.lcd_density="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' build.prop"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p2, v4, v2}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;

    iget-object p2, p0, Lcom/leo/salt/fragment/SetDpiFragment$4;->this$0:Lcom/leo/salt/fragment/SetDpiFragment;

    invoke-virtual {p2}, Lcom/leo/salt/fragment/SetDpiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/leo/salt/utils/NotificationUtils;->getRebootInfo(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/leo/salt/fragment/CustomDpiFragment;

    invoke-direct {p1}, Lcom/leo/salt/fragment/CustomDpiFragment;-><init>()V

    iget-object p2, p0, Lcom/leo/salt/fragment/SetDpiFragment$4;->this$0:Lcom/leo/salt/fragment/SetDpiFragment;

    invoke-virtual {p2}, Lcom/leo/salt/fragment/SetDpiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const-string v0, "custom dpi"

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method
