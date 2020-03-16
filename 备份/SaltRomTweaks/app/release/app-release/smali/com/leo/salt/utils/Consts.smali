.class public final Lcom/leo/salt/utils/Consts;
.super Ljava/lang/Object;
.source "Consts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0019\u0010\u0011\u001a\n \u0012*\u0004\u0018\u00010\u00040\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006R\u0011\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006R\u0014\u0010\u0016\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/leo/salt/utils/Consts;",
        "",
        "()V",
        "AbsBackUpDir",
        "",
        "getAbsBackUpDir",
        "()Ljava/lang/String;",
        "BackUpDir",
        "getBackUpDir",
        "DisableSELinux",
        "getDisableSELinux",
        "KEY_TYPE",
        "getKEY_TYPE",
        "KernelInstalluRL",
        "getKernelInstalluRL",
        "MountSystemRW",
        "getMountSystemRW",
        "SDCardDir",
        "kotlin.jvm.PlatformType",
        "getSDCardDir",
        "SDCardDirImg",
        "getSDCardDirImg",
        "SDcommandUrl",
        "getSDcommandUrl",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final AbsBackUpDir:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final BackUpDir:Ljava/lang/String; = "/LeoTweaks/backups/apps/"

# The value of this static final field might be set in the static constructor
.field private static final DisableSELinux:Ljava/lang/String; = "setenforce 0;\n"

.field public static final INSTANCE:Lcom/leo/salt/utils/Consts;

# The value of this static final field might be set in the static constructor
.field private static final KEY_TYPE:Ljava/lang/String; = "FRAGMENT_TYPE"

.field private static final KernelInstalluRL:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final MountSystemRW:Ljava/lang/String; = "busybox mount -o rw,remount /system\nbusybox mount -f -o rw,remount /system\nmount -o rw,remount /system\nbusybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nbusybox mount -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -o remount,rw /dev/block/bootdevice/by-name/system /system\n"

.field private static final SDCardDir:Ljava/lang/String;

.field private static final SDCardDirImg:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final SDcommandUrl:Ljava/lang/String; = "cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/leo/salt/utils/Consts;

    invoke-direct {v0}, Lcom/leo/salt/utils/Consts;-><init>()V

    sput-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Environment.getExternalStorageDirectory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/LeoGHO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Consts;->SDCardDirImg:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Consts;->SDCardDir:Ljava/lang/String;

    const-string v0, "/LeoTweaks/backups/apps/"

    sput-object v0, Lcom/leo/salt/utils/Consts;->BackUpDir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/ota/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/fragment/SystemFragment;->KernelVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FusionLeoKernel.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Consts;->KernelInstalluRL:Ljava/lang/String;

    const-string v0, "cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command"

    sput-object v0, Lcom/leo/salt/utils/Consts;->SDcommandUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Consts;->SDCardDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/Consts;->BackUpDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/Consts;->AbsBackUpDir:Ljava/lang/String;

    const-string v0, "FRAGMENT_TYPE"

    sput-object v0, Lcom/leo/salt/utils/Consts;->KEY_TYPE:Ljava/lang/String;

    const-string v0, "busybox mount -o rw,remount /system\nbusybox mount -f -o rw,remount /system\nmount -o rw,remount /system\nbusybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nbusybox mount -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -o remount,rw /dev/block/bootdevice/by-name/system /system\n"

    sput-object v0, Lcom/leo/salt/utils/Consts;->MountSystemRW:Ljava/lang/String;

    const-string v0, "setenforce 0;\n"

    sput-object v0, Lcom/leo/salt/utils/Consts;->DisableSELinux:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAbsBackUpDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->AbsBackUpDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackUpDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->BackUpDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisableSELinux()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->DisableSELinux:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_TYPE()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public final getKernelInstalluRL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->KernelInstalluRL:Ljava/lang/String;

    return-object v0
.end method

.method public final getMountSystemRW()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->MountSystemRW:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDCardDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->SDCardDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDCardDirImg()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->SDCardDirImg:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDcommandUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->SDcommandUrl:Ljava/lang/String;

    return-object v0
.end method
