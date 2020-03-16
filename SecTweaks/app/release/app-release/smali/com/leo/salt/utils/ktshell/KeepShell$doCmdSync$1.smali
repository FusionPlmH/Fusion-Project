.class final Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;
.super Ljava/lang/Object;
.source "KeepShell.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/KeepShell;->doCmdSync$app_release(Ljava/lang/String;Z)V
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
.field final synthetic $cmd:Ljava/lang/String;

.field final synthetic $isRedo:Z

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/KeepShell;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/KeepShell;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iput-boolean p2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->$isRedo:Z

    iput-object p3, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->$isRedo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->$cmd:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->doCmd$app_release(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed execution action!\nError message : Unable to obtain Root permissions\n\n\ncommand : \r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;->$cmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$showMsg(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
