.class public final Lcom/leo/salt/utils/ktshell/Consts;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008!\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006R\u0014\u0010\u0019\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006R\u0014\u0010\u001b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006R\u0019\u0010\u001d\u001a\n \u001e*\u0004\u0018\u00010\u00040\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006R\u0011\u0010 \u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0006R\u0014\u0010\"\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0006R\u0014\u0010$\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0006\u00a8\u0006%"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/Consts;",
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
        "MountSystemRW",
        "getMountSystemRW",
        "MountSystemRW2",
        "getMountSystemRW2",
        "PACKAGE_NAME",
        "getPACKAGE_NAME",
        "POWER_CFG_BASE",
        "getPOWER_CFG_BASE",
        "POWER_CFG_PATH",
        "getPOWER_CFG_PATH",
        "RMThermal",
        "getRMThermal",
        "ResetThermal",
        "getResetThermal",
        "ResumeSELinux",
        "getResumeSELinux",
        "SDCardDir",
        "kotlin.jvm.PlatformType",
        "getSDCardDir",
        "SDCardDirImg",
        "getSDCardDirImg",
        "ToggleMode",
        "getToggleMode",
        "isRootUser",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final AbsBackUpDir:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final BackUpDir:Ljava/lang/String; = "/LeoTweaks/backups/apps/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final DisableSELinux:Ljava/lang/String; = "setenforce 0;\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

# The value of this static final field might be set in the static constructor
.field private static final KEY_TYPE:Ljava/lang/String; = "FRAGMENT_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MountSystemRW:Ljava/lang/String; = "busybox mount -o rw,remount /system\nbusybox mount -f -o rw,remount /system\nmount -o rw,remount /system\nbusybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nbusybox mount -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -o remount,rw /dev/block/bootdevice/by-name/system /system\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final MountSystemRW2:Ljava/lang/String; = "/cache/busybox mount -o rw,remount /system\n/cache/busybox mount -f -o rw,remount /system\nmount -o rw,remount /system\n/cache/busybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\n/cache/busybox mount -o rw,remount /system/xbin\n/cache/busybox mount -f -o rw,remount /system/xbin\nmount -o rw,remount /system/xbin\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.leo.salt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final POWER_CFG_BASE:Ljava/lang/String; = "/data/powercfg-base.sh"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final POWER_CFG_PATH:Ljava/lang/String; = "/data/powercfg"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final RMThermal:Ljava/lang/String; = "cp /system/vendor/bin/thermal-engine /system/vendor/bin/thermal-engine.bak\nrm -f /system/vendor/bin/thermal-engine\ncp /system/vendor/lib64/libthermalclient.so /system/vendor/lib64/libthermalclient.so.bak\nrm -f /system/vendor/lib64/libthermalclient.so\ncp /system/vendor/lib64/libthermalioctl.so /system/vendor/lib64/libthermalioctl.so.bak\nrm -f /system/vendor/lib64/libthermalioctl.so\ncp /system/vendor/lib/libthermalclient.so /system/vendor/lib/libthermalclient.so.bak\nrm -f /system/vendor/lib/libthermalclient.so\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final ResetThermal:Ljava/lang/String; = "cp /system/vendor/bin/thermal-engine.bak /system/vendor/bin/thermal-engine\nrm -f /system/vendor/bin/thermal-engine.bak\ncp /system/vendor/lib64/libthermalclient.so.bak /system/vendor/lib64/libthermalclient.so\nrm -f /system/vendor/lib64/libthermalclient.so.bak\ncp /system/vendor/lib64/libthermalioctl.so.bak /system/vendor/lib64/libthermalioctl.so\nrm -f /system/vendor/lib64/libthermalioctl.so.bak\ncp /system/vendor/lib/libthermalclient.so.bak /system/vendor/lib/libthermalclient.so\nrm -f /system/vendor/lib/libthermalclient.so.bak\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final ResumeSELinux:Ljava/lang/String; = "setenforce 1;\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SDCardDir:Ljava/lang/String;

.field private static final SDCardDirImg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final ToggleMode:Ljava/lang/String; = "sh /data/powercfg %s;\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final isRootUser:Ljava/lang/String; = "if [[ `id -u 2>&1` = \'0\' ]]; then\n\techo \'root\';\nelif [[ `$UID` = \'0\' ]]; then\n\techo \'root\';\nelif [[ `whoami 2>&1` = \'root\' ]]; then\n\techo \'root\';\nelif [[ `set | grep \'USER_ID=0\'` = \'USER_ID=0\' ]]; then\n\techo \'root\';\nelse\n\texit -1;\nfi;"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/leo/salt/utils/ktshell/Consts;

    invoke-direct {v0}, Lcom/leo/salt/utils/ktshell/Consts;-><init>()V

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    const-string v0, "com.leo.salt"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Environment.getExternalStorageDirectory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/LeoFlashImg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->SDCardDirImg:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Environment.getExternalStorageDirectory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->SDCardDir:Ljava/lang/String;

    const-string v0, "/LeoTweaks/backups/apps/"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->BackUpDir:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->SDCardDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->BackUpDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->AbsBackUpDir:Ljava/lang/String;

    const-string v0, "FRAGMENT_TYPE"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->KEY_TYPE:Ljava/lang/String;

    const-string v0, "busybox mount -o rw,remount /system\nbusybox mount -f -o rw,remount /system\nmount -o rw,remount /system\nbusybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nbusybox mount -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -o remount,rw /dev/block/bootdevice/by-name/system /system\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->MountSystemRW:Ljava/lang/String;

    const-string v0, "/data/powercfg"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->POWER_CFG_PATH:Ljava/lang/String;

    const-string v0, "/data/powercfg-base.sh"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->POWER_CFG_BASE:Ljava/lang/String;

    const-string v0, "setenforce 0;\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->DisableSELinux:Ljava/lang/String;

    const-string v0, "setenforce 1;\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->ResumeSELinux:Ljava/lang/String;

    const-string v0, "cp /system/vendor/bin/thermal-engine /system/vendor/bin/thermal-engine.bak\nrm -f /system/vendor/bin/thermal-engine\ncp /system/vendor/lib64/libthermalclient.so /system/vendor/lib64/libthermalclient.so.bak\nrm -f /system/vendor/lib64/libthermalclient.so\ncp /system/vendor/lib64/libthermalioctl.so /system/vendor/lib64/libthermalioctl.so.bak\nrm -f /system/vendor/lib64/libthermalioctl.so\ncp /system/vendor/lib/libthermalclient.so /system/vendor/lib/libthermalclient.so.bak\nrm -f /system/vendor/lib/libthermalclient.so\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->RMThermal:Ljava/lang/String;

    const-string v0, "cp /system/vendor/bin/thermal-engine.bak /system/vendor/bin/thermal-engine\nrm -f /system/vendor/bin/thermal-engine.bak\ncp /system/vendor/lib64/libthermalclient.so.bak /system/vendor/lib64/libthermalclient.so\nrm -f /system/vendor/lib64/libthermalclient.so.bak\ncp /system/vendor/lib64/libthermalioctl.so.bak /system/vendor/lib64/libthermalioctl.so\nrm -f /system/vendor/lib64/libthermalioctl.so.bak\ncp /system/vendor/lib/libthermalclient.so.bak /system/vendor/lib/libthermalclient.so\nrm -f /system/vendor/lib/libthermalclient.so.bak\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->ResetThermal:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->POWER_CFG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " %s;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->ToggleMode:Ljava/lang/String;

    const-string v0, "if [[ `id -u 2>&1` = \'0\' ]]; then\n\techo \'root\';\nelif [[ `$UID` = \'0\' ]]; then\n\techo \'root\';\nelif [[ `whoami 2>&1` = \'root\' ]]; then\n\techo \'root\';\nelif [[ `set | grep \'USER_ID=0\'` = \'USER_ID=0\' ]]; then\n\techo \'root\';\nelse\n\texit -1;\nfi;"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->isRootUser:Ljava/lang/String;

    const-string v0, "/cache/busybox mount -o rw,remount /system\n/cache/busybox mount -f -o rw,remount /system\nmount -o rw,remount /system\n/cache/busybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\nmount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\n/cache/busybox mount -o rw,remount /system/xbin\n/cache/busybox mount -f -o rw,remount /system/xbin\nmount -o rw,remount /system/xbin\n"

    sput-object v0, Lcom/leo/salt/utils/ktshell/Consts;->MountSystemRW2:Ljava/lang/String;

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->AbsBackUpDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackUpDir()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->BackUpDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisableSELinux()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->DisableSELinux:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_TYPE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public final getMountSystemRW()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->MountSystemRW:Ljava/lang/String;

    return-object v0
.end method

.method public final getMountSystemRW2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->MountSystemRW2:Ljava/lang/String;

    return-object v0
.end method

.method public final getPACKAGE_NAME()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public final getPOWER_CFG_BASE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->POWER_CFG_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public final getPOWER_CFG_PATH()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->POWER_CFG_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public final getRMThermal()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->RMThermal:Ljava/lang/String;

    return-object v0
.end method

.method public final getResetThermal()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->ResetThermal:Ljava/lang/String;

    return-object v0
.end method

.method public final getResumeSELinux()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->ResumeSELinux:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDCardDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->SDCardDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDCardDirImg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->SDCardDirImg:Ljava/lang/String;

    return-object v0
.end method

.method public final getToggleMode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->ToggleMode:Ljava/lang/String;

    return-object v0
.end method

.method public final isRootUser()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->isRootUser:Ljava/lang/String;

    return-object v0
.end method
