.class public final Lcom/leo/salt/tools/constants/AppListHelper;
.super Ljava/lang/Object;
.source "AppListHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0006J\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00062\u0006\u0010\u001e\u001a\u00020\u0007J\'\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00062\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010!\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\"J\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0006J\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0006R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/AppListHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "ignore",
        "Ljava/util/ArrayList;",
        "",
        "getIgnore$app_release",
        "()Ljava/util/ArrayList;",
        "setIgnore$app_release",
        "(Ljava/util/ArrayList;)V",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "getPackageManager",
        "()Landroid/content/pm/PackageManager;",
        "setPackageManager",
        "(Landroid/content/pm/PackageManager;)V",
        "checkBackup",
        "packageInfo",
        "Landroid/content/pm/ApplicationInfo;",
        "checkInstall",
        "backupInfo",
        "Landroid/content/pm/PackageInfo;",
        "exclude",
        "",
        "packageName",
        "getAll",
        "Lcom/leo/salt/tools/constants/AppInfo;",
        "getApkFilesInfoList",
        "dirPath",
        "getAppList",
        "systemApp",
        "removeIgnore",
        "(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;",
        "getSystemAppList",
        "getUserAppList",
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
.field private ignore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/leo/salt/tools/constants/AppListHelper$ignore$1;

    invoke-direct {v0, p1}, Lcom/leo/salt/tools/constants/AppListHelper$ignore$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppListHelper;->ignore:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "context.packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private final exclude(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, ".Pure"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public static synthetic getAppList$default(Lcom/leo/salt/tools/constants/AppListHelper;Ljava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    check-cast p1, Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tools/constants/AppListHelper;->getAppList(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBackup(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "packageInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getAbsBackUpDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v2, v3, :cond_1

    const-string p1, "\u2714"

    return-object p1

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v1, p1, :cond_2

    const-string p1, "\u2718"

    return-object p1

    :cond_2
    const-string p1, "\u2605"

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getBackUpDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tar.gz"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u2606"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    return-object v0
.end method

.method public final checkInstall(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "backupInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v2, v3, :cond_1

    const-string p1, "\u2714"

    return-object p1

    :cond_1
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le p1, v1, :cond_2

    const-string p1, "\u2718"

    return-object p1

    :cond_2
    const-string p1, "\u2605"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final getAll()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/constants/AppListHelper;->getAppList(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getApkFilesInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "dirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    sget-object p1, Lcom/leo/salt/tools/constants/AppListHelper$getApkFilesInfoList$files$1;->INSTANCE:Lcom/leo/salt/tools/constants/AppListHelper$getApkFilesInfoList$files$1;

    check-cast p1, Ljava/io/FileFilter;

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    const-string v5, "files[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.leo.global.tweak"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    iput-object v4, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {}, Lcom/leo/salt/tools/constants/AppInfo;->getItem()Lcom/leo/salt/tools/constants/AppInfo;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v4, Lcom/leo/salt/tools/constants/AppInfo;->selectState:Ljava/lang/Boolean;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iput-object v7, v4, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    iput-object v7, v4, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/leo/salt/tools/constants/AppListHelper;->checkInstall(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/leo/salt/tools/constants/AppInfo;->enabledState:Ljava/lang/CharSequence;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v4, Lcom/leo/salt/tools/constants/AppInfo;->versionName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, v4, Lcom/leo/salt/tools/constants/AppInfo;->versionCode:I

    sget-object v5, Lcom/leo/salt/tools/constants/AppInfo$AppType;->BACKUPFILE:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    iput-object v5, v4, Lcom/leo/salt/tools/constants/AppInfo;->appType:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public final getAppList(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "packageInfos"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/leo/salt/tools/constants/AppListHelper;->ignore:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_0
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "applicationInfo.packageName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/leo/salt/tools/constants/AppListHelper;->exclude(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "/system"

    const-string v10, "applicationInfo.sourceDir"

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9, v1, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_2
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9, v1, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v6, Ljava/io/File;

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/leo/salt/tools/constants/AppInfo;->getItem()Lcom/leo/salt/tools/constants/AppInfo;

    move-result-object v11

    iget-object v12, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v12, Ljava/lang/CharSequence;

    iput-object v12, v11, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v11, Lcom/leo/salt/tools/constants/AppInfo;->dir:Ljava/lang/CharSequence;

    iget-boolean v6, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v11, Lcom/leo/salt/tools/constants/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v6, "applicationInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/leo/salt/tools/constants/AppListHelper;->checkBackup(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v11, Lcom/leo/salt/tools/constants/AppInfo;->enabledState:Ljava/lang/CharSequence;

    iget-boolean v6, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_5

    const-string v6, ""

    goto :goto_1

    :cond_5
    const-string v6, "\u5df2\u51bb\u7ed3"

    :goto_1
    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v11, Lcom/leo/salt/tools/constants/AppInfo;->wranState:Ljava/lang/CharSequence;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v11, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9, v1, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/leo/salt/tools/constants/AppInfo$AppType;->SYSTEM:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/leo/salt/tools/constants/AppInfo$AppType;->USER:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    :goto_2
    iput-object v5, v11, Lcom/leo/salt/tools/constants/AppInfo;->appType:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    :try_start_0
    iget-object v5, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v11, Lcom/leo/salt/tools/constants/AppInfo;->versionName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, v11, Lcom/leo/salt/tools/constants/AppInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2
.end method

.method public final getIgnore$app_release()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/tools/constants/AppListHelper;->ignore:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public final getSystemAppList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/leo/salt/tools/constants/AppListHelper;->getAppList$default(Lcom/leo/salt/tools/constants/AppListHelper;Ljava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getUserAppList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tools/constants/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/leo/salt/tools/constants/AppListHelper;->getAppList$default(Lcom/leo/salt/tools/constants/AppListHelper;Ljava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final setIgnore$app_release(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->ignore:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
