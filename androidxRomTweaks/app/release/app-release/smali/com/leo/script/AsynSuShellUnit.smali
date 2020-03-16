.class public final Lcom/leo/script/AsynSuShellUnit;
.super Ljava/lang/Object;
.source "AsynSuShellUnit.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsynSuShellUnit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsynSuShellUnit.kt\ncom/leo/script/AsynSuShellUnit\n*L\n1#1,126:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0002J\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/leo/script/AsynSuShellUnit;",
        "",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/os/Handler;)V",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "process",
        "Ljava/lang/Process;",
        "getProcess",
        "()Ljava/lang/Process;",
        "setProcess",
        "(Ljava/lang/Process;)V",
        "destroy",
        "",
        "exec",
        "cmd",
        "",
        "start",
        "waitFor",
        "next",
        "Ljava/lang/Runnable;",
        "script_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private process:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final start()Lcom/leo/script/AsynSuShellUnit;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/leo/script/ShellExecutor;->getSuperUserRuntime()Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/script/AsynSuShellUnit$start$1;

    invoke-direct {v2, p0}, Lcom/leo/script/AsynSuShellUnit$start$1;-><init>(Lcom/leo/script/AsynSuShellUnit;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/script/AsynSuShellUnit$start$2;

    invoke-direct {v2, p0}, Lcom/leo/script/AsynSuShellUnit$start$2;-><init>(Lcom/leo/script/AsynSuShellUnit;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final exec(Ljava/lang/String;)Lcom/leo/script/AsynSuShellUnit;
    .locals 6

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/leo/script/AsynSuShellUnit;->start()Lcom/leo/script/AsynSuShellUnit;

    :cond_0
    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "Charset.forName(\"UTF-8\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\n\n"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getProcess()Ljava/lang/Process;
    .locals 1

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    return-object v0
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/script/AsynSuShellUnit;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final setProcess(Ljava/lang/Process;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    return-void
.end method

.method public final waitFor()V
    .locals 3

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "outputStream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Writer;

    const/16 v0, 0x2000

    instance-of v1, v2, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_2

    check-cast v2, Ljava/io/BufferedWriter;

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    :goto_0
    const-string v0, "exit\nexit\nexit\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/script/AsynSuShellUnit$waitFor$1;

    invoke-direct {v1, p0}, Lcom/leo/script/AsynSuShellUnit$waitFor$1;-><init>(Lcom/leo/script/AsynSuShellUnit;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final waitFor(Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/script/AsynSuShellUnit;->process:Ljava/lang/Process;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "outputStream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Writer;

    const/16 v0, 0x2000

    instance-of v1, v2, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_2

    check-cast v2, Ljava/io/BufferedWriter;

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    :goto_0
    const-string v0, "exit\nexit\nexit\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/script/AsynSuShellUnit$waitFor$2;

    invoke-direct {v1, p0, p1}, Lcom/leo/script/AsynSuShellUnit$waitFor$2;-><init>(Lcom/leo/script/AsynSuShellUnit;Ljava/lang/Runnable;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
