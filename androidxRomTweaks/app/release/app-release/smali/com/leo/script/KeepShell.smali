.class public final Lcom/leo/script/KeepShell;
.super Ljava/lang/Object;
.source "KeepShell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepShell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepShell.kt\ncom/leo/script/KeepShell\n*L\n1#1,183:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000bJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u0019R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/leo/script/KeepShell;",
        "",
        "rootMode",
        "",
        "(Z)V",
        "GET_ROOT_TIMEOUT",
        "",
        "LOCK_TIMEOUT",
        "br",
        "",
        "checkRootState",
        "",
        "enterLockTime",
        "mLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "out",
        "Ljava/io/OutputStream;",
        "p",
        "Ljava/lang/Process;",
        "reader",
        "Ljava/io/BufferedReader;",
        "checkRoot",
        "doCmdSync",
        "cmd",
        "getRuntimeShell",
        "",
        "tryExit",
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
.field private final GET_ROOT_TIMEOUT:J

.field private final LOCK_TIMEOUT:J

.field private br:[B

.field private checkRootState:Ljava/lang/String;

.field private enterLockTime:J

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private out:Ljava/io/OutputStream;

.field private p:Ljava/lang/Process;

.field private reader:Ljava/io/BufferedReader;

.field private rootMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/leo/script/KeepShell;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/leo/script/KeepShell;->rootMode:Z

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/leo/script/KeepShell;->GET_ROOT_TIMEOUT:J

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/leo/script/KeepShell;->LOCK_TIMEOUT:J

    const-string p1, "if [[ $(id -u 2>&1) == \'0\' ]] || [[ $($UID) == \'0\' ]] || [[ $(whoami 2>&1) == \'root\' ]] || [[ $(set | grep \'USER_ID=0\') == \'USER_ID=0\' ]]; then\n  echo \'root\'\nelse\nif [[ -d /cache ]]; then\n  echo 1 > /cache/leo_root\n  if [[ -f /cache/leo_root ]] && [[ $(cat /cache/leo_root) == \'1\' ]]; then\n    echo root\n    rm -rf /cache/leo_root\n    return\n  fi\nfi\nexit 1\nexit 1\nfi\n"

    iput-object p1, p0, Lcom/leo/script/KeepShell;->checkRootState:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "Charset.defaultCharset()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/script/KeepShell;->br:[B

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/leo/script/KeepShell;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getCheckRootState$p(Lcom/leo/script/KeepShell;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/script/KeepShell;->checkRootState:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getEnterLockTime$p(Lcom/leo/script/KeepShell;)J
    .locals 2

    iget-wide v0, p0, Lcom/leo/script/KeepShell;->enterLockTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMLock$p(Lcom/leo/script/KeepShell;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getOut$p(Lcom/leo/script/KeepShell;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/leo/script/KeepShell;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static final synthetic access$getP$p(Lcom/leo/script/KeepShell;)Ljava/lang/Process;
    .locals 0

    iget-object p0, p0, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    return-object p0
.end method

.method public static final synthetic access$getReader$p(Lcom/leo/script/KeepShell;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static final synthetic access$getRootMode$p(Lcom/leo/script/KeepShell;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/script/KeepShell;->rootMode:Z

    return p0
.end method

.method public static final synthetic access$setCheckRootState$p(Lcom/leo/script/KeepShell;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/script/KeepShell;->checkRootState:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setEnterLockTime$p(Lcom/leo/script/KeepShell;J)V
    .locals 0

    iput-wide p1, p0, Lcom/leo/script/KeepShell;->enterLockTime:J

    return-void
.end method

.method public static final synthetic access$setOut$p(Lcom/leo/script/KeepShell;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/script/KeepShell;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setP$p(Lcom/leo/script/KeepShell;Ljava/lang/Process;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    return-void
.end method

.method public static final synthetic access$setReader$p(Lcom/leo/script/KeepShell;Ljava/io/BufferedReader;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    return-void
.end method

.method public static final synthetic access$setRootMode$p(Lcom/leo/script/KeepShell;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/script/KeepShell;->rootMode:Z

    return-void
.end method

.method private final getRuntimeShell()V
    .locals 3

    iget-object v0, p0, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/script/KeepShell$getRuntimeShell$getSu$1;

    invoke-direct {v1, p0}, Lcom/leo/script/KeepShell$getRuntimeShell$getSu$1;-><init>(Lcom/leo/script/KeepShell;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    iget-object v1, p0, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/leo/script/KeepShell;->enterLockTime:J

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkRoot()Z
    .locals 6

    iget-object v0, p0, Lcom/leo/script/KeepShell;->checkRootState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/script/KeepShell;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "permission denied"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v3, v2, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "not allowed"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/leo/script/KeepShell;->rootMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/leo/script/KeepShell;->tryExit()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/leo/script/KeepShell;->rootMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/leo/script/KeepShell;->tryExit()V

    :cond_3
    :goto_1
    return v2
.end method

.method public final doCmdSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "echo \'"

    const-string v3, ""

    const-string v4, "(this as java.lang.String).getBytes(charset)"

    const-string v5, "Charset.defaultCharset()"

    const-string v6, "cmd"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    iget-wide v9, v1, Lcom/leo/script/KeepShell;->enterLockTime:J

    cmp-long v6, v9, v7

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/leo/script/KeepShell;->enterLockTime:J

    sub-long/2addr v9, v11

    iget-wide v11, v1, Lcom/leo/script/KeepShell;->LOCK_TIMEOUT:J

    cmp-long v6, v9, v11

    if-lez v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/leo/script/KeepShell;->tryExit()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7ebf\u7a0b\u7b49\u5f85\u8d85\u65f6"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/leo/script/KeepShell;->enterLockTime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " > "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/leo/script/KeepShell;->LOCK_TIMEOUT:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "doCmdSync-Lock"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/leo/script/KeepShell;->getRuntimeShell()V

    iget-object v9, v1, Lcom/leo/script/KeepShell;->out:Ljava/io/OutputStream;

    const-string v11, "error"

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--start--"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v12, "--"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--end--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v12, v1, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    iget-object v12, v1, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    if-nez v12, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v12}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_a

    :try_start_1
    iget-object v13, v1, Lcom/leo/script/KeepShell;->br:[B

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x27

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    if-eqz v13, :cond_3

    :try_start_3
    invoke-virtual {v13, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, v1, Lcom/leo/script/KeepShell;->br:[B

    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v1, Lcom/leo/script/KeepShell;->br:[B

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "echo \"\""

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v1, Lcom/leo/script/KeepShell;->br:[B

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v1, Lcom/leo/script/KeepShell;->br:[B

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "out!!.write"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    :cond_4
    :goto_1
    iget-object v4, v1, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v6, v14

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v10, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    if-nez v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "results.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/leo/script/KeepShell;->enterLockTime:J

    iget-object v2, v1, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_9
    :try_start_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    move-wide v2, v7

    :goto_3
    iput-wide v2, v1, Lcom/leo/script/KeepShell;->enterLockTime:J

    iget-object v0, v1, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v11

    :catchall_0
    move-exception v0

    move-wide v2, v7

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/leo/script/KeepShell;->tryExit()V

    const-string v2, "KeepShellAsync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v2, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    :goto_4
    iput-wide v2, v1, Lcom/leo/script/KeepShell;->enterLockTime:J

    iget-object v2, v1, Lcom/leo/script/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/leo/script/KeepShell;->tryExit()V

    return-object v11
.end method

.method public final tryExit()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/script/KeepShell;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/script/KeepShell;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/leo/script/KeepShell;->enterLockTime:J

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/leo/script/KeepShell;->out:Ljava/io/OutputStream;

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedReader;

    iput-object v1, p0, Lcom/leo/script/KeepShell;->reader:Ljava/io/BufferedReader;

    check-cast v0, Ljava/lang/Process;

    iput-object v0, p0, Lcom/leo/script/KeepShell;->p:Ljava/lang/Process;

    return-void
.end method
