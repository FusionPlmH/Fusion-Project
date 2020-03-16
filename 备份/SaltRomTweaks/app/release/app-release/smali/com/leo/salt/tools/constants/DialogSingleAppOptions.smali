.class public final Lcom/leo/salt/tools/constants/DialogSingleAppOptions;
.super Lcom/leo/salt/tools/constants/DialogAppOptions;
.source "DialogSingleAppOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\u0015\u001a\u00020\u000eJ\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0008\u0010\u0017\u001a\u00020\u000eH\u0002J\u0008\u0010\u0018\u001a\u00020\u000eH\u0002J\u0008\u0010\u0019\u001a\u00020\u000eH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/DialogSingleAppOptions;",
        "Lcom/leo/salt/tools/constants/DialogAppOptions;",
        "context",
        "Landroid/content/Context;",
        "app",
        "Lcom/leo/salt/tools/constants/AppInfo;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/content/Context;Lcom/leo/salt/tools/constants/AppInfo;Landroid/os/Handler;)V",
        "getApp",
        "()Lcom/leo/salt/tools/constants/AppInfo;",
        "setApp",
        "(Lcom/leo/salt/tools/constants/AppInfo;)V",
        "copyPackageName",
        "",
        "dex2oatBuild",
        "moveToSystem",
        "moveToSystemExec",
        "openDetails",
        "showBackupAppOptions",
        "showInMarket",
        "showSingleAppOptions",
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
.field private app:Lcom/leo/salt/tools/constants/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leo/salt/tools/constants/AppInfo;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/leo/salt/tools/constants/AppInfo;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/leo/salt/tools/constants/DialogAppOptions;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    return-void
.end method

.method public static final synthetic access$copyPackageName(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->copyPackageName()V

    return-void
.end method

.method public static final synthetic access$dex2oatBuild(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->dex2oatBuild()V

    return-void
.end method

.method public static final synthetic access$moveToSystem(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->moveToSystem()V

    return-void
.end method

.method public static final synthetic access$moveToSystemExec(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->moveToSystemExec()V

    return-void
.end method

.method public static final synthetic access$openDetails(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->openDetails()V

    return-void
.end method

.method public static final synthetic access$startApp(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->startApp()V

    return-void
.end method

.method public static final synthetic access$toggleEnable(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->toggleEnable()V

    return-void
.end method

.method private final copyPackageName()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copy_ok"

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

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

    invoke-super {p0}, Lcom/leo/salt/tools/constants/DialogAppOptions;->buildAll()V

    return-void
.end method

.method private final moveToSystem()V
    .locals 4

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isMagisk()Z

    move-result v0

    const/high16 v1, 0x1040000

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    const-string v2, "/system/app"

    invoke-virtual {v0, v2}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isTmpfs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "app_manage_magisk"

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "app_manage_magisk_info"

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$moveToSystem$1;->INSTANCE:Lcom/leo/salt/tools/constants/DialogSingleAppOptions$moveToSystem$1;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "app_manage_to_apps_info"

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    new-instance v3, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$moveToSystem$2;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$moveToSystem$2;-><init>(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final moveToSystemExec()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/app"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\'; fi;\n"

    const-string v4, "if [[ ! -e \'"

    const-string v5, "busybox chown -R system:system \'"

    const-string v6, "chown -R system:system \'"

    const-string v7, "/system/app/"

    const-string v8, "\'\n"

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v2, v2, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cp \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v7, v7, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, "\' \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 0755 \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ]]; then exit 1; else rm -f \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cp -pdrf \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' \'/system/app/\'\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod -R 0755 \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' ]]; then exit 1; exit 1; else rm -rf \'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "sync;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sleep 1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "echo \'[operation completed]\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->execShell(Ljava/lang/StringBuilder;)V

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

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showBackupAppOptions()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "app_manage_restore_delete"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "app_manage_restore_apk"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "app_manage_restore_apk_data"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "app_manage_restore_data"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string v1, "app_manage_packagename_copy"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const-string v1, "app_manage_store"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showBackupAppOptions$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showBackupAppOptions$1;-><init>(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showBackupAppOptions$2;->INSTANCE:Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showBackupAppOptions$2;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final showSystemAppOptions()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "app_manage_uninstall_apk"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "app_manage_eisabled_apk"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "app_manage_clear_data"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "app_manage_clear_cache"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v3, "app.enabled"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "app_manage_freeze_apk"

    goto :goto_0

    :cond_0
    const-string v1, "app_manage_unfreeze_apk"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v1, 0x5

    const-string v3, "app_manage_info"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "app_manage_packagename_copy"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "app_manage_store"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showSystemAppOptions$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showSystemAppOptions$1;-><init>(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    sget-object v2, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showSystemAppOptions$2;->INSTANCE:Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showSystemAppOptions$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final showUserAppOptions()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "app_manage_start"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "app_manage_backup_apk_data"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "app_manage_backup_apk"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "app_manage_uninstall_apk"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string v1, "app_manage_uninstall_apk_data"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const-string v1, "app_manage_clear_data"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const-string v1, "app_manage_clear_cache"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v3, "app.enabled"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "app_manage_freeze_apk"

    goto :goto_0

    :cond_0
    const-string v1, "app_manage_unfreeze_apk"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    const/16 v1, 0x8

    const-string v3, "app_manage_info"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "app_manage_packagename_copy"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "app_manage_store"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "app_manage_eisabled_apk"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "app_manage_to_system"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "app_manage_dex2oat"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showUserAppOptions$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showUserAppOptions$1;-><init>(Lcom/leo/salt/tools/constants/DialogSingleAppOptions;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    sget-object v2, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showUserAppOptions$2;->INSTANCE:Lcom/leo/salt/tools/constants/DialogSingleAppOptions$showUserAppOptions$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private final startApp()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v0, v0, Lcom/leo/salt/tools/constants/AppInfo;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->enableAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final toggleEnable()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v0, v0, Lcom/leo/salt/tools/constants/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v1, "app.enabled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->disableAll()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->enableAll()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getApp()Lcom/leo/salt/tools/constants/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    return-object v0
.end method

.method public final setApp(Lcom/leo/salt/tools/constants/AppInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    return-void
.end method

.method public final showInMarket(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

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
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final showSingleAppOptions()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->app:Lcom/leo/salt/tools/constants/AppInfo;

    iget-object v0, v0, Lcom/leo/salt/tools/constants/AppInfo;->appType:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/leo/salt/tools/constants/DialogSingleAppOptions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/AppInfo$AppType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UNSupport\uff01"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->showBackupAppOptions()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->showSystemAppOptions()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DialogSingleAppOptions;->showUserAppOptions()V

    :goto_1
    return-void
.end method
