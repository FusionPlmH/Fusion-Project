.class public Lcom/leo/salt/tweaks/updates/Fingerprint;
.super Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;
.source "Fingerprint.java"


# static fields
.field public static unzipFingerprintPath:Ljava/lang/String;


# instance fields
.field public DialogName:Ljava/lang/String;

.field public final EdXposedname:Ljava/lang/String;

.field private final downloadUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/resource/Resource;->UnzipFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.fingerzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/updates/Fingerprint;->unzipFingerprintPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/view/widget/DownloadUploadView;-><init>()V

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->LeoDownloadPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->downloadUrl:Ljava/lang/String;

    const-string v0, "Fing.zip"

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->EdXposedname:Ljava/lang/String;

    const v0, 0x7f100105

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->DialogName:Ljava/lang/String;

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    return-void
.end method

.method static synthetic lambda$intView$0(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method


# virtual methods
.method protected initDownloadName()Ljava/lang/String;
    .locals 1

    const-string v0, "Fing.zip"

    return-object v0
.end method

.method protected initDownloadSuccess(Ljava/io/File;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Fing.zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/updates/Fingerprint;->unzipFingerprintPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/leo/salt/utils/UnzipFileInfo;->UnzipFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/updates/Fingerprint;->unzipFingerprintPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/openrecoveryscript"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->FingerprintInstall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected initDownloadTaskCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected initDownloadTwiceUri()Ljava/lang/String;
    .locals 1

    const-string v0, "Salt_fingerprint"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->GithubDownloadMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadUri()Ljava/lang/String;
    .locals 1

    const-string v0, "La6njNkv"

    invoke-static {v0}, Lcom/leo/salt/utils/NetUtils;->isNetworkOTAChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDownloadpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected initProgressName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->DialogName:Ljava/lang/String;

    return-object v0
.end method

.method public intSecondVarningView()V
    .locals 3

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f10040c

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f10040d

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f10040f

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f10040e

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$yzK_GjjJ8XdhaL2Ub2Nq7-uYk3o;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$yzK_GjjJ8XdhaL2Ub2Nq7-uYk3o;-><init>(Lcom/leo/salt/tweaks/updates/Fingerprint;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$UYBrydCbPySFKW-2kf_UI9gAz0U;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$UYBrydCbPySFKW-2kf_UI9gAz0U;-><init>(Lcom/leo/salt/tweaks/updates/Fingerprint;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public intView()V
    .locals 4

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCustomImage(I)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->DialogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100106

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100109

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f1003cb

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$Sr87Iy-l2okWWp805nDY7V8n_iw;->INSTANCE:Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$Sr87Iy-l2okWWp805nDY7V8n_iw;

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$KEBsqudzA82Fr7yMkW-_Jlm9Ai0;

    invoke-direct {v1, p0}, Lcom/leo/salt/tweaks/updates/-$$Lambda$Fingerprint$KEBsqudzA82Fr7yMkW-_Jlm9Ai0;-><init>(Lcom/leo/salt/tweaks/updates/Fingerprint;)V

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$intSecondVarningView$2$Fingerprint(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->FingerprintInstall()V

    return-void
.end method

.method public synthetic lambda$intSecondVarningView$3$Fingerprint(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 0

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/Fingerprint;->DownloadView(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$intView$1$Fingerprint(Lcom/leo/SweetAlert/SweetAlertDialog;)V
    .locals 2

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    :try_start_0
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/tweaks/updates/Fingerprint;->unzipFingerprintPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/openrecoveryscript"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/Fingerprint;->intSecondVarningView()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/Fingerprint;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/Fingerprint;->DownloadView(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
