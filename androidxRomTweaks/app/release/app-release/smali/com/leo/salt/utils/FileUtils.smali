.class public Lcom/leo/salt/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/utils/FileUtils$FileOperateCallback;
    }
.end annotation


# static fields
.field private static final FAILED:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static instance:Lcom/leo/salt/utils/FileUtils;


# instance fields
.field private callback:Lcom/leo/salt/utils/FileUtils$FileOperateCallback;

.field private context:Landroid/content/Context;

.field private errorStr:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private volatile isSuccess:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/leo/salt/utils/FileUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/utils/FileUtils$1;-><init>(Lcom/leo/salt/utils/FileUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/leo/salt/utils/FileUtils;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/leo/salt/utils/FileUtils;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/utils/FileUtils;)Lcom/leo/salt/utils/FileUtils$FileOperateCallback;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/FileUtils;->callback:Lcom/leo/salt/utils/FileUtils$FileOperateCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/utils/FileUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/FileUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/utils/FileUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/utils/FileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/leo/salt/utils/FileUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/utils/FileUtils;->isSuccess:Z

    return p0
.end method

.method static synthetic access$400(Lcom/leo/salt/utils/FileUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/FileUtils;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/utils/FileUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/utils/FileUtils;->errorStr:Ljava/lang/String;

    return-object p0
.end method

.method private copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v5, v4}, Lcom/leo/salt/utils/FileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/leo/salt/utils/FileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x400

    new-array p3, p3, [B

    :goto_2
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p2, p3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/utils/FileUtils;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/utils/FileUtils;->errorStr:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/leo/salt/utils/FileUtils;->isSuccess:Z

    :goto_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/leo/salt/utils/FileUtils;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/FileUtils;->instance:Lcom/leo/salt/utils/FileUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/leo/salt/utils/FileUtils;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/FileUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/leo/salt/utils/FileUtils;->instance:Lcom/leo/salt/utils/FileUtils;

    :cond_0
    sget-object p0, Lcom/leo/salt/utils/FileUtils;->instance:Lcom/leo/salt/utils/FileUtils;

    return-object p0
.end method


# virtual methods
.method public copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/leo/salt/utils/FileUtils;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/leo/salt/utils/FileUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/utils/FileUtils$2;-><init>(Lcom/leo/salt/utils/FileUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public setFileOperateCallback(Lcom/leo/salt/utils/FileUtils$FileOperateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/FileUtils;->callback:Lcom/leo/salt/utils/FileUtils$FileOperateCallback;

    return-void
.end method
