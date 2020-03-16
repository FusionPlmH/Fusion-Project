package com.tweaks.salt.utils.ktshell

import android.app.AlertDialog
import android.content.Context
import android.support.design.widget.Snackbar
import android.widget.Toast
import com.tweaks.salt.R
import com.tweaks.salt.utils.root.Helpers.Companion.LeoRestartMeun


import java.io.File

/**
 * Created by Hello on 2018/03/22.
 */

class ThermalAddin(private var context: Context) : AddinBase(context) {
    private fun isSupprt(): Boolean {
        if (File("/system/vendor/bin/thermal-engine").exists() || File("/system/vendor/bin/thermal-engine.bak").exists()) {
            return true
        } else {
            Toast.makeText(context, "该功能暂不支持您的设备", Toast.LENGTH_SHORT).show()
            return false
        }
    }

    fun showOption() {
        if (!isSupprt()) {
            return
        }
        val arr = arrayOf("移除温控文件（需要重启）", "恢复温控文件（需要重启）", "临时关闭温控")
        var index = 0
        AlertDialog.Builder(context)
                .setTitle(R.string.thermal_default)
                .setSingleChoiceItems(arr, index, { _, which ->
                    index = which
                })
                .setNegativeButton(android.R.string.ok, { _, _ ->
                    when (index) {
                        0 -> removeThermal()
                        1 -> resumeThermal()
                        2 -> closeThermal()
                    }
                })
                .create().show()
    }

    private fun RestartMeun(string: String) {
        AlertDialog.Builder(context)

                .setTitle("警告")//设置对话框的标题
                .setMessage(string)//设置对话框的内容
                //设置对话框的按钮
                .setPositiveButton(R.string.reboot_required_dialog_title,  { _, _ ->
                    LeoRestartMeun(context,1)
                })
                . create().show()
    }
    private fun removeThermal() {
        if (File("/system/vendor/bin/thermal-engine.bak").exists()) {
            RestartMeun("你已执行过这个操作，不需要再次执行，如果未生效请重启手机")

            return
        }
        command = StringBuilder()
                .append(Consts.MountSystemRW)
                .append(Consts.RMThermal)
                .toString()

        super.run()
    }

    private fun resumeThermal() {
        if (File("/system/vendor/bin/thermal-engine").exists()) {
            RestartMeun("你不需要此操作，温控文件正在正常使用，如果无效请重启手机")
            return
        }
        command = StringBuilder()
                .append(Consts.MountSystemRW)
                .append(Consts.ResetThermal)
                .toString()

        super.run()
    }

    private fun closeThermal() {
        if (!isSupprt()) {
            return
        }
        command = StringBuilder()
                .append("stop thermald;")
                .append("stop mpdecision;")
                .append("stop thermal-engine;")
                .append("echo 0 > /sys/module/msm_thermal/core_control/enabled;")
                .append("echo 0 > /sys/module/msm_thermal/vdd_restriction/enabled;")
                .append("echo N > /sys/module/msm_thermal/parameters/enabled;")
                .toString()

        super.run()
    }
}

