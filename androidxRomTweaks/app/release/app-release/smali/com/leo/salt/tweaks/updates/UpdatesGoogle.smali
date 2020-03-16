.class public Lcom/leo/salt/tweaks/updates/UpdatesGoogle;
.super Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;
.source "UpdatesGoogle.java"


# instance fields
.field private GoogleName:Ljava/lang/String;

.field private final downloadUrl:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->LeoDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.google/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->downloadUrl:Ljava/lang/String;

    const-string v0, "Google.zip"

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->GoogleName:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public GoogleDownloadView()V
    .locals 2

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/LeoTweaks/download/.google/Google.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->GoogleServicesInstall()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->DownloadView(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected initDownloadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->GoogleName:Ljava/lang/String;

    return-object v0
.end method

.method protected initDownloadSuccess(Ljava/io/File;)V
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->GoogleServicesInstall()V

    return-void
.end method

.method protected initDownloadTaskCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected initDownloadTwiceUri()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Google10"

    goto :goto_0

    :cond_0
    const-string v0, "Google9"

    :goto_0
    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->LeoServerDownloadMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadUri()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GBE86BVC"

    goto :goto_0

    :cond_0
    const-string v0, "BYVmWKEk"

    :goto_0
    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected initProgressName()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100167

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
