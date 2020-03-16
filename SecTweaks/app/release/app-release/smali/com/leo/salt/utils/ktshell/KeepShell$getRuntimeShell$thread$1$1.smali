.class final Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;
.super Ljava/lang/Object;
.source "KeepShell.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->run()V
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
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    iget-object v2, v2, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/Process;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    iget-object v2, v2, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->getProcessHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    iget-object v2, v2, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/KeepShell;->getProcessHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    iget-object v3, v3, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v3}, Lcom/leo/salt/utils/ktshell/KeepShell;->getProcessHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v4, p0, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    iget-object v4, v4, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;->this$0:Lcom/leo/salt/utils/ktshell/KeepShell;

    invoke-virtual {v4}, Lcom/leo/salt/utils/ktshell/KeepShell;->getPROCESS_EVENT_CONTENT()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1

    :catch_0
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method
