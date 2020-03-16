package com.leo.salt.utils;

import android.os.Environment
import com.leo.salt.fragment.SystemFragment.KernelVersion
import com.leo.salt.tweaks.amber.PermissionUnlock.UnlockName

public object Consts {
   val SDCardDirImg = Environment.getExternalStorageDirectory().absolutePath+"/LeoGHO"
   val SDCardDir = Environment.getExternalStorageDirectory().absolutePath
    val BackUpDir = "/LeoTweaks/backups/apps/";
    val KernelInstalluRL = Environment.getExternalStorageDirectory().toString() + "/Android/ota/"+ "v" + KernelVersion + "_FusionLeoKernel.zip";
     val SDcommandUrl = "cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command";
    val AbsBackUpDir = SDCardDir + BackUpDir;
    val KEY_TYPE = "FRAGMENT_TYPE"
    val MountSystemRW =
            "busybox mount -o rw,remount /system\n" +
                    "busybox mount -f -o rw,remount /system\n" +
                    "mount -o rw,remount /system\n" +
                    "busybox mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\n" +
                    "mount -f -o remount,rw /dev/block/bootdevice/by-name/system /system\n" +
                    "busybox mount -o remount,rw /dev/block/bootdevice/by-name/system /system\n" +
                    "mount -o remount,rw /dev/block/bootdevice/by-name/system /system\n"
    val DisableSELinux = "setenforce 0;\n"
}
