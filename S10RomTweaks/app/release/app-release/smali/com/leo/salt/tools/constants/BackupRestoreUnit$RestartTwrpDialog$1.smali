.class final Lcom/leo/salt/tools/constants/BackupRestoreUnit$RestartTwrpDialog$1;
.super Ljava/lang/Object;
.source "BackupRestoreUnit.kt"

# interfaces
.implements Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RestartTwrpDialog(Ljava/lang/String;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "sDialog",
        "Lcom/leo/SweetAlert/SweetAlertDialog;",
        "kotlin.jvm.PlatformType",
        "onClick"
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

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$RestartTwrpDialog$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$RestartTwrpDialog$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SystemReboot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
