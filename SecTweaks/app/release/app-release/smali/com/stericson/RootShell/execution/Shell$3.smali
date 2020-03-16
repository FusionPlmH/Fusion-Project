.class Lcom/stericson/RootShell/execution/Shell$3;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootShell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootShell/execution/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/RootShell/execution/Shell;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$200(Lcom/stericson/RootShell/execution/Shell;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$1100(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$500(Lcom/stericson/RootShell/execution/Shell;)I

    move-result v4

    iget-object v5, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootShell/execution/Shell;->access$100(Lcom/stericson/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    iput-boolean v3, v4, Lcom/stericson/RootShell/execution/Shell;->isReading:Z

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$1100(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    iput-boolean v2, v5, Lcom/stericson/RootShell/execution/Shell;->isReading:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_8

    iget-object v5, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootShell/execution/Shell;->access$500(Lcom/stericson/RootShell/execution/Shell;)I

    move-result v5

    iget-object v6, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v6}, Lcom/stericson/RootShell/execution/Shell;->access$100(Lcom/stericson/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_7

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$200(Lcom/stericson/RootShell/execution/Shell;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    :cond_3
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$1300(Lcom/stericson/RootShell/execution/Shell;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$1300(Lcom/stericson/RootShell/execution/Shell;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$500(Lcom/stericson/RootShell/execution/Shell;)I

    move-result v4

    iget-object v5, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootShell/execution/Shell;->access$100(Lcom/stericson/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$100(Lcom/stericson/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$500(Lcom/stericson/RootShell/execution/Shell;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/RootShell/execution/Command;

    :cond_4
    iget v4, v1, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iget v5, v1, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    if-ge v4, v5, :cond_5

    const-string v4, "All output not processed!"

    invoke-virtual {v1, v4}, Lcom/stericson/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    const-string v4, "Did you forget the super.commandOutput call or are you waiting on the command object?"

    invoke-virtual {v1, v4}, Lcom/stericson/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v4, "Unexpected Termination."

    invoke-virtual {v1, v4}, Lcom/stericson/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$508(Lcom/stericson/RootShell/execution/Shell;)I

    move-object v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v0, v3}, Lcom/stericson/RootShell/execution/Shell;->access$502(Lcom/stericson/RootShell/execution/Shell;I)I

    goto/16 :goto_7

    :cond_7
    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$100(Lcom/stericson/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v5}, Lcom/stericson/RootShell/execution/Shell;->access$500(Lcom/stericson/RootShell/execution/Shell;)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/RootShell/execution/Command;

    :cond_8
    const-string v5, "F*D^W@#FGF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    iget v7, v1, Lcom/stericson/RootShell/execution/Command;->id:I

    invoke-virtual {v1, v7, v4}, Lcom/stericson/RootShell/execution/Command;->output(ILjava/lang/String;)V

    goto :goto_4

    :cond_9
    if-lez v5, :cond_a

    iget v7, v1, Lcom/stericson/RootShell/execution/Command;->id:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/stericson/RootShell/execution/Command;->output(ILjava/lang/String;)V

    :cond_a
    :goto_4
    if-ltz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x2

    if-lt v5, v7, :cond_0

    aget-object v5, v4, v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_0

    :try_start_3
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catch_1
    const/4 v5, 0x0

    :goto_5
    :try_start_4
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    :try_start_5
    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v4}, Lcom/stericson/RootShell/execution/Shell;->access$1200(Lcom/stericson/RootShell/execution/Shell;)I

    move-result v4

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-virtual {v4, v1}, Lcom/stericson/RootShell/execution/Shell;->processErrors(Lcom/stericson/RootShell/execution/Command;)V

    const/4 v4, 0x0

    :goto_6
    iget v5, v1, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    iget v7, v1, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    if-le v5, v7, :cond_c

    if-nez v4, :cond_b

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting for output to be processed. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/stericson/RootShell/execution/Command;->totalOutputProcessed:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/stericson/RootShell/execution/Command;->totalOutput:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    :try_start_6
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v7, 0x7d0

    :try_start_7
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_3
    move-exception v5

    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v4, "Read all output"

    invoke-static {v4}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/stericson/RootShell/execution/Command;->setExitCode(I)V

    invoke-virtual {v1}, Lcom/stericson/RootShell/execution/Command;->commandFinished()V

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$508(Lcom/stericson/RootShell/execution/Shell;)I

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$1208(Lcom/stericson/RootShell/execution/Shell;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v1, v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/stericson/RootShell/RootShell$LogLevel;->ERROR:Lcom/stericson/RootShell/RootShell$LogLevel;

    invoke-static {v1, v4, v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;Lcom/stericson/RootShell/RootShell$LogLevel;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_7
    iget-object v0, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v0}, Lcom/stericson/RootShell/execution/Shell;->access$800(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootShell/execution/Shell;->access$1000(Lcom/stericson/RootShell/execution/Shell;Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v0}, Lcom/stericson/RootShell/execution/Shell;->access$1400(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootShell/execution/Shell;->access$1500(Lcom/stericson/RootShell/execution/Shell;Ljava/io/Reader;)V

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v0}, Lcom/stericson/RootShell/execution/Shell;->access$1100(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootShell/execution/Shell;->access$1500(Lcom/stericson/RootShell/execution/Shell;Ljava/io/Reader;)V

    const-string v0, "Shell destroyed"

    invoke-static {v0}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    iput-boolean v2, v0, Lcom/stericson/RootShell/execution/Shell;->isClosed:Z

    iput-boolean v3, v0, Lcom/stericson/RootShell/execution/Shell;->isReading:Z

    return-void

    :goto_8
    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$800(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/stericson/RootShell/execution/Shell;->access$1000(Lcom/stericson/RootShell/execution/Shell;Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$1400(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/stericson/RootShell/execution/Shell;->access$1500(Lcom/stericson/RootShell/execution/Shell;Ljava/io/Reader;)V

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    invoke-static {v1}, Lcom/stericson/RootShell/execution/Shell;->access$1100(Lcom/stericson/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/stericson/RootShell/execution/Shell;->access$1500(Lcom/stericson/RootShell/execution/Shell;Ljava/io/Reader;)V

    const-string v1, "Shell destroyed"

    invoke-static {v1}, Lcom/stericson/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stericson/RootShell/execution/Shell$3;->this$0:Lcom/stericson/RootShell/execution/Shell;

    iput-boolean v2, v1, Lcom/stericson/RootShell/execution/Shell;->isClosed:Z

    iput-boolean v3, v1, Lcom/stericson/RootShell/execution/Shell;->isReading:Z

    throw v0
.end method
