.class final Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepShell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepShell.kt\ncom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1\n*L\n1#1,166:1\n*E\n"
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
.field final synthetic this$0:Lcom/leo/salt/tools/constants/KeepShell;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/KeepShell;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/tools/constants/KeepShell;->access$getMLock$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/leo/salt/tools/constants/KeepShell;->access$setEnterLockTime$p(Lcom/leo/salt/tools/constants/KeepShell;J)V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    iget-object v4, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v4}, Lcom/leo/salt/tools/constants/KeepShell;->access$getRootMode$p(Lcom/leo/salt/tools/constants/KeepShell;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "su"

    goto :goto_0

    :cond_0
    const-string v4, "sh"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/leo/salt/tools/constants/KeepShell;->access$setP$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/lang/Process;)V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v3}, Lcom/leo/salt/tools/constants/KeepShell;->access$getP$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/lang/Process;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/leo/salt/tools/constants/KeepShell;->access$setOut$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v3}, Lcom/leo/salt/tools/constants/KeepShell;->access$getP$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/lang/Process;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "p!!.inputStream"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    const/16 v3, 0x2000

    instance-of v4, v5, Ljava/io/BufferedReader;

    if-eqz v4, :cond_3

    check-cast v5, Ljava/io/BufferedReader;

    move-object v4, v5

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_1
    invoke-static {v2, v4}, Lcom/leo/salt/tools/constants/KeepShell;->access$setReader$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/io/BufferedReader;)V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/tools/constants/KeepShell;->access$getOut$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v3, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v3}, Lcom/leo/salt/tools/constants/KeepShell;->access$getCheckRootState$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "Charset.defaultCharset()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v2}, Lcom/leo/salt/tools/constants/KeepShell;->access$getOut$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1$1;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1$1;-><init>(Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_6
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "getRuntime"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v2, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v2, v0, v1}, Lcom/leo/salt/tools/constants/KeepShell;->access$setEnterLockTime$p(Lcom/leo/salt/tools/constants/KeepShell;J)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/KeepShell;->access$getMLock$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    iget-object v3, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v3, v0, v1}, Lcom/leo/salt/tools/constants/KeepShell;->access$setEnterLockTime$p(Lcom/leo/salt/tools/constants/KeepShell;J)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;->this$0:Lcom/leo/salt/tools/constants/KeepShell;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/KeepShell;->access$getMLock$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
