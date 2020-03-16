package com.leo.salt.tools.constants


import android.Manifest
import android.app.AlertDialog

import android.content.Context

import android.os.Handler
import android.os.Looper

import android.util.Log

import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource.executeCommandWithOutput
import com.leo.salt.utils.Consts








/**
 * 检查获取root权限
 * Created by helloklf on 2017/6/3.
 */
class CheckRootStatus(var context: Context, private var next: Runnable? = null, private var disableSeLinux: Boolean = false) {
    var myHandler: Handler = Handler(Looper.getMainLooper())
    val isRootUser = "if [[ `id -u 2>&1` = '0' ]]; then\n" +
            "\techo 'root';\n" +
            "elif [[ `\$UID` = '0' ]]; then\n" +
            "\techo 'root';\n" +
            "elif [[ `whoami 2>&1` = 'root' ]]; then\n" +
            "\techo 'root';\n" +
            "elif [[ `set | grep 'USER_ID=0'` = 'USER_ID=0' ]]; then\n" +
            "\techo 'root';\n" +
            "else\n" +
            "\texit -1;\n" +
            "fi;"

    //是否已经Root
    private fun isRoot(disableSeLinux: Boolean): Boolean {
        val r = KeepShellPublic.doCmdSync(isRootUser)
        Log.d("getsu", r)
        if (r == "error" || r.contains("permission denied") || r.contains("not allowed") || r.equals("not found")) {
            return false
        } else if (r == "root") {
            if (disableSeLinux)
                KeepShellPublic.doCmdSync(Consts.DisableSELinux)
            return true
        } else {
            return false
        }
    }


    var therad: Thread? = null
    fun forceGetRoot() {
        var completed = false
        therad = Thread {
            if (!isRoot(disableSeLinux)) {
                completed = true
                myHandler.post {
                    KeepShellPublic.tryExit()
                    val alert = AlertDialog.Builder(context)
                    alert.setCancelable(false)
                    alert.setTitle(R.string.root_title)
                    alert.setMessage(R.string.root_summary)
                    alert.setNegativeButton(R.string.root_ok, { _, _ ->
                        LeoComponetURL(context)
                    })
                    alert.setNeutralButton(R.string.root_no, { _, _ ->
                        if (therad != null && therad!!.isAlive && !therad!!.isInterrupted) {
                            therad!!.interrupt()
                            therad = null
                        }
                        forceGetRoot()
                    })

                    val dialog = alert.create()

                    dialog.show()
                }
            } else {
                completed = true
                myHandler.post {
                    if (next != null)
                        next!!.run()
                }
            }
        };
        therad!!.start()
        myHandler.postDelayed({
            if (!completed) {
                val alert = AlertDialog.Builder(context)
                alert.setCancelable(false)
                alert.setTitle("没有ROOT权限")
                alert.setMessage("等待超时")
                alert.setNegativeButton("ok", { _, _ ->
                    if (therad != null && therad!!.isAlive && !therad!!.isInterrupted) {
                        therad!!.interrupt()
                        therad = null
                    }
                    forceGetRoot()
                })
                alert.setNeutralButton("退出", { _, _ ->
                    System.exit(0)
                    //android.os.Process.killProcess(android.os.Process.myPid())
                })
                val dialog = alert.create()

                dialog.show()
            }
        }, 15000)
    }

    companion object {


        public fun isMagisk(): Boolean {
            return executeCommandWithOutput(false, "su -v").contains("MAGISKSU")
        }

        public fun isTmpfs(dir: String): Boolean {
            return executeCommandWithOutput(false, " df | grep tmpfs | grep \"$dir\"").trim().isNotEmpty()
        }
    }

    fun LeoComponetURL(context: Context) {
        val packageManager = context.getPackageManager()

            val intent = packageManager.getLaunchIntentForPackage("com.topjohnwu.magisk")
            context.startActivity(intent)
        System.exit(0)
    }

}
