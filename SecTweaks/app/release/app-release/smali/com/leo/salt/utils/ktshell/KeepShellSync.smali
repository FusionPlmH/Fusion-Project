.class public final Lcom/leo/salt/utils/ktshell/KeepShellSync;
.super Ljava/lang/Object;
.source "KeepShellSync.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepShellSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepShellSync.kt\ncom/leo/salt/utils/ktshell/KeepShellSync\n*L\n1#1,150:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\r\u0010\u0016\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/KeepShellSync;",
        "",
        "()V",
        "GET_ROOT_TIMEOUT",
        "",
        "br",
        "",
        "checkRootState",
        "",
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
        0xd
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final GET_ROOT_TIMEOUT:J = 0x4e20L

.field public static final INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

.field private static br:[B

.field private static checkRootState:Ljava/lang/String;

.field private static final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static out:Ljava/io/OutputStream;

.field private static p:Ljava/lang/Process;

.field private static reader:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-direct {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;-><init>()V

    sput-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->GET_ROOT_TIMEOUT:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "if [[ `id -u 2>&1` = \'0\' ]]; then\necho \'root\';\nelif [[ `$UID` = \'0\' ]]; then\necho \'root\';\nelif [[ `whoami 2>&1` = \'root\' ]]; then\necho \'root\';\nelif [[ `set | grep \'USER_ID=0\'` = \'USER_ID=0\' ]]; then\necho \'root\';\nelse\nexit 1\nexit 1\nfi;\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->checkRootState:Ljava/lang/String;

    const-string v0, "\n\n"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "Charset.defaultCharset()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->br:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCheckRootState$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->checkRootState:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMLock$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getOut$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/io/OutputStream;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static final synthetic access$getP$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/lang/Process;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->p:Ljava/lang/Process;

    return-object p0
.end method

.method public static final synthetic access$getReader$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;)Ljava/io/BufferedReader;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static final synthetic access$setCheckRootState$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sput-object p1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->checkRootState:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOut$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/io/OutputStream;)V
    .locals 0
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static final synthetic access$setP$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/lang/Process;)V
    .locals 0
    .param p1    # Ljava/lang/Process;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->p:Ljava/lang/Process;

    return-void
.end method

.method public static final synthetic access$setReader$p(Lcom/leo/salt/utils/ktshell/KeepShellSync;Ljava/io/BufferedReader;)V
    .locals 0
    .param p1    # Ljava/io/BufferedReader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    return-void
.end method

.method public static final doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cmd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-direct {v1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->getRuntimeShell()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--start--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--end--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_10

    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v3, Lcom/leo/salt/utils/ktshell/KeepShellSync;->br:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "Charset.defaultCharset()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_f

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    sget-object v3, Lcom/leo/salt/utils/ktshell/KeepShellSync;->br:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v5, "Charset.defaultCharset()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez p0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->br:[B

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez p0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "Charset.defaultCharset()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez p0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->br:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez p0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    :cond_8
    :goto_0
    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "--end--"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "results.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_d

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_d
    :try_start_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    const-string p0, "error"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->tryExit$app_release()V

    const-string v0, "KeepShellAsync"

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "error"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_11
    sget-object p0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->tryExit$app_release()V

    const-string p0, "error"

    return-object p0
.end method

.method private final getRuntimeShell()V
    .locals 3

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->p:Ljava/lang/Process;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;->INSTANCE:Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$getSu$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$1;

    invoke-direct {v2, v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync$getRuntimeShell$1;-><init>(Ljava/lang/Thread;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method


# virtual methods
.method public final tryExit$app_release()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :try_start_1
    sget-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->p:Ljava/lang/Process;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    sput-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->out:Ljava/io/OutputStream;

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedReader;

    sput-object v1, Lcom/leo/salt/utils/ktshell/KeepShellSync;->reader:Ljava/io/BufferedReader;

    check-cast v0, Ljava/lang/Process;

    sput-object v0, Lcom/leo/salt/utils/ktshell/KeepShellSync;->p:Ljava/lang/Process;

    return-void
.end method
