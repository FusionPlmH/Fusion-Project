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
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashBOOTZIPThread;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashKernel;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;,
        Lcom/leo/salt/tools/constants/BackupRestoreUnit$Permissions;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u000cEFGHIJ/KLMNOB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u0016\u0010\'\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010+\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010.\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010/\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006J\u0006\u00100\u001a\u00020%J\u0006\u00101\u001a\u00020%J\u0006\u00102\u001a\u00020%J\r\u00103\u001a\u00020%H\u0000\u00a2\u0006\u0002\u00084J\u0006\u00105\u001a\u00020%J\u0006\u00106\u001a\u00020%J\u0006\u00107\u001a\u00020%J\u0006\u00108\u001a\u00020%J\u0006\u00109\u001a\u00020%J\u0006\u0010:\u001a\u00020%J\u0016\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u0006J\u0016\u0010>\u001a\u00020%2\u0006\u0010=\u001a\u00020\u00062\u0006\u0010?\u001a\u00020@J\u0006\u0010A\u001a\u00020%J\u0006\u0010B\u001a\u00020%J\u000e\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u0006R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u0004R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006P"
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
        "FlashBoot",
        "",
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
        "HideProgressBar",
        "InstalFlashZIP",
        "InstallFlashKernel",
        "NoRoot",
        "NoRoot$app_release",
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
        "UnlockPermissions",
        "setTextView",
        "STR",
        "FlashBOOTZIPThread",
        "FlashBootAnimationThread",
        "FlashBootThread",
        "FlashEFSThread",
        "FlashKernel",
        "FlashRecoveryThread",
        "FlashZIPThread",
        "Permissions",
        "SaveBootThread",
        "SaveEFSThread",
        "SaveRecoveryThread",
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

    return-void
.end method


# virtual methods
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
    .locals 8

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ro.leo.ota.code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exynos_S8_N8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " of=/dev/block/platform/11120000.ufs/by-name/BOOT"

    const-string v3, "error"

    const-string v4, "dd if="

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Qualcomm_S8_N8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, " of=/dev/block/bootdevice/by-name/boot"

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Qualcomm_S9"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/platform/soc/1d84000.ufshc/by-name/boot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exynos_S9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

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
    .locals 8

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ro.leo.ota.code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exynos_S8_N8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " of=/dev/block/platform/11120000.ufs/by-name/EFS"

    const-string v3, "error"

    const-string v4, "dd if="

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Qualcomm_S8_N8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, " of=/dev/block/bootdevice/by-name/efs"

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Qualcomm_S9"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/platform/soc/1d84000.ufshc/by-name/efs"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exynos_S9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

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
    .locals 8

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ro.leo.ota.code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exynos_S8_N8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " of=/dev/block/platform/11120000.ufs/by-name/RECOVERY"

    const-string v3, "error"

    const-string v4, "dd if="

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Qualcomm_S8_N8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, " of=/dev/block/bootdevice/by-name/recovery"

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Qualcomm_S9"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/platform/soc/1d84000.ufshc/by-name/recovery"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exynos_S9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

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

.method public final HideProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/tools/constants/BackupRestoreUnit$HideProgressBar$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$HideProgressBar$1;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final InstalFlashZIP()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashZIP;->start()V

    return-void
.end method

.method public final InstallFlashKernel()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashKernel;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashKernel;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$FlashKernel;->start()V

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

.method public final SaveBoot()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$SaveBootThread;->start()V

    return-void
.end method

.method public final SaveBootUrl()V
    .locals 9

    const-string v0, "ro.leo.ota.code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exynos_S8_N8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "dd if=/dev/block/platform/11120000.ufs/by-name/BOOT of="

    const-string v3, "/boot.img \uff01"

    const-string v4, "error"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Qualcomm_S8_N8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "dd if=/dev/block/bootdevice/by-name/boot of="

    const-string v7, "/boot.img;\n"

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "Qualcomm_S9"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/platform/soc/1d84000.ufshc/by-name/boot of="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exynos_S9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

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
    .locals 10

    const-string v0, "ro.leo.ota.code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exynos_S8_N8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/EFS.img\n"

    const-string v3, "dd if=/dev/block/platform/11120000.ufs/by-name/EFS of="

    const-string v4, "/efs.img \uff01"

    const-string v5, "error"

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_0

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

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Qualcomm_S8_N8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "dd if=/dev/block/bootdevice/by-name/efs of="

    const-string v8, "/efs.img\n"

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

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

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "Qualcomm_S9"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/platform/soc/1d84000.ufshc/by-name/efs of="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_4

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

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exynos_S9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_6

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

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_8

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

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
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
    .locals 9

    const-string v0, "ro.leo.ota.code"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exynos_S8_N8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "dd if=/dev/block/platform/11120000.ufs/by-name/RECOVERY of="

    const-string v3, "/recovery.img \uff01"

    const-string v4, "error"

    const-string v5, "/recovery.img\n"

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Qualcomm_S8_N8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "dd if=/dev/block/bootdevice/by-name/recovery of="

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "Qualcomm_S9"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/platform/soc/1d84000.ufshc/by-name/recovery of="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exynos_S9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

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

.method public final UnlockPermissions()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit$Permissions;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$Permissions;-><init>(Lcom/leo/salt/tools/constants/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/BackupRestoreUnit$Permissions;->start()V

    return-void
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

    const-string v0, "Resource.getStringIdentifier(context, STR)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
