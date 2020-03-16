.class public final Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;
.super Ljava/lang/Object;
.source "BackupRestoreUnit.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashRecoveryThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveBootThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveEFSThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;,
        Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootAnimationThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0008?@ABCDEFB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010(\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010)\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010*\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010+\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010-\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010.\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u0006\u0010/\u001a\u00020&J\r\u00100\u001a\u00020&H\u0000\u00a2\u0006\u0002\u00081J\u0006\u00102\u001a\u00020&J\u0006\u00103\u001a\u00020&J\u0006\u00104\u001a\u00020&J\u0006\u00105\u001a\u00020&J\u0006\u00106\u001a\u00020&J\u0006\u00107\u001a\u00020&J\u0016\u00108\u001a\u00020&2\u0006\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u0006J\u0016\u0010;\u001a\u00020&2\u0006\u0010:\u001a\u00020\u00062\u0006\u0010<\u001a\u00020=J\u0006\u0010>\u001a\u00020&R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0019\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0019\u0010\u000e\u001a\n \u000c*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008R\u0019\u0010\u0010\u001a\n \u000c*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008R\u0019\u0010\u0012\u001a\n \u000c*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008R\u0014\u0010\u0014\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008R\u0014\u0010\u0016\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u0004R\u0011\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006G"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;",
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
        "kotlin.jvm.PlatformType",
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
        "Lcom/leo/salt/kt/ProgressBarDialog;",
        "getDialog",
        "()Lcom/leo/salt/kt/ProgressBarDialog;",
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
        "FlashBootUrl",
        "FlashEFS",
        "FlashEFSUrl",
        "FlashRecovery",
        "FlashRecoveryUrl",
        "FlashZIP",
        "HideProgressBar",
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
        "FlashBootAnimationThread",
        "FlashBootThread",
        "FlashEFSThread",
        "FlashRecoveryThread",
        "FlashZIPThread",
        "SaveBootThread",
        "SaveEFSThread",
        "SaveRecoveryThread",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final BOOT:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final EFS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ExportOFF:Ljava/lang/String;

.field private final ExportOK:Ljava/lang/String;

.field private final IMGWriteOFF:Ljava/lang/String;

.field private final IMGWriteOK:Ljava/lang/String;

.field private final RECOVERY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final URL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialog:Lcom/leo/salt/kt/ProgressBarDialog;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private myHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance p1, Lcom/leo/salt/kt/ProgressBarDialog;

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/kt/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->dialog:Lcom/leo/salt/kt/ProgressBarDialog;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002d8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string p1, "EFS"

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->EFS:Ljava/lang/String;

    const-string p1, "Boot"

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    const-string p1, "Recovery"

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10016c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10016b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    const-string p1, "reboot recovery"

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final FlashBoot(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootThread;->start()V

    return-void
.end method

.method public final FlashBootAnimation(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootAnimationThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootAnimationThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashBootAnimationThread;->start()V

    return-void
.end method

.method public final FlashBootUrl(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/platform/11120000.ufs/by-name/boot"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string v0, "IMGWriteOK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string v0, "IMGWriteOFF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/bootdevice/by-name/boot"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string v0, "IMGWriteOK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string v0, "IMGWriteOFF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final FlashEFS(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashEFSThread;->start()V

    return-void
.end method

.method public final FlashEFSUrl(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/platform/11120000.ufs/by-name/efs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string v0, "IMGWriteOK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string v0, "IMGWriteOFF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/bootdevice/by-name/efs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string v0, "IMGWriteOK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string v0, "IMGWriteOFF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final FlashRecovery(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashRecoveryThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashRecoveryThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashRecoveryThread;->start()V

    return-void
.end method

.method public final FlashRecoveryUrl(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/platform/11120000.ufs/by-name/recovery"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string v0, "IMGWriteOK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string v0, "IMGWriteOFF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of=/dev/block/bootdevice/by-name/recovery"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    const-string v0, "IMGWriteOK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    const-string v0, "IMGWriteOFF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final FlashZIP(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$FlashZIPThread;->start()V

    return-void
.end method

.method public final HideProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$HideProgressBar$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$HideProgressBar$1;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final NoRoot$app_release()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getResources().g\u2026string.please_check_root)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getResources().g\u2026lease_check_root_summary)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowDialogMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final SaveBoot()V
    .locals 1

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveBootThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveBootThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveBootThread;->start()V

    return-void
.end method

.method public final SaveBootUrl()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/platform/11120000.ufs/by-name/BOOT of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/bootdevice/by-name/boot of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/boot.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final SaveEFS()V
    .locals 1

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveEFSThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveEFSThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveEFSThread;->start()V

    return-void
.end method

.method public final SaveEFSUrl()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/platform/11120000.ufs/by-name/EFS of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/bootdevice/by-name/efs of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->EFS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final SaveRecovery()V
    .locals 1

    new-instance v0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$SaveRecoveryThread;->start()V

    return-void
.end method

.method public final SaveRecoveryUrl()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/platform/11120000.ufs/by-name/RECOVERY of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd if=/dev/block/bootdevice/by-name/recovery of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ktshell/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/recovery.img \uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ShowMsg(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final ShowDialogMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowDialogMsg$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowDialogMsg$1;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowMsg(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowMsg$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowMsg$1;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;Ljava/lang/String;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowProgressBar$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit$ShowProgressBar$1;-><init>(Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getBOOT()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->BOOT:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDialog()Lcom/leo/salt/kt/ProgressBarDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->dialog:Lcom/leo/salt/kt/ProgressBarDialog;

    return-object v0
.end method

.method public final getEFS()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->EFS:Ljava/lang/String;

    return-object v0
.end method

.method public final getExportOFF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOFF:Ljava/lang/String;

    return-object v0
.end method

.method public final getExportOK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->ExportOK:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMGWriteOFF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOFF:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMGWriteOK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->IMGWriteOK:Ljava/lang/String;

    return-object v0
.end method

.method public final getMyHandler$app_release()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getRECOVERY()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->RECOVERY:Ljava/lang/String;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMyHandler$app_release(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/BackupRestoreUnit;->myHandler:Landroid/os/Handler;

    return-void
.end method
