package com.leo.salt.utils.ktshell

import android.content.Context

/**
 * 读取CPU信息
 * Created by helloklf on 2017/6/3.
 */

class Platform {
    //获取CPU型号，如msm8996
    fun GetCPUName(): String {
        val cpu = Props.getProp("ro.board.platform")
        if (cpu == null) {
            return ""
        } else {
            return cpu
        }
    }

    //
    fun dynamicSupport(context: Context): Boolean {
        val cpuName = GetCPUName()
        val names = context.assets.list("")
        for (i in names.indices) {
            if (names[i].equals(cpuName)) {
                return true
            }
        }
        return false;
    }
    object Props {
        /**
         * 获取属性
         *
         * @param propName 属性名称
         * @return 内容
         */
        fun getProp(propName: String): String {
            return KeepShellSync.doCmdSync("getprop $propName")
        }

        fun setPorp(propName: String, value: String): Boolean {
            return KeepShellSync.doCmdSync("setprop $propName $value") != "error"
        }
    }
}
