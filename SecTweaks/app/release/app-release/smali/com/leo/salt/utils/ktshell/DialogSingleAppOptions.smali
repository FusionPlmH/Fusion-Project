.class public final Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;
.super Lcom/leo/salt/utils/ktshell/DialogAppOptions;
.source "DialogSingleAppOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\u0013\u001a\u00020\u000eJ\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;",
        "Lcom/leo/salt/utils/ktshell/DialogAppOptions;",
        "context",
        "Landroid/content/Context;",
        "app",
        "Lcom/leo/salt/utils/AppInfo;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/content/Context;Lcom/leo/salt/utils/AppInfo;Landroid/os/Handler;)V",
        "getApp",
        "()Lcom/leo/salt/utils/AppInfo;",
        "setApp",
        "(Lcom/leo/salt/utils/AppInfo;)V",
        "copyPackageName",
        "",
        "goToMarket",
        "openDetails",
        "showBackupAppOptions",
        "showInMarket",
        "showSingleAppOptions",
        "showSystemAppOptions",
        "showUserAppOptions",
        "toggleEnable",
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
.field private app:Lcom/leo/salt/utils/AppInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leo/salt/utils/AppInfo;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/leo/salt/utils/AppInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/leo/salt/utils/AppInfo;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    return-void
.end method

.method public static final synthetic access$copyPackageName(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->copyPackageName()V

    return-void
.end method

.method public static final synthetic access$openDetails(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->openDetails()V

    return-void
.end method

.method public static final synthetic access$toggleEnable(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->toggleEnable()V

    return-void
.end method

.method private final copyPackageName()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10011b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final openDetails()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showBackupAppOptions()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10006b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100068

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100069

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100067

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showBackupAppOptions$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showBackupAppOptions$1;-><init>(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final showSystemAppOptions()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100063

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100062

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v3, "app.enabled"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100065

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006d

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showSystemAppOptions$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showSystemAppOptions$1;-><init>(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final showUserAppOptions()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100060

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100063

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100062

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v3, "app.enabled"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100065

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006d

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showUserAppOptions$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showUserAppOptions$1;-><init>(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final toggleEnable()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v0, v0, Lcom/leo/salt/utils/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v1, "app.enabled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->disableAll()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->enableAll()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getApp()Lcom/leo/salt/utils/AppInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    return-object v0
.end method

.method public final goToMarket(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setApp(Lcom/leo/salt/utils/AppInfo;)V
    .locals 1
    .param p1    # Lcom/leo/salt/utils/AppInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    return-void
.end method

.method public final showInMarket(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100393

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1002c8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    sget-object v3, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showInMarket$builder$1;->INSTANCE:Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showInMarket$builder$1;

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1002de

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showInMarket$builder$2;

    invoke-direct {v3, p0, p1}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$showInMarket$builder$2;-><init>(Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;Landroid/content/Context;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v1, "builder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final showSingleAppOptions()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->app:Lcom/leo/salt/utils/AppInfo;

    iget-object v0, v0, Lcom/leo/salt/utils/AppInfo;->appType:Lcom/leo/salt/utils/AppInfo$AppType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/leo/salt/utils/AppInfo$AppType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->showBackupAppOptions()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->showSystemAppOptions()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->showUserAppOptions()V

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/utils/ktshell/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UNSupport\uff01"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
