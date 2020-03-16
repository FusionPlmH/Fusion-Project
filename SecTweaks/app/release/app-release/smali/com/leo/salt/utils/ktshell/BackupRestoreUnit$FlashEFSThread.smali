.class public final Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlashEFSThread"
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
        "Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;",
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

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->path:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowProgressBar()V

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowProgressBar()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->FlashEFSUrl(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->HideProgressBar()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->NoRoot$app_release()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

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

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->path:Ljava/lang/String;

    return-void
.end method
