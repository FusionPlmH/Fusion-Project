.class final Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepShell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepShell.kt\ncom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1\n*L\n1#1,201:1\n*E\n"
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

.field final synthetic $error:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/KeepShell;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->$error:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->tryExit$app_release()V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$setP$p(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/Process;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->getProcessHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->getProcessHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->getProcessHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v3}, Lcom/leo/salt/utils/ktshell/KeepShell;->getPROCESS_EVENT_STAR()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/Process;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$2;

    invoke-direct {v2, p0}, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$2;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/Process;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "p!!.outputStream"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Writer;

    const/16 v2, 0x2000

    instance-of v3, v4, Ljava/io/BufferedWriter;

    if-eqz v3, :cond_5

    check-cast v4, Ljava/io/BufferedWriter;

    move-object v3, v4

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    :goto_0
    invoke-static {v1, v3}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$setOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/io/BufferedWriter;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->$error:Ljava/lang/Runnable;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->$cmd:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->$cmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getCmdsCache$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getCmdsCache$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$setCmdsCache$p(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/StringBuilder;)V

    :cond_a
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->$error:Ljava/lang/Runnable;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getContext$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context!!.getResources()\u2026tring.no_su_dialog_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$showMsg(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_1
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v1, v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$setThreadStarted$p(Lcom/leo/salt/utils/ktshell/KeepShell;Z)V

    return-void

    :goto_2
    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v2, v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$setThreadStarted$p(Lcom/leo/salt/utils/ktshell/KeepShell;Z)V

    throw v1
.end method
