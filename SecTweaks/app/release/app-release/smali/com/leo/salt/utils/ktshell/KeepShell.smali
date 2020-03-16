.class public final Lcom/leo/salt/utils/ktshell/KeepShell;
.super Lcom/leo/salt/utils/ktshell/ShellEvents;
.source "KeepShell.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0019J\u001f\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u001c\u0010\u001c\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u000e\u0010\u001f\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u0017H\u0002J\r\u0010\"\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008#R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\u0008j\u0002`\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/KeepShell;",
        "Lcom/leo/salt/utils/ktshell/ShellEvents;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "GET_ROOT_TIMEOUT",
        "",
        "cmdsCache",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "handler",
        "Landroid/os/Handler;",
        "mLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "out",
        "Ljava/io/BufferedWriter;",
        "p",
        "Ljava/lang/Process;",
        "threadStarted",
        "",
        "doCmd",
        "",
        "cmd",
        "",
        "isRedo",
        "doCmd$app_release",
        "doCmdSync",
        "doCmdSync$app_release",
        "getRuntimeShell",
        "error",
        "Ljava/lang/Runnable;",
        "setHandler",
        "showMsg",
        "msg",
        "tryExit",
        "tryExit$app_release",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final GET_ROOT_TIMEOUT:J

.field private cmdsCache:Ljava/lang/StringBuilder;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private out:Ljava/io/BufferedWriter;

.field private p:Ljava/lang/Process;

.field private threadStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/ShellEvents;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->context:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->handler:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->GET_ROOT_TIMEOUT:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->cmdsCache:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic access$getCmdsCache$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->cmdsCache:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/io/BufferedWriter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method public static final synthetic access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Ljava/lang/Process;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->p:Ljava/lang/Process;

    return-object p0
.end method

.method public static final synthetic access$getThreadStarted$p(Lcom/leo/salt/utils/ktshell/KeepShell;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->threadStarted:Z

    return p0
.end method

.method public static final synthetic access$setCmdsCache$p(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->cmdsCache:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic access$setContext$p(Lcom/leo/salt/utils/ktshell/KeepShell;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setOut$p(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/io/BufferedWriter;)V
    .locals 0
    .param p1    # Ljava/io/BufferedWriter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    return-void
.end method

.method public static final synthetic access$setP$p(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/Process;)V
    .locals 0
    .param p1    # Ljava/lang/Process;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->p:Ljava/lang/Process;

    return-void
.end method

.method public static final synthetic access$setThreadStarted$p(Lcom/leo/salt/utils/ktshell/KeepShell;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->threadStarted:Z

    return-void
.end method

.method public static final synthetic access$showMsg(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/ktshell/KeepShell;->showMsg(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic doCmd$app_release$default(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/utils/ktshell/KeepShell;->doCmd$app_release(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic doCmdSync$app_release$default(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/utils/ktshell/KeepShell;->doCmdSync$app_release(Ljava/lang/String;Z)V

    return-void
.end method

.method private final getRuntimeShell(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->threadStarted:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->cmdsCache:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->cmdsCache:Ljava/lang/StringBuilder;

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$thread$1;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/Runnable;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->threadStarted:Z

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/leo/salt/utils/ktshell/KeepShell$getRuntimeShell$1;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    check-cast v1, Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->GET_ROOT_TIMEOUT:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final showMsg(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/utils/ktshell/KeepShell$showMsg$1;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final doCmd$app_release(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->p:Ljava/lang/Process;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmd$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/leo/salt/utils/ktshell/KeepShell$doCmd$1;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell;ZLjava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->getRuntimeShell(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-nez p2, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/utils/ktshell/KeepShell;->doCmd$app_release(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed execution action!\nError message : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n\ncommand : \r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/ktshell/KeepShell;->showMsg(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final doCmdSync$app_release(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->p:Ljava/lang/Process;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/leo/salt/utils/ktshell/KeepShell$doCmdSync$1;-><init>(Lcom/leo/salt/utils/ktshell/KeepShell;ZLjava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/utils/ktshell/KeepShell;->getRuntimeShell(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-nez p2, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/utils/ktshell/KeepShell;->doCmd$app_release(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed execution action!\nError message : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n\ncommand : \r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/ktshell/KeepShell;->showMsg(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/leo/salt/utils/ktshell/KeepShell;->setProcessHandler(Landroid/os/Handler;)V

    return-void
.end method

.method public final tryExit$app_release()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/io/BufferedWriter;

    iput-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v1, v0

    check-cast v1, Ljava/io/BufferedWriter;

    iput-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->out:Ljava/io/BufferedWriter;

    :try_start_1
    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->p:Ljava/lang/Process;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    check-cast v0, Ljava/lang/Process;

    iput-object v0, p0, Lcom/leo/salt/utils/ktshell/KeepShell;->p:Ljava/lang/Process;

    return-void
.end method
