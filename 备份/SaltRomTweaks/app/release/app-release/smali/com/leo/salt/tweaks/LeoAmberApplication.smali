.class public Lcom/leo/salt/tweaks/LeoAmberApplication;
.super Landroid/app/Application;
.source "LeoAmberApplication.java"


# static fields
.field public static final APP_FOLDER_NAME:Ljava/lang/String; = "LeoTweaks"

.field public static mContext:Landroid/content/Context;

.field public static mSDCardPath:Ljava/lang/String;


# instance fields
.field public mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/leo/salt/tweaks/LeoAmberApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initDirs()Z
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/LeoAmberApplication;->mSDCardPath:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/LeoAmberApplication;->mSDCardPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "LeoTweaks"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createSDCardDirimg()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/LeoTweaks/update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/leo/salt/tweaks/LeoAmberApplication;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/leo/salt/tweaks/LeoAmberApplication;->initDirs()Z

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    invoke-direct {v0}, Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tweaks/LeoAmberApplication;->mWeatherRec:Lcom/leo/salt/tweaks/view/widget/WeatherView$WeatherClient;

    invoke-static {}, Lcom/leo/salt/utils/PrefUtils;->copyAssetFolder()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/LeoAmberApplication;->createSDCardDirimg()V

    sget-object v0, Lcom/leo/salt/tweaks/LeoAmberApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->AppPackage(Landroid/content/Context;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method
