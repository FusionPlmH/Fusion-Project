.class final Lcom/leo/salt/utils/root/Helpers$Companion$WipeMeun$1;
.super Ljava/lang/Object;
.source "Helpers.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/root/Helpers$Companion;->WipeMeun(Landroid/content/Context;I)V
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
.field final synthetic $mydialog:Landroid/app/ProgressDialog;

.field final synthetic $reboot:I


# direct methods
.method constructor <init>(ILandroid/app/ProgressDialog;)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/utils/root/Helpers$Companion$WipeMeun$1;->$reboot:I

    iput-object p2, p0, Lcom/leo/salt/utils/root/Helpers$Companion$WipeMeun$1;->$mydialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$WipeMeun$1;->$reboot:I

    if-nez v0, :cond_0

    const-string v0, "mount -o remount,rw /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mount -o remount,ro /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rm -r /data/data/com.android.settings"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rm -r /data/data/com.android.providers.settings"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "reboot"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "mount -o remount,rw /cache"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mount -o remount,ro /cache"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rm -r /cache"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "reboot"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "mount -o remount,rw /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mount -o remount,ro /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rm -r /data/dalvik-cache"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "reboot"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "mount -o remount,rw /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mount -o remount,ro /data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rm -r /data/data"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "reboot"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$WipeMeun$1;->$mydialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method
