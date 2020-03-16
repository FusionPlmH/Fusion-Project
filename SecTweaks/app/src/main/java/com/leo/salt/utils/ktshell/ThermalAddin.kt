package com.leo.salt.utils.ktshell

import android.app.AlertDialog
import android.content.Context
import android.support.design.widget.Snackbar
import android.widget.Toast
import com.leo.salt.R
import com.leo.salt.utils.root.Helpers.Companion.LeoRestartMeun


import java.io.File


class ThermalAddin(private var context: Context) : AddinBase(context) {
    private fun isSupprt(): Boolean {
        if (File("/system/vendor/bin/thermal-engine").exists() || File("/system/vendor/bin/thermal-engine.bak").exists()) {
            return true
        } else {
            Toast.makeText(context, context.getResources().getString(R.string.nonsupport_device), Toast.LENGTH_SHORT).show()
            return false
        }
    }

    fun showOption() {
        if (!isSupprt()) {
            return
        }
        val arr = arrayOf(context.getResources().getString(R.string.hermalarray1), context.getResources().getString(R.string.hermalarray2),context.getResources().getString(R.string.hermalarray3))
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

                .setTitle(context.getResources().getString(R.string.pulldown_attention))//设置对话框的标题
                .setMessage(string)//设置对话框的内容
                //设置对话框的按钮
                .setPositiveButton(R.string.reboot_required_dialog_title,  { _, _ ->
                    LeoRestartMeun(context,1)
                })
                . create().show()
    }
    private fun removeThermal() {
        if (File("/system/vendor/bin/thermal-engine.bak").exists()) {
            RestartMeun(context.getResources().getString(R.string.removeThermal))

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
            RestartMeun(context.getResources().getString(R.string.resumeThermal))
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

