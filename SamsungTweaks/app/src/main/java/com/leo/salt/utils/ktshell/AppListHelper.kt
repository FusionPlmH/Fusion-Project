package com.fusionleo.salt.utils.ktshell

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import com.fusionleo.salt.utils.AppInfo

import java.io.File
import java.util.*

/**
 * Created by helloklf on 2017/12/01.
 */
class AppListHelper(context: Context) {
    var packageManager: PackageManager

    //应用忽略列表 一些关键性的应用
    internal var ignore: ArrayList<String> = object : ArrayList<String>() {
        init {
            add(context.packageName)

            //add("com.android.mms")
            //add("com.android.providers.media")
            //add("com.android.packageinstaller")
            //add("com.miui.packageinstaller")
            //add("com.google.android.packageinstaller")
            //add("com.android.defcountainer")
            //add("com.android.settings")
            //add("com.android.providers.settings")
            //add("com.android.vpndialogs")
            //add("com.android.shell")
            //add("com.android.phone")
            //add("com.android.onetimeinitializer")
            //add("com.android.providers.contacts")
            //add("com.android.providers.blockednumber")
            //add("com.android.contacts")
            //add("com.android.providers.telephony")
            //add("com.android.incallui")
            //add("com.android.systemui")
            //add("com.android.providers.downloads.ui")
            //add("com.android.providers.downloads")
            //add("android")
            //add("com.android.carrierconfig")
            //add("com.android.frameworks.telresources")
            //add("com.android.keyguard")
            //add("com.android.wallpapercropper")
            //add("com.miui.rom")
            //add("com.miui.system")
            //add("com.qualcomm.location")
            //add("com.google.android.webview")
            //add("com.android.webview")
        }
    }

    private fun exclude(packageName: String): Boolean {
        if (packageName.endsWith(".Pure")) {
            return true
        }
        return false
    }

    /**
     * 验证已备份版本
     */
    fun checkBackup(packageInfo: ApplicationInfo): String {
        try {
            val packageName = packageInfo.packageName
            val absPath = Consts.AbsBackUpDir + packageName + ".apk"
            if (File(absPath).exists()) {
                val backupInfo = packageManager.getPackageArchiveInfo(absPath, PackageManager.GET_ACTIVITIES)
                val installInfo = packageManager.getPackageInfo(packageInfo.packageName, 0)
                if (installInfo == null)
                    return ""
                if (backupInfo.versionCode == installInfo.versionCode) {
                    return "✔"
                } else if (backupInfo.versionCode > installInfo.versionCode) {
                    return "✘"
                } else {
                    return "★"
                }
            } else if (File(Consts.BackUpDir + packageName + ".tar.gz").exists()) {
                return "☆"
            } else {
                return ""
            }
        } catch (ex: Exception) {
            return ""
        }
    }

    /**
     * 检查已安装版本
     */
    fun checkInstall(backupInfo: PackageInfo): String {
        try {
            val installInfo = packageManager.getPackageInfo(backupInfo.packageName, 0)
            if (installInfo == null)
                return ""
            if (backupInfo.versionCode == installInfo.versionCode) {
                return "✔"
            } else if (backupInfo.versionCode > installInfo.versionCode) {
                return "✘"
            } else {
                return "★"
            }
        } catch (e: PackageManager.NameNotFoundException) {
            return ""
        }
    }

    fun getAppList(systemApp: Boolean? = null, removeIgnore: Boolean = true): ArrayList<AppInfo> {
        val packageInfos = packageManager.getInstalledApplications(0)

        val list = ArrayList<AppInfo>()/*在数组中存放数据*/
        for (i in packageInfos.indices) {
            val applicationInfo = packageInfos[i]
            if (removeIgnore && ignore.contains(applicationInfo.packageName) || exclude(applicationInfo.packageName)) {
                continue
            }

            if ((systemApp == false && applicationInfo.sourceDir.startsWith("/system")) || (systemApp == true && !applicationInfo.sourceDir.startsWith("/system")))
                continue

            val file = File(applicationInfo.publicSourceDir)
            if (!file.exists())
                continue

            val item = AppInfo.getItem()
            //val d = packageInfo.loadIcon(packageManager)
            item.appName = applicationInfo.loadLabel(packageManager)
            item.packageName = applicationInfo.packageName
            //item.icon = d
            item.dir = file.parent
            item.enabled = applicationInfo.enabled
            item.enabledState = checkBackup(applicationInfo)
            item.wranState = if (applicationInfo.enabled) "" else "已冻结"
            item.path = applicationInfo.sourceDir
            item.appType = if (applicationInfo.sourceDir.startsWith("/system")) AppInfo.AppType.SYSTEM else AppInfo.AppType.USER
            try {
                val packageInfo = packageManager.getPackageInfo(packageInfos[i].packageName, 0)
                item.versionName = packageInfo.versionName
                item.versionCode = packageInfo.versionCode
            } catch (ex: Exception) {
            }

            list.add(item)
        }
        return (list)
    }

    fun getUserAppList(): ArrayList<AppInfo> {
        return getAppList(false)
    }

    fun getSystemAppList(): ArrayList<AppInfo> {
        return getAppList(true)
    }

    fun getAll(): ArrayList<AppInfo> {
        return getAppList(null, false)
    }

    fun getApkFilesInfoList(dirPath: String): ArrayList<AppInfo> {
        val list = ArrayList<AppInfo>()
        val dir = File(dirPath)
        if (!dir.exists())
            return list

        if (!dir.isDirectory) {
            dir.delete()
            dir.mkdirs()
            return list
        }
        if (!dir.canRead()) {
            return list
        }

        val files = dir.listFiles({ name ->
            name.extension.toLowerCase() == "apk"
        })

        if (files == null) {
            return list
        }

        for (i in files.indices) {
            val absPath = files[i].absolutePath
            try {
                val packageInfo = packageManager.getPackageArchiveInfo(absPath, PackageManager.GET_ACTIVITIES)
                if (packageInfo != null) {
                    val applicationInfo = packageInfo.applicationInfo
                    if (applicationInfo.packageName == "com.fusionleo.salt")
                        continue
                    applicationInfo.sourceDir = absPath
                    applicationInfo.publicSourceDir = absPath

                    val item = AppInfo.getItem()
                    item.selectState = false
                    item.appName = applicationInfo.loadLabel(packageManager).toString() + "  (" + packageInfo.versionCode + ")"
                    item.packageName = applicationInfo.packageName
                    item.path = applicationInfo.sourceDir
                    item.enabledState = checkInstall(packageInfo)
                    item.versionName = packageInfo.versionName
                    item.versionCode = packageInfo.versionCode
                    item.appType = AppInfo.AppType.BACKUPFILE
                    list.add(item)
                }
            } catch (ex: Exception) {
            }
        }

        return list
    }

    init {
        packageManager = context.packageManager
    }
}
