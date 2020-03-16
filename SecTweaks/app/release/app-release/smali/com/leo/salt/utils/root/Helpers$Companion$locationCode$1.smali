.class final Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;
.super Ljava/lang/Object;
.source "Helpers.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/root/Helpers$Companion;->locationCode(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic $delete:Ljava/lang/String;

.field final synthetic $delete2:Ljava/lang/String;

.field final synthetic $gaode:Ljava/lang/String;

.field final synthetic $mydialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$delete:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$delete2:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$gaode:Ljava/lang/String;

    iput-object p4, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$mydialog:Landroid/app/ProgressDialog;

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
    const-string v0, "mount -o rw,remount /system"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$delete:Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$delete2:Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$gaode:Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sleep 1"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/utils/root/Helpers$Companion$locationCode$1;->$mydialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method
