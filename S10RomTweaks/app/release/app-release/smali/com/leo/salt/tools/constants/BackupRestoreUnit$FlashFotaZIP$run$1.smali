.class public final Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP$run$1;
.super Ljava/lang/Thread;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP$run$1",
        "Ljava/lang/Thread;",
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
.field final synthetic this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP$run$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "log"

    const-string v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP$run$1;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;

    iget-object v0, v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;->this$0:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    const-string v1, "Leo Fota"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RestartTwrpDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "reboot recovery"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
