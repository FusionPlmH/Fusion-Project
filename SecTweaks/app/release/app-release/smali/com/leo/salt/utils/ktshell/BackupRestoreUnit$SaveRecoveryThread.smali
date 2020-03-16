.class public final Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SaveRecoveryThread"
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
        "Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;",
        "Ljava/lang/Thread;",
        "(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V",
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
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;


# direct methods
.method public constructor <init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowProgressBar()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->SaveRecoveryUrl()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->HideProgressBar()V

    return-void
.end method
