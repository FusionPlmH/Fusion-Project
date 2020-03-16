.class final Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;
.super Ljava/lang/Object;
.source "KeepShellSync.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/KeepShellSync;->getRuntimeShell()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepShellSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepShellSync.kt\ncom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1\n*L\n1#1,150:1\n*E\n"
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


# static fields
.field public static final INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;

    invoke-direct {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;-><init>()V

    sput-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getMLock$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$setP$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/lang/Process;)V

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/lang/Process;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$setOut$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/io/OutputStream;)V

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/lang/Process;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "p!!.inputStream"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    const/16 v1, 0x2000

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_2

    check-cast v3, Ljava/io/BufferedReader;

    move-object v2, v3

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    invoke-static {v0, v2}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$setReader$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/io/BufferedReader;)V

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getCheckRootState$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "Charset.defaultCharset()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1$1;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "getRuntime"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getMLock$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-static {v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->access$getMLock$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
