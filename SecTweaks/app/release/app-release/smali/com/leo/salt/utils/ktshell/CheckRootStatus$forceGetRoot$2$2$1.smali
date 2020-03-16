.class final Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;

    iget-object v0, v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object v0, v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->$pd:Lcom/leo/salt/kt/ProgressBarDialog;

    invoke-virtual {v0}, Lcom/leo/salt/kt/ProgressBarDialog;->hideDialog()V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;

    iget-object v0, v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object v0, v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->access$getSkip$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;

    iget-object v0, v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object v0, v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->access$getSkip$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
