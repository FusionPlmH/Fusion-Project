package com.leo.salt.utils;

import android.os.Environment
import com.leo.salt.fragment.SystemFragment.KernelVersion
import com.leo.salt.tweaks.amber.PermissionUnlock.UnlockName

public object Consts {
   val SDCardDirImg = Environment.getExternalStorageDirectory().absolutePath+"/LeoGHO"
   val SDCardDir = Environment.getExternalStorageDirectory().absolutePath
    val BackUpDir = "/LeoTweaks/backups/apps/";
    val CP = "cp  /sdcard/LeoTweaks/update/";
     val SDcommandUrl = "cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command";
    val AbsBackUpDir = SDCardDir + BackUpDir;
    val KEY_TYPE = "FRAGMENT_TYPE"
    val MountSystemRW =
            "mount -o rw,remount /data\n" +
                    "busybox mount -o rw,remount /data\n" +
                    "mount -o rw,remount /system\n"+
                    "busybox mount -o rw,remount /system\n"+
                    "mkdir /cache/recovery"
    val DisableSELinux = "setenforce 0;\n"
}
