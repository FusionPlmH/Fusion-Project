.class final Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowProgressBar$1;
.super Ljava/lang/Object;
.source "BackupRestoreUnit.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowProgressBar$1;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowProgressBar$1;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->getDialog()Lcom/leo/salt/kt/ProgressBarDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowProgressBar$1;->this$0:Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getResources().g\u2026ng(R.string.execute_wait)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/kt/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void
.end method
