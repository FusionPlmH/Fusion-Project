.class public final Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;
.super Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;
.source "DialogSingleAppOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001c\u001a\u00020\u000eH\u0002J\u0008\u0010\u001d\u001a\u00020\u000eH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;",
        "Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;",
        "context",
        "Landroid/content/Context;",
        "app",
        "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/content/Context;Lcom/leo/salt/tweaks/view/widget/Appinfo;Landroid/os/Handler;)V",
        "getApp",
        "()Lcom/leo/salt/tweaks/view/widget/Appinfo;",
        "setApp",
        "(Lcom/leo/salt/tweaks/view/widget/Appinfo;)V",
        "copyPackageName",
        "",
        "dex2oatBuild",
        "goToMainAppsMarketQQ",
        "moveToSystem",
        "moveToSystemExec",
        "moveToSystemMagisk",
        "openDetails",
        "showBackupAppOptions",
        "showInMarket",
        "showSingleAppOptions",
        "activity",
        "Landroid/app/Activity;",
        "showSystemAppOptions",
        "showUserAppOptions",
        "startApp",
        "toggleEnable",
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
.field private app:Lcom/leo/salt/tweaks/view/widget/Appinfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leo/salt/tweaks/view/widget/Appinfo;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/leo/salt/tweaks/view/widget/Appinfo;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    return-void
.end method

.method public static final synthetic access$copyPackageName(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->copyPackageName()V

    return-void
.end method

.method public static final synthetic access$dex2oatBuild(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->dex2oatBuild()V

    return-void
.end method

.method public static final synthetic access$moveToSystem(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->moveToSystem()V

    return-void
.end method

.method public static final synthetic access$moveToSystemExec(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->moveToSystemExec()V

    return-void
.end method

.method public static final synthetic access$moveToSystemMagisk(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->moveToSystemMagisk()V

    return-void
.end method

.method public static final synthetic access$openDetails(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->openDetails()V

    return-void
.end method

.method public static final synthetic access$showInMarket(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->showInMarket()V

    return-void
.end method

.method public static final synthetic access$startApp(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->startApp()V

    return-void
.end method

.method public static final synthetic access$toggleEnable(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->toggleEnable()V

    return-void
.end method

.method private final copyPackageName()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const v2, 0x7f10004e

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

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

.method private final dex2oatBuild()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->buildAll()V

    return-void
.end method

.method private final moveToSystem()V
    .locals 4

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isMagisk()Z

    move-result v0

    const v1, 0x7f1000bc

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    const-string v2, "/system/app"

    invoke-virtual {v0, v2}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isTmpfs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/leo/script/MagiskExtend;->moduleInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "app_manage_magisk"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "app_manage_magisk_info"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$moveToSystem$1;->INSTANCE:Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$moveToSystem$1;

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(cont\u2026->\n                    })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void

    :cond_0
    sget-object v0, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v3, v3, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "app_manage_to_apps_info"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$moveToSystem$2;

    invoke-direct {v3, p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$moveToSystem$2;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(cont\u2026     .setCancelable(true)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method private final moveToSystemExec()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "if [[ ! -e \'"

    const-string v4, "busybox chown -R system:system \'"

    const-string v5, "chown -R system:system \'"

    const-string v6, "/system/app/"

    const-string v7, "\'\n"

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "busybox cp \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v6, v6, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, "\' \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 0755 \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ]]\n then exit 1\n else rm -f \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\'\n fi\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "busybox cp -pdrf \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' \'/system/app/\'\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod -R 0755 \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' ]]\n then exit 1\n exit 1\n else exit 0\n fi\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "sync\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sleep 1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "echo \'[operation completed]\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->execShell(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private final moveToSystemMagisk()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/app"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/system/app/"

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v3, v3, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/leo/script/MagiskExtend;->createFileReplaceModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v3, v3, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/leo/script/MagiskExtend;->createFileReplaceModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10004d

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10004c

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private final openDetails()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showBackupAppOptions()V
    .locals 6

    sget-object v0, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "app_manage_restore_delete"

    invoke-static {v4}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "app_manage_restore_apk"

    invoke-static {v4}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "app_manage_restore_apk_data"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string v2, "app_manage_restore_data"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const-string v2, "app_manage_packagename_copy"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const-string v2, "app_manage_store"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showBackupAppOptions$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(cont\u2026     }\n                })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method private final showInMarket()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->goToMainAppsMarketQQ(Landroid/content/Context;)V

    return-void
.end method

.method private final showSystemAppOptions(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(cont\u2026     .setView(dialogView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById<\u2026.app_options_single_only)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$2;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$2;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$3;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$3;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$4;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$4;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$5;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$5;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$6;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$6;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$7;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$7;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$8;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$8;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$9;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$9;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->updated:Ljava/lang/Boolean;

    const-string v2, "app.updated"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f09004b

    const v3, 0x7f090044

    const/16 v4, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById<\u2026(R.id.app_options_delete)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$10;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$10;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$11;

    invoke-direct {v3, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$11;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById<\u2026id.app_options_uninstall)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v1, 0x7f090049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    const-string v2, "app.enabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f09003e

    const v3, 0x7f09003b

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById<\u2026app_options_app_unfreeze)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$12;

    invoke-direct {v1, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$12;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById<\u2026d.app_options_app_freeze)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$13;

    invoke-direct {v1, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showSystemAppOptions$13;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private final showUserAppOptions(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(cont\u2026     .setView(dialogView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById<\u2026.app_options_single_only)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$2;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$2;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$3;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$3;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$4;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$4;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$5;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$5;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$6;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$6;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$7;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$7;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$8;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$8;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$9;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$9;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$10;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$10;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$11;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$11;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$12;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$12;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$13;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$13;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$14;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$14;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v2, v2, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    const-string v2, "app.enabled"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f09003e

    const/16 v3, 0x8

    const v4, 0x7f09003b

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById<\u2026app_options_app_unfreeze)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$15;

    invoke-direct {v1, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$15;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById<\u2026d.app_options_app_freeze)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$16;

    invoke-direct {v1, p0, v0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$showUserAppOptions$16;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;Landroid/app/AlertDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private final startApp()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->enableAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100046

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final toggleEnable()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    const-string v1, "app.enabled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->disableAll()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->enableAll()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getApp()Lcom/leo/salt/tweaks/view/widget/Appinfo;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    return-object v0
.end method

.method public final goToMainAppsMarketQQ(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

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

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v1, v1, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final setApp(Lcom/leo/salt/tweaks/view/widget/Appinfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    return-void
.end method

.method public final showSingleAppOptions(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->app:Lcom/leo/salt/tweaks/view/widget/Appinfo;

    iget-object v0, v0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appType:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "UNSupport\uff01"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->showBackupAppOptions()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->showSystemAppOptions(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/widget/DialogSingleAppOptions;->showUserAppOptions(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method
