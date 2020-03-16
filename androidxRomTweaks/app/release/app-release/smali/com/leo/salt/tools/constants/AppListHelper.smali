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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0002J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u000cJ\'\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u001aJ\'\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u001aJ\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001fJ\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010!\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\""
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/AppListHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "getPackageManager",
        "()Landroid/content/pm/PackageManager;",
        "setPackageManager",
        "(Landroid/content/pm/PackageManager;)V",
        "checkInstall",
        "",
        "backupInfo",
        "Landroid/content/pm/PackageInfo;",
        "exclude",
        "",
        "packageName",
        "getAll",
        "Ljava/util/ArrayList;",
        "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
        "getApkFilesInfoList",
        "dirPath",
        "getAppList",
        "systemApp",
        "removeIgnore",
        "(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;",
        "getBootableApps",
        "getSystemAppList",
        "getTags",
        "applicationInfo",
        "Landroid/content/pm/ApplicationInfo;",
        "getUserAppList",
        "isSystemApp",
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
.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static synthetic getBootableApps$default(Lcom/leo/salt/tools/constants/AppListHelper;Ljava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/ArrayList;
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
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/tools/constants/AppListHelper;->getBootableApps(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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
            "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
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
            "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
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

    const-string v8, "com.leo.salt.tweaks"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    iput-object v4, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {}, Lcom/leo/salt/tweaks/view/widget/Appinfo;->getItem()Lcom/leo/salt/tweaks/view/widget/Appinfo;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->selectState:Ljava/lang/Boolean;

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

    iput-object v7, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    iput-object v7, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/leo/salt/tools/constants/AppListHelper;->checkInstall(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabledState:Ljava/lang/CharSequence;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionCode:I

    sget-object v5, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->BACKUPFILE:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    iput-object v5, v4, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appType:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

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
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "packageInfos"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v8, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v10, "applicationInfo.packageName"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Lcom/leo/salt/tools/constants/AppListHelper;->exclude(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x2

    const-string v11, "/vendor"

    invoke-static {v8, v11, v3, v10, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "/data"

    if-eqz v11, :cond_2

    invoke-static {v8, v12, v3, v10, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_2
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "/system"

    invoke-static {v8, v13, v3, v10, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v13, Ljava/io/File;

    iget-object v14, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/leo/salt/tweaks/view/widget/Appinfo;->getItem()Lcom/leo/salt/tweaks/view/widget/Appinfo;

    move-result-object v14

    iget-object v15, v0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    iget-object v15, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v15, Ljava/lang/CharSequence;

    iput-object v15, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    iput-object v13, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->dir:Ljava/lang/CharSequence;

    iget-boolean v13, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    const-string v13, "applicationInfo"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/leo/salt/tools/constants/AppListHelper;->getTags(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    iput-object v13, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabledState:Ljava/lang/CharSequence;

    move-object v13, v8

    check-cast v13, Ljava/lang/CharSequence;

    iput-object v13, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Lcom/leo/salt/tools/constants/AppListHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v8, v12, v3, v10, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->updated:Ljava/lang/Boolean;

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v11

    if-nez v8, :cond_6

    sget-object v8, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->USER:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    goto :goto_2

    :cond_6
    sget-object v8, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->SYSTEM:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    :goto_2
    iput-object v8, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appType:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    :try_start_0
    iget-object v8, v0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v8, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionName:Ljava/lang/String;

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v7, v14, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v4
.end method

.method public final getBootableApps(Ljava/lang/Boolean;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "packageInfos"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_0

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "applicationInfo.packageName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/leo/salt/tools/constants/AppListHelper;->exclude(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "applicationInfo"

    if-eqz v7, :cond_1

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/leo/salt/tools/constants/AppListHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_1
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/leo/salt/tools/constants/AppListHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v9, Ljava/io/File;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/leo/salt/tweaks/view/widget/Appinfo;->getItem()Lcom/leo/salt/tweaks/view/widget/Appinfo;

    move-result-object v10

    iget-object v11, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v11, Ljava/lang/CharSequence;

    iput-object v11, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    iput-object v11, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->dir:Ljava/lang/CharSequence;

    iget-boolean v11, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/leo/salt/tools/constants/AppListHelper;->getTags(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    iput-object v8, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabledState:Ljava/lang/CharSequence;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    iput-object v8, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/leo/salt/tools/constants/AppListHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file.parent"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    const-string v11, "/data"

    invoke-static {v8, v11, v3, v9, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->updated:Ljava/lang/Boolean;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_5

    sget-object v7, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->USER:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->SYSTEM:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    :goto_2
    iput-object v7, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appType:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    :try_start_0
    iget-object v7, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v7, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v10, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v2
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
            "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
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

.method public final getTags(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 6

    const-string v0, "applicationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-boolean v1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_0

    const-string v1, "\u2744"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/constants/AppListHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v3, "applicationInfo.sourceDir"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/data"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u2699"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getAbsBackUpDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v2, v3, :cond_3

    const-string p1, "\u2714"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v1, p1, :cond_4

    const-string p1, "\u2718"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p1, "\u2605"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
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

    if-eqz p1, :cond_6

    const-string p1, "\u2606"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stateTags.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUserAppList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/leo/salt/tweaks/view/widget/Appinfo;",
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

.method public final isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const-string v0, "applicationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/AppListHelper;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
