.class public final Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlashZIP"
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
        "Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;",
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

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "mount -o rw,remount /data"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "mount -o rw,remount /system"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "mkdir /cache/recovery"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "cp  /sdcard/LeoTweaks/update/ota.zip /cache/recovery/update.zip"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "sleep 5"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    const-string v1, "reboot recovery"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->NoRoot$app_release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :goto_1
    throw v0
.end method
