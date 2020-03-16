.class final Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->run()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getTherad()Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getTherad()Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getTherad()Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getTherad()Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Thread;

    invoke-virtual {p1, p2}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->setTherad(Ljava/lang/Thread;)V

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    iget-object p1, p1, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/utils/ktshell/CheckRootStatus;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->getMyHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2$1;-><init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2$2;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
