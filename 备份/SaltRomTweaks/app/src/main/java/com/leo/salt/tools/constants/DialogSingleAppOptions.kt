package com.leo.salt.tools.constants;

import android.app.AlertDialog
import android.content.*
import android.net.Uri
import android.os.Handler
import android.widget.Toast
import com.leo.salt.tweaks.resource.Resource
import com.leo.salt.utils.Consts.MountSystemRW
import java.io.File


/**
 * Created by Hello on 2018/01/26.
 */

class DialogSingleAppOptions(context: Context, var app: AppInfo, handler: Handler) : DialogAppOptions(context, arrayListOf<AppInfo>(app), handler) {

    fun showSingleAppOptions() {
        when (app.appType) {
            AppInfo.AppType.USER -> showUserAppOptions()
            AppInfo.AppType.SYSTEM -> showSystemAppOptions()
            AppInfo.AppType.BACKUPFILE -> showBackupAppOptions()
            else -> {
                Toast.makeText(context, "UNSupport！", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun showUserAppOptions() {
        AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf( DialogAppTextView("app_manage_start"),
                                DialogAppTextView("app_manage_backup_apk_data"),
                                DialogAppTextView("app_manage_backup_apk"),
                                DialogAppTextView("app_manage_uninstall_apk"),
                                DialogAppTextView("app_manage_uninstall_apk_data"),
                                DialogAppTextView("app_manage_clear_data"),
                                DialogAppTextView("app_manage_clear_cache"),
                                (if (app.enabled) DialogAppTextView("app_manage_freeze_apk") else DialogAppTextView("app_manage_unfreeze_apk")),
                                DialogAppTextView("app_manage_info"),
                                DialogAppTextView("app_manage_packagename_copy"),
                                DialogAppTextView("app_manage_store"),
                                DialogAppTextView("app_manage_eisabled_apk"),
                                DialogAppTextView("app_manage_to_system"),
                                DialogAppTextView("app_manage_dex2oat")), { _, which ->
                    when (which) {
0 -> startApp()
                        1 -> backupAll(true, true)
                        2 -> backupAll(true, false)
                        3 -> uninstallAll()
                        4 -> uninstallKeepDataAll()
                        5 -> clearAll()
                        6 -> trimCachesAll()
                        7 -> toggleEnable()
                        8 -> openDetails()
                        9 -> copyPackageName()
                        10 -> showInMarket(context)
                        11 -> hideAll()
                        12 -> moveToSystem()
                        13 -> dex2oatBuild()
                    }
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .show()
    }
private fun startApp () {
        if (!app.enabled) {
            enableAll()
        }
        val intent = this.context.getPackageManager().getLaunchIntentForPackage(app.packageName.toString())
        if (intent != null) {
            this.context.startActivity(intent)
        }
    }
    /**
     * 显示系统应用选项
     */
    private fun showSystemAppOptions() {
        AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf(DialogAppTextView("app_manage_uninstall_apk"),
                                DialogAppTextView("app_manage_eisabled_apk"),
                                DialogAppTextView("app_manage_clear_data"),
                                DialogAppTextView("app_manage_clear_cache"),
                                (if (app.enabled)   DialogAppTextView("app_manage_freeze_apk") else  DialogAppTextView("app_manage_unfreeze_apk")),
                              DialogAppTextView("app_manage_info"),
                               DialogAppTextView("app_manage_packagename_copy"),
                               DialogAppTextView("app_manage_store")), { _, which ->
                    when (which) {
                        0 -> deleteAll()
                        1 -> uninstallKeepDataAll()
                        2 -> clearAll()
                        3 -> trimCachesAll()
                        4 -> toggleEnable()
                        5 -> openDetails()
                        6 -> copyPackageName()
                        7 -> showInMarket(context)
                    }
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .show()
    }

    /**
     * 显示备份的应用选项
     */
    private fun showBackupAppOptions() {
        AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf( DialogAppTextView("app_manage_restore_delete") ,
                                DialogAppTextView("app_manage_restore_apk") ,
                                DialogAppTextView("app_manage_restore_apk_data") ,
                                DialogAppTextView("app_manage_restore_data") ,
                                DialogAppTextView("app_manage_packagename_copy"),
                                DialogAppTextView("app_manage_store")), { _, which ->
                    when (which) {
                        0 -> deleteBackupAll()
                        1 -> restoreAll(true, false)
                        2 -> restoreAll(true, true)
                        3 -> restoreAll(false, true)
                        4 -> copyPackageName()
                        5 -> showInMarket(context)
                    }
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .show()
    }

    private fun toggleEnable() {
        if (app.enabled) {
            disableAll()
        } else {
            enableAll()
        }
    }

    private fun openDetails() {
        val intent = Intent()
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        intent.action = "android.settings.APPLICATION_DETAILS_SETTINGS"
        intent.data = Uri.fromParts("package", app.packageName.toString(), null)
        context.startActivity(intent)
    }

    private fun copyPackageName() {
        val cm = context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        cm.setText(app.packageName)
        Toast.makeText(context, DialogAppTextView("copy_ok") +"${app.packageName}", Toast.LENGTH_LONG).show()
    }


    fun showInMarket(context: Context) {
        val uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + app.packageName)
        val goToMarket = Intent()
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main")
        goToMarket.data = uri
        try {
            context.startActivity(goToMarket)
        } catch (e: ActivityNotFoundException) {

            e.printStackTrace()
        }

    }


    private fun moveToSystem() {
        if (CheckRootStatus.isMagisk() && CheckRootStatus.isTmpfs("/system/app")) {
            android.app.AlertDialog.Builder(context)
                    .setTitle(DialogAppTextView("app_manage_magisk"))
                    .setMessage(DialogAppTextView("app_manage_magisk_info"))
                    .setPositiveButton(android.R.string.cancel, { _, _ ->
                    })
                    .create()
                    .show()
            return
        }
        AlertDialog.Builder(context)
                .setTitle(app.appName)
                .setMessage(DialogAppTextView("app_manage_to_apps_info"))
                .setPositiveButton(android.R.string.yes, { _, _ ->

                        moveToSystemExec()

                })
                .setNegativeButton(android.R.string.cancel, null)
                .setCancelable(true)
                .create()
                .show()
    }

    private fun dex2oatBuild() {
        super.buildAll();
    }
    
        private fun moveToSystemExec() {
        val sb = StringBuilder()
        sb.append(MountSystemRW)
        val appDir = File(app.path.toString()).parent
        if (appDir == "/data/app") {
            val parent = File(app.path.toString())
            val outPutPath = "/system/app/${parent.name}"
            sb.append("cp '${app.path}' '$outPutPath'\n")
            sb.append("chmod 0755 '$outPutPath'\n")
            sb.append("chown -R system:system '$outPutPath'\n")
            sb.append("busybox chown -R system:system '$outPutPath'\n")
            sb.append("if [[ ! -e '$outPutPath' ]]; then exit 1; else rm -f '${app.path}'; fi;\n")
        } else {
            val parent = File(appDir)
            val outPutPath = "/system/app/${parent.name}"
            sb.append("cp -pdrf '$appDir' '/system/app/'\n")
            // sb.append("cp -a '$appDir' '$outPutPath'\n")
            sb.append("chmod -R 0755 '$outPutPath'\n")
            sb.append("chown -R system:system '$outPutPath'\n")
            sb.append("busybox chown -R system:system '$outPutPath'\n")
            sb.append("if [[ ! -e '$outPutPath' ]]; then exit 1; exit 1; else rm -rf '$appDir'; fi;\n")
        }
        sb.append("sync;")
        sb.append("sleep 1;")
        sb.append("echo '[operation completed]';")
        execShell(sb)
    }
}
