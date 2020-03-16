package com.leo.salt.tweaks.view.widget

import android.app.Activity
import android.app.AlertDialog
import android.content.ActivityNotFoundException
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.view.View
import android.widget.TextView
import android.widget.Toast
import com.leo.salt.tools.constants.CheckRootStatus
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource
import com.leo.salt.tweaks.resource.Resource.getApksStringInt

import com.leo.salt.tweaks.view.widget.DialogView.goToMainAppsMarketQQ
import com.leo.salt.utils.Consts.MountSystemRW
import com.leo.script.DialogHelper
import com.leo.script.MagiskExtend
import com.os.salt.OSBuild.SystemUrl.SystemABUrl
import java.io.File


class DialogSingleAppOptions(context: Context, var app: Appinfo, handler: Handler) : DialogAppOptions(context, arrayListOf(app), handler) {

    fun showSingleAppOptions(activity: Activity) {
        when (app.appType) {
            Appinfo.AppType.USER -> showUserAppOptions(activity)
            Appinfo.AppType.SYSTEM -> showSystemAppOptions(activity)
            Appinfo.AppType.BACKUPFILE -> showBackupAppOptions()
            else -> {
                Toast.makeText(context, "UNSupport！", Toast.LENGTH_SHORT).show()
            }
        }
    }

    /**
     * 显示用户应用选项
     */
    private fun showUserAppOptions(activity: Activity) {
        val dialogView = activity.layoutInflater.inflate(R.layout.dialog_app_options_user, null)

        val dialog = DialogHelper.animDialog(AlertDialog.Builder(context)
                .setCancelable(true)
                .setView(dialogView))
        dialogView.findViewById<View>(R.id.app_options_single_only).visibility = View.VISIBLE
        dialogView.findViewById<View>(R.id.app_options_open).setOnClickListener {
            dialog?.dismiss()
            startApp()
        }
        dialogView.findViewById<View>(R.id.app_options_copay_package).setOnClickListener {
            dialog?.dismiss()
            copyPackageName()
        }
        dialogView.findViewById<View>(R.id.app_options_open_detail).setOnClickListener {
            dialog?.dismiss()
            openDetails()
        }
        dialogView.findViewById<View>(R.id.app_options_app_store).setOnClickListener {
            dialog?.dismiss()
            showInMarket()
        }
        dialogView.findViewById<View>(R.id.app_options_app_hide).setOnClickListener {
            dialog?.dismiss()
            hideAll()
        }
        dialogView.findViewById<View>(R.id.app_options_trim).setOnClickListener {
            dialog?.dismiss()
            trimCachesAll()
        }
        dialogView.findViewById<View>(R.id.app_options_clear).setOnClickListener {
            dialog?.dismiss()
            clearAll()
        }
        dialogView.findViewById<View>(R.id.app_options_backup_apk).setOnClickListener {
            dialog?.dismiss()
            backupAll(true, false)
        }
        dialogView.findViewById<View>(R.id.app_options_backup_all).setOnClickListener {
            dialog?.dismiss()
            backupAll(true, true)
        }
        dialogView.findViewById<View>(R.id.app_options_uninstall).setOnClickListener {
            dialog?.dismiss()
            uninstallAll()
        }
        dialogView.findViewById<View>(R.id.app_options_uninstall_user).setOnClickListener {
            dialog?.dismiss()
            uninstallAllOnlyUser()
        }
        dialogView.findViewById<View>(R.id.app_options_as_system).setOnClickListener {
            dialog?.dismiss()
            moveToSystem()
        }
        dialogView.findViewById<View>(R.id.app_options_dex2oat).setOnClickListener {
            dialog?.dismiss()
            dex2oatBuild()
        }
        dialogView.findViewById<View>(R.id.app_options_uninstall_keep).setOnClickListener {
            dialog?.dismiss()
            uninstallKeepDataAll()
        }
        dialogView.findViewById<TextView>(R.id.app_options_title).setText(app.appName)


        if (app.enabled) {
            dialogView.findViewById<View>(R.id.app_options_app_unfreeze).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_app_freeze).setOnClickListener {
                dialog?.dismiss()
                toggleEnable()
            }
        } else {
            dialogView.findViewById<View>(R.id.app_options_app_freeze).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_app_unfreeze).setOnClickListener {
                dialog?.dismiss()
                toggleEnable()
            }
        }
    }

    private fun startApp() {
        if (!app.enabled) {
            enableAll()
        }
        val intent = this.context.getPackageManager().getLaunchIntentForPackage(app.packageName.toString())
        if (intent != null) {
            this.context.startActivity(intent)
        } else {
            Toast.makeText(context, getApksStringInt(R.string.apks_dead_start), Toast.LENGTH_SHORT).show()
        }
    }

    /**
     * 显示系统应用选项
     */
    private fun showSystemAppOptions(activity: Activity) {
        val dialogView = activity.layoutInflater.inflate(R.layout.dialog_app_options_system, null)

        val dialog = DialogHelper.animDialog(AlertDialog.Builder(context)
                .setCancelable(true)
                .setView(dialogView))
        dialogView.findViewById<View>(R.id.app_options_single_only).visibility = View.VISIBLE
        dialogView.findViewById<View>(R.id.app_options_open).setOnClickListener {
            dialog?.dismiss()
            startApp()
        }
        dialogView.findViewById<View>(R.id.app_options_copay_package).setOnClickListener {
            dialog?.dismiss()
            copyPackageName()
        }
        dialogView.findViewById<View>(R.id.app_options_open_detail).setOnClickListener {
            dialog?.dismiss()
            openDetails()
        }
        dialogView.findViewById<View>(R.id.app_options_app_store).setOnClickListener {
            dialog?.dismiss()
            showInMarket()
        }
        dialogView.findViewById<View>(R.id.app_options_app_hide).setOnClickListener {
            dialog?.dismiss()
            hideAll()
        }
        dialogView.findViewById<View>(R.id.app_options_trim).setOnClickListener {
            dialog?.dismiss()
            trimCachesAll()
        }
        dialogView.findViewById<View>(R.id.app_options_clear).setOnClickListener {
            dialog?.dismiss()
            clearAll()
        }

        dialogView.findViewById<View>(R.id.app_options_uninstall_user).setOnClickListener {
            dialog?.dismiss()
            uninstallAllOnlyUser()
        }
        dialogView.findViewById<View>(R.id.app_options_dex2oat).setOnClickListener {
            dialog?.dismiss()
            dex2oatBuild()
        }

        if (app.updated) {
            dialogView.findViewById<View>(R.id.app_options_delete).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_uninstall).setOnClickListener {
                dialog?.dismiss()
                uninstallAll()
            }
        } else {
            dialogView.findViewById<View>(R.id.app_options_delete).setOnClickListener {
                dialog?.dismiss()
                deleteAll()
            }
            dialogView.findViewById<View>(R.id.app_options_uninstall).visibility = View.GONE
        }

        dialogView.findViewById<TextView>(R.id.app_options_title).setText(app.appName)


        if (app.enabled) {
            dialogView.findViewById<View>(R.id.app_options_app_unfreeze).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_app_freeze).setOnClickListener {
                dialog?.dismiss()
                toggleEnable()
            }
        } else {
            dialogView.findViewById<View>(R.id.app_options_app_freeze).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_app_unfreeze).setOnClickListener {
                dialog?.dismiss()
                toggleEnable()
            }
        }
    }

    /**
     * 显示备份的应用选项
     */
    private fun showBackupAppOptions() {
        DialogHelper.animDialog(AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf(getApksStringInt("app_manage_restore_delete"),
                                getApksStringInt("app_manage_restore_apk"),
                                getApksStringInt("app_manage_restore_apk_data"),
                                getApksStringInt("app_manage_restore_data"),
                                getApksStringInt("app_manage_packagename_copy"),
                                getApksStringInt("app_manage_store")), { _, which ->
                    when (which) {
                        0 -> deleteBackupAll()
                        1 -> restoreAll(apk = true, data = false)
                        2 -> restoreAll(apk = true, data = true)
                        3 -> restoreAll(apk = false, data = true)
                        4 -> copyPackageName()
                        5 -> showInMarket()
                    }
                }))
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
            cm.text = app.packageName
        Toast.makeText(context, "${app.appName}"+getApksStringInt(R.string.apks_packagename_copy)+"${app.packageName}", Toast.LENGTH_LONG).show()
    }

    private fun showInMarket() {
        goToMainAppsMarketQQ(context)
    }
    fun goToMainAppsMarketQQ(context: Context) {
        val uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId="+ app.packageName)
        val goToMarket = Intent()
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main")
        goToMarket.data = uri
        try {
            context.startActivity(goToMarket)
        } catch (e: ActivityNotFoundException) {
            e.printStackTrace()
            val str = "market://details?id=" +  app.packageName
            val localIntent = Intent("android.intent.action.VIEW")
            localIntent.data = Uri.parse(str)
            context.startActivity(localIntent)
        }

    }

    private fun moveToSystemExec() {
        val sb = StringBuilder()
        sb.append(MountSystemRW)
        val appDir = File(app.path.toString()).parent
        if (appDir == "/data/app") {
            val parent = File(app.path.toString())
            val outPutPath = "/system/app/${parent.name}"
            sb.append("busybox cp '${app.path}' '$outPutPath'\n")
            sb.append("chmod 0755 '$outPutPath'\n")
            sb.append("chown -R system:system '$outPutPath'\n")
            sb.append("busybox chown -R system:system '$outPutPath'\n")
            sb.append("if [[ ! -e '$outPutPath' ]]\n then exit 1\n else rm -f '${app.path}'\n fi\n\n")
        } else {
            val parent = File(appDir)
            val outPutPath = "/system/app/${parent.name}"
            sb.append("busybox cp -pdrf '$appDir' '/system/app/'\n")
            // sb.append("busybox cp -a '$appDir' '$outPutPath'\n")
            sb.append("chmod -R 0755 '$outPutPath'\n")
            sb.append("chown -R system:system '$outPutPath'\n")
            sb.append("busybox chown -R system:system '$outPutPath'\n")
            sb.append("if [[ ! -e '$outPutPath' ]]\n then exit 1\n exit 1\n else exit 0\n fi\n\n")
        }
        sb.append("sync\n")
        sb.append("sleep 1\n")
        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    private fun moveToSystemMagisk() {
        val appDir = File(app.path.toString()).parent
        val result = if (appDir == "/data/app") { // /data/app/xxx.apk
            val outPutPath = "/system/app/"
            MagiskExtend.createFileReplaceModule(outPutPath, app.path.toString(), app.packageName.toString(), app.appName.toString()) // MagiskExtend.replaceSystemDir(outPutPath, app.path.toString()) || MagiskExtend.createFileReplaceModule(outPutPath, app.path.toString(), app.packageName.toString())
        } else { // /data/app/xxx.xxx.xxx/xxx.apk
            val outPutPath = "/system/app/" + app.packageName
            MagiskExtend.createFileReplaceModule(outPutPath, appDir, app.packageName.toString(), app.appName.toString())
            // MagiskExtend.replaceSystemDir(outPutPath, appDir) || MagiskExtend.createFileReplaceModule(outPutPath, appDir, app.packageName.toString())
        }
        if (result) {
            Toast.makeText(context, Resource.getApksStringInt(R.string.apks_magisk_uid), Toast.LENGTH_LONG).show()
        } else {
            Toast.makeText(context, Resource.getApksStringInt(R.string.apks_magisk_nox), Toast.LENGTH_LONG).show()
        }
    }

    private fun moveToSystem() {
        if (CheckRootStatus.isMagisk() && CheckRootStatus.isTmpfs("/system/app") && !MagiskExtend.moduleInstalled()) {
            DialogHelper.animDialog(AlertDialog.Builder(context)
                    .setTitle(getApksStringInt("app_manage_magisk"))
                    .setMessage(getApksStringInt("app_manage_magisk_info"))
                    .setPositiveButton(R.string.btn_confirm, { _, _ ->
                    }))
            return
        }
        DialogHelper.animDialog(AlertDialog.Builder(context)
                .setTitle(app.appName)
                .setMessage(getApksStringInt("app_manage_to_apps_info"))
                .setPositiveButton(R.string.btn_confirm, { _, _ ->
                    if (MagiskExtend.magiskSupported()) {
                        moveToSystemMagisk()
                    } else {
                        moveToSystemExec()
                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .setCancelable(true))
    }

    private fun dex2oatBuild() {
        super.buildAll()
    }
}
