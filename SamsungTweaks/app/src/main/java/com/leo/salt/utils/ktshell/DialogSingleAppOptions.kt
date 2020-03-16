package com.fusionleo.salt.utils.ktshell

import android.app.AlertDialog
import android.content.*
import android.net.Uri
import android.os.Handler
import android.widget.Toast
import com.fusionleo.salt.R
import com.fusionleo.salt.utils.AppInfo


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

    /**
     * 显示用户应用选项
     */
    private fun showUserAppOptions() {
        AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf(context.getString(R.string.app_manage_backup_apk_data),
                                context.getString(R.string.app_manage_backup_apk),
                                context.getString(R.string.app_manage_uninstall_apk),
                                context.getString(R.string.app_manage_uninstall_apk_data),
                                context.getString(R.string.app_manage_clear_data),
                                context.getString(R.string.app_manage_clear_cache),
                                (if (app.enabled)  context.getString(R.string.app_manage_freeze_apk) else context.getString(R.string.app_manage_unfreeze_apk)),
                                context.getString(R.string.app_manage_info),
                                context.getString(R.string.app_manage_packagename_copy),
                                context.getString(R.string.app_manage_store),
                                context.getString(R.string.app_manage_eisabled_apk)), { _, which ->
                    when (which) {
                        0 -> backupAll(true, true)
                        1 -> backupAll(true, false)
                        2 -> uninstallAll()
                        3 -> uninstallKeepDataAll()
                        4 -> clearAll()
                        5 -> trimCachesAll()
                        6 -> toggleEnable()
                        7 -> openDetails()
                        8 -> copyPackageName()
                        9 -> showInMarket(context)
                        10 -> hideAll()
                    }
                })
                .show()
    }

    /**
     * 显示系统应用选项
     */
    private fun showSystemAppOptions() {
        AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf(context.getString(R.string.app_manage_uninstall_apk),
                                context.getString(R.string.app_manage_eisabled_apk),
                                context.getString(R.string.app_manage_clear_data),
                                context.getString(R.string.app_manage_clear_cache),
                                (if (app.enabled)  context.getString(R.string.app_manage_freeze_apk) else context.getString(R.string.app_manage_unfreeze_apk)),
                                context.getString(R.string.app_manage_info),
                                context.getString(R.string.app_manage_packagename_copy),
                                context.getString(R.string.app_manage_store)), { _, which ->
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
                .show()
    }

    /**
     * 显示备份的应用选项
     */
    private fun showBackupAppOptions() {
        AlertDialog.Builder(context).setTitle(app.appName)
                .setCancelable(true)
                .setItems(
                        arrayOf( context.getString(R.string.app_manage_restore_delete),
                                context.getString(R.string.app_manage_restore_apk),
                                context.getString(R.string.app_manage_restore_apk_data),
                                context.getString(R.string.app_manage_restore_data),
                                context.getString(R.string.app_manage_packagename_copy),
                                context.getString(R.string.app_manage_store)), { _, which ->
                    when (which) {
                        0 -> deleteBackupAll()
                        1 -> restoreAll(true, false)
                        2 -> restoreAll(true, true)
                        3 -> restoreAll(false, true)
                        4 -> copyPackageName()
                        5 -> showInMarket(context)
                    }
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
        Toast.makeText(context,  context.getString(R.string.copy_ok)+"${app.packageName}", Toast.LENGTH_LONG).show()
    }


    fun showInMarket(context: Context) {
        val uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + app.packageName)
        val goToMarket = Intent()
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main")
        goToMarket.data = uri
        try {
            context.startActivity(goToMarket)
        } catch (e: ActivityNotFoundException) {
            val builder = android.support.v7.app.AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle(context.getString(R.string.sorry))//设置对话框的标题
                    .setMessage(context.getString(R.string.no_store))//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                    .setPositiveButton(context.getString(R.string.party_store)) { dialog, which -> goToMarket(context) }.create()
            builder.window!!.setBackgroundDrawableResource(R.drawable.dialog_bg)
            builder.show()
            e.printStackTrace()
        }

    }

    fun goToMarket(context: Context) {
        val uri = Uri.parse("market://details?id=" + app.packageName)
        val goToMarket = Intent(Intent.ACTION_VIEW, uri)
        try {
            context.startActivity(goToMarket)
        } catch (e: ActivityNotFoundException) {
            e.printStackTrace()
        }

    }

}
