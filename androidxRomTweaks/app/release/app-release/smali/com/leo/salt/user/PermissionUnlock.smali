.class public Lcom/leo/salt/user/PermissionUnlock;
.super Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;
.source "PermissionUnlock.java"


# static fields
.field public static final UnlockName:Ljava/lang/String; = "Unlock.zip"


# instance fields
.field private DialogName:Ljava/lang/String;

.field private final Flai:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

.field private unzipPath:Ljava/lang/String;

.field private zipPtath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;-><init>()V

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->LeoDownloadPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->Flai:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/user/PermissionUnlock;->Flai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Unlock.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->zipPtath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->UnzipFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.unlockPro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->unzipPath:Ljava/lang/String;

    const-string v0, "UnlockProCode"

    iput-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->DialogName:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/user/PermissionUnlock;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/user/PermissionUnlock;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    return-void
.end method


# virtual methods
.method protected initDownloadName()Ljava/lang/String;
    .locals 1

    const-string v0, "Unlock.zip"

    return-object v0
.end method

.method protected initDownloadSuccess(Ljava/io/File;)V
    .locals 2

    iget-object p1, p0, Lcom/leo/salt/user/PermissionUnlock;->zipPtath:Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->unzipPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/leo/salt/utils/UnzipFileInfo;->UnzipFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "G97"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/user/PermissionUnlock;->unzipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/10XUnlockPro.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/user/PermissionUnlock;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->UnlockProLeo()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/user/PermissionUnlock;->unzipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/9XUnlockPro.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/user/PermissionUnlock;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->UnlockProLeo()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initDownloadTaskCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected initDownloadTwiceUri()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UnlockPro"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "AQCrng6W"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected initDownloadUri()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AQCrng6W"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "UnlockPro"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAGlobal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected initDownloadpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->Flai:Ljava/lang/String;

    return-object v0
.end method

.method protected initProgressName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->DialogName:Ljava/lang/String;

    return-object v0
.end method

.method public progressDialogView()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/user/PermissionUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/leo/salt/user/PermissionUnlock;->DownloadView(Landroid/content/Context;)V

    return-void
.end method
