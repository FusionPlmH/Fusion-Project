package com.leo.salt.utils.ktshell

import android.Manifest
import android.app.AlertDialog
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.support.v4.content.PermissionChecker
import android.util.Log
import android.widget.Toast
import com.leo.salt.R
import com.leo.salt.kt.ProgressBarDialog
import com.leo.salt.utils.Utils.executeCommandWithOutput
import com.leo.salt.utils.ktshell.KeepShellSync.doCmdSync


/**
 * 检查获取root权限
 * Created by helloklf on 2017/6/3.
 */

class CheckRootStatus(var context: Context, private var next: Runnable? = null, private var skip: Runnable?, private var disableSeLinux: Boolean = false) {
    var myHandler: Handler = Handler(Looper.getMainLooper())

    //是否已经Root
    private fun isRoot(disableSeLinux: Boolean): Boolean {
        val r = KeepShellSync.doCmdSync(Consts.isRootUser)
        Log.d("getsu", r)
        if (r == "error" || r.contains("permission denied") || r.contains("not allowed") || r.equals("not found")) {
            return false
        } else if (r == "root") {
            if (disableSeLinux)
                KeepShellSync.doCmdSync(Consts.DisableSELinux)
            return true
        } else {
            return false
        }
    }


    var therad: Thread? = null
    fun forceGetRoot() {
        val pd = ProgressBarDialog(context)
        pd.showDialog(context.getResources().getString(R.string.check_root))
        var completed = false
        therad = Thread {
            if (!isRoot(disableSeLinux)) {
                completed = true
                myHandler.post {
                    pd.hideDialog()
                    val alert = AlertDialog.Builder(context)
                    alert.setCancelable(false)
                    alert.setTitle(R.string.no_su_dialog_message)
                    alert.setPositiveButton(R.string.manually_root, { _, _ ->
                        val componetName = ComponentName(
                                "com.topjohnwu.magisk",
                                "a.b")
                        try {
                            val intent = Intent()
                            intent.component = componetName
                            context.startActivity(intent)
                        } catch (e: Exception) {
                            val chatActivity = ComponentName("eu.chainfire.supersu", "eu.chainfire.supersu.MainActivity")
                            val intent = Intent()
                            intent.setComponent(chatActivity);
                            context.startActivity(intent);
                        }

                    })
                    alert.setNegativeButton(R.string.btn_refresh, { _, _ ->
                        if (therad != null && therad!!.isAlive && !therad!!.isInterrupted) {
                            therad!!.interrupt()
                            therad = null
                        }
                        forceGetRoot()
                    })
                    alert.setNeutralButton(R.string.btn_skip, { _, _ ->
                        //android.os.Process.killProcess(android.os.Process.myPid())
                        completed = true
                        if (therad != null && therad!!.isAlive && !therad!!.isInterrupted) {
                            therad!!.interrupt()
                            therad = null
                        }
                        myHandler.post {
                            pd.hideDialog()
                            if (skip != null)
                                skip!!.run()
                        }
                    })
                    alert.create().show()
                }
            } else {
                completed = true
                myHandler.post {
                    pd.hideDialog()
                    if (next != null)
                        next!!.run()
                }
            }
        };
        therad!!.start()
        myHandler.postDelayed({
            if (!completed) {
                pd.hideDialog()
                val alert = AlertDialog.Builder(context)
                alert.setCancelable(false)
                alert.setTitle(R.string.no_su_dialog_message)
                alert.setMessage(R.string.error_su_timeout)
                alert.setNegativeButton(R.string.btn_refresh, { _, _ ->
                    if (therad != null && therad!!.isAlive && !therad!!.isInterrupted) {
                        therad!!.interrupt()
                        therad = null
                    }
                    forceGetRoot()
                })
                alert.setNeutralButton(R.string.btn_skip, { _, _ ->
                    if (therad != null && therad!!.isAlive && !therad!!.isInterrupted) {
                        therad!!.interrupt()
                        therad = null
                    }
                    completed = true
                    myHandler.post {
                        pd.hideDialog()
                        if (skip != null)
                            skip!!.run()
                    }
                    //android.os.Process.killProcess(android.os.Process.myPid())
                })
                alert.create().show()
            }
        }, 15000)
    }

    companion object {
        private fun checkPermission(context: Context, permission: String): Boolean = PermissionChecker.checkSelfPermission(context, permission) == PermissionChecker.PERMISSION_GRANTED
        fun grantPermission(context: Context) {
            val cmds = StringBuilder()
            // 必需的权限
            val requiredPermission = arrayOf(
                    Manifest.permission.READ_EXTERNAL_STORAGE,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE,
                    Manifest.permission.CHANGE_CONFIGURATION,
                    Manifest.permission.WRITE_SECURE_SETTINGS,
                    Manifest.permission.SYSTEM_ALERT_WINDOW
            )
            requiredPermission.forEach {
                if (it == Manifest.permission.SYSTEM_ALERT_WINDOW) {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                        if (!Settings.canDrawOverlays(context)) {
                            // 未允许悬浮窗
                            try {
                                //启动Activity让用户授权
                                // Toast.makeText(context, "Scene未获得显示悬浮窗权限", Toast.LENGTH_SHORT).show()
                                // val intent = Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + context.getPackageName()));
                                // context.startActivity(intent);
                            } catch (ex: Exception) {

                            }
                        }
                    } else {
                        if (!checkPermission(context, it)) {
                            cmds.append("pm grant ${context.packageName} $it\n")
                        }
                    }
                } else {
                    if (!checkPermission(context, it)) {
                        cmds.append("pm grant ${context.packageName} $it\n")
                    }
                }
            }

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                if (!checkPermission(context, Manifest.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)) {
                    cmds.append("dumpsys deviceidle whitelist +${context.packageName};\n")
                }
            }

            /*
            // 不支持使用ROOT权限进行设置
            if (!checkPermission(context, Manifest.permission.BIND_NOTIFICATION_LISTENER_SERVICE)) {
                cmds.append("pm grant ${context.packageName} android.permission.BIND_NOTIFICATION_LISTENER_SERVICE;\n")
            }
            if (!checkPermission(context, Manifest.permission.WRITE_SETTINGS)) {
                cmds.append("pm grant ${context.packageName} android.permission.WRITE_SETTINGS;\n")
            }
            */
         doCmdSync(cmds.toString())
        }

        public fun isMagisk(): Boolean {
            return executeCommandWithOutput(false, "su -v").contains("MAGISKSU")
        }

        public fun isTmpfs(dir: String): Boolean {
            return executeCommandWithOutput(false, " df | grep tmpfs | grep \"$dir\"").trim().isNotEmpty()
        }
    }
}
