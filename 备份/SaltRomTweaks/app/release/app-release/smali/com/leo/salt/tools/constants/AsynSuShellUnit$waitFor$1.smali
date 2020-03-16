.class final Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;
.super Ljava/lang/Object;
.source "AsynSuShellUnit.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/AsynSuShellUnit;->waitFor()V
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
.field final synthetic this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/AsynSuShellUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/AsynSuShellUnit;->getProcess()Ljava/lang/Process;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/AsynSuShellUnit;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-virtual {v2}, Lcom/leo/salt/tools/constants/AsynSuShellUnit;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/AsynSuShellUnit;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-virtual {v2}, Lcom/leo/salt/tools/constants/AsynSuShellUnit;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/tools/constants/AsynSuShellUnit$waitFor$1;->this$0:Lcom/leo/salt/tools/constants/AsynSuShellUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/AsynSuShellUnit;->destroy()V

    return-void
.end method
