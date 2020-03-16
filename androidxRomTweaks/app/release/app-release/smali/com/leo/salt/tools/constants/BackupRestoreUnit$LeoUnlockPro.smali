.class public final Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeoUnlockPro"
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
        "Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;",
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

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "sleep 2s"

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    const v2, 0x7f1003ca

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getApksStringInt(R.string.unlockpro)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowUnlockProgressBar(Ljava/lang/String;)V

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "sleep 1s"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "cp  /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/9XUnlockPro.sh  /data/data/com.leo.salt.tweaks/files/scripts/9XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "cp  /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/10XUnlockPro.sh  /data/data/com.leo.salt.tweaks/files/scripts/10XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "chmod -R 0755 /data/data/com.leo.salt.tweaks/files/scripts/9XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "chmod -R 0755 /data/data/com.leo.salt.tweaks/files/scripts/10XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SystemUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "rm -rf /data/data/com.leo.salt.tweaks/files/scripts/UnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "rm -rf /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/10XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "rm -rf /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/9XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "rm -rf /sdcard/LeoTweaks/download/.UnZip/.UnlockPro"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "rm -rf /data/data/com.leo.salt.tweaks/files/scripts/10XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v2, "rm -rf /data/data/com.leo.salt.tweaks/files/scripts/9XUnlockPro.sh"

    invoke-virtual {v1, v2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SystemReboot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;
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
    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->HideProgressBar()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->NoRoot$app_release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->HideProgressBar()V

    throw v0
.end method
