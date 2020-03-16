.class final Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;
.super Ljava/lang/Object;
.source "KeepShell.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/KeepShell;->getRuntimeShell(Ljava/lang/String;Ljava/lang/Runnable;)V
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
.field final synthetic $error:Ljava/lang/Runnable;

.field final synthetic $thread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/KeepShell;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->$thread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->$error:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/Process;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->tryExit$app_release()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->$error:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getContext$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context!!.getResources()\u2026su_dialog_title_overtime)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$showMsg(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$setThreadStarted$p(Lcom/leo/salt/utils/ktshell/KeepShell;Z)V

    :cond_2
    return-void
.end method
