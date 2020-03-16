package com.salt.script

import android.os.Environment
import com.salt.script.KeepShellPublic


object Consts {


    val RO_MODEL = "ro.product.model"
    val RO_PRODUCT = "ro.build.product"
    val RO_PRODUCTNAME = "ro.product.name"
    val RO_DEVICE = "ro.product.device"
    val RO_FLAVOR = "ro.build.flavor"
    val BACKUP_SUCCESS = "persist.salt.device.model"
    val BACKUP_MODEL = "persist.salt.model"
    val BACKUP_PRODUCT = "persist.salt.product"
    val BACKUP_NAME = "persist.salt.name"
    val BACKUP_DEVICE = "persist.salt.device"
    val BACKUP_FLAVOR = "persist.salt.flavor"
   val SDCardDirImg = Environment.getExternalStorageDirectory().absolutePath+"/LeoTweaks/backups/IMGS"
   val SDCardDir = Environment.getExternalStorageDirectory().absolutePath
    val BackUpDir = "/LeoTweaks/backups/apps/";
    val UNLOCKDIR = "data/data/com.salt.config/files";
     val SDcommandUrl = "cp  /sdcard/LeoTweaks/scripts/command /cache/recovery/command";
    val AbsBackUpDir = "$SDCardDir/LeoTweaks/backups/apps/"

    val KEY_TYPE = "FRAGMENT_TYPE"
    val MountSystemRW =
            "mount -o rw,remount /data\n" +
                    "busybox mount -o rw,remount /data\n" +
                    "mount -o rw,remount /system\n"+
                    "busybox mount -o rw,remount /system\n"+
                    "mount -o rw,remount /system_root\n"+
                    "busybox mount -o rw,remount /system_root\n"
    val Mkdir = "mkdir /cache/recovery"
    val UrlCacheOTA = "/LeoTweaks/ota/command /cache/recovery/command"
    const val DisableSELinux = "setenforce 0;\n"
    fun getProp(propName: String): String {
        return KeepShellPublic.doCmdSync("getprop \"$propName\"")
    }

    fun setPorp(propName: String, value: String): Boolean {
        return KeepShellPublic.doCmdSync("setprop \"$propName\" \"$value\"") != "error"
    }
}
