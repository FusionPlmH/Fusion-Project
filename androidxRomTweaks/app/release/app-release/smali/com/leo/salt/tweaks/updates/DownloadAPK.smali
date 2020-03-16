.class public Lcom/leo/salt/tweaks/updates/DownloadAPK;
.super Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;
.source "DownloadAPK.java"


# instance fields
.field private APKSDialogName:Ljava/lang/String;

.field private APKSName:Ljava/lang/String;

.field private URLName:Ljava/lang/String;

.field private final downloadUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;-><init>()V

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->LeoDownloadPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->downloadUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public UpdatesDownloadAPKView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSName:Ljava/lang/String;

    iput-object p2, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSDialogName:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->URLName:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/DownloadAPK;->DownloadView(Landroid/content/Context;)V

    return-void
.end method

.method protected initDownloadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSName:Ljava/lang/String;

    return-object v0
.end method

.method protected initDownloadSuccess(Ljava/io/File;)V
    .locals 3

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSDialogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {p1, v0, v2, v1}, Lcom/leo/salt/utils/PrefUtils;->InstallAPPS(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected initDownloadTaskCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected initDownloadTwiceUri()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://os.leorom.cc/update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->URLName:Ljava/lang/String;

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected initProgressName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/DownloadAPK;->APKSDialogName:Ljava/lang/String;

    return-object v0
.end method
