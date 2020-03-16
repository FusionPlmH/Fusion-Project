.class final Lcom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1;
.super Ljava/lang/Object;
.source "AsynSuShellUnit.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->start()Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsynSuShellUnit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsynSuShellUnit.kt\ncom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1\n*L\n1#1,103:1\n*E\n"
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
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1;->this$0:Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1;->this$0:Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->getProcess()Ljava/lang/Process;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "process!!.inputStream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    const/16 v0, 0x2000

    instance-of v1, v2, Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    check-cast v2, Ljava/io/BufferedReader;

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reader.readLine()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1;->this$0:Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1;->this$0:Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    invoke-virtual {v3}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit$start$1;->this$0:Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
