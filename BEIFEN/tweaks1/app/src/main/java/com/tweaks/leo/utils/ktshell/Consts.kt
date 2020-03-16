package com.tweaks.leo.utils.ktshell

import android.os.Environment

/**
 * Created by Hello on 2017/2/22.
 */

public object Consts {
    val PACKAGE_NAME = "com.tweaks.leo"
    public val SDCardDirImg = Environment.getExternalStorageDirectory().absolutePath+"/LeoFlashImg"
    public val SDCardDir = Environment.getExternalStorageDirectory().absolutePath

    val BackUpDir = "/LeoTweaks/backups/apps/";
    val AbsBackUpDir = SDCardDir + BackUpDir;

    val MountSystemRW =
            "busybox mount -o rw,remount /system\n" +
                    "busybox mount -f -o rw,remount /system\n" +
                    "mount -o rw,remount /system\n" +
                    "busybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\n" +
                    "mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\n" +
                    "busybox mount -o remount,rw /dev/block/bootdevice/by-name/system /system\n" +
                    "mount -o remount,rw /dev/block/bootdevice/by-name/system /system\n"


    val POWER_CFG_PATH = "/data/powercfg"
    val POWER_CFG_BASE = "/data/powercfg-base.sh"

    val DisableSELinux = "setenforce 0;\n"
    val ResumeSELinux = "setenforce 1;\n"

    val RMThermal =
            "cp /system/vendor/bin/thermal-engine /system/vendor/bin/thermal-engine.bak\n" +
                    "rm -f /system/vendor/bin/thermal-engine\n" +

                    "cp /system/vendor/lib64/libthermalclient.so /system/vendor/lib64/libthermalclient.so.bak\n" +
                    "rm -f /system/vendor/lib64/libthermalclient.so\n" +

                    "cp /system/vendor/lib64/libthermalioctl.so /system/vendor/lib64/libthermalioctl.so.bak\n" +
                    "rm -f /system/vendor/lib64/libthermalioctl.so\n" +

                    "cp /system/vendor/lib/libthermalclient.so /system/vendor/lib/libthermalclient.so.bak\n" +
                    "rm -f /system/vendor/lib/libthermalclient.so\n"

    val ResetThermal =
            "cp /system/vendor/bin/thermal-engine.bak /system/vendor/bin/thermal-engine\n" +
                    "rm -f /system/vendor/bin/thermal-engine.bak\n" +

                    "cp /system/vendor/lib64/libthermalclient.so.bak /system/vendor/lib64/libthermalclient.so\n" +
                    "rm -f /system/vendor/lib64/libthermalclient.so.bak\n" +

                    "cp /system/vendor/lib64/libthermalioctl.so.bak /system/vendor/lib64/libthermalioctl.so\n" +
                    "rm -f /system/vendor/lib64/libthermalioctl.so.bak\n" +

                    "cp /system/vendor/lib/libthermalclient.so.bak /system/vendor/lib/libthermalclient.so\n" +
                    "rm -f /system/vendor/lib/libthermalclient.so.bak\n"
    val ToggleMode = "sh $POWER_CFG_PATH %s;\n"

    val isRootUser = "if [[ `id -u 2>&1` = '0' ]]; then\n" +
            "\techo 'root';\n" +
            "elif [[ `\$UID` = '0' ]]; then\n" +
            "\techo 'root';\n" +
            "elif [[ `whoami 2>&1` = 'root' ]]; then\n" +
            "\techo 'root';\n" +
            "elif [[ `set | grep 'USER_ID=0'` = 'USER_ID=0' ]]; then\n" +
            "\techo 'root';\n" +
            "else\n" +
            "\texit -1;\n" +
            "fi;"
}
