.class final Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/CheckRootStatus;->forceGetRoot()V
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
.field final synthetic $completed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $pd:Lcom/leo/salt/kt/ProgressBarDialog;

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/leo/salt/kt/ProgressBarDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->$pd:Lcom/leo/salt/kt/ProgressBarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->access$getDisableSeLinux$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->access$isRoot(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$1;-><init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1$2;-><init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
