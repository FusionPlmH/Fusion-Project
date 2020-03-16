.class public Lcom/stericson/RootShell/execution/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootShell/execution/Command$CommandHandler;,
        Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;
    }
.end annotation


# instance fields
.field command:[Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field executing:Z

.field executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

.field exitCode:I

.field finished:Z

.field handlerEnabled:Z

.field id:I

.field protected javaCommand:Z

.field mHandler:Landroid/os/Handler;

.field terminated:Z

.field timeout:I

.field public totalOutput:I

.field public totalOutputProcessed:I


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->javaCommand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->context:Landroid/content/Context;

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->terminated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    sget v0, Lcom/stericson/RootShell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->timeout:I

    iput-object p3, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    iput p2, p0, Lcom/stericson/RootShell/execution/Command;->timeout:I

    sget-boolean p1, Lcom/stericson/RootShell/RootShell;->handlerEnabled:Z

    invoke-direct {p0, p1}, Lcom/stericson/RootShell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->javaCommand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->context:Landroid/content/Context;

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->terminated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    sget v0, Lcom/stericson/RootShell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->timeout:I

    iput-object p3, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    invoke-direct {p0, p2}, Lcom/stericson/RootShell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->javaCommand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->context:Landroid/content/Context;

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->terminated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    sget v0, Lcom/stericson/RootShell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->timeout:I

    iput-object p2, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    sget-boolean p1, Lcom/stericson/RootShell/RootShell;->handlerEnabled:Z

    invoke-direct {p0, p1}, Lcom/stericson/RootShell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method private createHandler(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "CommandHandler created"

    invoke-static {p1}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    new-instance p1, Lcom/stericson/RootShell/execution/Command$CommandHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stericson/RootShell/execution/Command$CommandHandler;-><init>(Lcom/stericson/RootShell/execution/Command;Lcom/stericson/RootShell/execution/Command$1;)V

    iput-object p1, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string p1, "CommandHandler not created"

    invoke-static {p1}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    return-void
.end method

.method protected final commandFinished()V
    .locals 4

    iget-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->terminated:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    iget v1, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    invoke-virtual {p0, v0, v1}, Lcom/stericson/RootShell/execution/Command;->commandCompleted(II)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericson/RootShell/execution/Command;->finishCommand()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 3

    const-string v0, "Command"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final finish()V
    .locals 1

    const-string v0, "Command finished at users request!"

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericson/RootShell/execution/Command;->commandFinished()V

    return-void
.end method

.method protected final finishCommand()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final getCommand()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/stericson/RootShell/execution/Command;->command:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExitCode()I
    .locals 1

    iget v0, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    return v0
.end method

.method public final isExecuting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    return v0
.end method

.method public final isHandlerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    return v0
.end method

.method protected final output(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stericson/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final resetCommand()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->finished:Z

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    iput-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->terminated:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    return-void
.end method

.method protected final setExitCode(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/stericson/RootShell/execution/Command;->exitCode:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final startExecution()V
    .locals 2

    new-instance v0, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;-><init>(Lcom/stericson/RootShell/execution/Command;Lcom/stericson/RootShell/execution/Command$1;)V

    iput-object v0, p0, Lcom/stericson/RootShell/execution/Command;->executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->setPriority(I)V

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->executionMonitor:Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;

    invoke-virtual {v0}, Lcom/stericson/RootShell/execution/Command$ExecutionMonitor;->start()V

    iput-boolean v1, p0, Lcom/stericson/RootShell/execution/Command;->executing:Z

    return-void
.end method

.method public final terminate()V
    .locals 1

    const-string v0, "Terminating command at users request!"

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    const-string v0, "Terminated at users request!"

    invoke-virtual {p0, v0}, Lcom/stericson/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    return-void
.end method

.method protected final terminate(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/stericson/RootShell/execution/Shell;->closeAll()V

    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/stericson/RootShell/execution/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final terminated(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/stericson/RootShell/execution/Command;->handlerEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    invoke-virtual {p0, v0, p1}, Lcom/stericson/RootShell/execution/Command;->commandTerminated(ILjava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stericson/RootShell/execution/Command;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " did not finish because it was terminated. Termination reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/stericson/RootShell/execution/Command;->setExitCode(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stericson/RootShell/execution/Command;->terminated:Z

    invoke-virtual {p0}, Lcom/stericson/RootShell/execution/Command;->finishCommand()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
