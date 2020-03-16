package com.tweaks.leo.utils.ktshell

import android.app.AlertDialog
import android.content.Context

import com.tweaks.leo.R
import java.io.File

/** 检查并安装Busybox
 * Created by helloklf on 2017/6/3.
 */

class Busybox(private var context: Context) {
    //是否已经安装busybox
    private fun busyboxInstalled(): Boolean {
        return try {
            Runtime.getRuntime().exec("busybox").destroy()
            true
        } catch (e: Exception) {
            false
        }
    }

    fun forceInstall(next: Runnable? = null) {
        val privateBusybox = FileWrite.getPrivateFilePath(context, "busybox")
        if (!File(privateBusybox).exists()) {
            FileWrite.WritePrivateFile(context.assets, "busybox.zip", "busybox", context)
        }
        if (!busyboxInstalled()) {
            AlertDialog.Builder(context)
                    .setTitle(R.string.question_install_busybox)
                    .setMessage(R.string.question_install_busybox_desc)
                    .setNegativeButton(
                            android.R.string.cancel,
                            { _, _ ->
                                android.os.Process.killProcess(android.os.Process.myPid())
                            }
                    )
                    .setPositiveButton(
                            android.R.string.yes,
                            { _, _ ->
                                val cmd = StringBuilder("cp $privateBusybox /cache/busybox;\n")
                                cmd.append("chmod 7777 $privateBusybox;\n")
                                cmd.append("$privateBusybox chmod 7777 /cache/busybox;\n")
                                cmd.append("chmod 7777 /cache/busybox;\n")
                                cmd.append(Consts.MountSystemRW2)
                                cmd.append("cp $privateBusybox /system/xbin/busybox;")
                                cmd.append("$privateBusybox chmod 0777 /system/xbin/busybox;")
                                cmd.append("chmod 0777 /system/xbin/busybox;")
                                cmd.append("$privateBusybox chown root:root /system/xbin/busybox;")
                                cmd.append("chown root:root /system/xbin/busybox;")
                                cmd.append("/system/xbin/busybox --install /system/xbin;")

                                KeepShellSync.doCmdSync(cmd.toString())
                                if (!busyboxInstalled()) {
                                    AlertDialog.Builder(context)
                                            .setTitle("安装Busybox失败")
                                            .setMessage("已尝试自动安装Busybox，但它依然不可用。也许System分区没被解锁。因此，部分功能可能无法使用！")
                                            .setPositiveButton(android.R.string.yes, {
                                                _,_ ->
                                            })
                                            .create()
                                            .show()
                                }
                                next?.run()
                            }
                    )
                    .setCancelable(false)
                    .create().show()
        } else {
            BusyboxInstallerUnit().InstallShellTools()
            next?.run()
        }
    }
	class BusyboxInstallerUnit {
    //安装Shell工具
    fun InstallShellTools() {
        Thread(Runnable {
            KeepShellSync.doCmdSync("busybox --install /system/xbin\n")
        }).start()
    }
}
}
