.class final Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowProgressBar$1;
.super Ljava/lang/Object;
.source "BackupRestoreUnit.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowProgressBar()V
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
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowProgressBar$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowProgressBar$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->getDialog()Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowProgressBar$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    const-string v2, "execute_wait"

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void
.end method
