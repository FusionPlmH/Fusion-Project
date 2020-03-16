package com.leo.salt.tools.service

import android.app.IntentService
import android.app.Notification
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.graphics.BitmapFactory
import android.os.Build

import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource.*
import com.leo.script.KeepShellPublic
import com.meiqia.core.MQManager
import com.meiqia.core.callback.OnInitCallback
import com.meiqia.meiqiasdk.util.MQConfig
import com.tencent.bugly.crashreport.CrashReport
import com.tencent.bugly.crashreport.CrashReport.UserStrategy
import android.text.TextUtils
import com.leo.salt.tweaks.BuildConfig

import java.io.BufferedReader
import java.io.FileReader
import java.io.IOException



class InitService : IntentService("InitIntentService") {

    override fun onHandleIntent(intent: Intent?) {
        if (intent != null && ACTION_INIT == intent.action) {
            val context = applicationContext
// 获取当前包名
            val packageName = context.packageName
// 获取当前进程名
            val processName = getProcessName(android.os.Process.myPid())
// 设置是否为上报进程
            val strategy = UserStrategy(context)
            strategy.isUploadProcess = processName == null || processName == packageName
// 初始化Bugly
            strategy.setAppReportDelay(20000);
            CrashReport.setIsDevelopmentDevice(context, BuildConfig.DEBUG);
            CrashReport.initCrashReport(context, "18e8cfe5f2", false, strategy);
            CrashReport.setUserId(getLeoBuild("ril.serialnumber"));
            createSDCardDupdateirimg();
           
            MQManager.setDebugMode(true)
            val meiqiaKey = "f93359a4cc9a09610f24a1d036132df9"
            MQConfig.init(this, meiqiaKey, object : OnInitCallback {
                override fun onSuccess(clientId: String) {
                }

                override fun onFailure(code: Int, message: String) {
                }
            })
            MQConfig.isLoadMessagesFromNativeOpen = true
            MQConfig.ui.titleBackgroundResId = R.color.colorPrimaryMain
        }
    }

    private fun getProcessName(pid: Int): String? {
        var reader: BufferedReader? = null
        try {
            reader = BufferedReader(FileReader("/proc/$pid/cmdline"))
            var processName = reader!!.readLine()
            if (!TextUtils.isEmpty(processName)) {
                processName = processName.trim({ it <= ' ' })
            }
            return processName
        } catch (throwable: Throwable) {
            throwable.printStackTrace()
        } finally {
            try {
                if (reader != null) {
                    reader!!.close()
                }
            } catch (exception: IOException) {
                exception.printStackTrace()
            }

        }
        return null
    }

    companion object {

        private val ACTION_INIT = "com.leo.action.Service"

        fun start(context: Context) {
            val intent = Intent(context, InitService::class.java)
            intent.action = ACTION_INIT
            context.startService(intent)
        }
    }
}
