.class public Lcom/leo/salt/kt/ProgressBarDialog;
.super Ljava/lang/Object;
.source "ProgressBarDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/kt/ProgressBarDialog$defaultHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u001e\u0010\u0007\u001a\u00020\u00082\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010\u0010\u001a\u00020\u0008J\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\nH\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/leo/salt/kt/ProgressBarDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "alert",
        "Landroid/app/AlertDialog;",
        "execShell",
        "",
        "cmd",
        "",
        "handler",
        "Landroid/os/Handler;",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "hideDialog",
        "isDialogShow",
        "",
        "showDialog",
        "text",
        "defaultHandler",
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
.field private alert:Landroid/app/AlertDialog;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic execShell$default(Lcom/leo/salt/kt/ProgressBarDialog;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    check-cast p2, Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/kt/ProgressBarDialog;->execShell(Ljava/lang/String;Landroid/os/Handler;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: execShell"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic execShell$default(Lcom/leo/salt/kt/ProgressBarDialog;Ljava/lang/StringBuilder;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    check-cast p2, Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/kt/ProgressBarDialog;->execShell(Ljava/lang/StringBuilder;Landroid/os/Handler;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: execShell"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showDialog$default(Lcom/leo/salt/kt/ProgressBarDialog;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/AlertDialog;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p3, :cond_2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const p2, 0x7f10007a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context!!.getString(R.string.apps_loading)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/leo/salt/kt/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final execShell(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/kt/ProgressBarDialog;->hideDialog()V

    iget-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v3, 0x7f100168

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    if-nez p2, :cond_1

    new-instance p2, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    new-instance v0, Lcom/leo/salt/kt/ProgressBarDialog$defaultHandler;

    iget-object v1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    invoke-direct {v0, v1}, Lcom/leo/salt/kt/ProgressBarDialog$defaultHandler;-><init>(Landroid/app/AlertDialog;)V

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p2, v0}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, p1}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->exec(Ljava/lang/String;)Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->waitFor()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    invoke-direct {v0, p2}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->exec(Ljava/lang/String;)Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/AsynSuShellUnit;->waitFor()V

    :goto_0
    iget-object p1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final execShell(Ljava/lang/StringBuilder;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/kt/ProgressBarDialog;->execShell(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public final hideDialog()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    const/4 v0, 0x0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public final isDialogShow()Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/kt/ProgressBarDialog;->hideDialog()V

    iget-object v0, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/leo/salt/kt/ProgressBarDialog;->alert:Landroid/app/AlertDialog;

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
