.class public final Lcom/leo/salt/tools/constants/BackupRestoreUnit;
.super Ljava/lang/Object;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashRecoveryThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveRecoveryThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveEFSThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashEFSThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIPThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootAnimationThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBOOTZIPThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$GoogleServices;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServices;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServicesPatch;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedUninstaller;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FingerprintServices;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u001e\u0018\u00002\u00020\u0001:\u0011XYZ[\\]^_`abcdefghB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\'\u001a\u00020\u0006J\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020)J\u0006\u0010,\u001a\u00020)J\u000e\u0010-\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u0016\u0010/\u001a\u00020)2\u0006\u0010.\u001a\u00020\u00062\u0006\u00100\u001a\u000201J\u000e\u00102\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u000e\u00103\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u000e\u00104\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u000e\u00105\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u000e\u00106\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u000e\u00107\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0006J\u0006\u00108\u001a\u00020)J\u0006\u00109\u001a\u00020)J\u0006\u0010:\u001a\u00020)J\r\u0010;\u001a\u00020)H\u0000\u00a2\u0006\u0002\u0008<J\u0006\u0010=\u001a\u00020\u0006J\u000e\u0010>\u001a\u00020)2\u0006\u0010?\u001a\u00020\u0006J\u0006\u0010@\u001a\u00020)J\u0006\u0010A\u001a\u00020)J\u0006\u0010B\u001a\u00020)J\u0006\u0010C\u001a\u00020)J\u0006\u0010D\u001a\u00020)J\u0006\u0010E\u001a\u00020)J\u0016\u0010F\u001a\u00020)2\u0006\u0010G\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u0006J\u0016\u0010I\u001a\u00020)2\u0006\u0010H\u001a\u00020\u00062\u0006\u0010J\u001a\u00020KJ\u0006\u0010L\u001a\u00020)J\u000e\u0010M\u001a\u00020)2\u0006\u0010N\u001a\u00020\u0006J\u0006\u0010O\u001a\u00020\u0006J\u000e\u0010P\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u0006J\u0006\u0010R\u001a\u00020\u0006J\u0006\u0010S\u001a\u00020\u0006J\u0006\u0010T\u001a\u00020)J\u0006\u0010U\u001a\u00020)J\u0006\u0010V\u001a\u00020\u0006J\u000e\u0010W\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0006R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008R\u0019\u0010\u0017\u001a\n \u0018*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u0004R\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006i"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/BackupRestoreUnit;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "BOOT",
        "",
        "getBOOT",
        "()Ljava/lang/String;",
        "EFS",
        "getEFS",
        "ExportOFF",
        "getExportOFF",
        "ExportOK",
        "getExportOK",
        "IMGWriteOFF",
        "getIMGWriteOFF",
        "IMGWriteOK",
        "getIMGWriteOK",
        "RECOVERY",
        "getRECOVERY",
        "URL",
        "getURL",
        "animOK",
        "kotlin.jvm.PlatformType",
        "getAnimOK",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "dialog",
        "Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;",
        "getDialog",
        "()Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;",
        "myHandler",
        "Landroid/os/Handler;",
        "getMyHandler$app_release",
        "()Landroid/os/Handler;",
        "setMyHandler$app_release",
        "(Landroid/os/Handler;)V",
        "EFSCode",
        "EdXposedServicesInstall",
        "",
        "EdXposedServicesPatchInstall",
        "EdXposedUninstallerInstall",
        "FingerprintInstall",
        "FlashBoot",
        "path",
        "FlashBootAnimation",
        "style",
        "",
        "FlashBootUrl",
        "FlashEFS",
        "FlashEFSUrl",
        "FlashRecovery",
        "FlashRecoveryUrl",
        "FlashZIP",
        "GoogleServicesInstall",
        "HideProgressBar",
        "InstalFotaZIP",
        "NoRoot",
        "NoRoot$app_release",
        "RecoveryCode",
        "RestartTwrpDialog",
        "Title",
        "SaveBoot",
        "SaveBootUrl",
        "SaveEFS",
        "SaveEFSUrl",
        "SaveRecovery",
        "SaveRecoveryUrl",
        "ShowDialogMsg",
        "title",
        "msg",
        "ShowMsg",
        "longMsg",
        "",
        "ShowProgressBar",
        "ShowUnlockProgressBar",
        "STR",
        "SystemReboot",
        "SystemScripts",
        "Url",
        "SystemUnlock",
        "SystemUrl",
        "UnlockProLeo",
        "backupBootAnima",
        "bootCode",
        "setTextView",
        "EdXposedServices",
        "EdXposedServicesPatch",
        "EdXposedUninstaller",
        "FingerprintServices",
        "FlashBOOTZIPThread",
        "FlashBootAnimationThread",
        "FlashBootThread",
        "FlashEFSThread",
        "FlashFotaZIP",
        "FlashRecoveryThread",
        "FlashZIPThread",
        "GoogleServices",
        "LeoUnlockPro",
        "SaveBootThread",
        "SaveEFSThread",
        "SaveRecoveryThread",
        "backupBootAnimaThread",
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
.field private final BOOT:Ljava/lang/String;

.field private final EFS:Ljava/lang/String;

.field private final ExportOFF:Ljava/lang/String;

.field private final ExportOK:Ljava/lang/String;

.field private final IMGWriteOFF:Ljava/lang/String;

.field private final IMGWriteOK:Ljava/lang/String;

.field private final RECOVERY:Ljava/lang/String;

.field private final URL:Ljava/lang/String;

.field private final animOK:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final dialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance p1, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->dialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    const-string p1, "operation_ok"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string p1, "img_flash_failure"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string p1, "EFS"

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    const-string p1, "Boot"

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    const-string p1, "Recovery"

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    const-string p1, "export_ok"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    const-string p1, "export_failure"

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    const-string p1, "reboot recovery"

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->URL:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    const v0, 0x7f1000b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->animOK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final EFSCode()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN95E"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/dev/block/platform/11120000.ufs/by-name/EFS"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v2, "GN96E"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "G97EX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "/dev/block/platform/13d60000.ufs/by-name/efs"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN96Q"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "/dev/block/platform/soc/1d84000.ufshc/by-name/efs"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN95Q"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "/dev/block/bootdevice/by-name/efs"

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public final EdXposedServicesInstall()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServices;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServices;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServices;->start()V

    return-void
.end method

.method public final EdXposedServicesPatchInstall()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServicesPatch;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServicesPatch;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedServicesPatch;->start()V

    return-void
.end method

.method public final EdXposedUninstallerInstall()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedUninstaller;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedUninstaller;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$EdXposedUninstaller;->start()V

    return-void
.end method

.method public final FingerprintInstall()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FingerprintServices;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FingerprintServices;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FingerprintServices;->start()V

    return-void
.end method

.method public final FlashBoot(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootThread;->start()V

    return-void
.end method

.method public final FlashBootAnimation(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootAnimationThread;

    invoke-direct {p2, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootAnimationThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBootAnimationThread;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBOOTZIPThread;

    invoke-direct {p2, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBOOTZIPThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBOOTZIPThread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final FlashBootUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->bootCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final FlashEFS(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashEFSThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashEFSThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashEFSThread;->start()V

    return-void
.end method

.method public final FlashEFSUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFSCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final FlashRecovery(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashRecoveryThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashRecoveryThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashRecoveryThread;->start()V

    return-void
.end method

.method public final FlashRecoveryUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RecoveryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final FlashZIP(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIPThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIPThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIPThread;->start()V

    return-void
.end method

.method public final GoogleServicesInstall()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$GoogleServices;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$GoogleServices;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$GoogleServices;->start()V

    return-void
.end method

.method public final HideProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/constants/BackupRestoreUnit$HideProgressBar$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$HideProgressBar$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final InstalFotaZIP()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashFotaZIP;->start()V

    return-void
.end method

.method public final NoRoot$app_release()V
    .locals 2

    const-string v0, "check_root"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_su_dialog_title"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->setTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowDialogMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final RecoveryCode()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN95E"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/dev/block/platform/11120000.ufs/by-name/RECOVERY"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v2, "GN96E"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "G97EX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "/dev/block/platform/13d60000.ufs/by-name/recovery"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN96Q"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "/dev/block/platform/soc/1d84000.ufshc/by-name/recovery"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN95Q"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "/dev/block/bootdevice/by-name/recovery"

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public final RestartTwrpDialog(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-static {v2}, Lcom/os/salt/OSBuild$SystemUrl;->FloatingFature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1003c7

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1003c8

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setShieldBckKyes(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$RestartTwrpDialog$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$RestartTwrpDialog$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    check-cast v0, Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    invoke-virtual {p1, v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public final SaveBoot()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;->start()V

    return-void
.end method

.method public final SaveBootUrl()V
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->bootCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final SaveEFS()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveEFSThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveEFSThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveEFSThread;->start()V

    return-void
.end method

.method public final SaveEFSUrl()V
    .locals 5

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFSCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/efs.img \uff01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v3, "G97EX"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dd if=/dev/block/platform/13d60000.ufs/by-name/sec_efs of="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/sec_efs.img\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/sec_efs.img \uff01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :cond_1
    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dd if=/dev/block/platform/13d60000.ufs/by-name/cpefs of="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/cpefs.img\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cpefs.img \uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final SaveRecovery()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveRecoveryThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveRecoveryThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveRecoveryThread;->start()V

    return-void
.end method

.method public final SaveRecoveryUrl()V
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RecoveryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final ShowDialogMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowDialogMsg$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowDialogMsg$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowMsg(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowMsg$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowMsg$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowProgressBar$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowProgressBar$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowUnlockProgressBar(Ljava/lang/String;)V
    .locals 2

    const-string v0, "STR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$ShowUnlockProgressBar$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final SystemReboot()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reboot recovery"

    goto :goto_0

    :cond_0
    const-string v0, "reboot"

    :goto_0
    return-object v0
.end method

.method public final SystemScripts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/data/com.leo.salt.tweaks/files/scripts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final SystemUnlock()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "10XUnlockPro.sh"

    goto :goto_0

    :cond_0
    const-string v0, "9XUnlockPro.sh"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->SystemScripts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final SystemUrl()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/os/salt/OSBuild$SystemUrl;->RootSystemABUrl:Ljava/lang/String;

    const-string v1, "RootSystemABUrl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/os/salt/OSBuild$SystemUrl;->SystemUrl:Ljava/lang/String;

    const-string v1, "SystemUrl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final UnlockProLeo()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$LeoUnlockPro;->start()V

    return-void
.end method

.method public final backupBootAnima()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$backupBootAnimaThread;->start()V

    return-void
.end method

.method public final bootCode()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN95E"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/dev/block/platform/11120000.ufs/by-name/BOOT"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v2, "GN96E"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "G97EX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "/dev/block/platform/13d60000.ufs/by-name/boot"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN96Q"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "/dev/block/platform/soc/1d84000.ufshc/by-name/boot"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->OTACode:Ljava/lang/String;

    const-string v1, "GN95Q"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "/dev/block/bootdevice/by-name/boot"

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public final getAnimOK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->animOK:Ljava/lang/String;

    return-object v0
.end method

.method public final getBOOT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDialog()Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->dialog:Lcom/leo/salt/tweaks/view/widget/ProgressBarDialog;

    return-object v0
.end method

.method public final getEFS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    return-object v0
.end method

.method public final getExportOFF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    return-object v0
.end method

.method public final getExportOK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMGWriteOFF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMGWriteOK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    return-object v0
.end method

.method public final getMyHandler$app_release()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getRECOVERY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMyHandler$app_release(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public final setTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "STR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringIdentifier(context, STR)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
