.class public final Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlashZIPThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;",
        "Ljava/lang/Thread;",
        "path",
        "",
        "(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "run",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;


# direct methods
.method public constructor <init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->path:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowProgressBar()V

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mkdir /cache/recovery"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " /cache/recovery/leoupdate.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cp  /system/leo/update/command /cache/recovery/command"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sleep 5"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;
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
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->HideProgressBar()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->NoRoot$app_release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->HideProgressBar()V

    throw v0
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->path:Ljava/lang/String;

    return-void
.end method
