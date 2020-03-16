package com.tweaks.leo.utils.ktshell

import android.app.AlertDialog
import android.content.*
import android.net.Uri
import android.os.Handler
import android.widget.Toast
import com.tweaks.leo.R
import com.tweaks.leo.utils.AppInfo


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
                        arrayOf("备份（apk与data）",
                                "只备份apk",
                                "卸载",
                                "卸载（保留数据）",
                                "清空数据",
                                "清除缓存",
                                (if (app.enabled) "冻结" else "解冻"),
                                "应用详情",
                                "复制包名(PackageName)",
                                "在应用商店查看",
                                "禁用 + 隐藏"), { _, which ->
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
                        arrayOf("删除",
                                "禁用 + 隐藏",
                                "清空数据",
                                "清除缓存",
                                (if (app.enabled) "冻结" else "解冻"),
                                "应用详情",
                                "复制包名(PackageName)",
                                "在应用商店查看"), { _, which ->
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
                        arrayOf("删除备份",
                                "还原 应用（仅安装）",
                                "还原 应用和数据",
                                "还原 数据",
                                "复制包名(PackageName)",
                                "在应用商店查看"), { _, which ->
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
        Toast.makeText(context, "已复制：${app.packageName}", Toast.LENGTH_LONG).show()
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
                    .setTitle("抱歉")//设置对话框的标题
                    .setMessage("没有发现官方内置应用市场,是否跳转到可用的市场下载？")//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                    .setPositiveButton("马上下载") { dialog, which -> goToMarket(context) }.create()
            builder.window!!.setBackgroundDrawableResource(R.drawable.dialog_bg)
            builder.show()
            e.printStackTrace()
        }

    }

    fun goToMarket(context: Context) {
        val uri = Uri.parse("market://details?id=" + "com.tencent.mobileqq")
        val goToMarket = Intent(Intent.ACTION_VIEW, uri)
        try {
            context.startActivity(goToMarket)
        } catch (e: ActivityNotFoundException) {
            e.printStackTrace()
        }

    }

}
