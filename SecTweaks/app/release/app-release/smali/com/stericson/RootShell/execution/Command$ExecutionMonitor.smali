.class Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;
.super Ljava/lang/Thread;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootShell/execution/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutionMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootShell/execution/Command;


# direct methods
.method private constructor <init>(Lcom/stericson/RootShell/execution/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootShell/execution/Command;Lcom/stericson/RootShell/execution/Command$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;-><init>(Lcom/stericson/RootShell/execution/Command;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    iget v0, v0, Lcom/stericson/RootShell/execution/Command;->timeout:I

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    iget-boolean v0, v0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    iget-object v2, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    iget v2, v2, Lcom/stericson/RootShell/execution/Command;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    iget-boolean v0, v0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    if-nez v0, :cond_0

    const-string v0, "Timeout Exception has occurred."

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->this$0:Lcom/stericson/RootShell/execution/Command;

    const-string v1, "Timeout Exception"

    invoke-virtual {v0, v1}, Lcom/stericson/RootShell/execution/Command;->terminate(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
