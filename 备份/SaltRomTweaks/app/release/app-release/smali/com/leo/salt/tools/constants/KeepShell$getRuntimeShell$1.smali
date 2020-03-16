.class final Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;
.super Ljava/lang/Object;
.source "KeepShell.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/KeepShell;->getRuntimeShell()V
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
.field final synthetic $getSu:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/leo/salt/tools/constants/KeepShell;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/KeepShell;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;->$getSu:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/KeepShell;->access$getP$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/lang/Process;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;->$getSu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/leo/salt/tools/constants/KeepShell;->access$setEnterLockTime$p(Lcom/leo/salt/tools/constants/KeepShell;J)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;->$getSu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
