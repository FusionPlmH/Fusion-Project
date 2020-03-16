package com.leo.salt.tools.constants;

import android.annotation.SuppressLint
import android.app.AlertDialog
import android.content.Context
import android.os.Build
import android.os.Handler
import android.os.Message
import android.view.LayoutInflater
import android.view.View
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import com.leo.salt.tools.constants.AppInfo
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource.executeCommandWithOutput
import com.leo.salt.tweaks.resource.Resource.getStringIdentifier
import com.leo.salt.utils.Consts.AbsBackUpDir
import com.leo.salt.utils.Consts.MountSystemRW

import com.leo.salt.utils.PrefUtils.APP_HIDE_HISTORY_SPF


import java.io.File
import java.util.*

/**
 * Created by helloklf on 2017/12/04.
 */

open class DialogAppOptions(protected final var context: Context, protected var apps: ArrayList<AppInfo>, protected var handler: Handler) {
    protected var allowPigz = false
    protected var backupPath =AbsBackUpDir
    protected var userdataPath = ""

    init {
        userdataPath = context.filesDir.absolutePath
        userdataPath = userdataPath.substring(0, userdataPath.indexOf(context.packageName) - 1)
    }

    fun selectUserAppOptions() {
        AlertDialog.Builder(context).setTitle(DialogAppTextView("app_manage_select"))
                .setCancelable(true)
                .setItems(
                        arrayOf(DialogAppTextView("app_manage_backup_apk_data"),
                                DialogAppTextView("app_manage_backup_apk"),
                                DialogAppTextView("app_manage_uninstall_apk"),
                                DialogAppTextView("app_manage_uninstall_apk_data"),
                                DialogAppTextView("app_manage_clear_data"),
                                DialogAppTextView("app_manage_clear_cache"),
                                DialogAppTextView("app_manage_freeze_apk"),
                                DialogAppTextView("app_manage_unfreeze_apk"),
                                DialogAppTextView("app_manage_eisabled_apk"),
                                DialogAppTextView("app_manage_dex2oat")), { _, which ->
                    when (which) {
                        0 -> backupAll(true, true)
                        1 -> backupAll(true, false)
                        2 -> uninstallAll()
                        3 -> uninstallKeepDataAll()
                        4 -> clearAll()
                        5 -> trimCachesAll()
                        6 -> disableAll()
                        7 -> enableAll()
                        8 -> hideAll()
                        9 -> buildAll()
                    }
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .show()
    }

    fun DialogAppTextView(STR: String): String {

        return getStringIdentifier( context, STR)
    }

    fun selectSystemAppOptions() {
        AlertDialog.Builder(context).setTitle( DialogAppTextView("app_manage_select"))
                .setCancelable(true)
                .setItems(
                        arrayOf( DialogAppTextView("app_manage_delete"),
                                DialogAppTextView("app_manage_clear_data"),
                                DialogAppTextView("app_manage_clear_cache"),
                                DialogAppTextView("app_manage_freeze_apk"),
                                DialogAppTextView("app_manage_unfreeze_apk"),
                                DialogAppTextView("app_manage_eisabled_apk"),
                                DialogAppTextView("app_manage_dex2oat")), { _, which ->
                    when (which) {
                        0 -> deleteAll()
                        1 -> clearAll()
                        2 -> trimCachesAll()
                        3 -> disableAll()
                        4 -> enableAll()
                        5 -> hideAll()
                        6 -> buildAll()
                    }
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .show()
    }

    fun selectBackupOptions() {
        AlertDialog
                .Builder(context)
                .setTitle(DialogAppTextView("app_manage_select"))
                .setCancelable(true)
                .setItems(arrayOf(DialogAppTextView("app_manage_restore_delete"), DialogAppTextView("app_manage_restore_apk_data"),DialogAppTextView("app_manage_restore_apk"), DialogAppTextView("app_manage_restore_data")), { _, which ->
                    when (which) {
                        0 -> deleteBackupAll()
                        1 -> restoreAll(true, true)
                        2 -> restoreAll(true, false)
                        3 -> restoreAll(false, true)
                    }
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .show()
    }

    protected fun checkRestoreData(): Boolean {
        val r = KeepShellPublic.doCmdSync("cd $userdataPath/${context.packageName};echo `toybox ls -ld|cut -f3 -d ' '`; echo `ls -ld|cut -f3 -d ' '`;")
        return r != "error" && r.trim().isNotEmpty()
    }

    protected fun execShell(sb: StringBuilder) {
        val layoutInflater = LayoutInflater.from(context)
        val dialog = layoutInflater.inflate(R.layout.dialog_app_options, null)
        val textView = (dialog.findViewById(R.id.dialog_app_details_pkgname) as TextView)
        textView.text =DialogAppTextView("load_permission")
        val alert = AlertDialog.Builder(context).setView(dialog).setCancelable(false).create()
        AsynSuShellUnit(ProgressHandler(dialog, alert, handler)).exec(sb.toString()).waitFor()
        alert.show()
    }

    open class ProgressHandler(dialog: View, protected var alert: AlertDialog, protected var handler: Handler) : Handler() {
        protected var textView: TextView = (dialog.findViewById(R.id.dialog_app_details_pkgname) as TextView)
        var progressBar: ProgressBar = (dialog.findViewById(R.id.dialog_app_details_progress) as ProgressBar)

        override fun handleMessage(msg: Message) {
            super.handleMessage(msg)
            if (msg.obj != null) {
                if (msg.what == 0) {
                    textView.text ="正在执行"
                } else {
                    val obj = msg.obj.toString()
                    if (obj.contains("[operation completed]")) {
                        progressBar.progress = 100
                        textView.text = "完成!"
                        handler.postDelayed({
                            alert.dismiss()
                            alert.hide()
                        }, 2000)
                        handler.handleMessage(handler.obtainMessage(2))
                    } else if (Regex("^\\[.*]\$").matches(obj)) {
                        progressBar.progress = msg.what
                        val txt = obj
                                .replace("[copy ", "[复制 ")
                                .replace("[uninstall ", "[卸载 ")
                                .replace("[install ", "[安装 ")
                                .replace("[restore ", "[还原 ")
                                .replace("[backup ", "[备份 ")
                                .replace("[unhide ", "[显示 ")
                                .replace("[hide ", "[隐藏 ")
                                .replace("[delete ", "[删除 ")
                                .replace("[disable ", "[禁用 ")
                                .replace("[enable ", "[启用 ")
                                .replace("[trim caches ", "[清除缓存 ")
                                .replace("[clear ", "[清除数据 ")
                                .replace("[skip ", "[跳过 ")
                                .replace("[link ", "[链接 ")
                                .replace("[compile ", "[编译 ")
                        textView.text = txt
                    }
                }
            }
        }

        init {
            textView.text = "正在获取权限"
        }
    }

    protected fun confirm(title: String, msg: String, next: Runnable?) {
        AlertDialog.Builder(context)
                .setTitle(title)
                .setMessage(msg)
                .setNegativeButton(android.R.string.ok, { _, _ ->
                    next?.run()
                })
                .setPositiveButton(android.R.string.cancel, { _, _ ->
                })
                .create()
                .show()
    }

    /**
     * 检查是否可用pigz
     */
    protected fun checkPigz() {
        if (File("/system/xbin/pigz").exists() || File("/system/bin/pigz").exists()) {
            allowPigz = true
        }
    }

    /**
     * 备份选中的应用
     */
    protected fun backupAll(apk: Boolean = true, data: Boolean = true) {
        if (data) {
            if (!checkRestoreData()) {
                Toast.makeText(context, DialogAppTextView("app_manage_restore_error"), Toast.LENGTH_LONG).show()
                return
            }
            confirm(DialogAppTextView("app_manage_backup_apk_data"), DialogAppTextView("app_manage_backups")+"${apps.size}"+DialogAppTextView("app_manage_backups_info"), Runnable {
                _backupAll(apk, data)
            })
        } else {
            _backupAll(apk, data)
        }
    }

    private fun _backupAll(apk: Boolean = true, data: Boolean = true) {
        checkPigz()

        val date = Date().time.toString()

        val sb = StringBuilder()
        sb.append("backup_date=\"$date\";");
        sb.append("\n")
        sb.append("backup_path=\"${AbsBackUpDir}\";")
        sb.append("mkdir -p \${backup_path};")
        sb.append("\n")
        sb.append("\n")

        for (item in apps) {
            val packageName = item.packageName.toString()
            val path = item.path.toString()

            if (apk) {
                sb.append("rm -f \${backup_path}$packageName.apk;")
                sb.append("\n")
                sb.append("echo '[copy $packageName.apk]';")
                sb.append("cp -F $path \${backup_path}$packageName.apk;")
                sb.append("\n")
            }
            if (data) {
                sb.append("killall -9 $packageName;pkill -9 $packageName;pgrep $packageName |xargs kill -9;")
                sb.append("cd $userdataPath/$packageName;")
                sb.append("echo '[backup ${item.appName}]';")
                if (allowPigz)
                    sb.append("busybox tar cpf - * --exclude ./cache --exclude ./lib | pigz > \${backup_path}$packageName.tar.gz;")
                else
                    sb.append("busybox tar -czpf \${backup_path}$packageName.tar.gz * --exclude ./cache --exclude ./lib;")
                sb.append("\n")
            }
        }
        sb.append("cd \${backup_path};")
        sb.append("chown sdcard_rw:sdcard_rw *;")
        sb.append("chmod 777 *;")
        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 还原选中的应用
     */
    protected fun restoreAll(apk: Boolean = true, data: Boolean = true) {
        if (data) {
            if (!checkRestoreData()) {
                Toast.makeText(context,DialogAppTextView("app_manage_restore_error"), Toast.LENGTH_LONG).show()
                return
            }
            confirm(DialogAppTextView("app_manage_restore_apk_data"), DialogAppTextView("app_manage_restore")+"${apps.size}"+DialogAppTextView("app_manage_restore_info"), Runnable {
                _restoreAll(apk, data)
            })
        } else {
            confirm(DialogAppTextView("app_manage_restore_apk"), DialogAppTextView("app_manage_restore")+"${apps.size}"+DialogAppTextView("app_manage_restore_insist"), Runnable {
                _restoreAll(apk, data)
            })
        }
    }

    private fun _restoreAll(apk: Boolean = true, data: Boolean = true) {
        checkPigz()

        val sb = StringBuilder()
        sb.append("chown sdcard_rw *;")
        sb.append("chmod 7777 *;")
        for (item in apps) {
            val packageName = item.packageName.toString()
            val apkPath = item.path.toString()
            if (apk && File("$backupPath$packageName.apk").exists()) {
                sb.append("echo '[install ${item.appName}]';")

                sb.append("pm install -r $backupPath$packageName.apk;")
            } else if (apk && File(apkPath).exists()) {
                sb.append("echo '[install ${item.appName}]';")

                sb.append("pm install -r $apkPath;")
            }
            if (data && File("$backupPath$packageName.tar.gz").exists()) {
                sb.append("if [ -d $userdataPath/$packageName ];")
                sb.append(" then ")
                sb.append("echo '[restore ${item.appName}]';")
                //sb.append("pm clear $packageName;")
                sb.append("sync;")
                sb.append("cd $userdataPath/$packageName;")
                sb.append("busybox tar -xzpf $backupPath$packageName.tar.gz;")
                sb.append("chown -R -L `toybox ls -ld|cut -f3 -d ' '`:`toybox ls -ld|cut -f4 -d ' '` $userdataPath/$packageName/*;")
                //sb.append("chown -R --reference=$userdataPath/$packageName *;")
                sb.append(" else ")
                sb.append("echo '[skip ${item.appName}]';")
                sb.append("sleep 1;")
                sb.append("fi;")
            }
        }
        sb.append("sync;")
        sb.append("sleep 2;")
        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 禁用所选的应用
     */
    protected fun disableAll() {
        confirm(DialogAppTextView("app_manage_freeze_name"), DialogAppTextView("app_manage_freeze")+"${apps.size}"+DialogAppTextView("app_manage_freeze_info"), Runnable {
            _disableAll()
        })
    }

    private fun _disableAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[disable ${item.appName}]';")

            sb.append("pm disable ${packageName};")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 启用所选的应用
     */
    protected fun enableAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[enable ${item.appName}]';")

            sb.append("pm enable $packageName;")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 隐藏所选的应用
     */
    protected fun hideAll() {
        confirm(DialogAppTextView("app_manage_hide_name"), DialogAppTextView("app_manage_hide")+"${apps.size}"+DialogAppTextView("app_manage_hide_info"), Runnable {
            _hideAll()
        })
    }

    @SuppressLint("ApplySharedPref")
    private fun _hideAll() {
        val spf = context.getSharedPreferences(APP_HIDE_HISTORY_SPF, Context.MODE_PRIVATE).edit()
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[hide ${item.appName}]';")

            sb.append("pm hide $packageName;")

            spf.putString(packageName, if (item.appName != null) item.appName as String? else packageName)
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
        spf.commit()
    }

    /**
     * 删除选中的应用
     */
    protected fun deleteAll() {
        confirm(DialogAppTextView("app_manage_delete"), DialogAppTextView("app_manage_delete_info"), Runnable {
            if (CheckRootStatus.isMagisk() && (CheckRootStatus.isTmpfs("/system/app") || CheckRootStatus.isTmpfs("/system/priv-app"))) {
                android.app.AlertDialog.Builder(context)
                        .setTitle(DialogAppTextView("app_manage_magisk"))
                        .setMessage(DialogAppTextView("app_manage_magisk_info"))
                        .setPositiveButton(android.R.string.ok, { _, _ ->
                            _deleteAll()
                        })
                        .create()
                        .show()
            } else {
                _deleteAll()
            }
        })
    }
    private fun _deleteAll() {
        val sb = StringBuilder()
        sb.append(MountSystemRW)
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[delete $packageName]';")

            val dir = item.dir.toString()

            sb.append("rm -rf $dir/oat;")
            sb.append("rm -rf $dir/lib;")
            sb.append("rm -rf ${item.path};")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }
    /**
     * 删除备份
     */
    protected fun deleteBackupAll() {
        confirm(DialogAppTextView("app_manage_restore_delete"), DialogAppTextView("app_manage_delete_backups"), Runnable {
            _deleteBackupAll()
        })
    }

    private fun _deleteBackupAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[delete ${item.appName}]';")

            if (item.path != null) {
                sb.append("rm -rf ${item.path};")
                if (item.path == "$backupPath$packageName.apk") {
                    sb.append("rm -rf $backupPath$packageName.tar.gz;")
                }
            } else {
                sb.append("rm -rf $backupPath$packageName.apk;")
                sb.append("rm -rf $backupPath$packageName.tar.gz;")
            }
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 清除数据
     */
    protected fun clearAll() {
        confirm(DialogAppTextView("app_manage_clear_data"), DialogAppTextView("app_manage_freeze")+"${apps.size}"+DialogAppTextView("app_manage_clear_info"), Runnable {
            _clearAll()
        })
    }

    private fun _clearAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[clear ${item.appName}]';")

            sb.append("pm clear $packageName;")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 清除缓存
     */
    protected fun trimCachesAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[trim caches ${item.appName}]';")

            sb.append("pm trim-caches $packageName;")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 卸载选中
     */
    protected fun uninstallAll() {
        confirm(DialogAppTextView("app_manage_uninstall_apk"), DialogAppTextView("app_manage_freeze")+"${apps.size}"+DialogAppTextView("app_manage_uninstall")+"${apps.size}"+DialogAppTextView("app_manage_uninstall_info"), Runnable {
            _uninstallAll()
        })
    }

    private fun _uninstallAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[uninstall ${item.appName}]';")

            sb.append("pm uninstall $packageName;")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    /**
     * 卸载且保留数据
     */
    protected fun uninstallKeepDataAll() {
        confirm(DialogAppTextView("app_manage_uninstall_apk_data"), DialogAppTextView("app_manage_freeze")+"${apps.size}"+DialogAppTextView("app_manage_keepdata_info"), Runnable {
            _uninstallKeepDataAll()
        })
    }

    private fun _uninstallKeepDataAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[uninstall ${item.appName}]';")

            sb.append("pm uninstall -k $packageName;")
        }

        sb.append("echo '[operation completed]';")
        execShell(sb)
    }

    protected fun buildAll() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N) {
            Toast.makeText(context, "该功能只支持Android N（7.0）以上的系统！", Toast.LENGTH_SHORT).show()
            return
        }
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[compile ${item.appName}]'\n")

            sb.append("cmd package compile -m speed $packageName\n\n")
        }

        sb.append("echo '[operation completed]'\n\n")
        execShell(sb)
    }
}
