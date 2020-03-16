.class public final Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "backupBootAnimaThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;",
        "Ljava/lang/Thread;",
        "(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V",
        "run",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "cp  "

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowProgressBar()V

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "mkdir -p /sdcard/LeoTweaks/backups/anim"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->SystemABUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "media/bootsamsung.qmg  /sdcard/LeoTweaks/backups/anim/bootsamsung.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->SystemABUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "media/bootsamsungloop.qmg /sdcard/LeoTweaks/backups/anim/bootsamsungloop.qmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->SystemABUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "media/shutdown.qmg /sdcard/LeoTweaks/backups/anim/shutdown.qmg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->getAnimOK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff3b /sdcard/LeoTweaks/backups/anim \uff3d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->HideProgressBar()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->NoRoot$app_release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->HideProgressBar()V

    throw v0
.end method
