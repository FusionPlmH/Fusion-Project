.class Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/service/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalReceiver"
.end annotation


# static fields
.field static final BACKUP_COMPLETE_ACTION:Ljava/lang/String; = "com.leo.salt.action.BACKUP_COMPLETE"

.field static final RESTORE_COMPLETE_ACTION:Ljava/lang/String; = "com.leo.salt.action.RESTORE_COMPLETE"


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/service/BackupRestoreService;


# direct methods
.method private constructor <init>(Lcom/leo/salt/tools/service/BackupRestoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;->this$0:Lcom/leo/salt/tools/service/BackupRestoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/tools/service/BackupRestoreService;Lcom/leo/salt/tools/service/BackupRestoreService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;-><init>(Lcom/leo/salt/tools/service/BackupRestoreService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0xcaef44f

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x61d51aaf

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.leo.salt.action.RESTORE_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "com.leo.salt.action.BACKUP_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;->this$0:Lcom/leo/salt/tools/service/BackupRestoreService;

    const v1, 0x7f1002d6

    invoke-virtual {p2, v1}, Lcom/leo/salt/tools/service/BackupRestoreService;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/leo/salt/tools/service/BackupRestoreService$UiThreadRunnable;

    iget-object v2, p0, Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;->this$0:Lcom/leo/salt/tools/service/BackupRestoreService;

    invoke-direct {v1, v2, p2}, Lcom/leo/salt/tools/service/BackupRestoreService$UiThreadRunnable;-><init>(Lcom/leo/salt/tools/service/BackupRestoreService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/leo/salt/tweaks/MainActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    const-string p1, "file_path"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/tools/service/BackupRestoreService$UiThreadRunnable;

    iget-object v1, p0, Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;->this$0:Lcom/leo/salt/tools/service/BackupRestoreService;

    invoke-direct {p2, v1, p1}, Lcom/leo/salt/tools/service/BackupRestoreService$UiThreadRunnable;-><init>(Lcom/leo/salt/tools/service/BackupRestoreService;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    iget-object p1, p0, Lcom/leo/salt/tools/service/BackupRestoreService$LocalReceiver;->this$0:Lcom/leo/salt/tools/service/BackupRestoreService;

    invoke-virtual {p1, p0}, Lcom/leo/salt/tools/service/BackupRestoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
