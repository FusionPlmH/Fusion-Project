package com.leo.salt.tweaks.view.widget

import android.annotation.SuppressLint
import android.app.Activity
import android.app.AlertDialog
import android.content.Context
import android.os.Build
import android.os.Handler
import android.os.Message
import android.os.UserManager
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import com.leo.salt.tools.constants.CheckRootStatus
import com.leo.salt.tweaks.LeoAmberApplication
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource.getApksStringInt
import com.leo.salt.tweaks.resource.Resource.getApksStringInt
import com.leo.salt.utils.Consts.AbsBackUpDir
import com.leo.salt.utils.Consts.MountSystemRW
import com.leo.salt.utils.PrefUtils.APP_HIDE_HISTORY_SPF
import com.leo.script.*
import java.io.File
import java.util.*


open class DialogAppOptions(protected final var context: Context, protected var apps: ArrayList<Appinfo>, protected var handler: Handler) {
    private var allowPigz = false
    private var backupPath = AbsBackUpDir
    private var userdataPath = ""

    init {
        userdataPath = context.filesDir.absolutePath
        userdataPath = userdataPath.substring(0, userdataPath.indexOf(context.packageName) - 1)
    }

    fun selectUserAppOptions(activity: Activity) {
        val dialogView = activity.layoutInflater.inflate(R.layout.dialog_app_options_user, null)

        val dialog = DialogHelper.animDialog(AlertDialog.Builder(context)
                .setCancelable(true)
                .setView(dialogView))
        dialogView.findViewById<View>(R.id.app_options_single_only).visibility = View.GONE
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

        dialogView.findViewById<View>(R.id.app_options_dex2oat).setOnClickListener {
            dialog?.dismiss()
            buildAll()
        }
        dialogView.findViewById<View>(R.id.app_options_uninstall_keep).setOnClickListener {
            dialog?.dismiss()
            uninstallKeepDataAll()
        }
        dialogView.findViewById<TextView>(R.id.app_options_title).text = getApksStringInt(R.string.apps_select_title)

        if (apps.any { it.enabled }) {
            dialogView.findViewById<View>(R.id.app_options_app_unfreeze).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_app_freeze).setOnClickListener {
                dialog?.dismiss()
                disableAll()
            }
        } else {
            dialogView.findViewById<View>(R.id.app_options_app_freeze).visibility = View.GONE
            dialogView.findViewById<View>(R.id.app_options_app_unfreeze).setOnClickListener {
                dialog?.dismiss()
                enableAll()
            }
        }
    }

    fun selectSystemAppOptions(activity: Activity) {
        val dialogView = activity.layoutInflater.inflate(R.layout.dialog_app_options_system, null)

        val dialog = DialogHelper.animDialog(AlertDialog.Builder(context)
                .setCancelable(true)
                .setView(dialogView))
        dialogView.findViewById<View>(R.id.app_options_single_only).visibility = View.GONE
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
            buildAll()
        }

        dialogView.findViewById<View>(R.id.app_options_delete).setOnClickListener {
            dialog?.dismiss()
            deleteAll()
        }
        dialogView.findViewById<View>(R.id.app_options_uninstall).visibility = View.GONE

        dialogView.findViewById<TextView>(R.id.app_options_title).setText(getApksStringInt(R.string.apps_select_title))

        dialogView.findViewById<View>(R.id.app_options_app_unfreeze).setOnClickListener {
            dialog?.dismiss()
            enableAll()
        }
        dialogView.findViewById<View>(R.id.app_options_app_freeze).setOnClickListener {
            dialog?.dismiss()
            disableAll()
        }
    }

    fun selectBackupOptions() {
        AlertDialog
                .Builder(context)
                .setTitle(R.string.apps_select_title)
                .setCancelable(true)
                .setItems(arrayOf(getApksStringInt("app_manage_restore_delete"),getApksStringInt("app_manage_restore_apk_data"), getApksStringInt("app_manage_restore_apk"),getApksStringInt("app_manage_restore_data"))) { _, which ->
                    when (which) {
                        0 -> deleteBackupAll()
                        1 -> restoreAll(apk = true, data = true)
                        2 -> restoreAll(apk = true, data = false)
                        3 -> restoreAll(apk = false, data = true)
                    }
                }
                .show()
    }

    private fun checkRestoreData(): Boolean {
        val r = KeepShellPublic.doCmdSync("cd $userdataPath/${context.packageName}\necho `toybox ls -ld|cut -f3 -d ' '`\n echo `ls -ld|cut -f3 -d ' '`\n")
        return r != "error" && r.trim().isNotEmpty()
    }

    protected fun execShell(sb: StringBuilder) {
        val layoutInflater = LayoutInflater.from(context)
        val dialog = layoutInflater.inflate(R.layout.dialog_app_options, null)
        val textView = (dialog.findViewById(R.id.dialog_app_details_pkgname) as TextView)
        textView.text = getApksStringInt(R.string.supersu_root)
        val alert = AlertDialog.Builder(context).setView(dialog).setCancelable(false).create()
        AsynSuShellUnit(ProgressHandler(dialog, alert, handler)).exec(sb.toString()).waitFor()
        alert.show()
    }

    open class ProgressHandler(dialog: View, protected var alert: AlertDialog, protected var handler: Handler) : Handler() {
        private var textView: TextView = (dialog.findViewById(R.id.dialog_app_details_pkgname) as TextView)
        var progressBar: ProgressBar = (dialog.findViewById(R.id.dialog_app_details_progress) as ProgressBar)
        private var error = java.lang.StringBuilder()

        override fun handleMessage(msg: Message) {
            super.handleMessage(msg)
            if (msg.obj != null) {
                if (msg.what == 0) {
                    textView.text =getApksStringInt("execute_wait")
                } else if (msg.what == 5) {
                    error.append(msg.obj)
                    error.append("\n")
                } else if (msg.what == 10) {
                        if (msg.obj == true) {
                            textView.text =getApksStringInt(R.string.behavior_ok)
                        } else {
                            textView.text =getApksStringInt(R.string.behavior_error)
                        }
                        handler.postDelayed({
                            alert.dismiss()
                            alert.hide()
                        }, 2000)
                } else {
                    val obj = msg.obj.toString()
                    if (obj.contains("[operation completed]")) {
                        progressBar.progress = 100
                        textView.text =getApksStringInt(R.string.behavior_ok)
                        handler.postDelayed({
                            alert.dismiss()
                            alert.hide()
                            if (error.isNotEmpty()) {
                                AlertDialog.Builder(alert.context).setTitle(R.string.behavior_error_a).setMessage(error.toString()).create().show()
                            }
                        }, 1200)
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
            textView.text =getApksStringInt(R.string.supersu_root)
        }
    }

    protected fun confirm(title: String, msg: String, next: Runnable?) {
        DialogHelper.animDialog(AlertDialog.Builder(context)
                .setTitle(title)
                .setMessage(msg)
                .setNegativeButton(android.R.string.ok) { _, _ ->
                    next?.run()
                }
                .setNeutralButton(android.R.string.cancel) { _, _ ->
                })
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
                Toast.makeText(context, "xxxxx", Toast.LENGTH_LONG).show()
                return
            }
            confirm(getApksStringInt(R.string.apks_backup_name), getApksStringInt("app_manage_backups")+"${apps.size}"+getApksStringInt("app_manage_backups_info"), Runnable {
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
        sb.append("backup_date=\"$date\"\n")
        sb.append("\n")
        sb.append("backup_path=\"${AbsBackUpDir}\"\n")
        sb.append("mkdir -p \${backup_path}\n")
        sb.append("\n")
        sb.append("\n")

        for (item in apps) {
            val packageName = item.packageName.toString()
            val path = item.path.toString()

            if (apk) {
                sb.append("rm -f \${backup_path}$packageName.apk\n")
                sb.append("\n")
                sb.append("echo '[copy $packageName.apk]'\n")
                sb.append("busybox cp -f $path \${backup_path}$packageName.apk\n")
                sb.append("\n")
            }
            if (data) {
                sb.append(
                        "killall -9 $packageName 2> /dev/null\n" +
                        "am kill-all $packageName 2> /dev/null\n" +
                        "am force-stop $packageName 2> /dev/null\n")
                sb.append("cd $userdataPath/$packageName\n")
                sb.append("echo '[backup ${item.appName}]'\n")
                if (allowPigz)
                    sb.append("busybox tar cpf - * --exclude ./cache --exclude ./lib | pigz > \${backup_path}$packageName.tar.gz\n")
                else
                    sb.append("busybox tar -czpf \${backup_path}$packageName.tar.gz * --exclude ./cache --exclude ./lib\n")
                sb.append("\n")
            }
        }
        sb.append("cd \${backup_path}\n")
        sb.append("chown sdcard_rw:sdcard_rw *\n")
        sb.append("chmod 777 *\n")
        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 还原选中的应用
     */
    protected fun restoreAll(apk: Boolean = true, data: Boolean = true) {
        if (data) {
            if (!checkRestoreData()) {
                Toast.makeText(context, "xx", Toast.LENGTH_LONG).show()
                return
            }
            confirm(getApksStringInt("app_manage_restore_apk_data"), getApksStringInt("app_manage_restore")+"${apps.size}"+getApksStringInt("app_manage_restore_info"), Runnable {
                _restoreAll(apk, data)
            })
        } else {
            confirm(getApksStringInt("app_manage_restore_apk"), getApksStringInt("app_manage_restore")+"${apps.size}"+getApksStringInt("app_manage_restore_insist"), Runnable {
                _restoreAll(apk, data)
            })
        }
    }

    private fun _restoreAll(apk: Boolean = true, data: Boolean = true) {
        val installApkTemp = FileWrite.getPrivateFilePath(context, "app_install_cache.apk")
        checkPigz()

        val sb = StringBuilder()
        sb.append("chown -R sdcard_rw:sdcard_rw \"$backupPath\" 2>/dev/null\n")
        sb.append("chmod -R 777 \"$backupPath\" 2>/dev/null\n")
        for (item in apps) {
            val packageName = item.packageName.toString()
            val apkPath = item.path.toString()
            if (apk && File("$backupPath$packageName.apk").exists()) {
                sb.append("echo '[install ${item.appName}]'\n")
                // sb.append("pm install -r $backupPath$packageName.apk\n")

                sb.append("rm -f $installApkTemp\n")
                sb.append("cp \"$backupPath$packageName.apk\" $installApkTemp\n")
                sb.append("pm install -r $installApkTemp 1> /dev/null\n")
                sb.append("rm -f $installApkTemp\n")
            } else if (apk && File(apkPath).exists()) {
                sb.append("echo '[install ${item.appName}]'\n")
                // sb.append("pm install -r \"$apkPath\" 1> /dev/null\n")

                sb.append("rm -f $installApkTemp\n")
                sb.append("cp \"$apkPath\" $installApkTemp\n")
                sb.append("pm install -r $installApkTemp 1> /dev/null\n")
                sb.append("rm -f $installApkTemp\n")
            }
            if (data && File("$backupPath$packageName.tar.gz").exists()) {
                sb.append("if [ -d $userdataPath/$packageName ]\n")
                    sb.append(" then ")
                    sb.append("echo '[restore ${item.appName}]'\n")
                    //sb.append("pm clear $packageName\n")
                    sb.append("sync\n")
                    sb.append("cd $userdataPath/$packageName\n")
                    sb.append("busybox tar -xzpf $backupPath$packageName.tar.gz\n")
                    sb.append("install_group=`toybox ls -ld|cut -f3 -d ' '`\n")
                    sb.append("install_own=`toybox ls -ld|cut -f4 -d ' '`\n")
                    sb.append("for item in *\ndo\n")
                    sb.append(
                        "if [[ ! \"\$item\" = \"lib\" ]] && [[ ! \"\$item\" = \"lib64\" ]]\n" +
                        "then\n" +
                            "chown -R \$install_group:\$install_own ./\$item\n" +
                        "fi\n" +
                    "done\n")
                    //sb.append("chown -R --reference=$userdataPath/$packageName *\n")
                Log.d("userdataPath", "cd $userdataPath/$packageName\n")
                sb.append(" else ")
                    sb.append("echo '[skip ${item.appName}]'\n")
                    sb.append("sleep 1\n")
                sb.append("fi\n")
            }
        }
        sb.append("sync\n")
        sb.append("sleep 2\n")
        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 禁用所选的应用
     */
    protected fun disableAll() {
        confirm(getApksStringInt("app_manage_freeze_name"), getApksStringInt("app_manage_freeze")+"${apps.size}"+getApksStringInt("app_manage_freeze_info"), Runnable {
            _disableAll()
        })
    }

    private fun _disableAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[disable ${item.appName}]'\n")

            sb.append("pm disable ${packageName}\n")
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 启用所选的应用
     */
    protected fun enableAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[enable ${item.appName}]'\n")

            sb.append("pm enable $packageName\n")
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 隐藏所选的应用
     */
    protected fun hideAll() {
        confirm(getApksStringInt(R.string.apps_hide), getApksStringInt("app_manage_hide")+"${apps.size}"+getApksStringInt("app_manage_hide_info"), Runnable {
            _hideAll()
        })
    }

    @SuppressLint("ApplySharedPref")
    private fun _hideAll() {
        val spf = context.getSharedPreferences(APP_HIDE_HISTORY_SPF, Context.MODE_PRIVATE).edit()
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[hide ${item.appName}]'\n")

            sb.append("pm hide $packageName\n")

            spf.putString(packageName, if (item.appName != null) item.appName as String? else packageName)
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
        spf.commit()
    }

    /**
     * 删除选中的应用
     */
    protected fun deleteAll() {
        confirm(getApksStringInt(R.string.apps_delete), getApksStringInt("app_manage_freeze")+"${apps.size}"+getApksStringInt("app_manage_delete_info"), Runnable {
            if (CheckRootStatus.isMagisk() && !MagiskExtend.moduleInstalled() && (CheckRootStatus.isTmpfs("/system/app") || CheckRootStatus.isTmpfs("/system/priv-app"))) {
                DialogHelper.animDialog(AlertDialog.Builder(context)
                        .setTitle(getApksStringInt("app_manage_magisk"))
                        .setMessage(getApksStringInt("app_manage_magisk_info"))
                        .setPositiveButton(R.string.btn_confirm) { _, _ ->
                            _deleteAll()
                        })
            } else {
                _deleteAll()
            }
        })
    }

    private fun _deleteAll() {
        val sb = StringBuilder()
        sb.append(MountSystemRW)
        var useMagisk = false
        for (item in apps) {
            val packageName = item.packageName.toString()
            // 先禁用再删除，避免老弹停止运行
            sb.append("echo '[disable ${item.appName}]'\n")
            sb.append("pm disable $packageName\n")

            sb.append("echo '[delete ${item.appName}]'\n")
            if (MagiskExtend.moduleInstalled()) {
                MagiskExtend.deleteSystemPath(item.path.toString())
                useMagisk = true
            } else {
                val dir = item.dir.toString()

                sb.append("rm -rf $dir/oat\n")
                sb.append("rm -rf $dir/lib\n")
                sb.append("rm -rf ${item.path}\n")
            }
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
        if (useMagisk) {
            Toast.makeText(context, getApksStringInt(R.string.apks_magisk_uid), Toast.LENGTH_SHORT).show()
        }
    }

    /**
     * 删除备份
     */
    protected fun deleteBackupAll() {
        confirm(getApksStringInt("app_manage_restore_delete"), getApksStringInt("app_manage_delete_backups"), Runnable {
            _deleteBackupAll()
        })
    }

    private fun _deleteBackupAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[delete ${item.appName}]'\n")

            if (item.path != null) {
                sb.append("rm -rf ${item.path}\n")
                if (item.path == "$backupPath$packageName.apk") {
                    sb.append("rm -rf $backupPath$packageName.tar.gz\n")
                }
            } else {
                sb.append("rm -rf $backupPath$packageName.apk\n")
                sb.append("rm -rf $backupPath$packageName.tar.gz\n")
            }
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 清除数据
     */
    protected fun clearAll() {
        confirm(getApksStringInt("app_manage_clear_data"), getApksStringInt("app_manage_freeze")+"${apps.size}"+getApksStringInt("app_manage_clear_info"), Runnable {
            _clearAll()
        })
    }

    private fun _clearAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[clear ${item.appName}]'\n")

            sb.append("pm clear $packageName\n")
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 清除缓存
     */
    protected fun trimCachesAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[trim caches ${item.appName}]'\n")

            sb.append("pm trim-caches $packageName\n")
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 卸载选中
     */
    protected fun uninstallAll() {
        confirm(getApksStringInt("app_manage_uninstall_apk"), getApksStringInt("app_manage_freeze")+"${apps.size}"+getApksStringInt("app_manage_uninstall")+"${apps.size}"+getApksStringInt("app_manage_uninstall_info"), Runnable {
            _uninstallAll()
        })
    }

    private fun _uninstallAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[uninstall ${item.appName}]'\n")

            sb.append("pm uninstall $packageName\n")
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    protected fun uninstallAllOnlyUser() {
        val um = context.getSystemService(Context.USER_SERVICE) as UserManager?
        val userHandle = android.os.Process.myUserHandle()
        if (um != null) {
            val uid = um.getSerialNumberForUser(userHandle)
            confirm(getApksStringInt(R.string.apks_uis_name)+"($uid)"+getApksStringInt(R.string.apps_uninstall), getApksStringInt(R.string.apks_uis_name_aok)+"${apps.size}"+getApksStringInt(R.string.apks_uis_name_a1k), Runnable {
                _uninstallAllOnlyUser(uid)
            })
        } else {
            Toast.makeText(context, getApksStringInt(R.string.apks_uis_name_uid), Toast.LENGTH_SHORT).show()
        }
    }

    private fun _uninstallAllOnlyUser(uid: Long) {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[uninstall ${item.appName}]'\n")

            sb.append("pm uninstall --user $uid $packageName\n")
        }

        sb.append("echo '[operation completed]'\n")
        execShell(sb)
    }

    /**
     * 卸载且保留数据
     */
    protected fun uninstallKeepDataAll() {
        confirm(getApksStringInt("app_manage_uninstall_apk_data"), getApksStringInt("app_manage_freeze")+"${apps.size}"+getApksStringInt("app_manage_keepdata_info"), Runnable {
            _uninstallKeepDataAll()
        })
    }

    private fun _uninstallKeepDataAll() {
        val sb = StringBuilder()
        for (item in apps) {
            val packageName = item.packageName.toString()
            sb.append("echo '[uninstall ${item.appName}]'\n")

            sb.append("pm uninstall -k $packageName\n")
        }

        sb.append("echo '[operation completed]'\n")
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
