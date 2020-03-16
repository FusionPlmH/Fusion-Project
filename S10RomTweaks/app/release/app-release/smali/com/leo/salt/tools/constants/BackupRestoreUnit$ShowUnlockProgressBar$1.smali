.class final Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;
.super Ljava/lang/Object;
.source "BackupRestoreUnit.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowUnlockProgressBar(Ljava/lang/String;)V
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
.field final synthetic $STR:Ljava/lang/String;

.field final synthetic this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;->$STR:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->getDialog()Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;->$STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void
.end method
