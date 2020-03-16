.class public final Lcom/leo/salt/tools/constants/KeepShell;
.super Ljava/lang/Object;
.source "KeepShell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepShell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepShell.kt\ncom/leo/salt/tools/constants/KeepShell\n*L\n1#1,166:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\r\u0010\u001a\u001a\u00020\u0019H\u0000\u00a2\u0006\u0002\u0008\u001bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/KeepShell;",
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
        "doCmdSync",
        "cmd",
        "doCmdSync$app_release",
        "getRuntimeShell",
        "",
        "tryExit",
        "tryExit$app_release",
        "app_release"
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

    invoke-direct {p0, v0, v1, v2}, Lcom/leo/salt/tools/constants/KeepShell;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->rootMode:Z

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->GET_ROOT_TIMEOUT:J

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->LOCK_TIMEOUT:J

    const-string p1, "if [[ `id -u 2>&1` = \'0\' ]]; then\necho \'root\';\nelif [[ `$UID` = \'0\' ]]; then\necho \'root\';\nelif [[ `whoami 2>&1` = \'root\' ]]; then\necho \'root\';\nelif [[ `set | grep \'USER_ID=0\'` = \'USER_ID=0\' ]]; then\necho \'root\';\nelse\nexit 1\nexit 1\nfi;\n"

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->checkRootState:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "Charset.defaultCharset()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->br:[B

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/leo/salt/tools/constants/KeepShell;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getCheckRootState$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/KeepShell;->checkRootState:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getEnterLockTime$p(Lcom/leo/salt/tools/constants/KeepShell;)J
    .locals 2

    iget-wide v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMLock$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getOut$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/KeepShell;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static final synthetic access$getP$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/lang/Process;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/KeepShell;->p:Ljava/lang/Process;

    return-object p0
.end method

.method public static final synthetic access$getReader$p(Lcom/leo/salt/tools/constants/KeepShell;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static final synthetic access$getRootMode$p(Lcom/leo/salt/tools/constants/KeepShell;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/tools/constants/KeepShell;->rootMode:Z

    return p0
.end method

.method public static final synthetic access$setCheckRootState$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->checkRootState:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setEnterLockTime$p(Lcom/leo/salt/tools/constants/KeepShell;J)V
    .locals 0

    iput-wide p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    return-void
.end method

.method public static final synthetic access$setOut$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setP$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/lang/Process;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->p:Ljava/lang/Process;

    return-void
.end method

.method public static final synthetic access$setReader$p(Lcom/leo/salt/tools/constants/KeepShell;Ljava/io/BufferedReader;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    return-void
.end method

.method public static final synthetic access$setRootMode$p(Lcom/leo/salt/tools/constants/KeepShell;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/tools/constants/KeepShell;->rootMode:Z

    return-void
.end method

.method private final getRuntimeShell()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->p:Ljava/lang/Process;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$getSu$1;-><init>(Lcom/leo/salt/tools/constants/KeepShell;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tools/constants/KeepShell$getRuntimeShell$1;-><init>(Lcom/leo/salt/tools/constants/KeepShell;Ljava/lang/Thread;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method


# virtual methods
.method public final doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "echo \'"

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    const-string v4, "Charset.defaultCharset()"

    const-string v5, "cmd"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    iget-wide v8, v1, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    sub-long/2addr v8, v10

    iget-wide v10, v1, Lcom/leo/salt/tools/constants/KeepShell;->LOCK_TIMEOUT:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/tools/constants/KeepShell;->tryExit$app_release()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7ebf\u7a0b\u7b49\u5f85\u8d85\u65f6"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/leo/salt/tools/constants/KeepShell;->LOCK_TIMEOUT:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "doCmdSync-Lock"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/leo/salt/tools/constants/KeepShell;->getRuntimeShell()V

    iget-object v8, v1, Lcom/leo/salt/tools/constants/KeepShell;->out:Ljava/io/OutputStream;

    const-string v10, "error"

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--start--"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--end--"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v11, v1, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    iget-object v11, v1, Lcom/leo/salt/tools/constants/KeepShell;->p:Ljava/lang/Process;

    if-nez v11, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_a

    :try_start_1
    iget-object v12, v1, Lcom/leo/salt/tools/constants/KeepShell;->br:[B

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x27

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    if-eqz v12, :cond_3

    :try_start_2
    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, v1, Lcom/leo/salt/tools/constants/KeepShell;->br:[B

    invoke-virtual {v11, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v1, Lcom/leo/salt/tools/constants/KeepShell;->br:[B

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "echo \"\""

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v1, Lcom/leo/salt/tools/constants/KeepShell;->br:[B

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v1, Lcom/leo/salt/tools/constants/KeepShell;->br:[B

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "out!!.write"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    :cond_4
    :goto_1
    iget-object v3, v1, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, v13

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v9, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    if-nez v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    iget-object v2, v1, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_9
    :try_start_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    move-wide v2, v6

    :goto_3
    iput-wide v2, v1, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    iget-object v0, v1, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v10

    :catchall_0
    move-exception v0

    move-wide v2, v6

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/tools/constants/KeepShell;->tryExit$app_release()V

    const-string v2, "KeepShellAsync"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v2, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    :goto_4
    iput-wide v2, v1, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    iget-object v2, v1, Lcom/leo/salt/tools/constants/KeepShell;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/leo/salt/tools/constants/KeepShell;->tryExit$app_release()V

    return-object v10
.end method

.method public final tryExit$app_release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->p:Ljava/lang/Process;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->enterLockTime:J

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/KeepShell;->out:Ljava/io/OutputStream;

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedReader;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/KeepShell;->reader:Ljava/io/BufferedReader;

    check-cast v0, Ljava/lang/Process;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/KeepShell;->p:Ljava/lang/Process;

    return-void
.end method
